package com.upsight.android.analytics.internal.session;

import com.upsight.android.UpsightContext;
import dagger.internal.Factory;
import javax.inject.Provider;

public final class SessionModule_ProvidesSessionManagerImplFactory implements Factory<SessionManagerImpl> {
    static final /* synthetic */ boolean $assertionsDisabled;
    private final Provider<Clock> clockProvider;
    private final Provider<ConfigParser> configParserProvider;
    private final SessionModule module;
    private final Provider<UpsightContext> upsightProvider;

    static {
        $assertionsDisabled = !SessionModule_ProvidesSessionManagerImplFactory.class.desiredAssertionStatus();
    }

    public SessionModule_ProvidesSessionManagerImplFactory(SessionModule sessionModule, Provider<UpsightContext> provider, Provider<ConfigParser> provider2, Provider<Clock> provider3) {
        if ($assertionsDisabled || sessionModule != null) {
            this.module = sessionModule;
            if ($assertionsDisabled || provider != null) {
                this.upsightProvider = provider;
                if ($assertionsDisabled || provider2 != null) {
                    this.configParserProvider = provider2;
                    if ($assertionsDisabled || provider3 != null) {
                        this.clockProvider = provider3;
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

    public static Factory<SessionManagerImpl> create(SessionModule sessionModule, Provider<UpsightContext> provider, Provider<ConfigParser> provider2, Provider<Clock> provider3) {
        return new SessionModule_ProvidesSessionManagerImplFactory(sessionModule, provider, provider2, provider3);
    }

    public SessionManagerImpl get() {
        SessionManagerImpl providesSessionManagerImpl = this.module.providesSessionManagerImpl((UpsightContext) this.upsightProvider.get(), (ConfigParser) this.configParserProvider.get(), (Clock) this.clockProvider.get());
        if (providesSessionManagerImpl != null) {
            return providesSessionManagerImpl;
        }
        throw new NullPointerException("Cannot return null from a non-@Nullable @Provides method");
    }
}
