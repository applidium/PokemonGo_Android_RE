package com.upsight.android.googlepushservices.internal;

import com.upsight.android.UpsightAnalyticsExtension;
import com.upsight.android.UpsightContext;
import com.upsight.android.analytics.UpsightAnalyticsComponent;
import com.upsight.android.analytics.internal.session.SessionManager;
import com.upsight.android.googlepushservices.UpsightGooglePushServicesApi;
import dagger.Module;
import dagger.Provides;
import javax.inject.Singleton;

@Module
public final class PushModule {
    private final UpsightContext mUpsight;

    public PushModule(UpsightContext upsightContext) {
        this.mUpsight = upsightContext;
    }

    @Singleton
    @Provides
    public UpsightGooglePushServicesApi provideGooglePushServicesApi(GooglePushServices googlePushServices) {
        return googlePushServices;
    }

    @Singleton
    @Provides
    SessionManager provideSessionManager(UpsightContext upsightContext) {
        return ((UpsightAnalyticsComponent) ((UpsightAnalyticsExtension) upsightContext.getUpsightExtension(UpsightAnalyticsExtension.EXTENSION_NAME)).getComponent()).sessionManager();
    }

    @Singleton
    @Provides
    UpsightContext provideUpsightContext() {
        return this.mUpsight;
    }
}
