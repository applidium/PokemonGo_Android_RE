package com.upsight.android.internal;

import android.os.Handler;
import android.os.HandlerThread;
import dagger.Module;
import dagger.Provides;
import javax.inject.Named;
import javax.inject.Singleton;
import rx.Scheduler;
import rx.android.schedulers.AndroidSchedulers;
import rx.android.schedulers.HandlerScheduler;

@Module
public final class SchedulersModule {
    private static final String HANDLER_THREAD_NAME = "UpsightCoreEventLoopThread";
    public static final String SCHEDULER_CALLBACK = "callback";
    public static final String SCHEDULER_EXECUTION = "execution";

    @Singleton
    @Provides
    @Named("callback")
    Scheduler provideObserveOnScheduler() {
        return AndroidSchedulers.mainThread();
    }

    @Singleton
    @Provides
    @Named("execution")
    Scheduler provideSubscribeOnScheduler() {
        HandlerThread handlerThread = new HandlerThread(HANDLER_THREAD_NAME);
        handlerThread.start();
        return HandlerScheduler.from(new Handler(handlerThread.getLooper()));
    }
}
