package com.upsight.android.analytics.provider;

import com.upsight.android.Upsight;
import com.upsight.android.UpsightAnalyticsExtension;
import com.upsight.android.UpsightContext;
import java.util.HashMap;
import java.util.Map;
import java.util.Set;

public abstract class UpsightDataProvider {
    private final Map<String, Object> mCachedValues;

    protected UpsightDataProvider() {
        this.mCachedValues = new HashMap();
    }

    public static void register(UpsightContext upsightContext, UpsightDataProvider upsightDataProvider) {
        UpsightAnalyticsExtension upsightAnalyticsExtension = (UpsightAnalyticsExtension) upsightContext.getUpsightExtension(UpsightAnalyticsExtension.EXTENSION_NAME);
        if (upsightAnalyticsExtension != null) {
            upsightAnalyticsExtension.getApi().registerDataProvider(upsightDataProvider);
        } else {
            upsightContext.getLogger().m199e(Upsight.LOG_TAG, "com.upsight.extension.analytics must be registered in your Android Manifest", new Object[0]);
        }
    }

    public abstract Set<String> availableKeys();

    public Object get(String str) {
        Object obj;
        synchronized (this) {
            obj = this.mCachedValues.get(str);
        }
        return obj;
    }

    protected void put(String str, Object obj) {
        synchronized (this) {
            this.mCachedValues.put(str, obj);
        }
    }
}
