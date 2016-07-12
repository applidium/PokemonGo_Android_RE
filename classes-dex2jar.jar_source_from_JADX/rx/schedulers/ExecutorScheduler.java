package rx.schedulers;

import java.util.concurrent.ConcurrentLinkedQueue;
import java.util.concurrent.Executor;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicInteger;
import rx.Scheduler;
import rx.Scheduler.Worker;
import rx.Subscription;
import rx.functions.Action0;
import rx.internal.schedulers.ScheduledAction;
import rx.plugins.RxJavaPlugins;
import rx.subscriptions.CompositeSubscription;
import rx.subscriptions.MultipleAssignmentSubscription;
import rx.subscriptions.Subscriptions;

final class ExecutorScheduler extends Scheduler {
    final Executor executor;

    static final class ExecutorSchedulerWorker extends Worker implements Runnable {
        final Executor executor;
        final ConcurrentLinkedQueue<ScheduledAction> queue;
        final CompositeSubscription tasks;
        final AtomicInteger wip;

        /* renamed from: rx.schedulers.ExecutorScheduler.ExecutorSchedulerWorker.1 */
        class C13781 implements Action0 {
            final /* synthetic */ MultipleAssignmentSubscription val$mas;

            C13781(MultipleAssignmentSubscription multipleAssignmentSubscription) {
                this.val$mas = multipleAssignmentSubscription;
            }

            public void call() {
                ExecutorSchedulerWorker.this.tasks.remove(this.val$mas);
            }
        }

        /* renamed from: rx.schedulers.ExecutorScheduler.ExecutorSchedulerWorker.2 */
        class C13792 implements Action0 {
            final /* synthetic */ Action0 val$action;
            final /* synthetic */ MultipleAssignmentSubscription val$mas;
            final /* synthetic */ Subscription val$removeMas;

            C13792(MultipleAssignmentSubscription multipleAssignmentSubscription, Action0 action0, Subscription subscription) {
                this.val$mas = multipleAssignmentSubscription;
                this.val$action = action0;
                this.val$removeMas = subscription;
            }

            public void call() {
                if (!this.val$mas.isUnsubscribed()) {
                    Subscription schedule = ExecutorSchedulerWorker.this.schedule(this.val$action);
                    this.val$mas.set(schedule);
                    if (schedule.getClass() == ScheduledAction.class) {
                        ((ScheduledAction) schedule).add(this.val$removeMas);
                    }
                }
            }
        }

        public ExecutorSchedulerWorker(Executor executor) {
            this.executor = executor;
            this.queue = new ConcurrentLinkedQueue();
            this.wip = new AtomicInteger();
            this.tasks = new CompositeSubscription();
        }

        public boolean isUnsubscribed() {
            return this.tasks.isUnsubscribed();
        }

        public void run() {
            do {
                ScheduledAction scheduledAction = (ScheduledAction) this.queue.poll();
                if (!scheduledAction.isUnsubscribed()) {
                    scheduledAction.run();
                }
            } while (this.wip.decrementAndGet() > 0);
        }

        public Subscription schedule(Action0 action0) {
            if (isUnsubscribed()) {
                return Subscriptions.unsubscribed();
            }
            Subscription scheduledAction = new ScheduledAction(action0, this.tasks);
            this.tasks.add(scheduledAction);
            this.queue.offer(scheduledAction);
            if (this.wip.getAndIncrement() != 0) {
                return scheduledAction;
            }
            try {
                this.executor.execute(this);
                return scheduledAction;
            } catch (Throwable e) {
                this.tasks.remove(scheduledAction);
                this.wip.decrementAndGet();
                RxJavaPlugins.getInstance().getErrorHandler().handleError(e);
                throw e;
            }
        }

        public Subscription schedule(Action0 action0, long j, TimeUnit timeUnit) {
            if (j <= 0) {
                return schedule(action0);
            }
            if (isUnsubscribed()) {
                return Subscriptions.unsubscribed();
            }
            ScheduledExecutorService instance = this.executor instanceof ScheduledExecutorService ? (ScheduledExecutorService) this.executor : GenericScheduledExecutorService.getInstance();
            Object multipleAssignmentSubscription = new MultipleAssignmentSubscription();
            MultipleAssignmentSubscription multipleAssignmentSubscription2 = new MultipleAssignmentSubscription();
            multipleAssignmentSubscription2.set(multipleAssignmentSubscription);
            this.tasks.add(multipleAssignmentSubscription2);
            Subscription create = Subscriptions.create(new C13781(multipleAssignmentSubscription2));
            ScheduledAction scheduledAction = new ScheduledAction(new C13792(multipleAssignmentSubscription2, action0, create));
            multipleAssignmentSubscription.set(scheduledAction);
            try {
                scheduledAction.add(instance.schedule(scheduledAction, j, timeUnit));
                return create;
            } catch (Throwable e) {
                RxJavaPlugins.getInstance().getErrorHandler().handleError(e);
                throw e;
            }
        }

        public void unsubscribe() {
            this.tasks.unsubscribe();
        }
    }

    public ExecutorScheduler(Executor executor) {
        this.executor = executor;
    }

    public Worker createWorker() {
        return new ExecutorSchedulerWorker(this.executor);
    }
}
