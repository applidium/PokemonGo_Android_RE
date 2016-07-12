package com.upsight.android.analytics.internal.session;

import com.upsight.android.UpsightContext;
import dagger.Module;
import dagger.Provides;
import javax.inject.Singleton;

@Module
public final class SessionModule {
    @Singleton
    @Provides
    public SessionManager providesSessionManager(SessionManagerImpl sessionManagerImpl) {
        return sessionManagerImpl;
    }

    @Singleton
    @Provides
    public SessionManagerImpl providesSessionManagerImpl(UpsightContext upsightContext, ConfigParser configParser, Clock clock) {
        return new SessionManagerImpl(upsightContext.getCoreComponent().applicationContext(), upsightContext, upsightContext.getDataStore(), upsightContext.getLogger(), configParser, clock);
    }
}
