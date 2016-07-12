package com.upsight.android.managedvariables.internal.type;

import com.upsight.android.UpsightContext;
import dagger.internal.Factory;
import javax.inject.Provider;

public final class UxmModule_ProvideUxmBlockProviderFactory implements Factory<UxmBlockProvider> {
    static final /* synthetic */ boolean $assertionsDisabled;
    private final UxmModule module;
    private final Provider<UpsightContext> upsightProvider;
    private final Provider<UxmSchema> uxmSchemaProvider;
    private final Provider<String> uxmSchemaRawStringProvider;

    static {
        $assertionsDisabled = !UxmModule_ProvideUxmBlockProviderFactory.class.desiredAssertionStatus();
    }

    public UxmModule_ProvideUxmBlockProviderFactory(UxmModule uxmModule, Provider<UpsightContext> provider, Provider<String> provider2, Provider<UxmSchema> provider3) {
        if ($assertionsDisabled || uxmModule != null) {
            this.module = uxmModule;
            if ($assertionsDisabled || provider != null) {
                this.upsightProvider = provider;
                if ($assertionsDisabled || provider2 != null) {
                    this.uxmSchemaRawStringProvider = provider2;
                    if ($assertionsDisabled || provider3 != null) {
                        this.uxmSchemaProvider = provider3;
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

    public static Factory<UxmBlockProvider> create(UxmModule uxmModule, Provider<UpsightContext> provider, Provider<String> provider2, Provider<UxmSchema> provider3) {
        return new UxmModule_ProvideUxmBlockProviderFactory(uxmModule, provider, provider2, provider3);
    }

    public UxmBlockProvider get() {
        UxmBlockProvider provideUxmBlockProvider = this.module.provideUxmBlockProvider((UpsightContext) this.upsightProvider.get(), (String) this.uxmSchemaRawStringProvider.get(), (UxmSchema) this.uxmSchemaProvider.get());
        if (provideUxmBlockProvider != null) {
            return provideUxmBlockProvider;
        }
        throw new NullPointerException("Cannot return null from a non-@Nullable @Provides method");
    }
}
