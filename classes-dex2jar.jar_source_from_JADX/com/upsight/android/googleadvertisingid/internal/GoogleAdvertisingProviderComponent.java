package com.upsight.android.googleadvertisingid.internal;

import com.upsight.android.googleadvertisingid.UpsightGoogleAdvertisingProviderComponent;
import dagger.Component;
import javax.inject.Singleton;

@Singleton
@Component(modules = {GoogleAdvertisingProviderModule.class})
public interface GoogleAdvertisingProviderComponent extends UpsightGoogleAdvertisingProviderComponent {
}
