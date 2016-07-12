package rx.internal.schedulers;

import java.util.concurrent.ThreadFactory;
import java.util.concurrent.TimeUnit;
import rx.Scheduler;
import rx.Scheduler.Worker;
import rx.Subscription;
import rx.functions.Action0;
import rx.internal.util.RxThreadFactory;
import rx.internal.util.SubscriptionList;
import rx.subscriptions.CompositeSubscription;
import rx.subscriptions.Subscriptions;

public class EventLoopsScheduler extends Scheduler {
    static final String KEY_MAX_THREADS = "rx.scheduler.max-computation-threads";
    static final int MAX_THREADS;
    private static final RxThreadFactory THREAD_FACTORY;
    private static final String THREAD_NAME_PREFIX = "RxComputationThreadPool-";
    final FixedSchedulerPool pool;

    private static class EventLoopWorker extends Worker {
        private final SubscriptionList both;
        private final PoolWorker poolWorker;
        private final SubscriptionList serial;
        private final CompositeSubscription timed;

        EventLoopWorker(PoolWorker poolWorker) {
            this.serial = new SubscriptionList();
            this.timed = new CompositeSubscription();
            this.both = new SubscriptionList(this.serial, this.timed);
            this.poolWorker = poolWorker;
        }

        public boolean isUnsubscribed() {
            return this.both.isUnsubscribed();
        }

        public Subscription schedule(Action0 action0) {
            if (isUnsubscribed()) {
                return Subscriptions.unsubscribed();
            }
            return this.poolWorker.scheduleActual(action0, 0, null, this.serial);
        }

        public Subscription schedule(Action0 action0, long j, TimeUnit timeUnit) {
            if (isUnsubscribed()) {
                return Subscriptions.unsubscribed();
            }
            return this.poolWorker.scheduleActual(action0, j, timeUnit, this.timed);
        }

        public void unsubscribe() {
            this.both.unsubscribe();
        }
    }

    static final class FixedSchedulerPool {
        final int cores;
        final PoolWorker[] eventLoops;
        long f919n;

        FixedSchedulerPool() {
            this.cores = EventLoopsScheduler.MAX_THREADS;
            this.eventLoops = new PoolWorker[this.cores];
            for (int i = EventLoopsScheduler.MAX_THREADS; i < this.cores; i++) {
                this.eventLoops[i] = new PoolWorker(EventLoopsScheduler.THREAD_FACTORY);
            }
        }

        public PoolWorker getEventLoop() {
            PoolWorker[] poolWorkerArr = this.eventLoops;
            long j = this.f919n;
            this.f919n = 1 + j;
            return poolWorkerArr[(int) (j % ((long) this.cores))];
        }
    }

    private static final class PoolWorker extends NewThreadWorker {
        PoolWorker(ThreadFactory threadFactory) {
            super(threadFactory);
        }
    }

    static {
        THREAD_FACTORY = new RxThreadFactory(THREAD_NAME_PREFIX);
        int intValue = Integer.getInteger(KEY_MAX_THREADS, MAX_THREADS).intValue();
        int availableProcessors = Runtime.getRuntime().availableProcessors();
        if (intValue <= 0 || intValue > availableProcessors) {
            intValue = availableProcessors;
        }
        MAX_THREADS = intValue;
    }

    public EventLoopsScheduler() {
        this.pool = new FixedSchedulerPool();
    }

    public Worker createWorker() {
        return new EventLoopWorker(this.pool.getEventLoop());
    }

    public Subscription scheduleDirect(Action0 action0) {
        return this.pool.getEventLoop().scheduleActual(action0, -1, TimeUnit.NANOSECONDS);
    }
}
