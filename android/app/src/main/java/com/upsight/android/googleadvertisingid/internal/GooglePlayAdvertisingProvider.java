package com.upsight.android.googleadvertisingid.internal;

import android.content.Context;
import com.upsight.android.analytics.provider.UpsightDataProvider;
import com.upsight.android.logger.UpsightLogger;
import java.util.Arrays;
import java.util.HashSet;
import java.util.Set;

public final class GooglePlayAdvertisingProvider extends UpsightDataProvider {
    public static final String AID_KEY = "ids.aid";
    public static final String LIMITED_AD_TRACKING_KEY = "device.limit_ad_tracking";
    public static final String LOG_TAG;
    private final Context mContext;
    private final UpsightLogger mLogger;

    static {
        LOG_TAG = GooglePlayAdvertisingProvider.class.getSimpleName();
    }

    public GooglePlayAdvertisingProvider(Context context, UpsightLogger upsightLogger) {
        this.mContext = context;
        this.mLogger = upsightLogger;
    }

    public Set<String> availableKeys() {
        return new HashSet(Arrays.asList(new String[]{AID_KEY, LIMITED_AD_TRACKING_KEY}));
    }

    /* JADX WARNING: inconsistent code. */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public java.lang.Object get(java.lang.String r8) {
        /*
        r7 = this;
        r0 = 0;
        r2 = 1;
        r1 = 0;
        monitor-enter(r7);
        r3 = r8.hashCode();	 Catch:{ all -> 0x0047 }
        switch(r3) {
            case 1669192966: goto L_0x0015;
            case 1983331127: goto L_0x001e;
            default: goto L_0x000b;
        };	 Catch:{ all -> 0x0047 }
    L_0x000b:
        r1 = -1;
    L_0x000c:
        switch(r1) {
            case 0: goto L_0x0028;
            case 1: goto L_0x004a;
            default: goto L_0x000f;
        };	 Catch:{ all -> 0x0047 }
    L_0x000f:
        r0 = super.get(r8);	 Catch:{ all -> 0x0047 }
    L_0x0013:
        monitor-exit(r7);
        return r0;
    L_0x0015:
        r2 = "ids.aid";
        r2 = r8.equals(r2);	 Catch:{ all -> 0x0047 }
        if (r2 == 0) goto L_0x000b;
    L_0x001d:
        goto L_0x000c;
    L_0x001e:
        r1 = "device.limit_ad_tracking";
        r1 = r8.equals(r1);	 Catch:{ all -> 0x0047 }
        if (r1 == 0) goto L_0x000b;
    L_0x0026:
        r1 = r2;
        goto L_0x000c;
    L_0x0028:
        r1 = r7.mContext;	 Catch:{ Exception -> 0x0035 }
        r1 = com.google.android.gms.ads.identifier.AdvertisingIdClient.getAdvertisingIdInfo(r1);	 Catch:{ Exception -> 0x0035 }
    L_0x002e:
        if (r1 == 0) goto L_0x0013;
    L_0x0030:
        r0 = r1.getId();	 Catch:{ all -> 0x0047 }
        goto L_0x0013;
    L_0x0035:
        r1 = move-exception;
        r2 = r7.mLogger;	 Catch:{ all -> 0x0047 }
        r3 = LOG_TAG;	 Catch:{ all -> 0x0047 }
        r4 = "Unable to resolve Google Advertising ID";
        r5 = 1;
        r5 = new java.lang.Object[r5];	 Catch:{ all -> 0x0047 }
        r6 = 0;
        r5[r6] = r1;	 Catch:{ all -> 0x0047 }
        r2.m205w(r3, r4, r5);	 Catch:{ all -> 0x0047 }
        r1 = r0;
        goto L_0x002e;
    L_0x0047:
        r0 = move-exception;
        monitor-exit(r7);
        throw r0;
    L_0x004a:
        r1 = r7.mContext;	 Catch:{ Exception -> 0x005b }
        r1 = com.google.android.gms.ads.identifier.AdvertisingIdClient.getAdvertisingIdInfo(r1);	 Catch:{ Exception -> 0x005b }
    L_0x0050:
        if (r1 == 0) goto L_0x0013;
    L_0x0052:
        r0 = r1.isLimitAdTrackingEnabled();	 Catch:{ all -> 0x0047 }
        r0 = java.lang.Boolean.valueOf(r0);	 Catch:{ all -> 0x0047 }
        goto L_0x0013;
    L_0x005b:
        r1 = move-exception;
        r2 = r7.mLogger;	 Catch:{ all -> 0x0047 }
        r3 = LOG_TAG;	 Catch:{ all -> 0x0047 }
        r4 = "Unable to resolve Google limited ad tracking status";
        r5 = 1;
        r5 = new java.lang.Object[r5];	 Catch:{ all -> 0x0047 }
        r6 = 0;
        r5[r6] = r1;	 Catch:{ all -> 0x0047 }
        r2.m205w(r3, r4, r5);	 Catch:{ all -> 0x0047 }
        r1 = r0;
        goto L_0x0050;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.upsight.android.googleadvertisingid.internal.GooglePlayAdvertisingProvider.get(java.lang.String):java.lang.Object");
    }
}
