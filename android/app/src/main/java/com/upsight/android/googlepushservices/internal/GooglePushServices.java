package com.upsight.android.googlepushservices.internal;

import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import android.content.pm.PackageManager.NameNotFoundException;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.support.v4.view.accessibility.AccessibilityNodeInfoCompat;
import android.support.v4.widget.ExploreByTouchHelper;
import android.text.TextUtils;
import com.google.android.gms.common.GooglePlayServicesUtil;
import com.google.android.gms.gcm.GoogleCloudMessaging;
import com.upsight.android.Upsight;
import com.upsight.android.UpsightContext;
import com.upsight.android.UpsightException;
import com.upsight.android.analytics.event.comm.UpsightCommRegisterEvent;
import com.upsight.android.analytics.event.comm.UpsightCommUnregisterEvent;
import com.upsight.android.googlepushservices.UpsightGooglePushServices.OnRegisterListener;
import com.upsight.android.googlepushservices.UpsightGooglePushServices.OnUnregisterListener;
import com.upsight.android.googlepushservices.UpsightGooglePushServicesApi;
import com.upsight.android.logger.UpsightLogger;
import com.upsight.android.marketing.UpsightBillboard;
import java.util.HashSet;
import java.util.Set;
import javax.inject.Inject;
import javax.inject.Singleton;
import rx.Observable;
import rx.Observable.OnSubscribe;
import rx.Observer;
import rx.Scheduler;
import rx.Subscriber;
import rx.android.schedulers.HandlerScheduler;

@Singleton
public class GooglePushServices implements UpsightGooglePushServicesApi {
    private static final String KEY_GCM = "com.upsight.gcm";
    private static final String LOG_TAG;
    private static final String PREFERENCES_NAME = "com.upsight.android.googleadvertisingid.internal.registration";
    private static final String PROPERTY_APP_VERSION = "gcmApplicationVersion";
    private static final String PROPERTY_REG_ID = "gcmRegistrationId";
    static final String PUSH_SCOPE = "com_upsight_push_scope";
    private final Scheduler mComputationScheduler;
    private UpsightLogger mLogger;
    private final Set<OnRegisterListener> mPendingRegisterListeners;
    private final Set<OnUnregisterListener> mPendingUnregisterListeners;
    private SharedPreferences mPrefs;
    private UpsightBillboard mPushBillboard;
    private boolean mRegistrationIsInProgress;
    private final Handler mUiThreadHandler;
    private boolean mUnregistrationIsInProgress;
    private UpsightContext mUpsight;

    /* renamed from: com.upsight.android.googlepushservices.internal.GooglePushServices.1 */
    class C09131 implements OnSubscribe<String> {
        final /* synthetic */ String val$projectId;

        C09131(String str) {
            this.val$projectId = str;
        }

        public void call(Subscriber<? super String> subscriber) {
            try {
                subscriber.onNext(GoogleCloudMessaging.getInstance(GooglePushServices.this.mUpsight).register(this.val$projectId));
                subscriber.onCompleted();
            } catch (Throwable e) {
                subscriber.onError(e);
            }
        }
    }

    /* renamed from: com.upsight.android.googlepushservices.internal.GooglePushServices.2 */
    class C09142 implements Observer<String> {
        C09142() {
        }

        public void onCompleted() {
        }

        public void onError(Throwable th) {
            synchronized (GooglePushServices.this) {
                Set<OnRegisterListener> hashSet = new HashSet(GooglePushServices.this.mPendingRegisterListeners);
                GooglePushServices.this.mPendingRegisterListeners.clear();
                GooglePushServices.this.mRegistrationIsInProgress = false;
            }
            for (OnRegisterListener onFailure : hashSet) {
                onFailure.onFailure(new UpsightException(th));
            }
        }

