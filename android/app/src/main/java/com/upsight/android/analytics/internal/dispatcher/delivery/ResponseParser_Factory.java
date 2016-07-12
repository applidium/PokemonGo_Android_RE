package com.upsight.android.analytics.internal.dispatcher.delivery;

import com.fasterxml.jackson.databind.ObjectMapper;
import dagger.internal.Factory;
import javax.inject.Provider;

public final class ResponseParser_Factory implements Factory<ResponseParser> {
    static final /* synthetic */ boolean $assertionsDisabled;
    private final Provider<ObjectMapper> mapperProvider;

    static {
        $assertionsDisabled = !ResponseParser_Factory.class.desiredAssertionStatus();
    }

    public ResponseParser_Factory(Provider<ObjectMapper> provider) {
        if ($assertionsDisabled || provider != null) {
            this.mapperProvider = provider;
            return;
        }
        throw new AssertionError();
    }

    public static Factory<ResponseParser> create(Provider<ObjectMapper> provider) {
        return new ResponseParser_Factory(provider);
    }

    public ResponseParser get() {
        return new ResponseParser((ObjectMapper) this.mapperProvider.get());
    }
}
