package rx.internal.operators;

import java.util.BitSet;
import java.util.List;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.atomic.AtomicLongFieldUpdater;
import rx.Observable;
import rx.Observable.OnSubscribe;
import rx.Producer;
import rx.Subscriber;
import rx.functions.FuncN;
import rx.internal.util.RxRingBuffer;

public final class OnSubscribeCombineLatest<T, R> implements OnSubscribe<R> {
    final FuncN<? extends R> combinator;
    final List<? extends Observable<? extends T>> sources;

    static final class MultiSourceProducer<T, R> implements Producer {
        private static final AtomicLongFieldUpdater<MultiSourceProducer> WIP;
        private final RxRingBuffer buffer;
        private final Subscriber<? super R> child;
        private final Object[] collectedValues;
        private final FuncN<? extends R> combinator;
        private final BitSet completion;
        private volatile int completionCount;
        private volatile long counter;
        private final BitSet haveValues;
        private volatile int haveValuesCount;
        private final AtomicLong requested;
        private final List<? extends Observable<? extends T>> sources;
        private final AtomicBoolean started;
        private final MultiSourceRequestableSubscriber<T, R>[] subscribers;

        static {
            WIP = AtomicLongFieldUpdater.newUpdater(MultiSourceProducer.class, "counter");
        }

        public MultiSourceProducer(Subscriber<? super R> subscriber, List<? extends Observable<? extends T>> list, FuncN<? extends R> funcN) {
            this.started = new AtomicBoolean();
            this.requested = new AtomicLong();
            this.buffer = RxRingBuffer.getSpmcInstance();
            this.sources = list;
            this.child = subscriber;
            this.combinator = funcN;
            int size = list.size();
            this.subscribers = new MultiSourceRequestableSubscriber[size];
            this.collectedValues = new Object[size];
            this.haveValues = new BitSet(size);
            this.completion = new BitSet(size);
        }

        public void onCompleted(int i, boolean z) {
            Object obj = null;
            if (z) {
                synchronized (this) {
                    if (!this.completion.get(i)) {
                        this.completion.set(i);
                        this.completionCount++;
                        if (this.completionCount == this.collectedValues.length) {
                            obj = 1;
                        }
                    }
                }
                if (obj != null) {
                    this.buffer.onCompleted();
                    tick();
                    return;
                }
                return;
            }
            this.child.onCompleted();
        }

        public void onError(Throwable th) {
            this.child.onError(th);
        }

        public boolean onNext(int i, T t) {
            synchronized (this) {
                if (!this.haveValues.get(i)) {
                    this.haveValues.set(i);
                    this.haveValuesCount++;
                }
                this.collectedValues[i] = t;
                if (this.haveValuesCount != this.collectedValues.length) {
                    return false;
                }
                try {
                    this.buffer.onNext(this.combinator.call(this.collectedValues));
                } catch (Throwable e) {
                    onError(e);
                } catch (Throwable e2) {
                    onError(e2);
                }
                tick();
                return true;
            }
        }

        public void request(long j) {
            BackpressureUtils.getAndAddRequest(this.requested, j);
            if (!this.started.get() && this.started.compareAndSet(false, true)) {
                int size = RxRingBuffer.SIZE / this.sources.size();
                int i = RxRingBuffer.SIZE;
                int size2 = this.sources.size();
                int i2 = 0;
                while (i2 < this.sources.size()) {
                    Observable observable = (Observable) this.sources.get(i2);
                    Subscriber multiSourceRequestableSubscriber = new MultiSourceRequestableSubscriber(i2, i2 == this.sources.size() + -1 ? (i % size2) + size : size, this.child, this);
                    this.subscribers[i2] = multiSourceRequestableSubscriber;
                    observable.unsafeSubscribe(multiSourceRequestableSubscriber);
                    i2++;
                }
            }
            tick();
        }

