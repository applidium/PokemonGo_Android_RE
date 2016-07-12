package com.upsight.android.analytics.internal.configuration;

import com.fasterxml.jackson.databind.ObjectMapper;
import com.upsight.android.analytics.internal.session.SessionManager;
import dagger.internal.Factory;
import javax.inject.Provider;

public final class ConfigurationResponseParser_Factory implements Factory<ConfigurationResponseParser> {
    static final /* synthetic */ boolean $assertionsDisabled;
    private final Provider<ObjectMapper> mapperProvider;
    private final Provider<SessionManager> sessionManagerProvider;

    static {
        $assertionsDisabled = !ConfigurationResponseParser_Factory.class.desiredAssertionStatus();
    }

    public ConfigurationResponseParser_Factory(Provider<ObjectMapper> provider, Provider<SessionManager> provider2) {
        if ($assertionsDisabled || provider != null) {
            this.mapperProvider = provider;
            if ($assertionsDisabled || provider2 != null) {
                this.sessionManagerProvider = provider2;
                return;
            }
            throw new AssertionError();
        }
        throw new AssertionError();
    }

    public static Factory<ConfigurationResponseParser> create(Provider<ObjectMapper> provider, Provider<SessionManager> provider2) {
        return new ConfigurationResponseParser_Factory(provider, provider2);
    }

    public ConfigurationResponseParser get() {
        return new ConfigurationResponseParser((ObjectMapper) this.mapperProvider.get(), (SessionManager) this.sessionManagerProvider.get());
    }
}
