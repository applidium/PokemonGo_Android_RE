package com.upsight.android.analytics.internal.session;

import com.upsight.android.analytics.UpsightLifeCycleTracker;
import dagger.internal.Factory;
import javax.inject.Provider;

public final class LifecycleTrackerModule_ProvideManualTrackerFactory implements Factory<UpsightLifeCycleTracker> {
    static final /* synthetic */ boolean $assertionsDisabled;
    private final LifecycleTrackerModule module;
    private final Provider<ManualTracker> trackerProvider;

    static {
        $assertionsDisabled = !LifecycleTrackerModule_ProvideManualTrackerFactory.class.desiredAssertionStatus();
    }

    public LifecycleTrackerModule_ProvideManualTrackerFactory(LifecycleTrackerModule lifecycleTrackerModule, Provider<ManualTracker> provider) {
        if ($assertionsDisabled || lifecycleTrackerModule != null) {
            this.module = lifecycleTrackerModule;
            if ($assertionsDisabled || provider != null) {
                this.trackerProvider = provider;
                return;
            }
            throw new AssertionError();
        }
        throw new AssertionError();
    }

    public static Factory<UpsightLifeCycleTracker> create(LifecycleTrackerModule lifecycleTrackerModule, Provider<ManualTracker> provider) {
        return new LifecycleTrackerModule_ProvideManualTrackerFactory(lifecycleTrackerModule, provider);
    }

    public UpsightLifeCycleTracker get() {
        UpsightLifeCycleTracker provideManualTracker = this.module.provideManualTracker((ManualTracker) this.trackerProvider.get());
        if (provideManualTracker != null) {
            return provideManualTracker;
        }
        throw new NullPointerException("Cannot return null from a non-@Nullable @Provides method");
    }
}
