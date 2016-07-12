package rx.internal.util;

import java.util.concurrent.ThreadFactory;
import java.util.concurrent.atomic.AtomicLongFieldUpdater;

public final class RxThreadFactory implements ThreadFactory {
    static final AtomicLongFieldUpdater<RxThreadFactory> COUNTER_UPDATER;
    volatile long counter;
    final String prefix;

    static {
        COUNTER_UPDATER = AtomicLongFieldUpdater.newUpdater(RxThreadFactory.class, "counter");
    }

    public RxThreadFactory(String str) {
        this.prefix = str;
    }

    public Thread newThread(Runnable runnable) {
        Thread thread = new Thread(runnable, this.prefix + COUNTER_UPDATER.incrementAndGet(this));
        thread.setDaemon(true);
        return thread;
    }
}
