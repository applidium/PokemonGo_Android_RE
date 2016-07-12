package com.upsight.android.analytics.internal;

import com.upsight.android.analytics.internal.session.Clock;
import dagger.internal.Factory;

public final class BaseAnalyticsModule_ProvideClockFactory implements Factory<Clock> {
    static final /* synthetic */ boolean $assertionsDisabled;
    private final BaseAnalyticsModule module;

    static {
        $assertionsDisabled = !BaseAnalyticsModule_ProvideClockFactory.class.desiredAssertionStatus();
    }

    public BaseAnalyticsModule_ProvideClockFactory(BaseAnalyticsModule baseAnalyticsModule) {
        if ($assertionsDisabled || baseAnalyticsModule != null) {
            this.module = baseAnalyticsModule;
            return;
        }
        throw new AssertionError();
    }

    public static Factory<Clock> create(BaseAnalyticsModule baseAnalyticsModule) {
        return new BaseAnalyticsModule_ProvideClockFactory(baseAnalyticsModule);
    }

    public Clock get() {
        Clock provideClock = this.module.provideClock();
        if (provideClock != null) {
            return provideClock;
        }
        throw new NullPointerException("Cannot return null from a non-@Nullable @Provides method");
    }
}
