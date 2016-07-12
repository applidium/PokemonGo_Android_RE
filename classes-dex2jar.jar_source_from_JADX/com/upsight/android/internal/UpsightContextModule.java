package com.upsight.android.internal;

import android.content.Context;
import com.upsight.android.UpsightContext;
import com.upsight.android.internal.util.SidHelper;
import com.upsight.android.logger.UpsightLogger;
import com.upsight.android.persistence.UpsightDataStore;
import dagger.Module;
import dagger.Provides;
import javax.inject.Named;
import javax.inject.Singleton;

@Module
public final class UpsightContextModule {
    @Singleton
    @Provides
    UpsightContext provideUpsightContext(Context context, @Named("com.upsight.sdk_plugin") String str, @Named("com.upsight.app_token") String str2, @Named("com.upsight.public_key") String str3, UpsightDataStore upsightDataStore, UpsightLogger upsightLogger) {
        return new UpsightContext(context, str, str2, str3, SidHelper.getSid(context), upsightDataStore, upsightLogger);
    }
}
