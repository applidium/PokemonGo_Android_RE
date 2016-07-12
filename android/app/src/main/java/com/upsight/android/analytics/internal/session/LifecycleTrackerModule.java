package com.upsight.android.analytics.internal.session;

import android.app.Application.ActivityLifecycleCallbacks;
import com.upsight.android.analytics.UpsightLifeCycleTracker;
import dagger.Module;
import dagger.Provides;
import javax.inject.Singleton;

@Module
public final class LifecycleTrackerModule {
    @Singleton
    @Provides
    public UpsightLifeCycleTracker provideManualTracker(ManualTracker manualTracker) {
        return manualTracker;
    }

    @Singleton
    @Provides
    public ActivityLifecycleCallbacks provideUpsightLifeCycleCallbacks(ActivityLifecycleTracker activityLifecycleTracker) {
        return activityLifecycleTracker;
    }
}
