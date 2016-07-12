package rx.internal.operators;

import java.util.concurrent.TimeUnit;
import rx.Observable.OnSubscribe;
import rx.Scheduler;
import rx.Scheduler.Worker;
import rx.Subscriber;
import rx.functions.Action0;

public final class OnSubscribeTimerPeriodically implements OnSubscribe<Long> {
    final long initialDelay;
    final long period;
    final Scheduler scheduler;
    final TimeUnit unit;

    /* renamed from: rx.internal.operators.OnSubscribeTimerPeriodically.1 */
    class C11961 implements Action0 {
        long counter;
        final /* synthetic */ Subscriber val$child;
        final /* synthetic */ Worker val$worker;

        C11961(Subscriber subscriber, Worker worker) {
            this.val$child = subscriber;
            this.val$worker = worker;
        }

        public void call() {
            try {
                Subscriber subscriber = this.val$child;
                long j = this.counter;
                this.counter = 1 + j;
                subscriber.onNext(Long.valueOf(j));
            } catch (Throwable th) {
                this.val$child.onError(th);
            } finally {
                this.val$worker.unsubscribe();
            }
        }
    }

    public OnSubscribeTimerPeriodically(long j, long j2, TimeUnit timeUnit, Scheduler scheduler) {
        this.initialDelay = j;
        this.period = j2;
        this.unit = timeUnit;
        this.scheduler = scheduler;
    }

    public void call(Subscriber<? super Long> subscriber) {
        Worker createWorker = this.scheduler.createWorker();
        subscriber.add(createWorker);
        createWorker.schedulePeriodically(new C11961(subscriber, createWorker), this.initialDelay, this.period, this.unit);
    }
}
