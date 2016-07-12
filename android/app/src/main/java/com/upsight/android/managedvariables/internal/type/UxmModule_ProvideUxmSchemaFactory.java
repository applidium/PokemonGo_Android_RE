package com.upsight.android.managedvariables.internal.type;

import com.fasterxml.jackson.databind.ObjectMapper;
import com.upsight.android.UpsightContext;
import dagger.internal.Factory;
import javax.inject.Provider;

public final class UxmModule_ProvideUxmSchemaFactory implements Factory<UxmSchema> {
    static final /* synthetic */ boolean $assertionsDisabled;
    private final UxmModule module;
    private final Provider<UpsightContext> upsightProvider;
    private final Provider<ObjectMapper> uxmSchemaMapperProvider;
    private final Provider<String> uxmSchemaStringProvider;

    static {
        $assertionsDisabled = !UxmModule_ProvideUxmSchemaFactory.class.desiredAssertionStatus();
    }

    public UxmModule_ProvideUxmSchemaFactory(UxmModule uxmModule, Provider<UpsightContext> provider, Provider<ObjectMapper> provider2, Provider<String> provider3) {
        if ($assertionsDisabled || uxmModule != null) {
            this.module = uxmModule;
            if ($assertionsDisabled || provider != null) {
                this.upsightProvider = provider;
                if ($assertionsDisabled || provider2 != null) {
                    this.uxmSchemaMapperProvider = provider2;
                    if ($assertionsDisabled || provider3 != null) {
                        this.uxmSchemaStringProvider = provider3;
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

    public static Factory<UxmSchema> create(UxmModule uxmModule, Provider<UpsightContext> provider, Provider<ObjectMapper> provider2, Provider<String> provider3) {
        return new UxmModule_ProvideUxmSchemaFactory(uxmModule, provider, provider2, provider3);
    }

    public UxmSchema get() {
        UxmSchema provideUxmSchema = this.module.provideUxmSchema((UpsightContext) this.upsightProvider.get(), (ObjectMapper) this.uxmSchemaMapperProvider.get(), (String) this.uxmSchemaStringProvider.get());
        if (provideUxmSchema != null) {
            return provideUxmSchema;
        }
        throw new NullPointerException("Cannot return null from a non-@Nullable @Provides method");
    }
}
