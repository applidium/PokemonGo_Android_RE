package rx.schedulers;

import rx.Scheduler;
import rx.Scheduler.Worker;
import rx.internal.schedulers.NewThreadWorker;
import rx.internal.util.RxThreadFactory;

public final class NewThreadScheduler extends Scheduler {
    private static final NewThreadScheduler INSTANCE;
    private static final RxThreadFactory THREAD_FACTORY;
    private static final String THREAD_NAME_PREFIX = "RxNewThreadScheduler-";

    static {
        THREAD_FACTORY = new RxThreadFactory(THREAD_NAME_PREFIX);
        INSTANCE = new NewThreadScheduler();
    }

    private NewThreadScheduler() {
    }

    static NewThreadScheduler instance() {
        return INSTANCE;
    }

    public Worker createWorker() {
        return new NewThreadWorker(THREAD_FACTORY);
    }
}
