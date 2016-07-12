package com.upsight.android.managedvariables.internal.type;

import com.upsight.android.UpsightContext;
import dagger.internal.Factory;
import javax.inject.Provider;
import rx.Scheduler;

public final class UxmModule_ProvideManagedVariableManagerFactory implements Factory<ManagedVariableManager> {
    static final /* synthetic */ boolean $assertionsDisabled;
    private final UxmModule module;
    private final Provider<Scheduler> schedulerProvider;
    private final Provider<UpsightContext> upsightProvider;
    private final Provider<UxmSchema> uxmSchemaProvider;

    static {
        $assertionsDisabled = !UxmModule_ProvideManagedVariableManagerFactory.class.desiredAssertionStatus();
    }

    public UxmModule_ProvideManagedVariableManagerFactory(UxmModule uxmModule, Provider<UpsightContext> provider, Provider<Scheduler> provider2, Provider<UxmSchema> provider3) {
        if ($assertionsDisabled || uxmModule != null) {
            this.module = uxmModule;
            if ($assertionsDisabled || provider != null) {
                this.upsightProvider = provider;
                if ($assertionsDisabled || provider2 != null) {
                    this.schedulerProvider = provider2;
                    if ($assertionsDisabled || provider3 != null) {
                        this.uxmSchemaProvider = provider3;
                        return;
                    }
                    throw new AssertionError();
                }
                throw new AssertionError();
            }
            throw new AssertionError();
        }
        throw new AssertionError();
    }

    public static Factory<ManagedVariableManager> create(UxmModule uxmModule, Provider<UpsightContext> provider, Provider<Scheduler> provider2, Provider<UxmSchema> provider3) {
        return new UxmModule_ProvideManagedVariableManagerFactory(uxmModule, provider, provider2, provider3);
    }

    public ManagedVariableManager get() {
        ManagedVariableManager provideManagedVariableManager = this.module.provideManagedVariableManager((UpsightContext) this.upsightProvider.get(), (Scheduler) this.schedulerProvider.get(), (UxmSchema) this.uxmSchemaProvider.get());
        if (provideManagedVariableManager != null) {
            return provideManagedVariableManager;
        }
        throw new NullPointerException("Cannot return null from a non-@Nullable @Provides method");
    }
}
