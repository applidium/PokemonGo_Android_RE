package com.upsight.android.marketing;

import com.upsight.android.Upsight;
import com.upsight.android.UpsightContext;
import com.upsight.android.UpsightMarketingExtension;

public abstract class UpsightMarketingContentStore {
    protected UpsightMarketingContentStore() {
    }

    public static boolean isContentReady(UpsightContext upsightContext, String str) {
        UpsightMarketingExtension upsightMarketingExtension = (UpsightMarketingExtension) upsightContext.getUpsightExtension(UpsightMarketingExtension.EXTENSION_NAME);
        if (upsightMarketingExtension != null) {
            return upsightMarketingExtension.getApi().isContentReady(str);
        }
        upsightContext.getLogger().m199e(Upsight.LOG_TAG, "com.upsight.extension.marketing must be registered in your Android Manifest", new Object[0]);
        return false;
    }

    public abstract boolean isContentReady(String str);
}
