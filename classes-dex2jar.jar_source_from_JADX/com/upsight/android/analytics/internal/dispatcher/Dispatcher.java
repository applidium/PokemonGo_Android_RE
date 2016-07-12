package com.upsight.android.analytics.internal.dispatcher;

import com.upsight.android.UpsightException;
import com.upsight.android.analytics.configuration.UpsightConfiguration;
import com.upsight.android.analytics.dispatcher.AnalyticsEventDeliveryStatus;
import com.upsight.android.analytics.dispatcher.EndpointResponse;
import com.upsight.android.analytics.internal.AnalyticsContext;
import com.upsight.android.analytics.internal.DataStoreRecord;
import com.upsight.android.analytics.internal.DataStoreRecord.Action;
import com.upsight.android.analytics.internal.dispatcher.routing.Router;
import com.upsight.android.analytics.internal.dispatcher.routing.RouterBuilder;
import com.upsight.android.analytics.internal.dispatcher.routing.RoutingListener;
import com.upsight.android.analytics.internal.dispatcher.schema.SchemaSelectorBuilder;
import com.upsight.android.analytics.internal.session.SessionManager;
import com.upsight.android.logger.UpsightLogger;
import com.upsight.android.persistence.UpsightDataStore;
import com.upsight.android.persistence.UpsightDataStoreListener;
import com.upsight.android.persistence.UpsightSubscription;
import com.upsight.android.persistence.annotation.Created;
import java.io.IOException;
import java.util.Collection;
import java.util.Collections;
import java.util.HashSet;
import java.util.Queue;
import java.util.Set;
import java.util.concurrent.ConcurrentLinkedQueue;

public class Dispatcher implements RoutingListener {
    public static final String CONFIGURATION_SUBTYPE = "upsight.configuration.dispatcher";
    static final int DISPATCHER_CONFIGURATION_MAX_SESSIONS = 2;
    private static final String LOG_TAG = "Dispatcher";
    private ConfigParser mConfigParser;
    private AnalyticsContext mContext;
    private Config mCurrentConfig;
    private volatile Router mCurrentRouter;
    private UpsightSubscription mDataStoreSubscription;
    private Collection<Router> mExpiredRouters;
    private boolean mIsLaunched;
    private UpsightLogger mLogger;
    private Set<DataStoreRecord> mPendingRecords;
    private RouterBuilder mRouterBuilder;
    private SchemaSelectorBuilder mSchemaSelectorBuilder;
    private SessionManager mSessionManager;
    private Queue<DataStoreRecord> mUnroutedRecords;
    private UpsightDataStore mUpsightDataStore;

    /* renamed from: com.upsight.android.analytics.internal.dispatcher.Dispatcher.1 */
    class C08871 implements UpsightDataStoreListener<Set<DataStoreRecord>> {
        C08871() {
        }

        public void onFailure(UpsightException upsightException) {
            Dispatcher.this.mLogger.m199e(Dispatcher.LOG_TAG, "Could not fetch records from store.", upsightException);
        }

        public void onSuccess(Set<DataStoreRecord> set) {
            for (DataStoreRecord access$000 : set) {
                Dispatcher.this.routeRecords(access$000);
            }
        }
    }

    /* renamed from: com.upsight.android.analytics.internal.dispatcher.Dispatcher.2 */
    class C08882 implements UpsightDataStoreListener<Set<UpsightConfiguration>> {
        C08882() {
        }

        public void onFailure(UpsightException upsightException) {
            Dispatcher.this.mLogger.m199e(Dispatcher.LOG_TAG, "Could not fetch config from store.", upsightException);
            if (Dispatcher.this.mCurrentConfig == null) {
                Dispatcher.this.applyDefaultConfiguration();
            }
        }

