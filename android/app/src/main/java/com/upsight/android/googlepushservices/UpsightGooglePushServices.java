package com.upsight.android.googlepushservices;

import com.upsight.android.Upsight;
import com.upsight.android.UpsightContext;
import com.upsight.android.UpsightException;
import com.upsight.android.UpsightGooglePushServicesExtension;

public abstract class UpsightGooglePushServices {

    public interface OnRegisterListener {
        void onFailure(UpsightException upsightException);

        void onSuccess(String str);
    }

    public interface OnUnregisterListener {
        void onFailure(UpsightException upsightException);

        void onSuccess();
    }

    public static void register(UpsightContext upsightContext, OnRegisterListener onRegisterListener) {
        UpsightGooglePushServicesExtension upsightGooglePushServicesExtension = (UpsightGooglePushServicesExtension) upsightContext.getUpsightExtension(UpsightGooglePushServicesExtension.EXTENSION_NAME);
        if (upsightGooglePushServicesExtension != null) {
            upsightGooglePushServicesExtension.getApi().register(onRegisterListener);
        } else {
            upsightContext.getLogger().m199e(Upsight.LOG_TAG, "com.upsight.extension.googlepushservices must be registered in your Android Manifest", new Object[0]);
        }
    }

    public static void unregister(UpsightContext upsightContext, OnUnregisterListener onUnregisterListener) {
        UpsightGooglePushServicesExtension upsightGooglePushServicesExtension = (UpsightGooglePushServicesExtension) upsightContext.getUpsightExtension(UpsightGooglePushServicesExtension.EXTENSION_NAME);
        if (upsightGooglePushServicesExtension != null) {
            upsightGooglePushServicesExtension.getApi().unregister(onUnregisterListener);
        } else {
            upsightContext.getLogger().m199e(Upsight.LOG_TAG, "com.upsight.extension.googlepushservices must be registered in your Android Manifest", new Object[0]);
        }
    }
}
