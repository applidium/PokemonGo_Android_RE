package rx.schedulers;

import java.util.Comparator;
import java.util.PriorityQueue;
import java.util.Queue;
import java.util.concurrent.TimeUnit;
import rx.Scheduler;
import rx.Scheduler.Worker;
import rx.Subscription;
import rx.functions.Action0;
import rx.subscriptions.BooleanSubscription;
import rx.subscriptions.Subscriptions;

public class TestScheduler extends Scheduler {
    private static long counter;
    private final Queue<TimedAction> queue;
    private long time;

    private static class CompareActionsByTime implements Comparator<TimedAction> {
        private CompareActionsByTime() {
        }

        public int compare(TimedAction timedAction, TimedAction timedAction2) {
            return timedAction.time == timedAction2.time ? Long.valueOf(timedAction.count).compareTo(Long.valueOf(timedAction2.count)) : Long.valueOf(timedAction.time).compareTo(Long.valueOf(timedAction2.time));
        }
    }

    private final class InnerTestScheduler extends Worker {
        private final BooleanSubscription f928s;

        /* renamed from: rx.schedulers.TestScheduler.InnerTestScheduler.1 */
        class C13821 implements Action0 {
            final /* synthetic */ TimedAction val$timedAction;

            C13821(TimedAction timedAction) {
                this.val$timedAction = timedAction;
            }

            public void call() {
                TestScheduler.this.queue.remove(this.val$timedAction);
            }
        }

        /* renamed from: rx.schedulers.TestScheduler.InnerTestScheduler.2 */
        class C13832 implements Action0 {
            final /* synthetic */ TimedAction val$timedAction;

            C13832(TimedAction timedAction) {
                this.val$timedAction = timedAction;
            }

            public void call() {
                TestScheduler.this.queue.remove(this.val$timedAction);
            }
        }

        private InnerTestScheduler() {
            this.f928s = new BooleanSubscription();
        }

        public boolean isUnsubscribed() {
            return this.f928s.isUnsubscribed();
        }

        public long now() {
            return TestScheduler.this.now();
        }

        public Subscription schedule(Action0 action0) {
            TimedAction timedAction = new TimedAction(0, action0, null);
            TestScheduler.this.queue.add(timedAction);
            return Subscriptions.create(new C13832(timedAction));
        }

        public Subscription schedule(Action0 action0, long j, TimeUnit timeUnit) {
            TimedAction timedAction = new TimedAction(TestScheduler.this.time + timeUnit.toNanos(j), action0, null);
            TestScheduler.this.queue.add(timedAction);
            return Subscriptions.create(new C13821(timedAction));
        }

        public void unsubscribe() {
            this.f928s.unsubscribe();
        }
    }

    private static final class TimedAction {
        private final Action0 action;
        private final long count;
        private final Worker scheduler;
        private final long time;

        private TimedAction(Worker worker, long j, Action0 action0) {
            this.count = TestScheduler.access$108();
            this.time = j;
            this.action = action0;
            this.scheduler = worker;
        }

        public String toString() {
            return String.format("TimedAction(time = %d, action = %s)", new Object[]{Long.valueOf(this.time), this.action.toString()});
        }
    }

    static {
        counter = 0;
    }

    public TestScheduler() {
        this.queue = new PriorityQueue(11, new CompareActionsByTime());
    }

    static /* synthetic */ long access$108() {
        long j = counter;
        counter = 1 + j;
        return j;
    }

    private void triggerActions(long j) {
        while (!this.queue.isEmpty()) {
            TimedAction timedAction = (TimedAction) this.queue.peek();
            if (timedAction.time > j) {
                break;
            }
            this.time = timedAction.time == 0 ? this.time : timedAction.time;
            this.queue.remove();
            if (!timedAction.scheduler.isUnsubscribed()) {
                timedAction.action.call();
            }
        }
        this.time = j;
    }

    public void advanceTimeBy(long j, TimeUnit timeUnit) {
        advanceTimeTo(this.time + timeUnit.toNanos(j), TimeUnit.NANOSECONDS);
    }

    public void advanceTimeTo(long j, TimeUnit timeUnit) {
        triggerActions(timeUnit.toNanos(j));
    }

    public Worker createWorker() {
        return new InnerTestScheduler();
    }

    public long now() {
        return TimeUnit.NANOSECONDS.toMillis(this.time);
    }

    public void triggerActions() {
        triggerActions(this.time);
    }
}
