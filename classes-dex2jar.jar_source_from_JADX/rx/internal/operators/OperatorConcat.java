package rx.internal.operators;

import java.util.concurrent.ConcurrentLinkedQueue;
import java.util.concurrent.atomic.AtomicIntegerFieldUpdater;
import java.util.concurrent.atomic.AtomicLongFieldUpdater;
import rx.Observable;
import rx.Observable.Operator;
import rx.Producer;
import rx.Subscriber;
import rx.functions.Action0;
import rx.internal.producers.ProducerArbiter;
import rx.observers.SerializedSubscriber;
import rx.subscriptions.SerialSubscription;
import rx.subscriptions.Subscriptions;

public final class OperatorConcat<T> implements Operator<T, Observable<? extends T>> {

    static class ConcatInnerSubscriber<T> extends Subscriber<T> {
        private static final AtomicIntegerFieldUpdater<ConcatInnerSubscriber> ONCE;
        private final ProducerArbiter arbiter;
        private final Subscriber<T> child;
        private volatile int once;
        private final ConcatSubscriber<T> parent;

        static {
            ONCE = AtomicIntegerFieldUpdater.newUpdater(ConcatInnerSubscriber.class, "once");
        }

        public ConcatInnerSubscriber(ConcatSubscriber<T> concatSubscriber, Subscriber<T> subscriber, ProducerArbiter producerArbiter) {
            this.once = 0;
            this.parent = concatSubscriber;
            this.child = subscriber;
            this.arbiter = producerArbiter;
        }

        public void onCompleted() {
            if (ONCE.compareAndSet(this, 0, 1)) {
                this.parent.completeInner();
            }
        }

        public void onError(Throwable th) {
            if (ONCE.compareAndSet(this, 0, 1)) {
                this.parent.onError(th);
            }
        }

        public void onNext(T t) {
            this.child.onNext(t);
            this.parent.decrementRequested();
            this.arbiter.produced(1);
        }

        public void setProducer(Producer producer) {
            this.arbiter.setProducer(producer);
        }
    }

    static final class ConcatProducer<T> implements Producer {
        final ConcatSubscriber<T> cs;

        ConcatProducer(ConcatSubscriber<T> concatSubscriber) {
            this.cs = concatSubscriber;
        }

        public void request(long j) {
            this.cs.requestFromChild(j);
        }
    }

    static final class ConcatSubscriber<T> extends Subscriber<Observable<? extends T>> {
        private static final AtomicLongFieldUpdater<ConcatSubscriber> REQUESTED;
        static final AtomicIntegerFieldUpdater<ConcatSubscriber> WIP;
        private final ProducerArbiter arbiter;
        private final Subscriber<T> child;
        private final SerialSubscription current;
        volatile ConcatInnerSubscriber<T> currentSubscriber;
        final NotificationLite<Observable<? extends T>> nl;
        final ConcurrentLinkedQueue<Object> queue;
        private volatile long requested;
        volatile int wip;

        /* renamed from: rx.internal.operators.OperatorConcat.ConcatSubscriber.1 */
        class C12151 implements Action0 {
            C12151() {
            }

            public void call() {
                ConcatSubscriber.this.queue.clear();
            }
        }

        static {
            WIP = AtomicIntegerFieldUpdater.newUpdater(ConcatSubscriber.class, "wip");
            REQUESTED = AtomicLongFieldUpdater.newUpdater(ConcatSubscriber.class, "requested");
        }

        public ConcatSubscriber(Subscriber<T> subscriber, SerialSubscription serialSubscription) {
            super(subscriber);
            this.nl = NotificationLite.instance();
            this.child = subscriber;
            this.current = serialSubscription;
            this.arbiter = new ProducerArbiter();
            this.queue = new ConcurrentLinkedQueue();
            add(Subscriptions.create(new C12151()));
        }

        private void decrementRequested() {
            REQUESTED.decrementAndGet(this);
        }

        private void requestFromChild(long j) {
            if (j > 0) {
                long andAddRequest = BackpressureUtils.getAndAddRequest(REQUESTED, this, j);
                this.arbiter.request(j);
                if (andAddRequest == 0 && this.currentSubscriber == null && this.wip > 0) {
                    subscribeNext();
                }
            }
        }

        void completeInner() {
            this.currentSubscriber = null;
            if (WIP.decrementAndGet(this) > 0) {
                subscribeNext();
            }
            request(1);
        }

        public void onCompleted() {
            this.queue.add(this.nl.completed());
            if (WIP.getAndIncrement(this) == 0) {
                subscribeNext();
            }
        }

        public void onError(Throwable th) {
            this.child.onError(th);
            unsubscribe();
        }

        public void onNext(Observable<? extends T> observable) {
            this.queue.add(this.nl.next(observable));
            if (WIP.getAndIncrement(this) == 0) {
                subscribeNext();
            }
        }

        public void onStart() {
            request(2);
        }

        void subscribeNext() {
            if (this.requested > 0) {
                Object poll = this.queue.poll();
                if (this.nl.isCompleted(poll)) {
                    this.child.onCompleted();
                    return;
                } else if (poll != null) {
                    Observable observable = (Observable) this.nl.getValue(poll);
                    this.currentSubscriber = new ConcatInnerSubscriber(this, this.child, this.arbiter);
                    this.current.set(this.currentSubscriber);
                    observable.unsafeSubscribe(this.currentSubscriber);
                    return;
                } else {
                    return;
                }
            }
            if (this.nl.isCompleted(this.queue.peek())) {
                this.child.onCompleted();
            }
        }
    }

    private static final class Holder {
        static final OperatorConcat<Object> INSTANCE;

        static {
            INSTANCE = new OperatorConcat();
        }

        private Holder() {
        }
    }

    private OperatorConcat() {
    }

    public static <T> OperatorConcat<T> instance() {
        return Holder.INSTANCE;
    }

    public Subscriber<? super Observable<? extends T>> call(Subscriber<? super T> subscriber) {
        Subscriber serializedSubscriber = new SerializedSubscriber(subscriber);
        Object serialSubscription = new SerialSubscription();
        subscriber.add(serialSubscription);
        Subscriber concatSubscriber = new ConcatSubscriber(serializedSubscriber, serialSubscription);
        subscriber.setProducer(new ConcatProducer(concatSubscriber));
        return concatSubscriber;
    }
}
