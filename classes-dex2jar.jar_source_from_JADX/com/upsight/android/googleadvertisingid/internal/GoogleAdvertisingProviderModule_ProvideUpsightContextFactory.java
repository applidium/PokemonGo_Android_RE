package com.upsight.android.googleadvertisingid.internal;

import com.upsight.android.UpsightContext;
import dagger.internal.Factory;

public final class GoogleAdvertisingProviderModule_ProvideUpsightContextFactory implements Factory<UpsightContext> {
    static final /* synthetic */ boolean $assertionsDisabled;
    private final GoogleAdvertisingProviderModule module;

    static {
        $assertionsDisabled = !GoogleAdvertisingProviderModule_ProvideUpsightContextFactory.class.desiredAssertionStatus();
    }

    public GoogleAdvertisingProviderModule_ProvideUpsightContextFactory(GoogleAdvertisingProviderModule googleAdvertisingProviderModule) {
        if ($assertionsDisabled || googleAdvertisingProviderModule != null) {
            this.module = googleAdvertisingProviderModule;
            return;
        }
        throw new AssertionError();
    }

    public static Factory<UpsightContext> create(GoogleAdvertisingProviderModule googleAdvertisingProviderModule) {
        return new GoogleAdvertisingProviderModule_ProvideUpsightContextFactory(googleAdvertisingProviderModule);
    }

    public UpsightContext get() {
        UpsightContext provideUpsightContext = this.module.provideUpsightContext();
        if (provideUpsightContext != null) {
            return provideUpsightContext;
        }
        throw new NullPointerException("Cannot return null from a non-@Nullable @Provides method");
    }
}
