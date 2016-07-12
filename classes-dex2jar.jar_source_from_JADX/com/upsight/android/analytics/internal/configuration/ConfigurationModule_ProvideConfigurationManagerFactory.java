package com.upsight.android.analytics.internal.configuration;

import com.upsight.android.UpsightContext;
import dagger.internal.Factory;
import javax.inject.Provider;

public final class ConfigurationModule_ProvideConfigurationManagerFactory implements Factory<ConfigurationManager> {
    static final /* synthetic */ boolean $assertionsDisabled;
    private final Provider<ManagerConfigParser> managerConfigParserProvider;
    private final ConfigurationModule module;
    private final Provider<ConfigurationResponseParser> responseParserProvider;
    private final Provider<UpsightContext> upsightProvider;

    static {
        $assertionsDisabled = !ConfigurationModule_ProvideConfigurationManagerFactory.class.desiredAssertionStatus();
    }

    public ConfigurationModule_ProvideConfigurationManagerFactory(ConfigurationModule configurationModule, Provider<UpsightContext> provider, Provider<ConfigurationResponseParser> provider2, Provider<ManagerConfigParser> provider3) {
        if ($assertionsDisabled || configurationModule != null) {
            this.module = configurationModule;
            if ($assertionsDisabled || provider != null) {
                this.upsightProvider = provider;
                if ($assertionsDisabled || provider2 != null) {
                    this.responseParserProvider = provider2;
                    if ($assertionsDisabled || provider3 != null) {
                        this.managerConfigParserProvider = provider3;
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

    public static Factory<ConfigurationManager> create(ConfigurationModule configurationModule, Provider<UpsightContext> provider, Provider<ConfigurationResponseParser> provider2, Provider<ManagerConfigParser> provider3) {
        return new ConfigurationModule_ProvideConfigurationManagerFactory(configurationModule, provider, provider2, provider3);
    }

    public ConfigurationManager get() {
        ConfigurationManager provideConfigurationManager = this.module.provideConfigurationManager((UpsightContext) this.upsightProvider.get(), (ConfigurationResponseParser) this.responseParserProvider.get(), (ManagerConfigParser) this.managerConfigParserProvider.get());
        if (provideConfigurationManager != null) {
            return provideConfigurationManager;
        }
        throw new NullPointerException("Cannot return null from a non-@Nullable @Provides method");
    }
}
