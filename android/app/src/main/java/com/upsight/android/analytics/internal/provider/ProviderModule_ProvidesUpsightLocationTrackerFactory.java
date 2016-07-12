package com.upsight.android.analytics.internal.provider;

import com.upsight.android.analytics.provider.UpsightLocationTracker;
import dagger.internal.Factory;
import javax.inject.Provider;

public final class ProviderModule_ProvidesUpsightLocationTrackerFactory implements Factory<UpsightLocationTracker> {
    static final /* synthetic */ boolean $assertionsDisabled;
    private final Provider<LocationTracker> locationTrackerProvider;
    private final ProviderModule module;

    static {
        $assertionsDisabled = !ProviderModule_ProvidesUpsightLocationTrackerFactory.class.desiredAssertionStatus();
    }

    public ProviderModule_ProvidesUpsightLocationTrackerFactory(ProviderModule providerModule, Provider<LocationTracker> provider) {
        if ($assertionsDisabled || providerModule != null) {
            this.module = providerModule;
            if ($assertionsDisabled || provider != null) {
                this.locationTrackerProvider = provider;
                return;
            }
            throw new AssertionError();
        }
        throw new AssertionError();
    }

    public static Factory<UpsightLocationTracker> create(ProviderModule providerModule, Provider<LocationTracker> provider) {
        return new ProviderModule_ProvidesUpsightLocationTrackerFactory(providerModule, provider);
    }

    public UpsightLocationTracker get() {
        UpsightLocationTracker providesUpsightLocationTracker = this.module.providesUpsightLocationTracker((LocationTracker) this.locationTrackerProvider.get());
        if (providesUpsightLocationTracker != null) {
            return providesUpsightLocationTracker;
        }
        throw new NullPointerException("Cannot return null from a non-@Nullable @Provides method");
    }
}
