package com.upsight.android.managedvariables.internal;

import dagger.internal.Factory;
import rx.Scheduler;

public final class BaseManagedVariablesModule_ProvideMainSchedulerFactory implements Factory<Scheduler> {
    static final /* synthetic */ boolean $assertionsDisabled;
    private final BaseManagedVariablesModule module;

    static {
        $assertionsDisabled = !BaseManagedVariablesModule_ProvideMainSchedulerFactory.class.desiredAssertionStatus();
    }

    public BaseManagedVariablesModule_ProvideMainSchedulerFactory(BaseManagedVariablesModule baseManagedVariablesModule) {
        if ($assertionsDisabled || baseManagedVariablesModule != null) {
            this.module = baseManagedVariablesModule;
            return;
        }
        throw new AssertionError();
    }

    public static Factory<Scheduler> create(BaseManagedVariablesModule baseManagedVariablesModule) {
        return new BaseManagedVariablesModule_ProvideMainSchedulerFactory(baseManagedVariablesModule);
    }

    public Scheduler get() {
        Scheduler provideMainScheduler = this.module.provideMainScheduler();
        if (provideMainScheduler != null) {
            return provideMainScheduler;
        }
        throw new NullPointerException("Cannot return null from a non-@Nullable @Provides method");
    }
}
