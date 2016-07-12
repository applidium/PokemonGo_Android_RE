package com.upsight.android.analytics.internal.configuration;

import com.upsight.android.UpsightContext;
import com.upsight.android.UpsightException;
import com.upsight.android.analytics.C0873R;
import com.upsight.android.analytics.configuration.UpsightConfiguration;
import com.upsight.android.analytics.dispatcher.EndpointResponse;
import com.upsight.android.analytics.event.config.UpsightConfigExpiredEvent;
import com.upsight.android.logger.UpsightLogger;
import com.upsight.android.persistence.UpsightDataStore;
import com.upsight.android.persistence.UpsightDataStoreListener;
import com.upsight.android.persistence.UpsightSubscription;
import com.upsight.android.persistence.annotation.Created;
import java.io.IOException;
import java.util.Collection;
import java.util.Set;
import java.util.concurrent.TimeUnit;
import org.apache.commons.io.IOUtils;
import rx.Scheduler;
import rx.Scheduler.Worker;
import rx.Subscription;
import rx.functions.Action0;

public final class ConfigurationManager {
    public static final String CONFIGURATION_RESPONSE_SUBTYPE = "upsight.configuration";
    public static final String CONFIGURATION_SUBTYPE = "upsight.configuration.configurationManager";
    private static final String LOG_TAG = "Configurator";
    private final ManagerConfigParser mConfigParser;
    private Config mCurrentConfig;
    private final UpsightDataStore mDataStore;
    private UpsightSubscription mDataStoreSubscription;
    private boolean mIsLaunched;
    private boolean mIsOutOfSync;
    private final UpsightLogger mLogger;
    private final ConfigurationResponseParser mResponseParser;
    private Action0 mSyncAction;
    private final UpsightContext mUpsight;
    private final Worker mWorker;
    private Subscription mWorkerSubscription;

    /* renamed from: com.upsight.android.analytics.internal.configuration.ConfigurationManager.1 */
    class C08831 implements UpsightDataStoreListener<Set<UpsightConfiguration>> {
        C08831() {
        }

        public void onFailure(UpsightException upsightException) {
            ConfigurationManager.this.mLogger.m199e(ConfigurationManager.LOG_TAG, "Could not fetch existing configs from datastore", upsightException);
            if (ConfigurationManager.this.mCurrentConfig == null) {
                ConfigurationManager.this.applyDefaultConfiguration();
            }
        }

        public void onSuccess(Set<UpsightConfiguration> set) {
            if (ConfigurationManager.this.mCurrentConfig == null) {
                boolean z;
                if (set.size() > 0) {
                    z = false;
                    for (UpsightConfiguration upsightConfiguration : set) {
                        if (upsightConfiguration.getScope().equals(ConfigurationManager.CONFIGURATION_SUBTYPE)) {
                            z = ConfigurationManager.this.applyConfiguration(upsightConfiguration.getConfiguration());
                        }
                    }
                } else {
                    z = false;
                }
                if (!z) {
                    ConfigurationManager.this.applyDefaultConfiguration();
                }
            }
        }
    }

    /* renamed from: com.upsight.android.analytics.internal.configuration.ConfigurationManager.2 */
    class C08842 implements Action0 {
        C08842() {
        }

        public void call() {
            UpsightConfigExpiredEvent.createBuilder().record(ConfigurationManager.this.mUpsight);
        }
    }

    /* renamed from: com.upsight.android.analytics.internal.configuration.ConfigurationManager.3 */
    class C08853 implements UpsightDataStoreListener<Set<UpsightConfiguration>> {
        C08853() {
        }

        public void onFailure(UpsightException upsightException) {
        }

        public void onSuccess(Set<UpsightConfiguration> set) {
            for (UpsightConfiguration remove : set) {
                ConfigurationManager.this.mDataStore.remove(remove);
            }
        }
    }

    public static final class Config {
        public final long requestInterval;

        Config(long j) {
            this.requestInterval = j;
        }