        public void onSuccess(Set<UpsightConfiguration> set) {
            if (Dispatcher.this.mCurrentConfig == null) {
                boolean z = false;
                for (UpsightConfiguration upsightConfiguration : set) {
                    if (Dispatcher.CONFIGURATION_SUBTYPE.equals(upsightConfiguration.getScope()) && Dispatcher.this.isUpsightConfigurationValid(upsightConfiguration)) {
                        z = Dispatcher.this.applyConfiguration(upsightConfiguration.getConfiguration());
                    }
                }
                if (!z) {
                    Dispatcher.this.applyDefaultConfiguration();
                }
            }
        }
    }

    /* renamed from: com.upsight.android.analytics.internal.dispatcher.Dispatcher.3 */
    class C08893 implements UpsightDataStoreListener<AnalyticsEventDeliveryStatus> {
        C08893() {
        }

        public void onFailure(UpsightException upsightException) {
            Dispatcher.this.mLogger.m200e(Dispatcher.LOG_TAG, upsightException, "Could not store DeliveryStatus.", new Object[0]);
        }

        public void onSuccess(AnalyticsEventDeliveryStatus analyticsEventDeliveryStatus) {
            Dispatcher.this.mUpsightDataStore.remove(analyticsEventDeliveryStatus);
        }
    }

    /* renamed from: com.upsight.android.analytics.internal.dispatcher.Dispatcher.4 */
    class C08904 implements UpsightDataStoreListener<EndpointResponse> {
        C08904() {
        }

        public void onFailure(UpsightException upsightException) {
            Dispatcher.this.mLogger.m200e(Dispatcher.LOG_TAG, upsightException, "Could not store EndpointResponse.", new Object[0]);
        }

        public void onSuccess(EndpointResponse endpointResponse) {
            Dispatcher.this.mUpsightDataStore.remove(endpointResponse);
        }
    }

    Dispatcher(AnalyticsContext analyticsContext, SessionManager sessionManager, UpsightDataStore upsightDataStore, ConfigParser configParser, RouterBuilder routerBuilder, SchemaSelectorBuilder schemaSelectorBuilder, UpsightLogger upsightLogger) {
        this.mIsLaunched = false;
        this.mContext = analyticsContext;
        this.mSessionManager = sessionManager;
        this.mUpsightDataStore = upsightDataStore;
        this.mConfigParser = configParser;
        this.mRouterBuilder = routerBuilder;
        this.mSchemaSelectorBuilder = schemaSelectorBuilder;
        this.mLogger = upsightLogger;
    }

    private boolean applyConfiguration(String str) {
        Config parseConfiguration = parseConfiguration(str);
        if (parseConfiguration == null) {
            return false;
        }
        if (!parseConfiguration.isValid()) {
            this.mLogger.m205w(LOG_TAG, "Incoming configuration is not valid", new Object[0]);
            return false;
        } else if (parseConfiguration.equals(this.mCurrentConfig)) {
            return true;
        } else {
            this.mCurrentConfig = parseConfiguration;
            Collection collection = this.mExpiredRouters;
            Router router = this.mCurrentRouter;
            if (!(collection == null || router == null)) {
                collection.add(router);
                router.finishRouting();
            }
            this.mCurrentRouter = this.mRouterBuilder.build(parseConfiguration.getRoutingConfig(), this.mSchemaSelectorBuilder.buildSelectorByName(parseConfiguration.getIdentifierConfig()), this.mSchemaSelectorBuilder.buildSelectorByType(parseConfiguration.getIdentifierConfig()), this);
            Queue queue = this.mUnroutedRecords;
            if (!(queue == null || this.mCurrentRouter == null)) {
                while (!queue.isEmpty()) {
                    routeRecords((DataStoreRecord) queue.poll());
                }
            }
            fetchCreatedRecords();
            return true;
        }
    }

    private void applyDefaultConfiguration() {
        applyConfiguration(this.mContext.getDefaultDispatcherConfiguration());
    }

    private void fetchCreatedRecords() {
        this.mUpsightDataStore.fetch(DataStoreRecord.class, new C08871());
    }