        public void onNext(String str) {
            synchronized (GooglePushServices.this) {
                GooglePushServices.this.storeRegistrationId(str);
                UpsightCommRegisterEvent.createBuilder().setToken(str).record(GooglePushServices.this.mUpsight);
                Set<OnRegisterListener> hashSet = new HashSet(GooglePushServices.this.mPendingRegisterListeners);
                GooglePushServices.this.mPendingRegisterListeners.clear();
                GooglePushServices.this.mRegistrationIsInProgress = false;
            }
            for (OnRegisterListener onSuccess : hashSet) {
                onSuccess.onSuccess(str);
            }
        }
    }

    /* renamed from: com.upsight.android.googlepushservices.internal.GooglePushServices.3 */
    class C09153 implements OnSubscribe<String> {
        C09153() {
        }

        public void call(Subscriber<? super String> subscriber) {
            try {
                GoogleCloudMessaging.getInstance(GooglePushServices.this.mUpsight).unregister();
                subscriber.onCompleted();
            } catch (Throwable e) {
                subscriber.onError(e);
            }
        }
    }

    /* renamed from: com.upsight.android.googlepushservices.internal.GooglePushServices.4 */
    class C09164 implements Observer<String> {
        C09164() {
        }

        public void onCompleted() {
            synchronized (GooglePushServices.this) {
                UpsightCommUnregisterEvent.createBuilder().record(GooglePushServices.this.mUpsight);
                Set<OnUnregisterListener> hashSet = new HashSet(GooglePushServices.this.mPendingUnregisterListeners);
                GooglePushServices.this.mPendingUnregisterListeners.clear();
                GooglePushServices.this.mUnregistrationIsInProgress = false;
            }
            for (OnUnregisterListener onSuccess : hashSet) {
                onSuccess.onSuccess();
            }
        }

        public void onError(Throwable th) {
            synchronized (GooglePushServices.this) {
                Set<OnUnregisterListener> hashSet = new HashSet(GooglePushServices.this.mPendingUnregisterListeners);
                GooglePushServices.this.mPendingUnregisterListeners.clear();
                GooglePushServices.this.mUnregistrationIsInProgress = false;
            }
            for (OnUnregisterListener onFailure : hashSet) {
                onFailure.onFailure(new UpsightException(th));
            }
        }

        public void onNext(String str) {
        }
    }

    static {
        LOG_TAG = GooglePushServices.class.getName();
    }

    @Inject
    GooglePushServices(UpsightContext upsightContext) {
        this.mUpsight = upsightContext;
        this.mLogger = upsightContext.getLogger();
        if (Looper.myLooper() != null) {
            this.mUiThreadHandler = new Handler(Looper.myLooper());
        } else {
            this.mUiThreadHandler = new Handler(Looper.getMainLooper());
        }
        this.mComputationScheduler = upsightContext.getCoreComponent().subscribeOnScheduler();
        this.mRegistrationIsInProgress = false;
        this.mUnregistrationIsInProgress = false;
        this.mPendingRegisterListeners = new HashSet();
        this.mPendingUnregisterListeners = new HashSet();
        this.mPrefs = this.mUpsight.getSharedPreferences(PREFERENCES_NAME, 0);
    }

    private int getAppVersion() {
        try {
            return this.mUpsight.getPackageManager().getPackageInfo(this.mUpsight.getPackageName(), 0).versionCode;
        } catch (NameNotFoundException e) {
            throw new RuntimeException("Could not get package name: " + e);
        }
    }

    private String getRegistrationId() {
        CharSequence string = this.mPrefs.getString(PROPERTY_REG_ID, null);
        return (!TextUtils.isEmpty(string) && this.mPrefs.getInt(PROPERTY_APP_VERSION, ExploreByTouchHelper.INVALID_ID) == getAppVersion()) ? string : null;
    }

