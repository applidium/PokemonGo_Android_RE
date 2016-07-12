package com.upsight.android.googlepushservices;

import com.upsight.android.UpsightExtension.BaseComponent;
import com.upsight.android.UpsightGooglePushServicesExtension;
import com.upsight.android.googlepushservices.internal.PushClickIntentService;
import com.upsight.android.googlepushservices.internal.PushIntentService;

public interface UpsightGooglePushServicesComponent extends BaseComponent<UpsightGooglePushServicesExtension> {
    void inject(PushClickIntentService pushClickIntentService);

    void inject(PushIntentService pushIntentService);
}
