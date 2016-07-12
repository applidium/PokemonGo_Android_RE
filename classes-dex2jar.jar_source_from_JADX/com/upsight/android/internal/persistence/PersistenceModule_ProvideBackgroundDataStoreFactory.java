package com.upsight.android.internal.persistence;

import android.content.Context;
import com.squareup.otto.Bus;
import com.upsight.android.internal.persistence.storable.StorableIdFactory;
import com.upsight.android.internal.persistence.storable.StorableInfoCache;
import com.upsight.android.persistence.UpsightDataStore;
import dagger.internal.Factory;
import javax.inject.Provider;
import rx.Scheduler;

public final class PersistenceModule_ProvideBackgroundDataStoreFactory implements Factory<UpsightDataStore> {
    static final /* synthetic */ boolean $assertionsDisabled;
    private final Provider<Bus> busProvider;
    private final Provider<Context> contextProvider;
    private final Provider<StorableIdFactory> idFactoryProvider;
    private final Provider<StorableInfoCache> infoCacheProvider;
    private final PersistenceModule module;
    private final Provider<Scheduler> subscribeOnSchedulerProvider;

    static {
        $assertionsDisabled = !PersistenceModule_ProvideBackgroundDataStoreFactory.class.desiredAssertionStatus();
    }

    public PersistenceModule_ProvideBackgroundDataStoreFactory(PersistenceModule persistenceModule, Provider<Context> provider, Provider<Scheduler> provider2, Provider<StorableIdFactory> provider3, Provider<StorableInfoCache> provider4, Provider<Bus> provider5) {
        if ($assertionsDisabled || persistenceModule != null) {
            this.module = persistenceModule;
            if ($assertionsDisabled || provider != null) {
                this.contextProvider = provider;
                if ($assertionsDisabled || provider2 != null) {
                    this.subscribeOnSchedulerProvider = provider2;
                    if ($assertionsDisabled || provider3 != null) {
                        this.idFactoryProvider = provider3;
                        if ($assertionsDisabled || provider4 != null) {
                            this.infoCacheProvider = provider4;
                            if ($assertionsDisabled || provider5 != null) {
                                this.busProvider = provider5;
                                return;
                            }
                            throw new AssertionError();
                        }
                        throw new AssertionError();
                    }
                    throw new AssertionError();
                }
                throw new AssertionError();
            }
            throw new AssertionError();
        }
        throw new AssertionError();
    }

    public static Factory<UpsightDataStore> create(PersistenceModule persistenceModule, Provider<Context> provider, Provider<Scheduler> provider2, Provider<StorableIdFactory> provider3, Provider<StorableInfoCache> provider4, Provider<Bus> provider5) {
        return new PersistenceModule_ProvideBackgroundDataStoreFactory(persistenceModule, provider, provider2, provider3, provider4, provider5);
    }

    public UpsightDataStore get() {
        UpsightDataStore provideBackgroundDataStore = this.module.provideBackgroundDataStore((Context) this.contextProvider.get(), (Scheduler) this.subscribeOnSchedulerProvider.get(), (StorableIdFactory) this.idFactoryProvider.get(), (StorableInfoCache) this.infoCacheProvider.get(), (Bus) this.busProvider.get());
        if (provideBackgroundDataStore != null) {
            return provideBackgroundDataStore;
        }
        throw new NullPointerException("Cannot return null from a non-@Nullable @Provides method");
    }
}
