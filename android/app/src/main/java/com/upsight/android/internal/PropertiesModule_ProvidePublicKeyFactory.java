package com.upsight.android.internal;

import android.content.Context;
import com.upsight.android.logger.UpsightLogger;
import dagger.internal.Factory;
import javax.inject.Provider;

public final class PropertiesModule_ProvidePublicKeyFactory implements Factory<String> {
    static final /* synthetic */ boolean $assertionsDisabled;
    private final Provider<Context> contextProvider;
    private final Provider<UpsightLogger> loggerProvider;
    private final PropertiesModule module;

    static {
        $assertionsDisabled = !PropertiesModule_ProvidePublicKeyFactory.class.desiredAssertionStatus();
    }

    public PropertiesModule_ProvidePublicKeyFactory(PropertiesModule propertiesModule, Provider<Context> provider, Provider<UpsightLogger> provider2) {
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
        return new PropertiesModule_ProvidePublicKeyFactory(propertiesModule, provider, provider2);
    }

    public String get() {
        String providePublicKey = this.module.providePublicKey((Context) this.contextProvider.get(), (UpsightLogger) this.loggerProvider.get());
        if (providePublicKey != null) {
            return providePublicKey;
        }
        throw new NullPointerException("Cannot return null from a non-@Nullable @Provides method");
    }
}
