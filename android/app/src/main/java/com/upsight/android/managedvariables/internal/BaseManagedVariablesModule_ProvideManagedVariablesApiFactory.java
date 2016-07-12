package com.upsight.android.managedvariables.internal;

import com.upsight.android.managedvariables.UpsightManagedVariablesApi;
import com.upsight.android.managedvariables.experience.UpsightUserExperience;
import com.upsight.android.managedvariables.internal.type.ManagedVariableManager;
import dagger.internal.Factory;
import javax.inject.Provider;

public final class BaseManagedVariablesModule_ProvideManagedVariablesApiFactory implements Factory<UpsightManagedVariablesApi> {
    static final /* synthetic */ boolean $assertionsDisabled;
    private final Provider<ManagedVariableManager> managedVariableManagerProvider;
    private final BaseManagedVariablesModule module;
    private final Provider<UpsightUserExperience> userExperienceProvider;

    static {
        $assertionsDisabled = !BaseManagedVariablesModule_ProvideManagedVariablesApiFactory.class.desiredAssertionStatus();
    }

    public BaseManagedVariablesModule_ProvideManagedVariablesApiFactory(BaseManagedVariablesModule baseManagedVariablesModule, Provider<ManagedVariableManager> provider, Provider<UpsightUserExperience> provider2) {
        if ($assertionsDisabled || baseManagedVariablesModule != null) {
            this.module = baseManagedVariablesModule;
            if ($assertionsDisabled || provider != null) {
                this.managedVariableManagerProvider = provider;
                if ($assertionsDisabled || provider2 != null) {
                    this.userExperienceProvider = provider2;
                    return;
                }
                throw new AssertionError();
            }
            throw new AssertionError();
        }
        throw new AssertionError();
    }

    public static Factory<UpsightManagedVariablesApi> create(BaseManagedVariablesModule baseManagedVariablesModule, Provider<ManagedVariableManager> provider, Provider<UpsightUserExperience> provider2) {
        return new BaseManagedVariablesModule_ProvideManagedVariablesApiFactory(baseManagedVariablesModule, provider, provider2);
    }

    public UpsightManagedVariablesApi get() {
        UpsightManagedVariablesApi provideManagedVariablesApi = this.module.provideManagedVariablesApi((ManagedVariableManager) this.managedVariableManagerProvider.get(), (UpsightUserExperience) this.userExperienceProvider.get());
        if (provideManagedVariablesApi != null) {
            return provideManagedVariablesApi;
        }
        throw new NullPointerException("Cannot return null from a non-@Nullable @Provides method");
    }
}
