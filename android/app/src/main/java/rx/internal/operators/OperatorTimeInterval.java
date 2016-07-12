package rx.internal.operators;

import rx.Observable.Operator;
import rx.Scheduler;
import rx.Subscriber;
import rx.schedulers.TimeInterval;

public final class OperatorTimeInterval<T> implements Operator<TimeInterval<T>, T> {
    private final Scheduler scheduler;

    /* renamed from: rx.internal.operators.OperatorTimeInterval.1 */
    class C13131 extends Subscriber<T> {
        private long lastTimestamp;
        final /* synthetic */ Subscriber val$subscriber;

        C13131(Subscriber subscriber, Subscriber subscriber2) {
            this.val$subscriber = subscriber2;
            super(subscriber);
            this.lastTimestamp = OperatorTimeInterval.this.scheduler.now();
        }

        public void onCompleted() {
            this.val$subscriber.onCompleted();
        }

        public void onError(Throwable th) {
            this.val$subscriber.onError(th);
        }

        public void onNext(T t) {
            long now = OperatorTimeInterval.this.scheduler.now();
            this.val$subscriber.onNext(new TimeInterval(now - this.lastTimestamp, t));
            this.lastTimestamp = now;
        }
    }

    public OperatorTimeInterval(Scheduler scheduler) {
        this.scheduler = scheduler;
    }

    public Subscriber<? super T> call(Subscriber<? super TimeInterval<T>> subscriber) {
        return new C13131(subscriber, subscriber);
    }
}
