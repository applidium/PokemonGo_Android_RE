package com.upsight.android.internal.persistence;

import android.content.Context;
import com.squareup.otto.Bus;
import com.upsight.android.internal.persistence.storable.StorableIdFactory;
import com.upsight.android.internal.persistence.storable.StorableInfoCache;
import com.upsight.android.persistence.UpsightDataStore;
import dagger.internal.Factory;
import javax.inject.Provider;
import rx.Scheduler;

public final class PersistenceModule_ProvideDataStoreFactory implements Factory<UpsightDataStore> {
    static final /* synthetic */ boolean $assertionsDisabled;
    private final Provider<Bus> busProvider;
    private final Provider<Context> contextProvider;
    private final Provider<StorableIdFactory> idFactoryProvider;
    private final Provider<StorableInfoCache> infoCacheProvider;
    private final PersistenceModule module;
    private final Provider<Scheduler> observeOnSchedulerProvider;
    private final Provider<Scheduler> subscribeOnSchedulerProvider;

    static {
        $assertionsDisabled = !PersistenceModule_ProvideDataStoreFactory.class.desiredAssertionStatus();
    }

    public PersistenceModule_ProvideDataStoreFactory(PersistenceModule persistenceModule, Provider<Context> provider, Provider<StorableInfoCache> provider2, Provider<StorableIdFactory> provider3, Provider<Scheduler> provider4, Provider<Scheduler> provider5, Provider<Bus> provider6) {
        if ($assertionsDisabled || persistenceModule != null) {
            this.module = persistenceModule;
            if ($assertionsDisabled || provider != null) {
                this.contextProvider = provider;
                if ($assertionsDisabled || provider2 != null) {
                    this.infoCacheProvider = provider2;
                    if ($assertionsDisabled || provider3 != null) {
                        this.idFactoryProvider = provider3;
                        if ($assertionsDisabled || provider4 != null) {
                            this.subscribeOnSchedulerProvider = provider4;
                            if ($assertionsDisabled || provider5 != null) {
                                this.observeOnSchedulerProvider = provider5;
                                if ($assertionsDisabled || provider6 != null) {
                                    this.busProvider = provider6;
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
        throw new AssertionError();
    }

    public static Factory<UpsightDataStore> create(PersistenceModule persistenceModule, Provider<Context> provider, Provider<StorableInfoCache> provider2, Provider<StorableIdFactory> provider3, Provider<Scheduler> provider4, Provider<Scheduler> provider5, Provider<Bus> provider6) {
        return new PersistenceModule_ProvideDataStoreFactory(persistenceModule, provider, provider2, provider3, provider4, provider5, provider6);
    }

    public UpsightDataStore get() {
        UpsightDataStore provideDataStore = this.module.provideDataStore((Context) this.contextProvider.get(), (StorableInfoCache) this.infoCacheProvider.get(), (StorableIdFactory) this.idFactoryProvider.get(), (Scheduler) this.subscribeOnSchedulerProvider.get(), (Scheduler) this.observeOnSchedulerProvider.get(), (Bus) this.busProvider.get());
        if (provideDataStore != null) {
            return provideDataStore;
        }
        throw new NullPointerException("Cannot return null from a non-@Nullable @Provides method");
    }
}
