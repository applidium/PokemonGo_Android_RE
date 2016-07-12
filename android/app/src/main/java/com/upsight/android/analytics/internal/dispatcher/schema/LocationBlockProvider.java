package com.upsight.android.analytics.internal.dispatcher.schema;

import com.upsight.android.UpsightContext;
import com.upsight.android.analytics.provider.UpsightDataProvider;
import com.upsight.android.analytics.provider.UpsightLocationTracker.Data;
import java.util.Arrays;
import java.util.HashSet;
import java.util.Set;

public class LocationBlockProvider extends UpsightDataProvider {
    public static final String LATITUDE_KEY = "location.lat";
    public static final String LONGITUDE_KEY = "location.lon";
    public static final String TIME_ZONE_KEY = "location.tz";
    private UpsightContext mUpsight;

    LocationBlockProvider(UpsightContext upsightContext) {
        this.mUpsight = upsightContext;
    }

    private Data fetchLatestLocation() {
        return (Data) this.mUpsight.getDataStore().fetchObservable(Data.class).lastOrDefault(null).toBlocking().first();
    }

    public Set<String> availableKeys() {
        return new HashSet(Arrays.asList(new String[]{TIME_ZONE_KEY, LATITUDE_KEY, LONGITUDE_KEY}));
    }

    /* JADX WARNING: inconsistent code. */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public java.lang.Object get(java.lang.String r4) {
        /*
        r3 = this;
        r0 = 0;
        monitor-enter(r3);
        r1 = r3.fetchLatestLocation();	 Catch:{ all -> 0x0051 }
        if (r1 != 0) goto L_0x000b;
    L_0x0008:
        r0 = 0;
    L_0x0009:
        monitor-exit(r3);
        return r0;
    L_0x000b:
        r2 = r4.hashCode();	 Catch:{ all -> 0x0051 }
        switch(r2) {
            case -59422746: goto L_0x0024;
            case -59422318: goto L_0x002e;
            case 552272735: goto L_0x001b;
            default: goto L_0x0012;
        };	 Catch:{ all -> 0x0051 }
    L_0x0012:
        r0 = -1;
    L_0x0013:
        switch(r0) {
            case 0: goto L_0x0038;
            case 1: goto L_0x003d;
            case 2: goto L_0x0047;
            default: goto L_0x0016;
        };	 Catch:{ all -> 0x0051 }
    L_0x0016:
        r0 = super.get(r4);	 Catch:{ all -> 0x0051 }
        goto L_0x0009;
    L_0x001b:
        r2 = "location.tz";
        r2 = r4.equals(r2);	 Catch:{ all -> 0x0051 }
        if (r2 == 0) goto L_0x0012;
    L_0x0023:
        goto L_0x0013;
    L_0x0024:
        r0 = "location.lat";
        r0 = r4.equals(r0);	 Catch:{ all -> 0x0051 }
        if (r0 == 0) goto L_0x0012;
    L_0x002c:
        r0 = 1;
        goto L_0x0013;
    L_0x002e:
        r0 = "location.lon";
        r0 = r4.equals(r0);	 Catch:{ all -> 0x0051 }
        if (r0 == 0) goto L_0x0012;
    L_0x0036:
        r0 = 2;
        goto L_0x0013;
    L_0x0038:
        r0 = r1.getTimeZone();	 Catch:{ all -> 0x0051 }
        goto L_0x0009;
    L_0x003d:
        r0 = r1.getLatitude();	 Catch:{ all -> 0x0051 }
        r2 = 0;
        r0 = android.location.Location.convert(r0, r2);	 Catch:{ all -> 0x0051 }
        goto L_0x0009;
    L_0x0047:
        r0 = r1.getLongitude();	 Catch:{ all -> 0x0051 }
        r2 = 0;
        r0 = android.location.Location.convert(r0, r2);	 Catch:{ all -> 0x0051 }
        goto L_0x0009;
    L_0x0051:
        r0 = move-exception;
        monitor-exit(r3);
        throw r0;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.upsight.android.analytics.internal.dispatcher.schema.LocationBlockProvider.get(java.lang.String):java.lang.Object");
    }
}
