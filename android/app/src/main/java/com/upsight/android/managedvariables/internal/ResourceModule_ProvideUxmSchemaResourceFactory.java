package com.upsight.android.managedvariables.internal;

import dagger.internal.Factory;

public final class ResourceModule_ProvideUxmSchemaResourceFactory implements Factory<Integer> {
    static final /* synthetic */ boolean $assertionsDisabled;
    private final ResourceModule module;

    static {
        $assertionsDisabled = !ResourceModule_ProvideUxmSchemaResourceFactory.class.desiredAssertionStatus();
    }

    public ResourceModule_ProvideUxmSchemaResourceFactory(ResourceModule resourceModule) {
        if ($assertionsDisabled || resourceModule != null) {
            this.module = resourceModule;
            return;
        }
        throw new AssertionError();
    }

    public static Factory<Integer> create(ResourceModule resourceModule) {
        return new ResourceModule_ProvideUxmSchemaResourceFactory(resourceModule);
    }

    public Integer get() {
        Integer provideUxmSchemaResource = this.module.provideUxmSchemaResource();
        if (provideUxmSchemaResource != null) {
            return provideUxmSchemaResource;
        }
        throw new NullPointerException("Cannot return null from a non-@Nullable @Provides method");
    }
}
