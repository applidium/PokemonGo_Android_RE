package com.upsight.android.analytics.internal;

import com.upsight.android.analytics.UpsightAnalyticsApi;
import dagger.Module;
import dagger.Provides;
import javax.inject.Singleton;

@Module
public final class AnalyticsApiModule {
    @Singleton
    @Provides
    public UpsightAnalyticsApi provideUpsightAnalyticsApi(Analytics analytics) {
        return analytics;
    }
}
