package com.upsight.android.analytics.internal;

import com.upsight.android.UpsightContext;
import com.upsight.android.analytics.UpsightGooglePlayHelper;
import com.upsight.android.analytics.internal.session.Clock;
import com.upsight.android.internal.util.Opt;
import dagger.Module;
import dagger.Provides;
import java.lang.Thread.UncaughtExceptionHandler;
import java.util.concurrent.TimeUnit;
import javax.inject.Named;
import javax.inject.Singleton;

@Module
public final class BaseAnalyticsModule {
    public static final String OPT_UNCAUGHT_EXCEPTION_HANDLER = "optUncaughtExceptionHandler";
    private final UpsightContext mUpsight;

    /* renamed from: com.upsight.android.analytics.internal.BaseAnalyticsModule.1 */
    class C08781 implements Clock {
        C08781() {
        }

        public long currentTimeMillis() {
            return System.currentTimeMillis();
        }

        public long currentTimeSeconds() {
            return TimeUnit.SECONDS.convert(System.currentTimeMillis(), TimeUnit.MILLISECONDS);
        }
    }

    public BaseAnalyticsModule(UpsightContext upsightContext) {
        this.mUpsight = upsightContext;
    }

    @Singleton
    @Provides
    public Clock provideClock() {
        return new C08781();
    }

    @Singleton
    @Provides
    public UpsightGooglePlayHelper provideGooglePlayHelper(UpsightContext upsightContext) {
        return new GooglePlayHelper(upsightContext, upsightContext.getCoreComponent().objectMapper());
    }

    @Named("optUncaughtExceptionHandler")
    @Singleton
    @Provides
    public Opt<UncaughtExceptionHandler> provideUncaughtExceptionHandler() {
        return Opt.absent();
    }

    @Singleton
    @Provides
    public UpsightContext provideUpsightContext() {
        return this.mUpsight;
    }
}
