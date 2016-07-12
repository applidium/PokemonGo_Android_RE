package com.upsight.android.googlepushservices.internal;

import com.upsight.android.UpsightContext;
import com.upsight.android.analytics.internal.session.SessionManager;
import dagger.internal.Factory;
import javax.inject.Provider;

public final class PushModule_ProvideSessionManagerFactory implements Factory<SessionManager> {
    static final /* synthetic */ boolean $assertionsDisabled;
    private final PushModule module;
    private final Provider<UpsightContext> upsightProvider;

    static {
        $assertionsDisabled = !PushModule_ProvideSessionManagerFactory.class.desiredAssertionStatus();
    }

    public PushModule_ProvideSessionManagerFactory(PushModule pushModule, Provider<UpsightContext> provider) {
        if ($assertionsDisabled || pushModule != null) {
            this.module = pushModule;
            if ($assertionsDisabled || provider != null) {
                this.upsightProvider = provider;
                return;
            }
            throw new AssertionError();
        }
        throw new AssertionError();
    }

    public static Factory<SessionManager> create(PushModule pushModule, Provider<UpsightContext> provider) {
        return new PushModule_ProvideSessionManagerFactory(pushModule, provider);
    }

    public SessionManager get() {
        SessionManager provideSessionManager = this.module.provideSessionManager((UpsightContext) this.upsightProvider.get());
        if (provideSessionManager != null) {
            return provideSessionManager;
        }
        throw new NullPointerException("Cannot return null from a non-@Nullable @Provides method");
    }
}
