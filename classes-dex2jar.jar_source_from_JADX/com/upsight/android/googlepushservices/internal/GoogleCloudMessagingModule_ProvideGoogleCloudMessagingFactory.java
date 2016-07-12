package com.upsight.android.googlepushservices.internal;

import com.google.android.gms.gcm.GoogleCloudMessaging;
import com.upsight.android.UpsightContext;
import dagger.internal.Factory;
import javax.inject.Provider;

public final class GoogleCloudMessagingModule_ProvideGoogleCloudMessagingFactory implements Factory<GoogleCloudMessaging> {
    static final /* synthetic */ boolean $assertionsDisabled;
    private final GoogleCloudMessagingModule module;
    private final Provider<UpsightContext> upsightProvider;

    static {
        $assertionsDisabled = !GoogleCloudMessagingModule_ProvideGoogleCloudMessagingFactory.class.desiredAssertionStatus();
    }

    public GoogleCloudMessagingModule_ProvideGoogleCloudMessagingFactory(GoogleCloudMessagingModule googleCloudMessagingModule, Provider<UpsightContext> provider) {
        if ($assertionsDisabled || googleCloudMessagingModule != null) {
            this.module = googleCloudMessagingModule;
            if ($assertionsDisabled || provider != null) {
                this.upsightProvider = provider;
                return;
            }
            throw new AssertionError();
        }
        throw new AssertionError();
    }

    public static Factory<GoogleCloudMessaging> create(GoogleCloudMessagingModule googleCloudMessagingModule, Provider<UpsightContext> provider) {
        return new GoogleCloudMessagingModule_ProvideGoogleCloudMessagingFactory(googleCloudMessagingModule, provider);
    }

    public GoogleCloudMessaging get() {
        GoogleCloudMessaging provideGoogleCloudMessaging = this.module.provideGoogleCloudMessaging((UpsightContext) this.upsightProvider.get());
        if (provideGoogleCloudMessaging != null) {
            return provideGoogleCloudMessaging;
        }
        throw new NullPointerException("Cannot return null from a non-@Nullable @Provides method");
    }
}
