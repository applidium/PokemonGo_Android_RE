package com.upsight.android.internal.persistence.storable;

import com.fasterxml.jackson.databind.ObjectMapper;
import dagger.Module;
import dagger.Provides;
import javax.inject.Singleton;

@Module
public final class StorableModule {
    @Singleton
    @Provides
    public StorableInfoCache provideStorableInfoCache(ObjectMapper objectMapper) {
        return new StorableInfoCache(objectMapper);
    }
}
