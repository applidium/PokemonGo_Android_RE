package com.upsight.android.analytics.provider;

import com.upsight.android.Upsight;
import com.upsight.android.UpsightAnalyticsExtension;
import com.upsight.android.UpsightContext;

public abstract class UpsightOptOutStatus {
    public static boolean get(UpsightContext upsightContext) {
        UpsightAnalyticsExtension upsightAnalyticsExtension = (UpsightAnalyticsExtension) upsightContext.getUpsightExtension(UpsightAnalyticsExtension.EXTENSION_NAME);
        if (upsightAnalyticsExtension != null) {
            return upsightAnalyticsExtension.getApi().getOptOutStatus();
        }
        upsightContext.getLogger().m199e(Upsight.LOG_TAG, "com.upsight.extension.analytics must be registered in your Android Manifest", new Object[0]);
        return false;
    }

    public static void set(UpsightContext upsightContext, boolean z) {
        UpsightAnalyticsExtension upsightAnalyticsExtension = (UpsightAnalyticsExtension) upsightContext.getUpsightExtension(UpsightAnalyticsExtension.EXTENSION_NAME);
        if (upsightAnalyticsExtension != null) {
            upsightAnalyticsExtension.getApi().setOptOutStatus(z);
        } else {
            upsightContext.getLogger().m199e(Upsight.LOG_TAG, "com.upsight.extension.analytics must be registered in your Android Manifest", new Object[0]);
        }
    }

    public abstract boolean get();

    public abstract void set(boolean z);
}
