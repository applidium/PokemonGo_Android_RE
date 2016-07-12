package com.upsight.android.analytics.internal.configuration;

import com.fasterxml.jackson.databind.ObjectMapper;
import dagger.internal.Factory;
import javax.inject.Provider;

public final class ManagerConfigParser_Factory implements Factory<ManagerConfigParser> {
    static final /* synthetic */ boolean $assertionsDisabled;
    private final Provider<ObjectMapper> mapperProvider;

    static {
        $assertionsDisabled = !ManagerConfigParser_Factory.class.desiredAssertionStatus();
    }

    public ManagerConfigParser_Factory(Provider<ObjectMapper> provider) {
        if ($assertionsDisabled || provider != null) {
            this.mapperProvider = provider;
            return;
        }
        throw new AssertionError();
    }

    public static Factory<ManagerConfigParser> create(Provider<ObjectMapper> provider) {
        return new ManagerConfigParser_Factory(provider);
    }

    public ManagerConfigParser get() {
        return new ManagerConfigParser((ObjectMapper) this.mapperProvider.get());
    }
}
