package com.upsight.android.googlepushservices.internal;

import com.google.android.gms.gcm.GoogleCloudMessaging;
import com.upsight.android.UpsightContext;
import dagger.Module;
import dagger.Provides;
import javax.inject.Singleton;

@Module
public final class GoogleCloudMessagingModule {
    @Singleton
    @Provides
    public GoogleCloudMessaging provideGoogleCloudMessaging(UpsightContext upsightContext) {
        return GoogleCloudMessaging.getInstance(upsightContext);
    }
}
