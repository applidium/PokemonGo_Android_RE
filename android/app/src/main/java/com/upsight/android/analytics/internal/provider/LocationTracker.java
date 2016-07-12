package com.upsight.android.analytics.internal.provider;

import com.upsight.android.Upsight;
import com.upsight.android.UpsightContext;
import com.upsight.android.UpsightException;
import com.upsight.android.analytics.provider.UpsightLocationTracker;
import com.upsight.android.analytics.provider.UpsightLocationTracker.Data;
import com.upsight.android.logger.UpsightLogger;
import com.upsight.android.persistence.UpsightDataStore;
import com.upsight.android.persistence.UpsightDataStoreListener;
import java.util.Iterator;
import java.util.Set;
import javax.inject.Inject;
import javax.inject.Singleton;

@Singleton
final class LocationTracker extends UpsightLocationTracker {
    private static final String LOG_TAG;
    private UpsightDataStore mDataStore;
    private UpsightLogger mLogger;

    /* renamed from: com.upsight.android.analytics.internal.provider.LocationTracker.1 */
    class C09021 implements UpsightDataStoreListener<Set<Data>> {
        final /* synthetic */ Data val$newLocation;

        C09021(Data data) {
            this.val$newLocation = data;
        }

        public void onFailure(UpsightException upsightException) {
            LocationTracker.this.mLogger.m200e(LocationTracker.LOG_TAG, upsightException, "Failed to fetch location data.", new Object[0]);
        }

        public void onSuccess(Set<Data> set) {
            Object obj = null;
            Iterator it = set.iterator();
            if (it.hasNext()) {
                obj = (Data) it.next();
                obj.setLatitude(this.val$newLocation.getLatitude());
                obj.setLongitude(this.val$newLocation.getLongitude());
                obj.setTimeZone(this.val$newLocation.getTimeZone());
            }
            if (obj == null) {
                obj = this.val$newLocation;
            }
            LocationTracker.this.mDataStore.store(obj);
        }
    }

    /* renamed from: com.upsight.android.analytics.internal.provider.LocationTracker.2 */
    class C09032 implements UpsightDataStoreListener<Set<Data>> {
        C09032() {
        }

        public void onFailure(UpsightException upsightException) {
            LocationTracker.this.mLogger.m199e(Upsight.LOG_TAG, "Failed to remove stale location data.", upsightException);
        }

        public void onSuccess(Set<Data> set) {
            for (Data remove : set) {
                LocationTracker.this.mDataStore.remove(remove);
            }
        }
    }

    static {
        LOG_TAG = LocationTracker.class.getSimpleName();
    }

    @Inject
    LocationTracker(UpsightContext upsightContext) {
        this.mDataStore = upsightContext.getDataStore();
        this.mLogger = upsightContext.getLogger();
    }

    public void purge() {
        this.mDataStore.fetch(Data.class, new C09032());
    }

    public void track(Data data) {
        this.mDataStore.fetch(Data.class, new C09021(data));
    }
}
