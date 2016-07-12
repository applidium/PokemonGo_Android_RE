package rx.schedulers;

import java.util.concurrent.PriorityBlockingQueue;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicIntegerFieldUpdater;
import rx.Scheduler;
import rx.Scheduler.Worker;
import rx.Subscription;
import rx.functions.Action0;
import rx.subscriptions.BooleanSubscription;
import rx.subscriptions.Subscriptions;

public final class TrampolineScheduler extends Scheduler {
    private static final TrampolineScheduler INSTANCE;

    private static class InnerCurrentThreadScheduler extends Worker implements Subscription {
        private static final AtomicIntegerFieldUpdater<InnerCurrentThreadScheduler> COUNTER_UPDATER;
        volatile int counter;
        private final BooleanSubscription innerSubscription;
        private final PriorityBlockingQueue<TimedAction> queue;
        private final AtomicInteger wip;

        /* renamed from: rx.schedulers.TrampolineScheduler.InnerCurrentThreadScheduler.1 */
        class C13851 implements Action0 {
            final /* synthetic */ TimedAction val$timedAction;

            C13851(TimedAction timedAction) {
                this.val$timedAction = timedAction;
            }

            public void call() {
                InnerCurrentThreadScheduler.this.queue.remove(this.val$timedAction);
            }
        }

        static {
            COUNTER_UPDATER = AtomicIntegerFieldUpdater.newUpdater(InnerCurrentThreadScheduler.class, "counter");
        }

        private InnerCurrentThreadScheduler() {
            this.queue = new PriorityBlockingQueue();
            this.innerSubscription = new BooleanSubscription();
            this.wip = new AtomicInteger();
        }

        private Subscription enqueue(Action0 action0, long j) {
            if (this.innerSubscription.isUnsubscribed()) {
                return Subscriptions.unsubscribed();
            }
            TimedAction timedAction = new TimedAction(Long.valueOf(j), COUNTER_UPDATER.incrementAndGet(this), null);
            this.queue.add(timedAction);
            if (this.wip.getAndIncrement() != 0) {
                return Subscriptions.create(new C13851(timedAction));
            }
            do {
                timedAction = (TimedAction) this.queue.poll();
                if (timedAction != null) {
                    timedAction.action.call();
                }
            } while (this.wip.decrementAndGet() > 0);
            return Subscriptions.unsubscribed();
        }

        public boolean isUnsubscribed() {
            return this.innerSubscription.isUnsubscribed();
        }

        public Subscription schedule(Action0 action0) {
            return enqueue(action0, now());
        }

        public Subscription schedule(Action0 action0, long j, TimeUnit timeUnit) {
            long now = now() + timeUnit.toMillis(j);
            return enqueue(new SleepingAction(action0, this, now), now);
        }

        public void unsubscribe() {
            this.innerSubscription.unsubscribe();
        }
    }

    private static final class TimedAction implements Comparable<TimedAction> {
        final Action0 action;
        final int count;
        final Long execTime;

        private TimedAction(Action0 action0, Long l, int i) {
            this.action = action0;
            this.execTime = l;
            this.count = i;
        }

        public int compareTo(TimedAction timedAction) {
            int compareTo = this.execTime.compareTo(timedAction.execTime);
            return compareTo == 0 ? TrampolineScheduler.compare(this.count, timedAction.count) : compareTo;
        }
    }

    static {
        INSTANCE = new TrampolineScheduler();
    }

    TrampolineScheduler() {
    }

    private static int compare(int i, int i2) {
        return i < i2 ? -1 : i == i2 ? 0 : 1;
    }

    static TrampolineScheduler instance() {
        return INSTANCE;
    }

    public Worker createWorker() {
        return new InnerCurrentThreadScheduler();
    }
}
