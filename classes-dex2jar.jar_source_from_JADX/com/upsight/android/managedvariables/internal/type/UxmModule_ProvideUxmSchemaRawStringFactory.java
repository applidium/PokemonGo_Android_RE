package com.upsight.android.managedvariables.internal.type;

import com.upsight.android.UpsightContext;
import dagger.internal.Factory;
import javax.inject.Provider;

public final class UxmModule_ProvideUxmSchemaRawStringFactory implements Factory<String> {
    static final /* synthetic */ boolean $assertionsDisabled;
    private final UxmModule module;
    private final Provider<UpsightContext> upsightProvider;
    private final Provider<Integer> uxmSchemaResProvider;

    static {
        $assertionsDisabled = !UxmModule_ProvideUxmSchemaRawStringFactory.class.desiredAssertionStatus();
    }

    public UxmModule_ProvideUxmSchemaRawStringFactory(UxmModule uxmModule, Provider<UpsightContext> provider, Provider<Integer> provider2) {
        if ($assertionsDisabled || uxmModule != null) {
            this.module = uxmModule;
            if ($assertionsDisabled || provider != null) {
                this.upsightProvider = provider;
                if ($assertionsDisabled || provider2 != null) {
                    this.uxmSchemaResProvider = provider2;
                    return;
                }
                throw new AssertionError();
            }
            throw new AssertionError();
        }
        throw new AssertionError();
    }

    public static Factory<String> create(UxmModule uxmModule, Provider<UpsightContext> provider, Provider<Integer> provider2) {
        return new UxmModule_ProvideUxmSchemaRawStringFactory(uxmModule, provider, provider2);
    }

    public String get() {
        String provideUxmSchemaRawString = this.module.provideUxmSchemaRawString((UpsightContext) this.upsightProvider.get(), (Integer) this.uxmSchemaResProvider.get());
        if (provideUxmSchemaRawString != null) {
            return provideUxmSchemaRawString;
        }
        throw new NullPointerException("Cannot return null from a non-@Nullable @Provides method");
    }
}
