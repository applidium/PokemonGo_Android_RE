package com.upsight.android.analytics.internal.session;

import android.app.Application.ActivityLifecycleCallbacks;
import dagger.internal.Factory;
import javax.inject.Provider;

public final class LifecycleTrackerModule_ProvideUpsightLifeCycleCallbacksFactory implements Factory<ActivityLifecycleCallbacks> {
    static final /* synthetic */ boolean $assertionsDisabled;
    private final Provider<ActivityLifecycleTracker> handlerProvider;
    private final LifecycleTrackerModule module;

    static {
        $assertionsDisabled = !LifecycleTrackerModule_ProvideUpsightLifeCycleCallbacksFactory.class.desiredAssertionStatus();
    }

    public LifecycleTrackerModule_ProvideUpsightLifeCycleCallbacksFactory(LifecycleTrackerModule lifecycleTrackerModule, Provider<ActivityLifecycleTracker> provider) {
        if ($assertionsDisabled || lifecycleTrackerModule != null) {
            this.module = lifecycleTrackerModule;
            if ($assertionsDisabled || provider != null) {
                this.handlerProvider = provider;
                return;
            }
            throw new AssertionError();
        }
        throw new AssertionError();
    }

    public static Factory<ActivityLifecycleCallbacks> create(LifecycleTrackerModule lifecycleTrackerModule, Provider<ActivityLifecycleTracker> provider) {
        return new LifecycleTrackerModule_ProvideUpsightLifeCycleCallbacksFactory(lifecycleTrackerModule, provider);
    }

    public ActivityLifecycleCallbacks get() {
        ActivityLifecycleCallbacks provideUpsightLifeCycleCallbacks = this.module.provideUpsightLifeCycleCallbacks((ActivityLifecycleTracker) this.handlerProvider.get());
        if (provideUpsightLifeCycleCallbacks != null) {
            return provideUpsightLifeCycleCallbacks;
        }
        throw new NullPointerException("Cannot return null from a non-@Nullable @Provides method");
    }
}
