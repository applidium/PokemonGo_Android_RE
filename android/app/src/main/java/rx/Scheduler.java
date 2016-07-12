package rx;

import java.util.concurrent.TimeUnit;
import rx.functions.Action0;
import rx.subscriptions.MultipleAssignmentSubscription;

public abstract class Scheduler {

    public static abstract class Worker implements Subscription {

        /* renamed from: rx.Scheduler.Worker.1 */
        class C11281 implements Action0 {
            long count;
            final /* synthetic */ Action0 val$action;
            final /* synthetic */ MultipleAssignmentSubscription val$mas;
            final /* synthetic */ long val$periodInNanos;
            final /* synthetic */ long val$startInNanos;

            C11281(MultipleAssignmentSubscription multipleAssignmentSubscription, Action0 action0, long j, long j2) {
                this.val$mas = multipleAssignmentSubscription;
                this.val$action = action0;
                this.val$startInNanos = j;
                this.val$periodInNanos = j2;
                this.count = 0;
            }

            public void call() {
                if (!this.val$mas.isUnsubscribed()) {
                    this.val$action.call();
                    long j = this.val$startInNanos;
                    long j2 = this.count + 1;
                    this.count = j2;
                    this.val$mas.set(Worker.this.schedule(this, (j + (j2 * this.val$periodInNanos)) - TimeUnit.MILLISECONDS.toNanos(Worker.this.now()), TimeUnit.NANOSECONDS));
                }
            }
        }

        public long now() {
            return System.currentTimeMillis();
        }

        public abstract Subscription schedule(Action0 action0);

        public abstract Subscription schedule(Action0 action0, long j, TimeUnit timeUnit);

        public Subscription schedulePeriodically(Action0 action0, long j, long j2, TimeUnit timeUnit) {
            long toNanos = timeUnit.toNanos(j2);
            long toNanos2 = TimeUnit.MILLISECONDS.toNanos(now());
            long toNanos3 = timeUnit.toNanos(j);
            Subscription multipleAssignmentSubscription = new MultipleAssignmentSubscription();
            Action0 c11281 = new C11281(multipleAssignmentSubscription, action0, toNanos2 + toNanos3, toNanos);
            Object multipleAssignmentSubscription2 = new MultipleAssignmentSubscription();
            multipleAssignmentSubscription.set(multipleAssignmentSubscription2);
            multipleAssignmentSubscription2.set(schedule(c11281, j, timeUnit));
            return multipleAssignmentSubscription;
        }
    }

    public abstract Worker createWorker();

    public long now() {
        return System.currentTimeMillis();
    }
}
