package rx.internal.operators;

import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.atomic.AtomicLongFieldUpdater;
import rx.Observable;
import rx.Observable.Operator;
import rx.Observer;
import rx.Producer;
import rx.Subscriber;
import rx.Subscription;
import rx.exceptions.OnErrorThrowable;
import rx.functions.Func2;
import rx.functions.Func3;
import rx.functions.Func4;
import rx.functions.Func5;
import rx.functions.Func6;
import rx.functions.Func7;
import rx.functions.Func8;
import rx.functions.Func9;
import rx.functions.FuncN;
import rx.functions.Functions;
import rx.internal.util.RxRingBuffer;
import rx.subscriptions.CompositeSubscription;

public final class OperatorZip<R> implements Operator<R, Observable<?>[]> {
    final FuncN<? extends R> zipFunction;

    private static final class Zip<R> {
        static final AtomicLongFieldUpdater<Zip> COUNTER_UPDATER;
        static final int THRESHOLD;
        private final Observer<? super R> child;
        private final CompositeSubscription childSubscription;
        volatile long counter;
        int emitted;
        private Object[] observers;
        private AtomicLong requested;
        private final FuncN<? extends R> zipFunction;

        final class InnerSubscriber extends Subscriber {
            final RxRingBuffer items;

            InnerSubscriber() {
                this.items = RxRingBuffer.getSpmcInstance();
            }

            public void onCompleted() {
                this.items.onCompleted();
                Zip.this.tick();
            }

            public void onError(Throwable th) {
                Zip.this.child.onError(th);
            }

            public void onNext(Object obj) {
                try {
                    this.items.onNext(obj);
                } catch (Throwable e) {
                    onError(e);
                }
                Zip.this.tick();
            }

            public void onStart() {
                request((long) RxRingBuffer.SIZE);
            }

            public void requestMore(long j) {
                request(j);
            }
        }

        static {
            COUNTER_UPDATER = AtomicLongFieldUpdater.newUpdater(Zip.class, "counter");
            THRESHOLD = (int) (((double) RxRingBuffer.SIZE) * 0.7d);
        }

        public Zip(Subscriber<? super R> subscriber, FuncN<? extends R> funcN) {
            this.childSubscription = new CompositeSubscription();
            this.emitted = 0;
            this.child = subscriber;
            this.zipFunction = funcN;
            subscriber.add(this.childSubscription);
        }

        public void start(Observable[] observableArr, AtomicLong atomicLong) {
            int i = 0;
            this.observers = new Object[observableArr.length];
            this.requested = atomicLong;
            for (int i2 = 0; i2 < observableArr.length; i2++) {
                Subscription innerSubscriber = new InnerSubscriber();
                this.observers[i2] = innerSubscriber;
                this.childSubscription.add(innerSubscriber);
            }
            while (i < observableArr.length) {
                observableArr[i].unsafeSubscribe((InnerSubscriber) this.observers[i]);
                i++;
            }
        }

        void tick() {
            Object[] objArr = this.observers;
            if (objArr != null && COUNTER_UPDATER.getAndIncrement(this) == 0) {
                int length = objArr.length;
                Observer observer = this.child;
                AtomicLong atomicLong = this.requested;
                while (true) {
                    RxRingBuffer rxRingBuffer;
                    Object obj = new Object[length];
                    int i = 1;
                    int i2 = 0;
                    while (i2 < length) {
                        int i3;
                        rxRingBuffer = ((InnerSubscriber) objArr[i2]).items;
                        Object peek = rxRingBuffer.peek();
                        if (peek == null) {
                            i3 = 0;
                        } else if (rxRingBuffer.isCompleted(peek)) {
                            observer.onCompleted();
                            this.childSubscription.unsubscribe();
                            return;
                        } else {
                            obj[i2] = rxRingBuffer.getValue(peek);
                            i3 = i;
                        }
                        i2++;
                        i = i3;
                    }
                    if (atomicLong.get() > 0 && i != 0) {
                        try {
                            observer.onNext(this.zipFunction.call(obj));
                            atomicLong.decrementAndGet();
                            this.emitted++;
                            for (Object obj2 : objArr) {
                                rxRingBuffer = ((InnerSubscriber) obj2).items;
                                rxRingBuffer.poll();
                                if (rxRingBuffer.isCompleted(rxRingBuffer.peek())) {
                                    observer.onCompleted();
                                    this.childSubscription.unsubscribe();
                                    return;
                                }
                            }
                            if (this.emitted > THRESHOLD) {
                                for (Object obj22 : objArr) {
                                    ((InnerSubscriber) obj22).requestMore((long) this.emitted);
                                }
                                this.emitted = 0;
                            }
                        } catch (Throwable th) {
                            observer.onError(OnErrorThrowable.addValueAsLastCause(th, obj));
                            return;
                        }
                    } else if (COUNTER_UPDATER.decrementAndGet(this) <= 0) {
                        return;
                    }
                }
            }
        }
    }

    private static final class ZipProducer<R> extends AtomicLong implements Producer {
        private static final long serialVersionUID = -1216676403723546796L;
        private Zip<R> zipper;

        public ZipProducer(Zip<R> zip) {
            this.zipper = zip;
        }

        public void request(long j) {
            BackpressureUtils.getAndAddRequest(this, j);
            this.zipper.tick();
        }
    }

    private final class ZipSubscriber extends Subscriber<Observable[]> {
        final Subscriber<? super R> child;
        final ZipProducer<R> producer;
        boolean started;
        final Zip<R> zipper;

        public ZipSubscriber(Subscriber<? super R> subscriber, Zip<R> zip, ZipProducer<R> zipProducer) {
            super(subscriber);
            this.started = false;
            this.child = subscriber;
            this.zipper = zip;
            this.producer = zipProducer;
        }

        public void onCompleted() {
            if (!this.started) {
                this.child.onCompleted();
            }
        }

        public void onError(Throwable th) {
            this.child.onError(th);
        }

        public void onNext(Observable[] observableArr) {
            if (observableArr == null || observableArr.length == 0) {
                this.child.onCompleted();
                return;
            }
            this.started = true;
            this.zipper.start(observableArr, this.producer);
        }
    }

    public OperatorZip(Func2 func2) {
        this.zipFunction = Functions.fromFunc(func2);
    }

    public OperatorZip(Func3 func3) {
        this.zipFunction = Functions.fromFunc(func3);
    }

    public OperatorZip(Func4 func4) {
        this.zipFunction = Functions.fromFunc(func4);
    }

    public OperatorZip(Func5 func5) {
        this.zipFunction = Functions.fromFunc(func5);
    }

    public OperatorZip(Func6 func6) {
        this.zipFunction = Functions.fromFunc(func6);
    }

    public OperatorZip(Func7 func7) {
        this.zipFunction = Functions.fromFunc(func7);
    }

    public OperatorZip(Func8 func8) {
        this.zipFunction = Functions.fromFunc(func8);
    }

    public OperatorZip(Func9 func9) {
        this.zipFunction = Functions.fromFunc(func9);
    }

    public OperatorZip(FuncN<? extends R> funcN) {
        this.zipFunction = funcN;
    }

    public Subscriber<? super Observable[]> call(Subscriber<? super R> subscriber) {
        Zip zip = new Zip(subscriber, this.zipFunction);
        Object zipProducer = new ZipProducer(zip);
        subscriber.setProducer(zipProducer);
        return new ZipSubscriber(subscriber, zip, zipProducer);
    }
}
