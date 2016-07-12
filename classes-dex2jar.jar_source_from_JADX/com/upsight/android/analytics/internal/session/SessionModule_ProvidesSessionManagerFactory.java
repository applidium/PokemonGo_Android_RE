package com.upsight.android.analytics.internal.session;

import dagger.internal.Factory;
import javax.inject.Provider;

public final class SessionModule_ProvidesSessionManagerFactory implements Factory<SessionManager> {
    static final /* synthetic */ boolean $assertionsDisabled;
    private final SessionModule module;
    private final Provider<SessionManagerImpl> sessionManagerProvider;

    static {
        $assertionsDisabled = !SessionModule_ProvidesSessionManagerFactory.class.desiredAssertionStatus();
    }

    public SessionModule_ProvidesSessionManagerFactory(SessionModule sessionModule, Provider<SessionManagerImpl> provider) {
        if ($assertionsDisabled || sessionModule != null) {
            this.module = sessionModule;
            if ($assertionsDisabled || provider != null) {
                this.sessionManagerProvider = provider;
                return;
            }
            throw new AssertionError();
        }
        throw new AssertionError();
    }

    public static Factory<SessionManager> create(SessionModule sessionModule, Provider<SessionManagerImpl> provider) {
        return new SessionModule_ProvidesSessionManagerFactory(sessionModule, provider);
    }

    public SessionManager get() {
        SessionManager providesSessionManager = this.module.providesSessionManager((SessionManagerImpl) this.sessionManagerProvider.get());
        if (providesSessionManager != null) {
            return providesSessionManager;
        }
        throw new NullPointerException("Cannot return null from a non-@Nullable @Provides method");
    }
}
