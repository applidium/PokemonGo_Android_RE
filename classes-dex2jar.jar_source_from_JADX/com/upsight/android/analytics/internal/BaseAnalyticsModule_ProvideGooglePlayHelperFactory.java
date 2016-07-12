package com.upsight.android.analytics.internal;

import com.upsight.android.UpsightContext;
import com.upsight.android.analytics.UpsightGooglePlayHelper;
import dagger.internal.Factory;
import javax.inject.Provider;

public final class BaseAnalyticsModule_ProvideGooglePlayHelperFactory implements Factory<UpsightGooglePlayHelper> {
    static final /* synthetic */ boolean $assertionsDisabled;
    private final BaseAnalyticsModule module;
    private final Provider<UpsightContext> upsightProvider;

    static {
        $assertionsDisabled = !BaseAnalyticsModule_ProvideGooglePlayHelperFactory.class.desiredAssertionStatus();
    }

    public BaseAnalyticsModule_ProvideGooglePlayHelperFactory(BaseAnalyticsModule baseAnalyticsModule, Provider<UpsightContext> provider) {
        if ($assertionsDisabled || baseAnalyticsModule != null) {
            this.module = baseAnalyticsModule;
            if ($assertionsDisabled || provider != null) {
                this.upsightProvider = provider;
                return;
            }
            throw new AssertionError();
        }
        throw new AssertionError();
    }

    public static Factory<UpsightGooglePlayHelper> create(BaseAnalyticsModule baseAnalyticsModule, Provider<UpsightContext> provider) {
        return new BaseAnalyticsModule_ProvideGooglePlayHelperFactory(baseAnalyticsModule, provider);
    }

    public UpsightGooglePlayHelper get() {
        UpsightGooglePlayHelper provideGooglePlayHelper = this.module.provideGooglePlayHelper((UpsightContext) this.upsightProvider.get());
        if (provideGooglePlayHelper != null) {
            return provideGooglePlayHelper;
        }
        throw new NullPointerException("Cannot return null from a non-@Nullable @Provides method");
    }
}
