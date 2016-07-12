package com.upsight.android.managedvariables.internal.experience;

import com.upsight.android.UpsightContext;
import com.upsight.android.managedvariables.experience.UpsightUserExperience;
import dagger.internal.Factory;
import javax.inject.Provider;

public final class UserExperienceModule_ProvideUserExperienceFactory implements Factory<UpsightUserExperience> {
    static final /* synthetic */ boolean $assertionsDisabled;
    private final UserExperienceModule module;
    private final Provider<UpsightContext> upsightProvider;

    static {
        $assertionsDisabled = !UserExperienceModule_ProvideUserExperienceFactory.class.desiredAssertionStatus();
    }

    public UserExperienceModule_ProvideUserExperienceFactory(UserExperienceModule userExperienceModule, Provider<UpsightContext> provider) {
        if ($assertionsDisabled || userExperienceModule != null) {
            this.module = userExperienceModule;
            if ($assertionsDisabled || provider != null) {
                this.upsightProvider = provider;
                return;
            }
            throw new AssertionError();
        }
        throw new AssertionError();
    }

    public static Factory<UpsightUserExperience> create(UserExperienceModule userExperienceModule, Provider<UpsightContext> provider) {
        return new UserExperienceModule_ProvideUserExperienceFactory(userExperienceModule, provider);
    }

    public UpsightUserExperience get() {
        UpsightUserExperience provideUserExperience = this.module.provideUserExperience((UpsightContext) this.upsightProvider.get());
        if (provideUserExperience != null) {
            return provideUserExperience;
        }
        throw new NullPointerException("Cannot return null from a non-@Nullable @Provides method");
    }
}
