package rx.android.schedulers;

import android.os.Handler;
import java.util.concurrent.TimeUnit;
import rx.Scheduler;
import rx.Scheduler.Worker;
import rx.Subscription;
import rx.android.plugins.RxAndroidPlugins;
import rx.functions.Action0;
import rx.internal.schedulers.ScheduledAction;
import rx.subscriptions.CompositeSubscription;
import rx.subscriptions.Subscriptions;

public final class HandlerScheduler extends Scheduler {
    private final Handler handler;

    static class HandlerWorker extends Worker {
        private final CompositeSubscription compositeSubscription;
        private final Handler handler;

        /* renamed from: rx.android.schedulers.HandlerScheduler.HandlerWorker.1 */
        class C11411 implements Action0 {
            final /* synthetic */ ScheduledAction val$scheduledAction;

            C11411(ScheduledAction scheduledAction) {
                this.val$scheduledAction = scheduledAction;
            }

            public void call() {
                HandlerWorker.this.handler.removeCallbacks(this.val$scheduledAction);
            }
        }

        HandlerWorker(Handler handler) {
            this.compositeSubscription = new CompositeSubscription();
            this.handler = handler;
        }

        public boolean isUnsubscribed() {
            return this.compositeSubscription.isUnsubscribed();
        }

        public Subscription schedule(Action0 action0) {
            return schedule(action0, 0, TimeUnit.MILLISECONDS);
        }

        public Subscription schedule(Action0 action0, long j, TimeUnit timeUnit) {
            if (this.compositeSubscription.isUnsubscribed()) {
                return Subscriptions.unsubscribed();
            }
            Subscription scheduledAction = new ScheduledAction(RxAndroidPlugins.getInstance().getSchedulersHook().onSchedule(action0));
            scheduledAction.addParent(this.compositeSubscription);
            this.compositeSubscription.add(scheduledAction);
            this.handler.postDelayed(scheduledAction, timeUnit.toMillis(j));
            scheduledAction.add(Subscriptions.create(new C11411(scheduledAction)));
            return scheduledAction;
        }

        public void unsubscribe() {
            this.compositeSubscription.unsubscribe();
        }
    }

    HandlerScheduler(Handler handler) {
        this.handler = handler;
    }

    public static HandlerScheduler from(Handler handler) {
        if (handler != null) {
            return new HandlerScheduler(handler);
        }
        throw new NullPointerException("handler == null");
    }

    public Worker createWorker() {
        return new HandlerWorker(this.handler);
    }
}
