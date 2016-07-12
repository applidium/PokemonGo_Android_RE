package com.upsight.android.analytics.internal;

import com.fasterxml.jackson.databind.ObjectMapper;
import com.upsight.android.UpsightContext;
import dagger.Module;
import dagger.Provides;
import javax.inject.Named;
import javax.inject.Singleton;

@Module
public final class ConfigObjectMapperModule {
    public static final String MAPPER_CONFIG = "config-mapper";

    @Singleton
    @Provides
    @Named("config-mapper")
    public ObjectMapper provideConfigMapper(UpsightContext upsightContext) {
        return upsightContext.getCoreComponent().objectMapper();
    }
}
