package com.upsight.android.internal;

import com.upsight.android.internal.persistence.storable.StorableIdFactory;
import dagger.internal.Factory;

public final class ContextModule_ProvideTypeIdGeneratorFactory implements Factory<StorableIdFactory> {
    static final /* synthetic */ boolean $assertionsDisabled;
    private final ContextModule module;

    static {
        $assertionsDisabled = !ContextModule_ProvideTypeIdGeneratorFactory.class.desiredAssertionStatus();
    }

    public ContextModule_ProvideTypeIdGeneratorFactory(ContextModule contextModule) {
        if ($assertionsDisabled || contextModule != null) {
            this.module = contextModule;
            return;
        }
        throw new AssertionError();
    }

    public static Factory<StorableIdFactory> create(ContextModule contextModule) {
        return new ContextModule_ProvideTypeIdGeneratorFactory(contextModule);
    }

    public StorableIdFactory get() {
        StorableIdFactory provideTypeIdGenerator = this.module.provideTypeIdGenerator();
        if (provideTypeIdGenerator != null) {
            return provideTypeIdGenerator;
        }
        throw new NullPointerException("Cannot return null from a non-@Nullable @Provides method");
    }
}
