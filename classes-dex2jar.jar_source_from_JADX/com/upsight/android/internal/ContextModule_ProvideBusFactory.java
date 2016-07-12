package com.upsight.android.internal;

import com.squareup.otto.Bus;
import dagger.internal.Factory;

public final class ContextModule_ProvideBusFactory implements Factory<Bus> {
    static final /* synthetic */ boolean $assertionsDisabled;
    private final ContextModule module;

    static {
        $assertionsDisabled = !ContextModule_ProvideBusFactory.class.desiredAssertionStatus();
    }

    public ContextModule_ProvideBusFactory(ContextModule contextModule) {
        if ($assertionsDisabled || contextModule != null) {
            this.module = contextModule;
            return;
        }
        throw new AssertionError();
    }

    public static Factory<Bus> create(ContextModule contextModule) {
        return new ContextModule_ProvideBusFactory(contextModule);
    }

    public Bus get() {
        Bus provideBus = this.module.provideBus();
        if (provideBus != null) {
            return provideBus;
        }
        throw new NullPointerException("Cannot return null from a non-@Nullable @Provides method");
    }
}
