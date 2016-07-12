package com.upsight.android.analytics.internal.session;

import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager.NameNotFoundException;
import android.os.Bundle;
import android.support.v4.view.accessibility.AccessibilityNodeInfoCompat;
import com.upsight.android.Upsight;
import com.upsight.android.UpsightContext;
import com.upsight.android.analytics.configuration.UpsightConfiguration;
import com.upsight.android.analytics.event.session.UpsightSessionPauseEvent;
import com.upsight.android.analytics.event.session.UpsightSessionResumeEvent;
import com.upsight.android.analytics.event.session.UpsightSessionStartEvent;
import com.upsight.android.analytics.internal.DispatcherService;
import com.upsight.android.analytics.internal.session.ApplicationStatus.State;
import com.upsight.android.analytics.provider.UpsightLocationTracker;
import com.upsight.android.analytics.session.UpsightSessionCallbacks;
import com.upsight.android.internal.util.PreferencesHelper;
import com.upsight.android.logger.UpsightLogger;
import com.upsight.android.persistence.UpsightDataStore;
import com.upsight.android.persistence.annotation.Created;
import com.upsight.android.persistence.annotation.Updated;
import java.io.IOException;

public class SessionManagerImpl implements SessionManager {
    private static final String KEY_SESSION = "com.upsight.session_callbacks";
    private static final String LOG_TAG;
    private static final String PREFERENCES_KEY_JSON_CONFIG = "session_manager_json_config";
    private static final String PREFERENCES_KEY_LAST_KNOWN_SESSION_TIME = "last_known_session_time";
    private Context mAppContext;
    private final Clock mClock;
    private ConfigParser mConfigParser;
    private Config mCurrentConfig;
    private long mLastKnownSessionTs;
    private UpsightLogger mLogger;
    private Session mSession;
    private long mStopRequestedTs;
    private UpsightContext mUpsight;
    private UpsightSessionCallbacks mUpsightSessionCallbacks;

    public static final class Config {
        public final long timeToNewSession;

        Config(long j) {
            this.timeToNewSession = j;
        }

        public boolean equals(Object obj) {
            if (this != obj) {
                if (obj == null || getClass() != obj.getClass()) {
                    return false;
                }
                if (((Config) obj).timeToNewSession != this.timeToNewSession) {
                    return false;
                }
            }
            return true;
        }

        public boolean isValid() {
            return this.timeToNewSession > 0;
        }
    }

    static {
        LOG_TAG = SessionManagerImpl.class.getSimpleName();
    }

    SessionManagerImpl(Context context, UpsightContext upsightContext, UpsightDataStore upsightDataStore, UpsightLogger upsightLogger, ConfigParser configParser, Clock clock) {
        this.mLogger = upsightLogger;
        this.mConfigParser = configParser;
        this.mAppContext = context;
        this.mUpsight = upsightContext;
        this.mClock = clock;
        this.mLastKnownSessionTs = PreferencesHelper.getLong(context, PREFERENCES_KEY_LAST_KNOWN_SESSION_TIME, 0);
        loadSessionHook();
        upsightDataStore.subscribe(this);
        applyConfiguration(fetchCurrentConfig());
    }

    private boolean applyConfiguration(String str) {
        try {
            Config parseConfig = this.mConfigParser.parseConfig(str);
            if (parseConfig == null || !parseConfig.isValid()) {
                this.mLogger.m205w(LOG_TAG, "New config is invalid", new Object[0]);
                return false;
            } else if (parseConfig.equals(this.mCurrentConfig)) {
                this.mLogger.m205w(LOG_TAG, "New config ignored because it is equal to current config", new Object[0]);
                return true;
            } else {
                PreferencesHelper.putString(this.mAppContext, PREFERENCES_KEY_JSON_CONFIG, str);
                this.mCurrentConfig = parseConfig;
                return true;
            }
        } catch (IOException e) {
            this.mLogger.m199e(LOG_TAG, "Failed to apply new config", e);
            return false;
        }
    }

    private String fetchCurrentConfig() {
        return PreferencesHelper.getString(this.mAppContext, PREFERENCES_KEY_JSON_CONFIG, SessionManager.DEFAULT_CONFIGURATION);
    }

    private boolean isExpired() {
        return (this.mStopRequestedTs != 0 && this.mClock.currentTimeSeconds() - this.mStopRequestedTs > this.mCurrentConfig.timeToNewSession) || (this.mSession == null && this.mClock.currentTimeSeconds() - this.mLastKnownSessionTs > this.mCurrentConfig.timeToNewSession);
    }

    private boolean isSessionNull() {
        return this.mSession == null;
    }

