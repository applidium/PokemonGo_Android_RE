package com.upsight.android.internal;

import android.content.Context;
import com.upsight.android.UpsightContext;
import com.upsight.android.logger.UpsightLogger;
import com.upsight.android.persistence.UpsightDataStore;
import dagger.internal.Factory;
import javax.inject.Provider;

public final class UpsightContextModule_ProvideUpsightContextFactory implements Factory<UpsightContext> {
    static final /* synthetic */ boolean $assertionsDisabled;
    private final Provider<String> appTokenProvider;
    private final Provider<Context> baseContextProvider;
    private final Provider<UpsightDataStore> dataStoreProvider;
    private final Provider<UpsightLogger> loggerProvider;
    private final UpsightContextModule module;
    private final Provider<String> publicKeyProvider;
    private final Provider<String> sdkPluginProvider;

    static {
        $assertionsDisabled = !UpsightContextModule_ProvideUpsightContextFactory.class.desiredAssertionStatus();
    }

    public UpsightContextModule_ProvideUpsightContextFactory(UpsightContextModule upsightContextModule, Provider<Context> provider, Provider<String> provider2, Provider<String> provider3, Provider<String> provider4, Provider<UpsightDataStore> provider5, Provider<UpsightLogger> provider6) {
        if ($assertionsDisabled || upsightContextModule != null) {
            this.module = upsightContextModule;
            if ($assertionsDisabled || provider != null) {
                this.baseContextProvider = provider;
                if ($assertionsDisabled || provider2 != null) {
                    this.sdkPluginProvider = provider2;
                    if ($assertionsDisabled || provider3 != null) {
                        this.appTokenProvider = provider3;
                        if ($assertionsDisabled || provider4 != null) {
                            this.publicKeyProvider = provider4;
                            if ($assertionsDisabled || provider5 != null) {
                                this.dataStoreProvider = provider5;
                                if ($assertionsDisabled || provider6 != null) {
                                    this.loggerProvider = provider6;
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
                throw new AssertionError();
            }
            throw new AssertionError();
        }
        throw new AssertionError();
    }

    public static Factory<UpsightContext> create(UpsightContextModule upsightContextModule, Provider<Context> provider, Provider<String> provider2, Provider<String> provider3, Provider<String> provider4, Provider<UpsightDataStore> provider5, Provider<UpsightLogger> provider6) {
        return new UpsightContextModule_ProvideUpsightContextFactory(upsightContextModule, provider, provider2, provider3, provider4, provider5, provider6);
    }

    public UpsightContext get() {
        UpsightContext provideUpsightContext = this.module.provideUpsightContext((Context) this.baseContextProvider.get(), (String) this.sdkPluginProvider.get(), (String) this.appTokenProvider.get(), (String) this.publicKeyProvider.get(), (UpsightDataStore) this.dataStoreProvider.get(), (UpsightLogger) this.loggerProvider.get());
        if (provideUpsightContext != null) {
            return provideUpsightContext;
        }
        throw new NullPointerException("Cannot return null from a non-@Nullable @Provides method");
    }
}
