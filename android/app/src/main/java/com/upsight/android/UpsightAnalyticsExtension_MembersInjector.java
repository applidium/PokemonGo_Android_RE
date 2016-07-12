package com.upsight.android;

import android.app.Application.ActivityLifecycleCallbacks;
import com.upsight.android.analytics.UpsightAnalyticsApi;
import com.upsight.android.analytics.UpsightAnalyticsComponent;
import com.upsight.android.analytics.internal.association.AssociationManager;
import com.upsight.android.analytics.internal.session.Clock;
import com.upsight.android.internal.util.Opt;
import dagger.MembersInjector;
import java.lang.Thread.UncaughtExceptionHandler;
import javax.inject.Provider;

public final class UpsightAnalyticsExtension_MembersInjector implements MembersInjector<UpsightAnalyticsExtension> {
    static final /* synthetic */ boolean $assertionsDisabled;
    private final Provider<UpsightAnalyticsApi> mAnalyticsProvider;
    private final Provider<AssociationManager> mAssociationManagerProvider;
    private final Provider<Clock> mClockProvider;
    private final Provider<Opt<UncaughtExceptionHandler>> mUncaughtExceptionHandlerProvider;
    private final Provider<ActivityLifecycleCallbacks> mUpsightLifeCycleCallbacksProvider;
    private final MembersInjector<UpsightExtension<UpsightAnalyticsComponent, UpsightAnalyticsApi>> supertypeInjector;

    static {
        $assertionsDisabled = !UpsightAnalyticsExtension_MembersInjector.class.desiredAssertionStatus();
    }

    public UpsightAnalyticsExtension_MembersInjector(MembersInjector<UpsightExtension<UpsightAnalyticsComponent, UpsightAnalyticsApi>> membersInjector, Provider<Opt<UncaughtExceptionHandler>> provider, Provider<UpsightAnalyticsApi> provider2, Provider<Clock> provider3, Provider<ActivityLifecycleCallbacks> provider4, Provider<AssociationManager> provider5) {
        if ($assertionsDisabled || membersInjector != null) {
            this.supertypeInjector = membersInjector;
            if ($assertionsDisabled || provider != null) {
                this.mUncaughtExceptionHandlerProvider = provider;
                if ($assertionsDisabled || provider2 != null) {
                    this.mAnalyticsProvider = provider2;
                    if ($assertionsDisabled || provider3 != null) {
                        this.mClockProvider = provider3;
                        if ($assertionsDisabled || provider4 != null) {
                            this.mUpsightLifeCycleCallbacksProvider = provider4;
                            if ($assertionsDisabled || provider5 != null) {
                                this.mAssociationManagerProvider = provider5;
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
            throw new AssertionError();
        }
        throw new AssertionError();
    }

    public static MembersInjector<UpsightAnalyticsExtension> create(MembersInjector<UpsightExtension<UpsightAnalyticsComponent, UpsightAnalyticsApi>> membersInjector, Provider<Opt<UncaughtExceptionHandler>> provider, Provider<UpsightAnalyticsApi> provider2, Provider<Clock> provider3, Provider<ActivityLifecycleCallbacks> provider4, Provider<AssociationManager> provider5) {
        return new UpsightAnalyticsExtension_MembersInjector(membersInjector, provider, provider2, provider3, provider4, provider5);
    }

    public void injectMembers(UpsightAnalyticsExtension upsightAnalyticsExtension) {
        if (upsightAnalyticsExtension == null) {
            throw new NullPointerException("Cannot inject members into a null reference");
        }
        this.supertypeInjector.injectMembers(upsightAnalyticsExtension);
        upsightAnalyticsExtension.mUncaughtExceptionHandler = (Opt) this.mUncaughtExceptionHandlerProvider.get();
        upsightAnalyticsExtension.mAnalytics = (UpsightAnalyticsApi) this.mAnalyticsProvider.get();
        upsightAnalyticsExtension.mClock = (Clock) this.mClockProvider.get();
        upsightAnalyticsExtension.mUpsightLifeCycleCallbacks = (ActivityLifecycleCallbacks) this.mUpsightLifeCycleCallbacksProvider.get();
        upsightAnalyticsExtension.mAssociationManager = (AssociationManager) this.mAssociationManagerProvider.get();
    }
}
