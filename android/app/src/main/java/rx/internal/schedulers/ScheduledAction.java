package rx.internal.schedulers;

import java.util.concurrent.Future;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicReference;
import rx.Subscription;
import rx.exceptions.OnErrorNotImplementedException;
import rx.functions.Action0;
import rx.internal.util.SubscriptionList;
import rx.plugins.RxJavaPlugins;
import rx.subscriptions.CompositeSubscription;

public final class ScheduledAction extends AtomicReference<Thread> implements Runnable, Subscription {
    private static final long serialVersionUID = -3962399486978279857L;
    final Action0 action;
    final SubscriptionList cancel;

    private final class FutureCompleter implements Subscription {
        private final Future<?> f920f;

        private FutureCompleter(Future<?> future) {
            this.f920f = future;
        }

        public boolean isUnsubscribed() {
            return this.f920f.isCancelled();
        }

        public void unsubscribe() {
            if (ScheduledAction.this.get() != Thread.currentThread()) {
                this.f920f.cancel(true);
            } else {
                this.f920f.cancel(false);
            }
        }
    }

    private static final class Remover2 extends AtomicBoolean implements Subscription {
        private static final long serialVersionUID = 247232374289553518L;
        final SubscriptionList parent;
        final ScheduledAction f921s;

        public Remover2(ScheduledAction scheduledAction, SubscriptionList subscriptionList) {
            this.f921s = scheduledAction;
            this.parent = subscriptionList;
        }

        public boolean isUnsubscribed() {
            return this.f921s.isUnsubscribed();
        }

        public void unsubscribe() {
            if (compareAndSet(false, true)) {
                this.parent.remove(this.f921s);
            }
        }
    }

    private static final class Remover extends AtomicBoolean implements Subscription {
        private static final long serialVersionUID = 247232374289553518L;
        final CompositeSubscription parent;
        final ScheduledAction f922s;

        public Remover(ScheduledAction scheduledAction, CompositeSubscription compositeSubscription) {
            this.f922s = scheduledAction;
            this.parent = compositeSubscription;
        }

        public boolean isUnsubscribed() {
            return this.f922s.isUnsubscribed();
        }

        public void unsubscribe() {
            if (compareAndSet(false, true)) {
                this.parent.remove(this.f922s);
            }
        }
    }

    public ScheduledAction(Action0 action0) {
        this.action = action0;
        this.cancel = new SubscriptionList();
    }

    public ScheduledAction(Action0 action0, SubscriptionList subscriptionList) {
        this.action = action0;
        this.cancel = new SubscriptionList(new Remover2(this, subscriptionList));
    }

    public ScheduledAction(Action0 action0, CompositeSubscription compositeSubscription) {
        this.action = action0;
        this.cancel = new SubscriptionList(new Remover(this, compositeSubscription));
    }

    public void add(Future<?> future) {
        this.cancel.add(new FutureCompleter(future, null));
    }

    public void add(Subscription subscription) {
        this.cancel.add(subscription);
    }

    public void addParent(SubscriptionList subscriptionList) {
        this.cancel.add(new Remover2(this, subscriptionList));
    }

    public void addParent(CompositeSubscription compositeSubscription) {
        this.cancel.add(new Remover(this, compositeSubscription));
    }

    public boolean isUnsubscribed() {
        return this.cancel.isUnsubscribed();
    }

    public void run() {
        try {
            lazySet(Thread.currentThread());
            this.action.call();
        } catch (Throwable th) {
            Throwable th2 = th2 instanceof OnErrorNotImplementedException ? new IllegalStateException("Exception thrown on Scheduler.Worker thread. Add `onError` handling.", th2) : new IllegalStateException("Fatal Exception thrown on Scheduler.Worker thread.", th2);
            RxJavaPlugins.getInstance().getErrorHandler().handleError(th2);
            Thread currentThread = Thread.currentThread();
            currentThread.getUncaughtExceptionHandler().uncaughtException(currentThread, th2);
        } finally {
            unsubscribe();
        }
    }

    public void unsubscribe() {
        if (!this.cancel.isUnsubscribed()) {
            this.cancel.unsubscribe();
        }
    }
}