    private boolean hasPlayServices() {
        if (GooglePlayServicesUtil.isGooglePlayServicesAvailable(this.mUpsight) == 0) {
            return true;
        }
        this.mLogger.m199e(LOG_TAG, "Google play service is not available: ", GooglePlayServicesUtil.getErrorString(GooglePlayServicesUtil.isGooglePlayServicesAvailable(this.mUpsight)));
        return false;
    }

    private boolean isRegistered() {
        return getRegistrationId() != null;
    }

    private void registerInBackground(String str) {
        this.mRegistrationIsInProgress = true;
        Observable.create(new C09131(str)).subscribeOn(this.mComputationScheduler).observeOn(HandlerScheduler.from(this.mUiThreadHandler)).subscribe(new C09142());
    }

    private void storeRegistrationId(String str) {
        int appVersion = getAppVersion();
        Editor edit = this.mPrefs.edit();
        edit.putString(PROPERTY_REG_ID, str);
        edit.putInt(PROPERTY_APP_VERSION, appVersion);
        edit.apply();
    }

    private void unregisterInBackground() {
        this.mUnregistrationIsInProgress = true;
        Observable.create(new C09153()).subscribeOn(this.mComputationScheduler).observeOn(HandlerScheduler.from(this.mUiThreadHandler)).subscribe(new C09164());
    }

    public UpsightBillboard createPushBillboard(UpsightContext upsightContext, UpsightBillboard.Handler handler) throws IllegalArgumentException, IllegalStateException {
        UpsightBillboard upsightBillboard;
        synchronized (this) {
            if (this.mPushBillboard != null) {
                this.mPushBillboard.destroy();
                this.mPushBillboard = null;
            }
            this.mPushBillboard = UpsightBillboard.create(upsightContext, PUSH_SCOPE, handler);
            upsightBillboard = this.mPushBillboard;
        }
        return upsightBillboard;
    }

