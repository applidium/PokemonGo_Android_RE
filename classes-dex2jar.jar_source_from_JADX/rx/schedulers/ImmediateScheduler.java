package rx.schedulers;

import java.util.concurrent.TimeUnit;
import rx.Scheduler;
import rx.Scheduler.Worker;
import rx.Subscription;
import rx.functions.Action0;
import rx.subscriptions.BooleanSubscription;
import rx.subscriptions.Subscriptions;

public final class ImmediateScheduler extends Scheduler {
    private static final ImmediateScheduler INSTANCE;

    private class InnerImmediateScheduler extends Worker implements Subscription {
        final BooleanSubscription innerSubscription;

        private InnerImmediateScheduler() {
            this.innerSubscription = new BooleanSubscription();
        }

        public boolean isUnsubscribed() {
            return this.innerSubscription.isUnsubscribed();
        }

        public Subscription schedule(Action0 action0) {
            action0.call();
            return Subscriptions.unsubscribed();
        }

        public Subscription schedule(Action0 action0, long j, TimeUnit timeUnit) {
            return schedule(new SleepingAction(action0, this, ImmediateScheduler.this.now() + timeUnit.toMillis(j)));
        }

        public void unsubscribe() {
            this.innerSubscription.unsubscribe();
        }
    }

    static {
        INSTANCE = new ImmediateScheduler();
    }

    ImmediateScheduler() {
    }

    static ImmediateScheduler instance() {
        return INSTANCE;
    }

    public Worker createWorker() {
        return new InnerImmediateScheduler();
    }
}
