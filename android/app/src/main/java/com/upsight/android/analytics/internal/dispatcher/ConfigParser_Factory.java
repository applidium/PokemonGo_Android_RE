package com.upsight.android.analytics.internal.dispatcher;

import com.fasterxml.jackson.databind.ObjectMapper;
import com.upsight.android.UpsightContext;
import dagger.internal.Factory;
import javax.inject.Provider;

public final class ConfigParser_Factory implements Factory<ConfigParser> {
    static final /* synthetic */ boolean $assertionsDisabled;
    private final Provider<ObjectMapper> mapperProvider;
    private final Provider<UpsightContext> upsightProvider;

    static {
        $assertionsDisabled = !ConfigParser_Factory.class.desiredAssertionStatus();
    }

    public ConfigParser_Factory(Provider<UpsightContext> provider, Provider<ObjectMapper> provider2) {
        if ($assertionsDisabled || provider != null) {
            this.upsightProvider = provider;
            if ($assertionsDisabled || provider2 != null) {
                this.mapperProvider = provider2;
                return;
            }
            throw new AssertionError();
        }
        throw new AssertionError();
    }

    public static Factory<ConfigParser> create(Provider<UpsightContext> provider, Provider<ObjectMapper> provider2) {
        return new ConfigParser_Factory(provider, provider2);
    }

    public ConfigParser get() {
        return new ConfigParser((UpsightContext) this.upsightProvider.get(), (ObjectMapper) this.mapperProvider.get());
    }
}
