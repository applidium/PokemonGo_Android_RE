package com.upsight.android.analytics.internal.session;

import com.fasterxml.jackson.databind.ObjectMapper;
import dagger.internal.Factory;
import javax.inject.Provider;

public final class ConfigParser_Factory implements Factory<ConfigParser> {
    static final /* synthetic */ boolean $assertionsDisabled;
    private final Provider<ObjectMapper> mapperProvider;

    static {
        $assertionsDisabled = !ConfigParser_Factory.class.desiredAssertionStatus();
    }

    public ConfigParser_Factory(Provider<ObjectMapper> provider) {
        if ($assertionsDisabled || provider != null) {
            this.mapperProvider = provider;
            return;
        }
        throw new AssertionError();
    }

    public static Factory<ConfigParser> create(Provider<ObjectMapper> provider) {
        return new ConfigParser_Factory(provider);
    }

    public ConfigParser get() {
        return new ConfigParser((ObjectMapper) this.mapperProvider.get());
    }
}
