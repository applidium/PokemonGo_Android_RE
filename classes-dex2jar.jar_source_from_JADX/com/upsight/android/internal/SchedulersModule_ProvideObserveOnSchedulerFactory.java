package com.upsight.android.internal;

import dagger.internal.Factory;
import rx.Scheduler;

public final class SchedulersModule_ProvideObserveOnSchedulerFactory implements Factory<Scheduler> {
    static final /* synthetic */ boolean $assertionsDisabled;
    private final SchedulersModule module;

    static {
        $assertionsDisabled = !SchedulersModule_ProvideObserveOnSchedulerFactory.class.desiredAssertionStatus();
    }

    public SchedulersModule_ProvideObserveOnSchedulerFactory(SchedulersModule schedulersModule) {
        if ($assertionsDisabled || schedulersModule != null) {
            this.module = schedulersModule;
            return;
        }
        throw new AssertionError();
    }

    public static Factory<Scheduler> create(SchedulersModule schedulersModule) {
        return new SchedulersModule_ProvideObserveOnSchedulerFactory(schedulersModule);
    }

    public Scheduler get() {
        Scheduler provideObserveOnScheduler = this.module.provideObserveOnScheduler();
        if (provideObserveOnScheduler != null) {
            return provideObserveOnScheduler;
        }
        throw new NullPointerException("Cannot return null from a non-@Nullable @Provides method");
    }
}
