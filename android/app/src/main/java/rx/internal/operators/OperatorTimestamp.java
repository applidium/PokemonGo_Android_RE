package rx.internal.operators;

import rx.Observable.Operator;
import rx.Scheduler;
import rx.Subscriber;
import rx.schedulers.Timestamped;

public final class OperatorTimestamp<T> implements Operator<Timestamped<T>, T> {
    private final Scheduler scheduler;

    /* renamed from: rx.internal.operators.OperatorTimestamp.1 */
    class C13231 extends Subscriber<T> {
        final /* synthetic */ Subscriber val$o;

        C13231(Subscriber subscriber, Subscriber subscriber2) {
            this.val$o = subscriber2;
            super(subscriber);
        }

        public void onCompleted() {
            this.val$o.onCompleted();
        }

        public void onError(Throwable th) {
            this.val$o.onError(th);
        }

        public void onNext(T t) {
            this.val$o.onNext(new Timestamped(OperatorTimestamp.this.scheduler.now(), t));
        }
    }

    public OperatorTimestamp(Scheduler scheduler) {
        this.scheduler = scheduler;
    }

    public Subscriber<? super T> call(Subscriber<? super Timestamped<T>> subscriber) {
        return new C13231(subscriber, subscriber);
    }
}
