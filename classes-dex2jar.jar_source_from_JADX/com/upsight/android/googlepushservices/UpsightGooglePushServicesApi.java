package com.upsight.android.googlepushservices;

import com.upsight.android.UpsightContext;
import com.upsight.android.googlepushservices.UpsightGooglePushServices.OnRegisterListener;
import com.upsight.android.googlepushservices.UpsightGooglePushServices.OnUnregisterListener;
import com.upsight.android.marketing.UpsightBillboard;
import com.upsight.android.marketing.UpsightBillboard.Handler;

public interface UpsightGooglePushServicesApi {
    UpsightBillboard createPushBillboard(UpsightContext upsightContext, Handler handler) throws IllegalArgumentException, IllegalStateException;

    void register(OnRegisterListener onRegisterListener);

    void unregister(OnUnregisterListener onUnregisterListener);
}
