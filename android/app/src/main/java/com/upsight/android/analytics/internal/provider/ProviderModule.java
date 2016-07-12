package com.upsight.android.analytics.internal.provider;

import com.upsight.android.analytics.provider.UpsightLocationTracker;
import com.upsight.android.analytics.provider.UpsightOptOutStatus;
import com.upsight.android.analytics.provider.UpsightUserAttributes;
import dagger.Module;
import dagger.Provides;
import javax.inject.Singleton;

@Module
public final class ProviderModule {
    @Singleton
    @Provides
    public UpsightOptOutStatus providesOptOutStatus(OptOutStatus optOutStatus) {
        return optOutStatus;
    }

    @Singleton
    @Provides
    public UpsightLocationTracker providesUpsightLocationTracker(LocationTracker locationTracker) {
        return locationTracker;
    }

    @Singleton
    @Provides
    public UpsightUserAttributes providesUpsightUserAttributes(UserAttributes userAttributes) {
        return userAttributes;
    }
}
