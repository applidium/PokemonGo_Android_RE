package com.upsight.android.googleadvertisingid.internal;

import com.upsight.android.UpsightContext;
import dagger.Module;
import dagger.Provides;
import javax.inject.Singleton;

@Module
public final class GoogleAdvertisingProviderModule {
    private final UpsightContext mUpsight;

    public GoogleAdvertisingProviderModule(UpsightContext upsightContext) {
        this.mUpsight = upsightContext;
    }

    @Singleton
    @Provides
    public GooglePlayAdvertisingProvider provideGooglePlayAdvertisingProvider() {
        return new GooglePlayAdvertisingProvider(this.mUpsight, this.mUpsight.getLogger());
    }

    @Singleton
    @Provides
    UpsightContext provideUpsightContext() {
        return this.mUpsight;
    }
}
