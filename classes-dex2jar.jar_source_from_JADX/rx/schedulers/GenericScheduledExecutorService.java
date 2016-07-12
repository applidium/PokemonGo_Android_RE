package rx.schedulers;

import java.util.concurrent.Executors;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ScheduledThreadPoolExecutor;
import rx.internal.schedulers.NewThreadWorker;
import rx.internal.util.RxThreadFactory;

final class GenericScheduledExecutorService {
    private static final GenericScheduledExecutorService INSTANCE;
    private static final RxThreadFactory THREAD_FACTORY;
    private static final String THREAD_NAME_PREFIX = "RxScheduledExecutorPool-";
    private final ScheduledExecutorService executor;

    static {
        THREAD_FACTORY = new RxThreadFactory(THREAD_NAME_PREFIX);
        INSTANCE = new GenericScheduledExecutorService();
    }

    private GenericScheduledExecutorService() {
        int i = 8;
        int availableProcessors = Runtime.getRuntime().availableProcessors();
        if (availableProcessors > 4) {
            availableProcessors /= 2;
        }
        if (availableProcessors <= 8) {
            i = availableProcessors;
        }
        ScheduledExecutorService newScheduledThreadPool = Executors.newScheduledThreadPool(i, THREAD_FACTORY);
        if (!NewThreadWorker.tryEnableCancelPolicy(newScheduledThreadPool) && (newScheduledThreadPool instanceof ScheduledThreadPoolExecutor)) {
            NewThreadWorker.registerExecutor((ScheduledThreadPoolExecutor) newScheduledThreadPool);
        }
        this.executor = newScheduledThreadPool;
    }

    public static ScheduledExecutorService getInstance() {
        return INSTANCE.executor;
    }
}
