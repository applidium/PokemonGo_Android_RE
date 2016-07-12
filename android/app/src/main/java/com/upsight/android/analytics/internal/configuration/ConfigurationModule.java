package com.upsight.android.analytics.internal.configuration;

import com.upsight.android.UpsightContext;
import dagger.Module;
import dagger.Provides;
import javax.inject.Singleton;

@Module
public final class ConfigurationModule {
    @Singleton
    @Provides
    public ConfigurationManager provideConfigurationManager(UpsightContext upsightContext, ConfigurationResponseParser configurationResponseParser, ManagerConfigParser managerConfigParser) {
        return new ConfigurationManager(upsightContext, upsightContext.getDataStore(), configurationResponseParser, managerConfigParser, upsightContext.getCoreComponent().subscribeOnScheduler(), upsightContext.getLogger());
    }
}
