package com.upsight.android.internal.persistence;

import android.content.Context;
import com.squareup.otto.Bus;
import com.upsight.android.internal.persistence.storable.StorableIdFactory;
import com.upsight.android.internal.persistence.storable.StorableInfoCache;
import com.upsight.android.persistence.UpsightDataStore;
import dagger.Module;
import dagger.Provides;
import javax.inject.Named;
import javax.inject.Singleton;
import rx.Scheduler;
import rx.schedulers.Schedulers;

@Module
public final class PersistenceModule {
    public static final String DATA_STORE_BACKGROUND = "background";

    @Singleton
    @Provides
    @Named("background")
    public UpsightDataStore provideBackgroundDataStore(Context context, @Named("execution") Scheduler scheduler, StorableIdFactory storableIdFactory, StorableInfoCache storableInfoCache, Bus bus) {
        return new DataStore(context, storableInfoCache, storableIdFactory, scheduler, Schedulers.immediate(), bus);
    }

    @Singleton
    @Provides
    UpsightDataStore provideDataStore(Context context, StorableInfoCache storableInfoCache, StorableIdFactory storableIdFactory, @Named("execution") Scheduler scheduler, @Named("callback") Scheduler scheduler2, Bus bus) {
        return new DataStore(context, storableInfoCache, storableIdFactory, scheduler, scheduler2, bus);
    }
}
