package com.upsight.android.internal;

import android.content.Context;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.squareup.otto.Bus;
import com.upsight.android.UpsightContext;
import com.upsight.android.internal.logger.LogWriter;
import com.upsight.android.internal.logger.LoggerModule;
import com.upsight.android.internal.logger.LoggerModule_ProvideUpsightLoggerFactory;
import com.upsight.android.internal.persistence.PersistenceModule;
import com.upsight.android.internal.persistence.PersistenceModule_ProvideBackgroundDataStoreFactory;
import com.upsight.android.internal.persistence.PersistenceModule_ProvideDataStoreFactory;
import com.upsight.android.internal.persistence.storable.StorableIdFactory;
import com.upsight.android.internal.persistence.storable.StorableInfoCache;
import com.upsight.android.internal.persistence.storable.StorableModule;
import com.upsight.android.internal.persistence.storable.StorableModule_ProvideStorableInfoCacheFactory;
import com.upsight.android.logger.UpsightLogger;
import com.upsight.android.persistence.UpsightDataStore;
import dagger.internal.ScopedProvider;
import javax.inject.Provider;
import rx.Scheduler;

public final class DaggerCoreComponent implements CoreComponent {
    static final /* synthetic */ boolean $assertionsDisabled;
    private Provider<Context> provideApplicationContextProvider;
    private Provider<String> provideApplicationTokenProvider;
    private Provider<UpsightDataStore> provideBackgroundDataStoreProvider;
    private Provider<Bus> provideBusProvider;
    private Provider<UpsightDataStore> provideDataStoreProvider;
    private Provider<LogWriter> provideLogWriterProvider;
    private Provider<ObjectMapper> provideObjectMapperProvider;
    private Provider<Scheduler> provideObserveOnSchedulerProvider;
    private Provider<String> providePublicKeyProvider;
    private Provider<String> provideSdkPluginProvider;
    private Provider<StorableInfoCache> provideStorableInfoCacheProvider;
    private Provider<Scheduler> provideSubscribeOnSchedulerProvider;
    private Provider<StorableIdFactory> provideTypeIdGeneratorProvider;
    private Provider<UpsightContext> provideUpsightContextProvider;
    private Provider<UpsightLogger> provideUpsightLoggerProvider;

    public static final class Builder {
        private ContextModule contextModule;
        private CoreModule coreModule;
        private LoggerModule loggerModule;
        private ObjectMapperModule objectMapperModule;
        private PersistenceModule persistenceModule;
        private PropertiesModule propertiesModule;
        private SchedulersModule schedulersModule;
        private StorableModule storableModule;
        private UpsightContextModule upsightContextModule;

        private Builder() {
        }

        public CoreComponent build() {
            if (this.coreModule == null) {
                this.coreModule = new CoreModule();
            }
            if (this.upsightContextModule == null) {
                this.upsightContextModule = new UpsightContextModule();
            }
            if (this.contextModule == null) {
                throw new IllegalStateException("contextModule must be set");
            }
            if (this.propertiesModule == null) {
                this.propertiesModule = new PropertiesModule();
            }
            if (this.objectMapperModule == null) {
                this.objectMapperModule = new ObjectMapperModule();
            }
            if (this.schedulersModule == null) {
                this.schedulersModule = new SchedulersModule();
            }
            if (this.storableModule == null) {
                this.storableModule = new StorableModule();
            }
            if (this.persistenceModule == null) {
                this.persistenceModule = new PersistenceModule();
            }
            if (this.loggerModule == null) {
                this.loggerModule = new LoggerModule();
            }
            return new DaggerCoreComponent();
        }

        public Builder contextModule(ContextModule contextModule) {
            if (contextModule == null) {
                throw new NullPointerException("contextModule");
            }
            this.contextModule = contextModule;
            return this;
        }

        public Builder coreModule(CoreModule coreModule) {
            if (coreModule == null) {
                throw new NullPointerException("coreModule");
            }
            this.coreModule = coreModule;
            return this;
        }

        public Builder loggerModule(LoggerModule loggerModule) {
            if (loggerModule == null) {
                throw new NullPointerException("loggerModule");
            }
            this.loggerModule = loggerModule;
            return this;
        }

        public Builder objectMapperModule(ObjectMapperModule objectMapperModule) {
            if (objectMapperModule == null) {
                throw new NullPointerException("objectMapperModule");
            }
            this.objectMapperModule = objectMapperModule;
            return this;
        }

        public Builder persistenceModule(PersistenceModule persistenceModule) {
            if (persistenceModule == null) {
                throw new NullPointerException("persistenceModule");
            }
            this.persistenceModule = persistenceModule;
            return this;
        }

        public Builder propertiesModule(PropertiesModule propertiesModule) {
            if (propertiesModule == null) {
                throw new NullPointerException("propertiesModule");
            }
            this.propertiesModule = propertiesModule;
            return this;
        }

        public Builder schedulersModule(SchedulersModule schedulersModule) {
            if (schedulersModule == null) {
                throw new NullPointerException("schedulersModule");
            }
            this.schedulersModule = schedulersModule;
            return this;
        }

