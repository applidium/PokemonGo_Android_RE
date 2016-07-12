package com.upsight.android.analytics.internal;

import com.upsight.android.analytics.UpsightAnalyticsApi;
import dagger.internal.Factory;
import javax.inject.Provider;

public final class AnalyticsApiModule_ProvideUpsightAnalyticsApiFactory implements Factory<UpsightAnalyticsApi> {
    static final /* synthetic */ boolean $assertionsDisabled;
    private final Provider<Analytics> analyticsProvider;
    private final AnalyticsApiModule module;

    static {
        $assertionsDisabled = !AnalyticsApiModule_ProvideUpsightAnalyticsApiFactory.class.desiredAssertionStatus();
    }

    public AnalyticsApiModule_ProvideUpsightAnalyticsApiFactory(AnalyticsApiModule analyticsApiModule, Provider<Analytics> provider) {
        if ($assertionsDisabled || analyticsApiModule != null) {
            this.module = analyticsApiModule;
            if ($assertionsDisabled || provider != null) {
                this.analyticsProvider = provider;
                return;
            }
            throw new AssertionError();
        }
        throw new AssertionError();
    }

    public static Factory<UpsightAnalyticsApi> create(AnalyticsApiModule analyticsApiModule, Provider<Analytics> provider) {
        return new AnalyticsApiModule_ProvideUpsightAnalyticsApiFactory(analyticsApiModule, provider);
    }

    public UpsightAnalyticsApi get() {
        UpsightAnalyticsApi provideUpsightAnalyticsApi = this.module.provideUpsightAnalyticsApi((Analytics) this.analyticsProvider.get());
        if (provideUpsightAnalyticsApi != null) {
            return provideUpsightAnalyticsApi;
        }
        throw new NullPointerException("Cannot return null from a non-@Nullable @Provides method");
    }
}
