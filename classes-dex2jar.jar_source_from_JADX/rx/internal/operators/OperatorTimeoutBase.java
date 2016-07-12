package rx.internal.operators;

import java.util.concurrent.TimeoutException;
import java.util.concurrent.atomic.AtomicIntegerFieldUpdater;
import java.util.concurrent.atomic.AtomicLongFieldUpdater;
import rx.Observable;
import rx.Observable.Operator;
import rx.Scheduler;
import rx.Scheduler.Worker;
import rx.Subscriber;
import rx.Subscription;
import rx.functions.Func3;
import rx.functions.Func4;
import rx.observers.SerializedSubscriber;
import rx.subscriptions.SerialSubscription;

class OperatorTimeoutBase<T> implements Operator<T, T> {
    private final FirstTimeoutStub<T> firstTimeoutStub;
    private final Observable<? extends T> other;
    private final Scheduler scheduler;
    private final TimeoutStub<T> timeoutStub;

    interface FirstTimeoutStub<T> extends Func3<TimeoutSubscriber<T>, Long, Worker, Subscription> {
    }

    interface TimeoutStub<T> extends Func4<TimeoutSubscriber<T>, Long, T, Worker, Subscription> {
    }

    static final class TimeoutSubscriber<T> extends Subscriber<T> {
        static final AtomicLongFieldUpdater<TimeoutSubscriber> ACTUAL_UPDATER;
        static final AtomicIntegerFieldUpdater<TimeoutSubscriber> TERMINATED_UPDATER;
        volatile long actual;
        private final Object gate;
        private final Worker inner;
        private final Observable<? extends T> other;
        private final SerialSubscription serial;
        private final SerializedSubscriber<T> serializedSubscriber;
        volatile int terminated;
        private final TimeoutStub<T> timeoutStub;

        static {
            TERMINATED_UPDATER = AtomicIntegerFieldUpdater.newUpdater(TimeoutSubscriber.class, "terminated");
            ACTUAL_UPDATER = AtomicLongFieldUpdater.newUpdater(TimeoutSubscriber.class, "actual");
        }

        private TimeoutSubscriber(SerializedSubscriber<T> serializedSubscriber, TimeoutStub<T> timeoutStub, SerialSubscription serialSubscription, Observable<? extends T> observable, Worker worker) {
            super(serializedSubscriber);
            this.gate = new Object();
            this.serializedSubscriber = serializedSubscriber;
            this.timeoutStub = timeoutStub;
            this.serial = serialSubscription;
            this.other = observable;
            this.inner = worker;
        }

        public void onCompleted() {
            Object obj = 1;
            synchronized (this.gate) {
                if (TERMINATED_UPDATER.getAndSet(this, 1) != 0) {
                    obj = null;
                }
            }
            if (obj != null) {
                this.serial.unsubscribe();
                this.serializedSubscriber.onCompleted();
            }
        }

        public void onError(Throwable th) {
            Object obj = 1;
            synchronized (this.gate) {
                if (TERMINATED_UPDATER.getAndSet(this, 1) != 0) {
                    obj = null;
                }
            }
            if (obj != null) {
                this.serial.unsubscribe();
                this.serializedSubscriber.onError(th);
            }
        }

        public void onNext(T t) {
            Object obj = null;
            synchronized (this.gate) {
                if (this.terminated == 0) {
                    ACTUAL_UPDATER.incrementAndGet(this);
                    obj = 1;
                }
            }
            if (obj != null) {
                this.serializedSubscriber.onNext(t);
                this.serial.set((Subscription) this.timeoutStub.call(this, Long.valueOf(this.actual), t, this.inner));
            }
        }

        public void onTimeout(long j) {
            Object obj = 1;
            synchronized (this.gate) {
                if (!(j == this.actual && TERMINATED_UPDATER.getAndSet(this, 1) == 0)) {
                    obj = null;
                }
            }
            if (obj == null) {
                return;
            }
            if (this.other == null) {
                this.serializedSubscriber.onError(new TimeoutException());
                return;
            }
            this.other.unsafeSubscribe(this.serializedSubscriber);
            this.serial.set(this.serializedSubscriber);
        }
    }

    OperatorTimeoutBase(FirstTimeoutStub<T> firstTimeoutStub, TimeoutStub<T> timeoutStub, Observable<? extends T> observable, Scheduler scheduler) {
        this.firstTimeoutStub = firstTimeoutStub;
        this.timeoutStub = timeoutStub;
        this.other = observable;
        this.scheduler = scheduler;
    }

    public Subscriber<? super T> call(Subscriber<? super T> subscriber) {
        Object createWorker = this.scheduler.createWorker();
        subscriber.add(createWorker);
        SerialSubscription serialSubscription = new SerialSubscription();
        subscriber.add(serialSubscription);
        Subscriber timeoutSubscriber = new TimeoutSubscriber(this.timeoutStub, serialSubscription, this.other, createWorker, null);
        serialSubscription.set((Subscription) this.firstTimeoutStub.call(timeoutSubscriber, Long.valueOf(0), createWorker));
        return timeoutSubscriber;
    }
}
