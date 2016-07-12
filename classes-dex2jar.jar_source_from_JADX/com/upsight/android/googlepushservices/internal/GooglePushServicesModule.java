package com.upsight.android.googlepushservices.internal;

import dagger.Module;

@Module(includes = {PushModule.class, GoogleCloudMessagingModule.class})
public final class GooglePushServicesModule {
}
