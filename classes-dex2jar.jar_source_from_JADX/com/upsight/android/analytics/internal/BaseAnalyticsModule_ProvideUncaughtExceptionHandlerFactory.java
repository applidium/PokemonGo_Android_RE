package com.upsight.android.analytics.internal;

import com.upsight.android.internal.util.Opt;
import dagger.internal.Factory;
import java.lang.Thread.UncaughtExceptionHandler;

public final class BaseAnalyticsModule_ProvideUncaughtExceptionHandlerFactory implements Factory<Opt<UncaughtExceptionHandler>> {
    static final /* synthetic */ boolean $assertionsDisabled;
    private final BaseAnalyticsModule module;

    static {
        $assertionsDisabled = !BaseAnalyticsModule_ProvideUncaughtExceptionHandlerFactory.class.desiredAssertionStatus();
    }

    public BaseAnalyticsModule_ProvideUncaughtExceptionHandlerFactory(BaseAnalyticsModule baseAnalyticsModule) {
        if ($assertionsDisabled || baseAnalyticsModule != null) {
            this.module = baseAnalyticsModule;
            return;
        }
        throw new AssertionError();
    }

    public static Factory<Opt<UncaughtExceptionHandler>> create(BaseAnalyticsModule baseAnalyticsModule) {
        return new BaseAnalyticsModule_ProvideUncaughtExceptionHandlerFactory(baseAnalyticsModule);
    }

    public Opt<UncaughtExceptionHandler> get() {
        Opt<UncaughtExceptionHandler> provideUncaughtExceptionHandler = this.module.provideUncaughtExceptionHandler();
        if (provideUncaughtExceptionHandler != null) {
            return provideUncaughtExceptionHandler;
        }
        throw new NullPointerException("Cannot return null from a non-@Nullable @Provides method");
    }
}
