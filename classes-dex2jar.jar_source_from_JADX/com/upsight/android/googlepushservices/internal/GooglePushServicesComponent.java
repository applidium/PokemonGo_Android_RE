package com.upsight.android.googlepushservices.internal;

import com.upsight.android.googlepushservices.UpsightGooglePushServicesComponent;
import dagger.Component;
import javax.inject.Singleton;

@Singleton
@Component(modules = {GooglePushServicesModule.class})
public interface GooglePushServicesComponent extends UpsightGooglePushServicesComponent {
}
