package com.upsight.android.managedvariables.internal;

import com.upsight.android.UpsightContext;
import com.upsight.android.managedvariables.UpsightManagedVariablesApi;
import com.upsight.android.managedvariables.experience.UpsightUserExperience;
import com.upsight.android.managedvariables.internal.type.ManagedVariableManager;
import dagger.Module;
import dagger.Provides;
import javax.inject.Named;
import javax.inject.Singleton;
import rx.Scheduler;
import rx.android.schedulers.AndroidSchedulers;

@Module
public final class BaseManagedVariablesModule {
    public static final String SCHEDULER_MAIN = "main";
    private final UpsightContext mUpsight;

    public BaseManagedVariablesModule(UpsightContext upsightContext) {
        this.mUpsight = upsightContext;
    }

    @Singleton
    @Provides
    @Named("main")
    Scheduler provideMainScheduler() {
        return AndroidSchedulers.mainThread();
    }

    @Singleton
    @Provides
    UpsightManagedVariablesApi provideManagedVariablesApi(ManagedVariableManager managedVariableManager, UpsightUserExperience upsightUserExperience) {
        return new ManagedVariables(managedVariableManager, upsightUserExperience);
    }

    @Singleton
    @Provides
    UpsightContext provideUpsightContext() {
        return this.mUpsight;
    }
}