        public Builder storableModule(StorableModule storableModule) {
            if (storableModule == null) {
                throw new NullPointerException("storableModule");
            }
            this.storableModule = storableModule;
            return this;
        }

        public Builder upsightContextModule(UpsightContextModule upsightContextModule) {
            if (upsightContextModule == null) {
                throw new NullPointerException("upsightContextModule");
            }
            this.upsightContextModule = upsightContextModule;
            return this;
        }
    }

    static {
        $assertionsDisabled = !DaggerCoreComponent.class.desiredAssertionStatus();
    }

    private DaggerCoreComponent(Builder builder) {
        if ($assertionsDisabled || builder != null) {
            initialize(builder);
            return;
        }
        throw new AssertionError();
    }

    public static Builder builder() {
        return new Builder();
    }

    private void initialize(Builder builder) {
        this.provideApplicationContextProvider = ScopedProvider.create(ContextModule_ProvideApplicationContextFactory.create(builder.contextModule));
        this.provideObjectMapperProvider = ScopedProvider.create(ObjectMapperModule_ProvideObjectMapperFactory.create(builder.objectMapperModule));
        this.provideStorableInfoCacheProvider = ScopedProvider.create(StorableModule_ProvideStorableInfoCacheFactory.create(builder.storableModule, this.provideObjectMapperProvider));
        this.provideTypeIdGeneratorProvider = ScopedProvider.create(ContextModule_ProvideTypeIdGeneratorFactory.create(builder.contextModule));
        this.provideSubscribeOnSchedulerProvider = ScopedProvider.create(SchedulersModule_ProvideSubscribeOnSchedulerFactory.create(builder.schedulersModule));
        this.provideObserveOnSchedulerProvider = ScopedProvider.create(SchedulersModule_ProvideObserveOnSchedulerFactory.create(builder.schedulersModule));
        this.provideBusProvider = ScopedProvider.create(ContextModule_ProvideBusFactory.create(builder.contextModule));
        this.provideDataStoreProvider = ScopedProvider.create(PersistenceModule_ProvideDataStoreFactory.create(builder.persistenceModule, this.provideApplicationContextProvider, this.provideStorableInfoCacheProvider, this.provideTypeIdGeneratorProvider, this.provideSubscribeOnSchedulerProvider, this.provideObserveOnSchedulerProvider, this.provideBusProvider));
        this.provideLogWriterProvider = ScopedProvider.create(ContextModule_ProvideLogWriterFactory.create(builder.contextModule));
        this.provideUpsightLoggerProvider = ScopedProvider.create(LoggerModule_ProvideUpsightLoggerFactory.create(builder.loggerModule, this.provideDataStoreProvider, this.provideLogWriterProvider));
        this.provideSdkPluginProvider = ScopedProvider.create(PropertiesModule_ProvideSdkPluginFactory.create(builder.propertiesModule, this.provideApplicationContextProvider, this.provideUpsightLoggerProvider));
        this.provideApplicationTokenProvider = ScopedProvider.create(PropertiesModule_ProvideApplicationTokenFactory.create(builder.propertiesModule, this.provideApplicationContextProvider, this.provideUpsightLoggerProvider));
        this.providePublicKeyProvider = ScopedProvider.create(PropertiesModule_ProvidePublicKeyFactory.create(builder.propertiesModule, this.provideApplicationContextProvider, this.provideUpsightLoggerProvider));
        this.provideUpsightContextProvider = ScopedProvider.create(UpsightContextModule_ProvideUpsightContextFactory.create(builder.upsightContextModule, this.provideApplicationContextProvider, this.provideSdkPluginProvider, this.provideApplicationTokenProvider, this.providePublicKeyProvider, this.provideDataStoreProvider, this.provideUpsightLoggerProvider));
        this.provideBackgroundDataStoreProvider = ScopedProvider.create(PersistenceModule_ProvideBackgroundDataStoreFactory.create(builder.persistenceModule, this.provideApplicationContextProvider, this.provideSubscribeOnSchedulerProvider, this.provideTypeIdGeneratorProvider, this.provideStorableInfoCacheProvider, this.provideBusProvider));
    }

    public Context applicationContext() {
        return (Context) this.provideApplicationContextProvider.get();
    }

    public UpsightDataStore backgroundDataStore() {
        return (UpsightDataStore) this.provideBackgroundDataStoreProvider.get();
    }

    public Bus bus() {
        return (Bus) this.provideBusProvider.get();
    }

    public ObjectMapper objectMapper() {
        return (ObjectMapper) this.provideObjectMapperProvider.get();
    }

    public Scheduler observeOnScheduler() {
        return (Scheduler) this.provideObserveOnSchedulerProvider.get();
    }

    public Scheduler subscribeOnScheduler() {
        return (Scheduler) this.provideSubscribeOnSchedulerProvider.get();
    }

    public UpsightContext upsightContext() {
        return (UpsightContext) this.provideUpsightContextProvider.get();
    }
}
