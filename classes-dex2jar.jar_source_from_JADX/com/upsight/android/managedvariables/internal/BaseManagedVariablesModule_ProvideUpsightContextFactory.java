package com.upsight.android.managedvariables.internal;

import com.upsight.android.UpsightContext;
import dagger.internal.Factory;

public final class BaseManagedVariablesModule_ProvideUpsightContextFactory implements Factory<UpsightContext> {
    static final /* synthetic */ boolean $assertionsDisabled;
    private final BaseManagedVariablesModule module;

    static {
        $assertionsDisabled = !BaseManagedVariablesModule_ProvideUpsightContextFactory.class.desiredAssertionStatus();
    }

    public BaseManagedVariablesModule_ProvideUpsightContextFactory(BaseManagedVariablesModule baseManagedVariablesModule) {
        if ($assertionsDisabled || baseManagedVariablesModule != null) {
            this.module = baseManagedVariablesModule;
            return;
        }
        throw new AssertionError();
    }

    public static Factory<UpsightContext> create(BaseManagedVariablesModule baseManagedVariablesModule) {
        return new BaseManagedVariablesModule_ProvideUpsightContextFactory(baseManagedVariablesModule);
    }

    public UpsightContext get() {
        UpsightContext provideUpsightContext = this.module.provideUpsightContext();
        if (provideUpsightContext != null) {
            return provideUpsightContext;
        }
        throw new NullPointerException("Cannot return null from a non-@Nullable @Provides method");
    }
}
