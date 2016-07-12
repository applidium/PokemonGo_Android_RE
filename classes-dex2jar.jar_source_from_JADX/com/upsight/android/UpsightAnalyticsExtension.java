package com.upsight.android;

import android.app.Application;
import android.app.Application.ActivityLifecycleCallbacks;
import com.upsight.android.analytics.UpsightAnalyticsApi;
import com.upsight.android.analytics.UpsightAnalyticsComponent;
import com.upsight.android.analytics.event.install.UpsightInstallEvent;
import com.upsight.android.analytics.internal.BaseAnalyticsModule;
import com.upsight.android.analytics.internal.DaggerAnalyticsComponent;
import com.upsight.android.analytics.internal.association.AssociationManager;
import com.upsight.android.analytics.internal.session.Clock;
import com.upsight.android.internal.util.Opt;
import com.upsight.android.internal.util.PreferencesHelper;
import java.lang.Thread.UncaughtExceptionHandler;
import javax.inject.Inject;
import javax.inject.Named;

public class UpsightAnalyticsExtension extends UpsightExtension<UpsightAnalyticsComponent, UpsightAnalyticsApi> {
    public static final String EXTENSION_NAME = "com.upsight.extension.analytics";
    @Inject
    UpsightAnalyticsApi mAnalytics;
    @Inject
    AssociationManager mAssociationManager;
    @Inject
    Clock mClock;
    @Inject
    @Named("optUncaughtExceptionHandler")
    Opt<UncaughtExceptionHandler> mUncaughtExceptionHandler;
    @Inject
    ActivityLifecycleCallbacks mUpsightLifeCycleCallbacks;

    protected UpsightAnalyticsExtension() {
    }

    public UpsightAnalyticsApi getApi() {
        return this.mAnalytics;
    }

    protected void onCreate(UpsightContext upsightContext) {
        if (this.mUncaughtExceptionHandler.isPresent()) {
            Thread.setDefaultUncaughtExceptionHandler((UncaughtExceptionHandler) this.mUncaughtExceptionHandler.get());
        }
        ((Application) upsightContext.getApplicationContext()).registerActivityLifecycleCallbacks(this.mUpsightLifeCycleCallbacks);
        this.mAssociationManager.launch();
    }

    protected void onPostCreate(UpsightContext upsightContext) {
        if (!PreferencesHelper.contains(upsightContext, PreferencesHelper.INSTALL_TIMESTAMP_NAME)) {
            PreferencesHelper.putLong(upsightContext, PreferencesHelper.INSTALL_TIMESTAMP_NAME, this.mClock.currentTimeSeconds());
            UpsightInstallEvent.createBuilder().record(upsightContext);
        }
    }

    protected UpsightAnalyticsComponent onResolve(UpsightContext upsightContext) {
        return DaggerAnalyticsComponent.builder().baseAnalyticsModule(new BaseAnalyticsModule(upsightContext)).build();
    }
}