    private void loadSessionHook() {
        try {
            Bundle bundle = this.mUpsight.getPackageManager().getApplicationInfo(this.mUpsight.getPackageName(), AccessibilityNodeInfoCompat.ACTION_CLEAR_ACCESSIBILITY_FOCUS).metaData;
            if (bundle != null && bundle.containsKey(KEY_SESSION)) {
                try {
                    Class cls = Class.forName(bundle.getString(KEY_SESSION));
                    if (UpsightSessionCallbacks.class.isAssignableFrom(cls)) {
                        this.mUpsightSessionCallbacks = (UpsightSessionCallbacks) cls.newInstance();
                    } else {
                        throw new IllegalStateException(String.format("Class %s must implement %s!", new Object[]{cls.getName(), UpsightSessionCallbacks.class.getName()}));
                    }
                } catch (ClassNotFoundException e) {
                    this.mLogger.m199e(Upsight.LOG_TAG, String.format("Unexpected error: Class: %s was not found.", new Object[]{r1}), e);
                } catch (IllegalAccessException e2) {
                    this.mLogger.m199e(Upsight.LOG_TAG, String.format("Unexpected error: Class: %s does not have public access.", new Object[]{r1}), e2);
                } catch (InstantiationException e3) {
                    this.mLogger.m199e(Upsight.LOG_TAG, String.format("Unexpected error: Class: %s could not be instantiated", new Object[]{r1}), e3);
                }
            }
        } catch (NameNotFoundException e4) {
            this.mLogger.m199e(Upsight.LOG_TAG, "Unexpected error: Package name missing!?", e4);
        }
    }

    private Session startSession(boolean z, boolean z2, SessionInitializer sessionInitializer) {
        Object obj = 1;
        Integer num = null;
        this.mUpsight.startService(new Intent(this.mUpsight, DispatcherService.class));
        Object obj2 = sessionInitializer != null ? 1 : null;
        if (this.mStopRequestedTs == 0) {
            obj = null;
        }
        this.mStopRequestedTs = 0;
        if (obj2 != null || z2) {
            Integer messageID;
            UpsightLocationTracker.purge(this.mUpsight);
            if (this.mUpsightSessionCallbacks != null) {
                this.mUpsightSessionCallbacks.onStart(this.mUpsight);
            }
            if (obj2 != null) {
                num = sessionInitializer.getCampaignID();
                messageID = sessionInitializer.getMessageID();
            } else {
                messageID = null;
            }
            this.mSession = SessionImpl.incrementAndCreate(this.mAppContext, this.mClock, num, messageID);
            UpsightSessionStartEvent.createBuilder().record(this.mUpsight);
        } else if (z) {
            UpsightLocationTracker.purge(this.mUpsight);
            if (this.mUpsightSessionCallbacks != null) {
                this.mUpsightSessionCallbacks.onStart(this.mUpsight);
            }
            this.mSession = SessionImpl.create(this.mAppContext, this.mClock, null, null);
            UpsightSessionResumeEvent.createBuilder().record(this.mUpsight);
        } else if (obj != null) {
            UpsightSessionResumeEvent.createBuilder().record(this.mUpsight);
        }
        this.mLastKnownSessionTs = this.mClock.currentTimeSeconds();
        PreferencesHelper.putLong(this.mAppContext, PREFERENCES_KEY_LAST_KNOWN_SESSION_TIME, this.mLastKnownSessionTs);
        return this.mSession;
    }

    public Session getCurrentSession() {
        Session startSession;
        synchronized (this) {
            boolean isSessionNull = isSessionNull();
            boolean isExpired = isExpired();
            startSession = (isSessionNull || isExpired) ? startSession(isSessionNull, isExpired, null) : this.mSession;
        }
        return startSession;
    }

    @Updated
    public void onApplicationStatusUpdated(ApplicationStatus applicationStatus) {
        synchronized (this) {
            if (State.BACKGROUND.equals(applicationStatus.getState())) {
                this.mLastKnownSessionTs = this.mClock.currentTimeSeconds();
                PreferencesHelper.putLong(this.mAppContext, PREFERENCES_KEY_LAST_KNOWN_SESSION_TIME, this.mLastKnownSessionTs);
                UpsightSessionPauseEvent.createBuilder().record(this.mUpsight);
            }
        }
    }

    @Created
    public void onConfigurationCreated(UpsightConfiguration upsightConfiguration) {
        synchronized (this) {
            if (SessionManager.CONFIGURATION_SUBTYPE.equals(upsightConfiguration.getScope())) {
                applyConfiguration(upsightConfiguration.getConfiguration());
            }
        }
    }

    public Session startSession(SessionInitializer sessionInitializer) {
        Session startSession;
        synchronized (this) {
            startSession = startSession(isSessionNull(), isExpired(), sessionInitializer);
        }
        return startSession;
    }

    public void stopSession() {
        synchronized (this) {
            Session currentSession = getCurrentSession();
            this.mStopRequestedTs = this.mClock.currentTimeSeconds();
            currentSession.updateDuration(this.mAppContext, this.mStopRequestedTs);
        }
    }
}