    public void register(OnRegisterListener onRegisterListener) {
        Object substring;
        NameNotFoundException e;
        CharSequence charSequence = null;
        synchronized (this) {
            if (onRegisterListener == null) {
                throw new IllegalArgumentException("Listener could not be null");
            }
            if (!hasPlayServices()) {
                onRegisterListener.onFailure(new UpsightException("Google Play Services are not available", new Object[0]));
            } else if (this.mUnregistrationIsInProgress) {
                onRegisterListener.onFailure(new UpsightException("Unregistration is in progress, try later", new Object[0]));
            } else {
                try {
                    Bundle bundle = this.mUpsight.getPackageManager().getApplicationInfo(this.mUpsight.getPackageName(), AccessibilityNodeInfoCompat.ACTION_CLEAR_ACCESSIBILITY_FOCUS).metaData;
                    if (bundle != null) {
                        String string = bundle.getString(KEY_GCM);
                        if (!TextUtils.isEmpty(string)) {
                            substring = string.substring(0, string.lastIndexOf(46));
                            try {
                                charSequence = string.substring(string.lastIndexOf(46) + 1);
                            } catch (NameNotFoundException e2) {
                                e = e2;
                                this.mLogger.m199e(Upsight.LOG_TAG, "Unexpected error: Package name missing!?", e);
                                if (this.mUpsight.getPackageName().equals(substring)) {
                                }
                                this.mLogger.m199e(LOG_TAG, "Registration aborted, wrong or no value for com.upsight.gcm was defined", new Object[0]);
                                if (!this.mUpsight.getPackageName().equals(substring)) {
                                    this.mLogger.m199e(LOG_TAG, "Check that the package name of your application is specified correctly", new Object[0]);
                                }
                                if (TextUtils.isEmpty(charSequence)) {
                                    this.mLogger.m199e(LOG_TAG, "Check that your GCM sender id is specified correctly", new Object[0]);
                                }
                                onRegisterListener.onFailure(new UpsightException("GCM properties must be set in the Android Manifest with <meta-data android:name=\"com.upsight.gcm\" android:value=\"" + this.mUpsight.getPackageName() + ".GCM_SENDER_ID\" />", new Object[0]));
                            }
                            if (this.mUpsight.getPackageName().equals(substring) || TextUtils.isEmpty(charSequence)) {
                                this.mLogger.m199e(LOG_TAG, "Registration aborted, wrong or no value for com.upsight.gcm was defined", new Object[0]);
                                if (this.mUpsight.getPackageName().equals(substring)) {
                                    this.mLogger.m199e(LOG_TAG, "Check that the package name of your application is specified correctly", new Object[0]);
                                }
                                if (TextUtils.isEmpty(charSequence)) {
                                    this.mLogger.m199e(LOG_TAG, "Check that your GCM sender id is specified correctly", new Object[0]);
                                }
                                onRegisterListener.onFailure(new UpsightException("GCM properties must be set in the Android Manifest with <meta-data android:name=\"com.upsight.gcm\" android:value=\"" + this.mUpsight.getPackageName() + ".GCM_SENDER_ID\" />", new Object[0]));
                            } else {
                                this.mPendingRegisterListeners.add(onRegisterListener);
                                if (!this.mRegistrationIsInProgress) {
                                    registerInBackground(charSequence);
                                }
                            }
                        }
                    }
                    CharSequence charSequence2 = charSequence;
                } catch (NameNotFoundException e3) {
                    e = e3;
                    substring = charSequence;
                    this.mLogger.m199e(Upsight.LOG_TAG, "Unexpected error: Package name missing!?", e);
                    if (this.mUpsight.getPackageName().equals(substring)) {
                    }
                    this.mLogger.m199e(LOG_TAG, "Registration aborted, wrong or no value for com.upsight.gcm was defined", new Object[0]);
                    if (this.mUpsight.getPackageName().equals(substring)) {
                        this.mLogger.m199e(LOG_TAG, "Check that the package name of your application is specified correctly", new Object[0]);
                    }
                    if (TextUtils.isEmpty(charSequence)) {
                        this.mLogger.m199e(LOG_TAG, "Check that your GCM sender id is specified correctly", new Object[0]);
                    }
                    onRegisterListener.onFailure(new UpsightException("GCM properties must be set in the Android Manifest with <meta-data android:name=\"com.upsight.gcm\" android:value=\"" + this.mUpsight.getPackageName() + ".GCM_SENDER_ID\" />", new Object[0]));
                }
                if (this.mUpsight.getPackageName().equals(substring)) {
                }
                this.mLogger.m199e(LOG_TAG, "Registration aborted, wrong or no value for com.upsight.gcm was defined", new Object[0]);
                if (this.mUpsight.getPackageName().equals(substring)) {
                    this.mLogger.m199e(LOG_TAG, "Check that the package name of your application is specified correctly", new Object[0]);
                }
                if (TextUtils.isEmpty(charSequence)) {
                    this.mLogger.m199e(LOG_TAG, "Check that your GCM sender id is specified correctly", new Object[0]);
                }
                onRegisterListener.onFailure(new UpsightException("GCM properties must be set in the Android Manifest with <meta-data android:name=\"com.upsight.gcm\" android:value=\"" + this.mUpsight.getPackageName() + ".GCM_SENDER_ID\" />", new Object[0]));
            }
        }
    }

    public void unregister(OnUnregisterListener onUnregisterListener) {
        synchronized (this) {
            if (onUnregisterListener == null) {
                throw new IllegalArgumentException("Listener could not be null");
            }
            if (!isRegistered()) {
                onUnregisterListener.onFailure(new UpsightException("Application is not registered to pushes yet", new Object[0]));
            } else if (this.mRegistrationIsInProgress) {
                onUnregisterListener.onFailure(new UpsightException("Registration is in progress, try later", new Object[0]));
            } else {
                this.mPendingUnregisterListeners.add(onUnregisterListener);
                if (!this.mUnregistrationIsInProgress) {
                    unregisterInBackground();
                }
            }
        }
    }
}
