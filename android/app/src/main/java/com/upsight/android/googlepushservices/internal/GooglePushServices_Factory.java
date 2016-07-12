package com.upsight.android.googlepushservices.internal;

import com.upsight.android.UpsightContext;
import dagger.internal.Factory;
import javax.inject.Provider;

public final class GooglePushServices_Factory implements Factory<GooglePushServices> {
    static final /* synthetic */ boolean $assertionsDisabled;
    private final Provider<UpsightContext> upsightProvider;

    static {
        $assertionsDisabled = !GooglePushServices_Factory.class.desiredAssertionStatus();
    }

    public GooglePushServices_Factory(Provider<UpsightContext> provider) {
        if ($assertionsDisabled || provider != null) {
            this.upsightProvider = provider;
            return;
        }
        throw new AssertionError();
    }

    public static Factory<GooglePushServices> create(Provider<UpsightContext> provider) {
        return new GooglePushServices_Factory(provider);
    }

    public GooglePushServices get() {
        return new GooglePushServices((UpsightContext) this.upsightProvider.get());
    }
}
