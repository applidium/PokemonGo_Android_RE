package com.upsight.android.managedvariables.internal;

import com.upsight.android.managedvariables.experience.UpsightUserExperience;
import com.upsight.android.managedvariables.internal.type.ManagedVariableManager;
import dagger.internal.Factory;
import javax.inject.Provider;

public final class ManagedVariables_Factory implements Factory<ManagedVariables> {
    static final /* synthetic */ boolean $assertionsDisabled;
    private final Provider<ManagedVariableManager> managedVariableManagerProvider;
    private final Provider<UpsightUserExperience> userExperienceProvider;

    static {
        $assertionsDisabled = !ManagedVariables_Factory.class.desiredAssertionStatus();
    }

    public ManagedVariables_Factory(Provider<ManagedVariableManager> provider, Provider<UpsightUserExperience> provider2) {
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

    public static Factory<ManagedVariables> create(Provider<ManagedVariableManager> provider, Provider<UpsightUserExperience> provider2) {
        return new ManagedVariables_Factory(provider, provider2);
    }

    public ManagedVariables get() {
        return new ManagedVariables((ManagedVariableManager) this.managedVariableManagerProvider.get(), (UpsightUserExperience) this.userExperienceProvider.get());
    }
}
