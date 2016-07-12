package com.upsight.android.internal;

import android.content.Context;
import com.upsight.android.logger.UpsightLogger;
import dagger.internal.Factory;
import javax.inject.Provider;

public final class PropertiesModule_ProvideApplicationTokenFactory implements Factory<String> {
    static final /* synthetic */ boolean $assertionsDisabled;
    private final Provider<Context> contextProvider;
    private final Provider<UpsightLogger> loggerProvider;
    private final PropertiesModule module;

    static {
        $assertionsDisabled = !PropertiesModule_ProvideApplicationTokenFactory.class.desiredAssertionStatus();
    }

    public PropertiesModule_ProvideApplicationTokenFactory(PropertiesModule propertiesModule, Provider<Context> provider, Provider<UpsightLogger> provider2) {
        if ($assertionsDisabled || propertiesModule != null) {
            this.module = propertiesModule;
            if ($assertionsDisabled || provider != null) {
                this.contextProvider = provider;
                if ($assertionsDisabled || provider2 != null) {
                    this.loggerProvider = provider2;
                    return;
                }
                throw new AssertionError();
            }
            throw new AssertionError();
        }
        throw new AssertionError();
    }

    public static Factory<String> create(PropertiesModule propertiesModule, Provider<Context> provider, Provider<UpsightLogger> provider2) {
        return new PropertiesModule_ProvideApplicationTokenFactory(propertiesModule, provider, provider2);
    }

    public String get() {
        String provideApplicationToken = this.module.provideApplicationToken((Context) this.contextProvider.get(), (UpsightLogger) this.loggerProvider.get());
        if (provideApplicationToken != null) {
            return provideApplicationToken;
        }
        throw new NullPointerException("Cannot return null from a non-@Nullable @Provides method");
    }
}
