package com.upsight.android;

import com.upsight.android.googlepushservices.UpsightGooglePushServices.OnRegisterListener;
import com.upsight.android.googlepushservices.UpsightGooglePushServicesApi;
import com.upsight.android.googlepushservices.UpsightGooglePushServicesComponent;
import com.upsight.android.googlepushservices.internal.DaggerGooglePushServicesComponent;
import com.upsight.android.googlepushservices.internal.PushModule;
import javax.inject.Inject;

public class UpsightGooglePushServicesExtension extends UpsightExtension<UpsightGooglePushServicesComponent, UpsightGooglePushServicesApi> {
    public static final String EXTENSION_NAME = "com.upsight.extension.googlepushservices";
    @Inject
    UpsightGooglePushServicesApi mUpsightPush;

    /* renamed from: com.upsight.android.UpsightGooglePushServicesExtension.1 */
    class C08721 implements OnRegisterListener {
        C08721() {
        }

        public void onFailure(UpsightException upsightException) {
        }

        public void onSuccess(String str) {
        }
    }

    UpsightGooglePushServicesExtension() {
    }

    public UpsightGooglePushServicesApi getApi() {
        return this.mUpsightPush;
    }

    protected void onPostCreate(UpsightContext upsightContext) {
        this.mUpsightPush.register(new C08721());
    }

    protected UpsightGooglePushServicesComponent onResolve(UpsightContext upsightContext) {
        return DaggerGooglePushServicesComponent.builder().pushModule(new PushModule(upsightContext)).build();
    }
}
