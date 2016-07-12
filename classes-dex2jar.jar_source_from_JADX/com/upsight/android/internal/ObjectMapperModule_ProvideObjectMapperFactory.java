package com.upsight.android.internal;

import com.fasterxml.jackson.databind.ObjectMapper;
import dagger.internal.Factory;

public final class ObjectMapperModule_ProvideObjectMapperFactory implements Factory<ObjectMapper> {
    static final /* synthetic */ boolean $assertionsDisabled;
    private final ObjectMapperModule module;

    static {
        $assertionsDisabled = !ObjectMapperModule_ProvideObjectMapperFactory.class.desiredAssertionStatus();
    }

    public ObjectMapperModule_ProvideObjectMapperFactory(ObjectMapperModule objectMapperModule) {
        if ($assertionsDisabled || objectMapperModule != null) {
            this.module = objectMapperModule;
            return;
        }
        throw new AssertionError();
    }

    public static Factory<ObjectMapper> create(ObjectMapperModule objectMapperModule) {
        return new ObjectMapperModule_ProvideObjectMapperFactory(objectMapperModule);
    }

    public ObjectMapper get() {
        ObjectMapper provideObjectMapper = this.module.provideObjectMapper();
        if (provideObjectMapper != null) {
            return provideObjectMapper;
        }
        throw new NullPointerException("Cannot return null from a non-@Nullable @Provides method");
    }
}
