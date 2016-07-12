package rx.internal.operators;

import java.util.concurrent.TimeUnit;
import rx.Observable.Operator;
import rx.Scheduler;
import rx.Subscriber;

public final class OperatorThrottleFirst<T> implements Operator<T, T> {
    private final Scheduler scheduler;
    private final long timeInMilliseconds;

    /* renamed from: rx.internal.operators.OperatorThrottleFirst.1 */
    class C13121 extends Subscriber<T> {
        private long lastOnNext;
        final /* synthetic */ Subscriber val$subscriber;

        C13121(Subscriber subscriber, Subscriber subscriber2) {
            this.val$subscriber = subscriber2;
            super(subscriber);
            this.lastOnNext = 0;
        }

        public void onCompleted() {
            this.val$subscriber.onCompleted();
        }

        public void onError(Throwable th) {
            this.val$subscriber.onError(th);
        }

        public void onNext(T t) {
            long now = OperatorThrottleFirst.this.scheduler.now();
            if (this.lastOnNext == 0 || now - this.lastOnNext >= OperatorThrottleFirst.this.timeInMilliseconds) {
                this.lastOnNext = now;
                this.val$subscriber.onNext(t);
            }
        }

        public void onStart() {
            request(Long.MAX_VALUE);
        }
    }

    public OperatorThrottleFirst(long j, TimeUnit timeUnit, Scheduler scheduler) {
        this.timeInMilliseconds = timeUnit.toMillis(j);
        this.scheduler = scheduler;
    }

    public Subscriber<? super T> call(Subscriber<? super T> subscriber) {
        return new C13121(subscriber, subscriber);
    }
}
