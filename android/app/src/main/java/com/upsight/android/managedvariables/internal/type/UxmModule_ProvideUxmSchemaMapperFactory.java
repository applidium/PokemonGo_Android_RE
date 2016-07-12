package com.upsight.android.managedvariables.internal.type;

import com.fasterxml.jackson.databind.ObjectMapper;
import com.upsight.android.UpsightContext;
import dagger.internal.Factory;
import javax.inject.Provider;

public final class UxmModule_ProvideUxmSchemaMapperFactory implements Factory<ObjectMapper> {
    static final /* synthetic */ boolean $assertionsDisabled;
    private final UxmModule module;
    private final Provider<UpsightContext> upsightProvider;

    static {
        $assertionsDisabled = !UxmModule_ProvideUxmSchemaMapperFactory.class.desiredAssertionStatus();
    }

    public UxmModule_ProvideUxmSchemaMapperFactory(UxmModule uxmModule, Provider<UpsightContext> provider) {
        if ($assertionsDisabled || uxmModule != null) {
            this.module = uxmModule;
            if ($assertionsDisabled || provider != null) {
                this.upsightProvider = provider;
                return;
            }
            throw new AssertionError();
        }
        throw new AssertionError();
    }

    public static Factory<ObjectMapper> create(UxmModule uxmModule, Provider<UpsightContext> provider) {
        return new UxmModule_ProvideUxmSchemaMapperFactory(uxmModule, provider);
    }

    public ObjectMapper get() {
        ObjectMapper provideUxmSchemaMapper = this.module.provideUxmSchemaMapper((UpsightContext) this.upsightProvider.get());
        if (provideUxmSchemaMapper != null) {
            return provideUxmSchemaMapper;
        }
        throw new NullPointerException("Cannot return null from a non-@Nullable @Provides method");
    }
}
