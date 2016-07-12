package com.upsight.android.analytics.internal.session;

import android.app.Activity;
import android.content.Intent;
import com.upsight.android.UpsightContext;
import com.upsight.android.UpsightException;
import com.upsight.android.analytics.UpsightLifeCycleTracker;
import com.upsight.android.analytics.UpsightLifeCycleTracker.ActivityState;
import com.upsight.android.analytics.internal.session.ApplicationStatus.State;
import com.upsight.android.persistence.UpsightDataStore;
import com.upsight.android.persistence.UpsightDataStoreListener;
import java.lang.ref.WeakReference;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Set;
import javax.inject.Inject;
import javax.inject.Singleton;
import spacemadness.com.lunarconsole.C1401R;

@Singleton
class ManualTracker implements UpsightLifeCycleTracker {
    private Set<WeakReference<Activity>> mActivitySet;
    private UpsightDataStore mDataStore;
    private SessionManager mSessionManager;

    /* renamed from: com.upsight.android.analytics.internal.session.ManualTracker.1 */
    class C09041 implements UpsightDataStoreListener<Set<ApplicationStatus>> {
        C09041() {
        }

        public void onFailure(UpsightException upsightException) {
        }

        public void onSuccess(Set<ApplicationStatus> set) {
            if (set.isEmpty()) {
                ManualTracker.this.mDataStore.store(new ApplicationStatus(State.FOREGROUND));
                return;
            }
            Object obj = null;
            for (ApplicationStatus applicationStatus : set) {
                if (obj == null) {
                    applicationStatus.state = State.FOREGROUND;
                    ManualTracker.this.mDataStore.store(applicationStatus);
                    obj = 1;
                } else {
                    ManualTracker.this.mDataStore.remove(applicationStatus);
                }
            }
        }
    }

    /* renamed from: com.upsight.android.analytics.internal.session.ManualTracker.2 */
    class C09052 implements UpsightDataStoreListener<Set<ApplicationStatus>> {
        C09052() {
        }

        public void onFailure(UpsightException upsightException) {
        }

        public void onSuccess(Set<ApplicationStatus> set) {
            if (set.isEmpty()) {
                ManualTracker.this.mDataStore.store(new ApplicationStatus(State.BACKGROUND));
                return;
            }
            Iterator it = set.iterator();
            Object obj = null;
            while (it.hasNext()) {
                ApplicationStatus applicationStatus = (ApplicationStatus) it.next();
                if (obj == null) {
                    applicationStatus.state = State.BACKGROUND;
                    ManualTracker.this.mDataStore.store(applicationStatus);
                    obj = 1;
                } else {
                    ManualTracker.this.mDataStore.remove(applicationStatus);
                    it.remove();
                }
            }
        }
    }

    /* renamed from: com.upsight.android.analytics.internal.session.ManualTracker.3 */
    static /* synthetic */ class C09063 {
        static final /* synthetic */ int[] f266xa86dd1d6;

        static {
            f266xa86dd1d6 = new int[ActivityState.values().length];
            try {
                f266xa86dd1d6[ActivityState.STARTED.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f266xa86dd1d6[ActivityState.STOPPED.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
        }
    }

    @Inject
    public ManualTracker(SessionManager sessionManager, UpsightContext upsightContext) {
        this.mSessionManager = sessionManager;
        this.mDataStore = upsightContext.getDataStore();
        this.mActivitySet = new HashSet();
    }

    private static boolean isPurgeable(Activity activity) {
        return activity == null;
    }

    private static void removeAndPurge(Set<WeakReference<Activity>> set, Activity activity) {
        Iterator it = set.iterator();
        while (it.hasNext()) {
            Activity activity2 = (Activity) ((WeakReference) it.next()).get();
            if (activity2 == activity || isPurgeable(activity2)) {
                it.remove();
            }
        }
    }

    public void track(Activity activity, ActivityState activityState, SessionInitializer sessionInitializer) {
        switch (C09063.f266xa86dd1d6[activityState.ordinal()]) {
            case C1401R.styleable.LoadingImageView_imageAspectRatio /*1*/:
                if (this.mActivitySet.isEmpty()) {
                    this.mDataStore.fetch(ApplicationStatus.class, new C09041());
                    Intent intent = activity.getIntent();
                    if (intent == null || !intent.hasExtra(UpsightLifeCycleTracker.STARTED_FROM_PUSH)) {
                        this.mSessionManager.startSession(sessionInitializer);
                    }
                }
                this.mActivitySet.add(new WeakReference(activity));
            case C1401R.styleable.LoadingImageView_circleCrop /*2*/:
                removeAndPurge(this.mActivitySet, activity);
                if (!activity.isChangingConfigurations() && this.mActivitySet.isEmpty()) {
                    this.mDataStore.fetch(ApplicationStatus.class, new C09052());
                    this.mSessionManager.stopSession();
                }
            default:
        }
    }
}
