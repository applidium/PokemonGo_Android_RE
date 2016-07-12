package com.upsight.android.managedvariables.internal.type;

import com.upsight.android.UpsightContext;
import com.upsight.android.managedvariables.experience.UpsightUserExperience;
import dagger.internal.Factory;
import javax.inject.Provider;
import rx.Scheduler;

public final class UxmModule_ProvideUxmContentFactoryFactory implements Factory<UxmContentFactory> {
    static final /* synthetic */ boolean $assertionsDisabled;
    private final UxmModule module;
    private final Provider<Scheduler> schedulerProvider;
    private final Provider<UpsightContext> upsightProvider;
    private final Provider<UpsightUserExperience> userExperienceProvider;

    static {
        $assertionsDisabled = !UxmModule_ProvideUxmContentFactoryFactory.class.desiredAssertionStatus();
    }

    public UxmModule_ProvideUxmContentFactoryFactory(UxmModule uxmModule, Provider<UpsightContext> provider, Provider<Scheduler> provider2, Provider<UpsightUserExperience> provider3) {
        if ($assertionsDisabled || uxmModule != null) {
            this.module = uxmModule;
            if ($assertionsDisabled || provider != null) {
                this.upsightProvider = provider;
                if ($assertionsDisabled || provider2 != null) {
                    this.schedulerProvider = provider2;
                    if ($assertionsDisabled || provider3 != null) {
                        this.userExperienceProvider = provider3;
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

    public static Factory<UxmContentFactory> create(UxmModule uxmModule, Provider<UpsightContext> provider, Provider<Scheduler> provider2, Provider<UpsightUserExperience> provider3) {
        return new UxmModule_ProvideUxmContentFactoryFactory(uxmModule, provider, provider2, provider3);
    }

    public UxmContentFactory get() {
        UxmContentFactory provideUxmContentFactory = this.module.provideUxmContentFactory((UpsightContext) this.upsightProvider.get(), (Scheduler) this.schedulerProvider.get(), (UpsightUserExperience) this.userExperienceProvider.get());
        if (provideUxmContentFactory != null) {
            return provideUxmContentFactory;
        }
        throw new NullPointerException("Cannot return null from a non-@Nullable @Provides method");
    }
}
