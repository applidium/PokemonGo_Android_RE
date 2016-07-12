package com.upsight.android.analytics.internal;

import dagger.Module;
import dagger.Provides;
import java.util.concurrent.Executors;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicInteger;
import javax.inject.Named;
import javax.inject.Singleton;
import rx.Scheduler;
import rx.schedulers.Schedulers;

@Module
public final class AnalyticsSchedulersModule {
    private static final int MAX_SENDING_THREADS_NUM = 5;
    public static final String SCHEDULING_EXECUTOR = "dispatcher-batching";
    private static final String SENDER_THREAD_NAME = "DispatcherSenderThread-";
    public static final String SENDING_EXECUTOR = "dispatcher-threadpool";
    private static final int SENDING_THREAD_IDLE_TIME = 15;
    private static final int STD_SENDING_THREADS_NUM = 1;

    /* renamed from: com.upsight.android.analytics.internal.AnalyticsSchedulersModule.1 */
    class C08771 implements ThreadFactory {
        private final AtomicInteger mSerial;

        C08771() {
            this.mSerial = new AtomicInteger();
        }

        public Thread newThread(Runnable runnable) {
            return new Thread(runnable, AnalyticsSchedulersModule.SENDER_THREAD_NAME + this.mSerial.incrementAndGet());
        }
    }

    @Singleton
    @Provides
    @Named("dispatcher-batching")
    public Scheduler provideSchedulingExecutor() {
        return Schedulers.from(Executors.newSingleThreadScheduledExecutor());
    }

    @Singleton
    @Provides
    @Named("dispatcher-threadpool")
    public Scheduler provideSendingExecutor() {
        return Schedulers.from(new ThreadPoolExecutor(STD_SENDING_THREADS_NUM, MAX_SENDING_THREADS_NUM, 15, TimeUnit.MINUTES, new LinkedBlockingQueue(), new C08771()));
    }
}
