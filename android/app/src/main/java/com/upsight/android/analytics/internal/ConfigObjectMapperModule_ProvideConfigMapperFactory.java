package com.upsight.android.analytics.internal;

import com.fasterxml.jackson.databind.ObjectMapper;
import com.upsight.android.UpsightContext;
import dagger.internal.Factory;
import javax.inject.Provider;

public final class ConfigObjectMapperModule_ProvideConfigMapperFactory implements Factory<ObjectMapper> {
    static final /* synthetic */ boolean $assertionsDisabled;
    private final ConfigObjectMapperModule module;
    private final Provider<UpsightContext> upsightProvider;

    static {
        $assertionsDisabled = !ConfigObjectMapperModule_ProvideConfigMapperFactory.class.desiredAssertionStatus();
    }

    public ConfigObjectMapperModule_ProvideConfigMapperFactory(ConfigObjectMapperModule configObjectMapperModule, Provider<UpsightContext> provider) {
        if ($assertionsDisabled || configObjectMapperModule != null) {
            this.module = configObjectMapperModule;
            if ($assertionsDisabled || provider != null) {
                this.upsightProvider = provider;
                return;
            }
            throw new AssertionError();
        }
        throw new AssertionError();
    }

    public static Factory<ObjectMapper> create(ConfigObjectMapperModule configObjectMapperModule, Provider<UpsightContext> provider) {
        return new ConfigObjectMapperModule_ProvideConfigMapperFactory(configObjectMapperModule, provider);
    }

    public ObjectMapper get() {
        ObjectMapper provideConfigMapper = this.module.provideConfigMapper((UpsightContext) this.upsightProvider.get());
        if (provideConfigMapper != null) {
            return provideConfigMapper;
        }
        throw new NullPointerException("Cannot return null from a non-@Nullable @Provides method");
    }
}
