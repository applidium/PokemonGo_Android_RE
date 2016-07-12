package com.upsight.android.marketing.internal;

import dagger.internal.Factory;
import rx.Scheduler;

public final class BaseMarketingModule_ProvideMainSchedulerFactory implements Factory<Scheduler> {
    static final /* synthetic */ boolean $assertionsDisabled;
    private final BaseMarketingModule module;

    static {
        $assertionsDisabled = !BaseMarketingModule_ProvideMainSchedulerFactory.class.desiredAssertionStatus();
    }

    public BaseMarketingModule_ProvideMainSchedulerFactory(BaseMarketingModule baseMarketingModule) {
        if ($assertionsDisabled || baseMarketingModule != null) {
            this.module = baseMarketingModule;
            return;
        }
        throw new AssertionError();
    }

    public static Factory<Scheduler> create(BaseMarketingModule baseMarketingModule) {
        return new BaseMarketingModule_ProvideMainSchedulerFactory(baseMarketingModule);
    }

    public Scheduler get() {
        Scheduler provideMainScheduler = this.module.provideMainScheduler();
        if (provideMainScheduler != null) {
            return provideMainScheduler;
        }
        throw new NullPointerException("Cannot return null from a non-@Nullable @Provides method");
    }
}