        void tick() {
            int i = 0;
            if (WIP.getAndIncrement(this) == 0) {
                int i2 = 0;
                do {
                    if (this.requested.get() > 0) {
                        Object poll = this.buffer.poll();
                        if (poll != null) {
                            if (this.buffer.isCompleted(poll)) {
                                this.child.onCompleted();
                            } else {
                                this.buffer.accept(poll, this.child);
                                i2++;
                                this.requested.decrementAndGet();
                            }
                        }
                    }
                } while (WIP.decrementAndGet(this) > 0);
                if (i2 > 0) {
                    MultiSourceRequestableSubscriber[] multiSourceRequestableSubscriberArr = this.subscribers;
                    int length = multiSourceRequestableSubscriberArr.length;
                    while (i < length) {
                        multiSourceRequestableSubscriberArr[i].requestUpTo((long) i2);
                        i++;
                    }
                }
            }
        }
    }

    static final class MultiSourceRequestableSubscriber<T, R> extends Subscriber<T> {
        final AtomicLong emitted;
        boolean hasValue;
        final int index;
        final MultiSourceProducer<T, R> producer;

        public MultiSourceRequestableSubscriber(int i, int i2, Subscriber<? super R> subscriber, MultiSourceProducer<T, R> multiSourceProducer) {
            super(subscriber);
            this.emitted = new AtomicLong();
            this.hasValue = false;
            this.index = i;
            this.producer = multiSourceProducer;
            request((long) i2);
        }

        public void onCompleted() {
            this.producer.onCompleted(this.index, this.hasValue);
        }

        public void onError(Throwable th) {
            this.producer.onError(th);
        }

        public void onNext(T t) {
            this.hasValue = true;
            this.emitted.incrementAndGet();
            if (!this.producer.onNext(this.index, t)) {
                request(1);
            }
        }

        public void requestUpTo(long j) {
            long min;
            long j2;
            do {
                j2 = this.emitted.get();
                min = Math.min(j2, j);
            } while (!this.emitted.compareAndSet(j2, j2 - min));
            request(min);
        }
    }

    static final class SingleSourceProducer<T, R> implements Producer {
        final Subscriber<? super R> child;
        final FuncN<? extends R> combinator;
        final Observable<? extends T> source;
        final AtomicBoolean started;
        final SingleSourceRequestableSubscriber<T, R> subscriber;

        public SingleSourceProducer(Subscriber<? super R> subscriber, Observable<? extends T> observable, FuncN<? extends R> funcN) {
            this.started = new AtomicBoolean();
            this.source = observable;
            this.child = subscriber;
            this.combinator = funcN;
            this.subscriber = new SingleSourceRequestableSubscriber(subscriber, funcN);
        }

        public void request(long j) {
            this.subscriber.requestMore(j);
            if (this.started.compareAndSet(false, true)) {
                this.source.unsafeSubscribe(this.subscriber);
            }
        }
    }

    static final class SingleSourceRequestableSubscriber<T, R> extends Subscriber<T> {
        private final Subscriber<? super R> child;
        private final FuncN<? extends R> combinator;

        SingleSourceRequestableSubscriber(Subscriber<? super R> subscriber, FuncN<? extends R> funcN) {
            super(subscriber);
            this.child = subscriber;
            this.combinator = funcN;
        }

        public void onCompleted() {
            this.child.onCompleted();
        }

        public void onError(Throwable th) {
            this.child.onError(th);
        }

        public void onNext(T t) {
            this.child.onNext(this.combinator.call(t));
        }

        public void requestMore(long j) {
            request(j);
        }
    }

    public OnSubscribeCombineLatest(List<? extends Observable<? extends T>> list, FuncN<? extends R> funcN) {
        this.sources = list;
        this.combinator = funcN;
        if (list.size() > RxRingBuffer.SIZE) {
            throw new IllegalArgumentException("More than RxRingBuffer.SIZE sources to combineLatest is not supported.");
        }
    }

    public void call(Subscriber<? super R> subscriber) {
        if (this.sources.isEmpty()) {
            subscriber.onCompleted();
        } else if (this.sources.size() == 1) {
            subscriber.setProducer(new SingleSourceProducer(subscriber, (Observable) this.sources.get(0), this.combinator));
        } else {
            subscriber.setProducer(new MultiSourceProducer(subscriber, this.sources, this.combinator));
        }
    }
}
