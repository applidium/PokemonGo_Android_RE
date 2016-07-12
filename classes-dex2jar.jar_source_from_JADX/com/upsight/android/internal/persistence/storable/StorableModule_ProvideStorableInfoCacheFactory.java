package com.upsight.android.internal.persistence.storable;

import com.fasterxml.jackson.databind.ObjectMapper;
import dagger.internal.Factory;
import javax.inject.Provider;

public final class StorableModule_ProvideStorableInfoCacheFactory implements Factory<StorableInfoCache> {
    static final /* synthetic */ boolean $assertionsDisabled;
    private final StorableModule module;
    private final Provider<ObjectMapper> objectMapperProvider;

    static {
        $assertionsDisabled = !StorableModule_ProvideStorableInfoCacheFactory.class.desiredAssertionStatus();
    }

    public StorableModule_ProvideStorableInfoCacheFactory(StorableModule storableModule, Provider<ObjectMapper> provider) {
        if ($assertionsDisabled || storableModule != null) {
            this.module = storableModule;
            if ($assertionsDisabled || provider != null) {
                this.objectMapperProvider = provider;
                return;
            }
            throw new AssertionError();
        }
        throw new AssertionError();
    }

    public static Factory<StorableInfoCache> create(StorableModule storableModule, Provider<ObjectMapper> provider) {
        return new StorableModule_ProvideStorableInfoCacheFactory(storableModule, provider);
    }

    public StorableInfoCache get() {
        StorableInfoCache provideStorableInfoCache = this.module.provideStorableInfoCache((ObjectMapper) this.objectMapperProvider.get());
        if (provideStorableInfoCache != null) {
            return provideStorableInfoCache;
        }
        throw new NullPointerException("Cannot return null from a non-@Nullable @Provides method");
    }
}
