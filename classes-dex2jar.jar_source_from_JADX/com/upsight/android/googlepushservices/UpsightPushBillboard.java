package com.upsight.android.googlepushservices;

import com.upsight.android.Upsight;
import com.upsight.android.UpsightContext;
import com.upsight.android.UpsightGooglePushServicesExtension;
import com.upsight.android.marketing.UpsightBillboard;
import com.upsight.android.marketing.UpsightBillboard.Handler;

public class UpsightPushBillboard {

    private static class NoOpBillboard extends UpsightBillboard {
        private NoOpBillboard() {
        }

        public void destroy() {
        }

        protected UpsightBillboard setUp(UpsightContext upsightContext) throws IllegalStateException {
            return this;
        }
    }

    public static UpsightBillboard create(UpsightContext upsightContext, Handler handler) throws IllegalArgumentException, IllegalStateException {
        UpsightGooglePushServicesExtension upsightGooglePushServicesExtension = (UpsightGooglePushServicesExtension) upsightContext.getUpsightExtension(UpsightGooglePushServicesExtension.EXTENSION_NAME);
        if (upsightGooglePushServicesExtension != null) {
            upsightGooglePushServicesExtension.getApi().createPushBillboard(upsightContext, handler);
        } else {
            upsightContext.getLogger().m199e(Upsight.LOG_TAG, "com.upsight.extension.googlepushservices must be registered in your Android Manifest", new Object[0]);
        }
        return new NoOpBillboard();
    }
}