    private void fetchCurrentConfig() {
        this.mUpsightDataStore.fetch(UpsightConfiguration.class, new C08882());
    }

    private boolean isUpsightConfigurationValid(UpsightConfiguration upsightConfiguration) {
        return this.mSessionManager.getCurrentSession().getSessionNumber() - upsightConfiguration.getSessionNumberCreated() <= DISPATCHER_CONFIGURATION_MAX_SESSIONS;
    }

    private Config parseConfiguration(String str) {
        Config config = null;
        try {
            config = this.mConfigParser.parseConfig(str);
        } catch (IOException e) {
            this.mLogger.m199e(LOG_TAG, "Could not apply incoming config", e);
        }
        return config;
    }

    private void routeRecords(DataStoreRecord dataStoreRecord) {
        if (Action.Created.equals(dataStoreRecord.getAction())) {
            Router router = this.mCurrentRouter;
            Set set = this.mPendingRecords;
            if (router == null) {
                Queue queue = this.mUnroutedRecords;
                if (!queue.contains(dataStoreRecord)) {
                    queue.add(dataStoreRecord);
                    return;
                }
                return;
            } else if (set != null && !set.contains(dataStoreRecord) && router.routeEvent(dataStoreRecord)) {
                set.add(dataStoreRecord);
                return;
            } else {
                return;
            }
        }
        this.mUpsightDataStore.remove(dataStoreRecord);
    }

    public boolean hasPendingRecords() {
        Set set = this.mPendingRecords;
        return set == null || !set.isEmpty();
    }

    public void launch() {
        if (!this.mIsLaunched) {
            this.mIsLaunched = true;
            this.mCurrentRouter = null;
            this.mExpiredRouters = new HashSet();
            this.mUnroutedRecords = new ConcurrentLinkedQueue();
            this.mPendingRecords = Collections.synchronizedSet(new HashSet());
            this.mCurrentConfig = null;
            this.mDataStoreSubscription = this.mUpsightDataStore.subscribe(this);
            fetchCurrentConfig();
        }
    }

    @Created
    public void onConfigurationCreated(UpsightConfiguration upsightConfiguration) {
        if (CONFIGURATION_SUBTYPE.equals(upsightConfiguration.getScope()) && isUpsightConfigurationValid(upsightConfiguration)) {
            applyConfiguration(upsightConfiguration.getConfiguration());
        }
    }

    @Created
    public void onDataStoreRecordCreated(DataStoreRecord dataStoreRecord) {
        routeRecords(dataStoreRecord);
    }

    public void onDelivery(DataStoreRecord dataStoreRecord, boolean z, boolean z2, String str) {
        this.mUpsightDataStore.store(z ? AnalyticsEventDeliveryStatus.fromSuccess(dataStoreRecord.getID()) : AnalyticsEventDeliveryStatus.fromFailure(dataStoreRecord.getID(), str), new C08893());
        if (z || z2) {
            this.mUpsightDataStore.remove(dataStoreRecord);
        }
        Set set = this.mPendingRecords;
        if (set != null) {
            set.remove(dataStoreRecord);
        }
    }

    public void onResponse(EndpointResponse endpointResponse) {
        this.mUpsightDataStore.store(endpointResponse, new C08904());
    }

    public void onRoutingFinished(Router router) {
        Collection collection = this.mExpiredRouters;
        if (collection != null) {
            collection.remove(router);
        }
    }

    public void terminate() {
        if (this.mCurrentRouter != null) {
            this.mCurrentRouter.finishRouting();
            this.mCurrentRouter = null;
        }
        if (this.mDataStoreSubscription != null) {
            this.mDataStoreSubscription.unsubscribe();
            this.mDataStoreSubscription = null;
        }
        this.mCurrentConfig = null;
        this.mPendingRecords = null;
        this.mUnroutedRecords = null;
        this.mExpiredRouters = null;
        this.mCurrentRouter = null;
        this.mIsLaunched = false;
    }
}