        public boolean equals(Object obj) {
            if (this != obj) {
                if (obj == null || getClass() != obj.getClass()) {
                    return false;
                }
                if (((Config) obj).requestInterval != this.requestInterval) {
                    return false;
                }
            }
            return true;
        }

        public boolean isValid() {
            return this.requestInterval > 0;
        }
    }

    ConfigurationManager(UpsightContext upsightContext, UpsightDataStore upsightDataStore, ConfigurationResponseParser configurationResponseParser, ManagerConfigParser managerConfigParser, Scheduler scheduler, UpsightLogger upsightLogger) {
        this.mIsLaunched = false;
        this.mSyncAction = new C08842();
        this.mUpsight = upsightContext;
        this.mDataStore = upsightDataStore;
        this.mResponseParser = configurationResponseParser;
        this.mConfigParser = managerConfigParser;
        this.mLogger = upsightLogger;
        this.mWorker = scheduler.createWorker();
    }

    private boolean applyConfiguration(String str) {
        try {
            Config parse = this.mConfigParser.parse(str);
            if (parse == null || !parse.isValid()) {
                this.mLogger.m205w(LOG_TAG, "Incoming config is invalid", new Object[0]);
                return false;
            } else if (parse.equals(this.mCurrentConfig)) {
                this.mLogger.m205w(LOG_TAG, "Current config is equals to incoming config, rejecting", new Object[0]);
                return true;
            } else {
                if (!(this.mWorkerSubscription == null || this.mWorkerSubscription.isUnsubscribed())) {
                    this.mWorkerSubscription.unsubscribe();
                }
                this.mWorkerSubscription = this.mWorker.schedulePeriodically(this.mSyncAction, this.mIsOutOfSync ? 0 : parse.requestInterval, parse.requestInterval, TimeUnit.MILLISECONDS);
                this.mIsOutOfSync = false;
                this.mCurrentConfig = parse;
                return true;
            }
        } catch (IOException e) {
            this.mLogger.m199e(LOG_TAG, "Could not parse incoming configuration", e);
            return false;
        }
    }

    private void applyDefaultConfiguration() {
        try {
            applyConfiguration(IOUtils.toString(this.mUpsight.getResources().openRawResource(C0873R.raw.configurator_config)));
        } catch (IOException e) {
            this.mLogger.m199e(LOG_TAG, "Could not read default config", e);
        }
    }

    private void fetchCurrentConfig() {
        this.mDataStore.fetch(UpsightConfiguration.class, new C08831());
    }

    public void launch() {
        if (!this.mIsLaunched) {
            this.mIsLaunched = true;
            this.mIsOutOfSync = true;
            this.mCurrentConfig = null;
            this.mDataStoreSubscription = this.mDataStore.subscribe(this);
            this.mWorkerSubscription = null;
            fetchCurrentConfig();
        }
    }

    @Created
    public void onEndpointResponse(EndpointResponse endpointResponse) {
        if (CONFIGURATION_RESPONSE_SUBTYPE.equals(endpointResponse.getType())) {
            try {
                Collection<UpsightConfiguration> parse = this.mResponseParser.parse(endpointResponse.getContent());
                this.mDataStore.fetch(UpsightConfiguration.class, new C08853());
                for (UpsightConfiguration upsightConfiguration : parse) {
                    if (!upsightConfiguration.getScope().equals(CONFIGURATION_SUBTYPE)) {
                        this.mDataStore.store(upsightConfiguration);
                    } else if (applyConfiguration(upsightConfiguration.getConfiguration())) {
                        this.mDataStore.store(upsightConfiguration);
                    }
                }
            } catch (IOException e) {
                this.mLogger.m199e(LOG_TAG, "Could not parse incoming configurations", e);
            }
        }
    }

    public void terminate() {
        if (this.mDataStoreSubscription != null) {
            this.mDataStoreSubscription.unsubscribe();
            this.mDataStoreSubscription = null;
        }
        if (this.mWorkerSubscription != null) {
            this.mWorkerSubscription.unsubscribe();
            this.mWorkerSubscription = null;
        }
        this.mCurrentConfig = null;
        this.mIsLaunched = false;
    }
}
