package com.upsight.android.internal;

import android.content.Context;
import com.upsight.android.logger.UpsightLogger;
import dagger.internal.Factory;
import javax.inject.Provider;

public final class PropertiesModule_ProvideSdkPluginFactory implements Factory<String> {
    static final /* synthetic */ boolean $assertionsDisabled;
    private final Provider<Context> contextProvider;
    private final Provider<UpsightLogger> loggerProvider;
    private final PropertiesModule module;

    static {
        $assertionsDisabled = !PropertiesModule_ProvideSdkPluginFactory.class.desiredAssertionStatus();
    }

    public PropertiesModule_ProvideSdkPluginFactory(PropertiesModule propertiesModule, Provider<Context> provider, Provider<UpsightLogger> provider2) {
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
        return new PropertiesModule_ProvideSdkPluginFactory(propertiesModule, provider, provider2);
    }

    public String get() {
        String provideSdkPlugin = this.module.provideSdkPlugin((Context) this.contextProvider.get(), (UpsightLogger) this.loggerProvider.get());
        if (provideSdkPlugin != null) {
            return provideSdkPlugin;
        }
        throw new NullPointerException("Cannot return null from a non-@Nullable @Provides method");
    }
}
