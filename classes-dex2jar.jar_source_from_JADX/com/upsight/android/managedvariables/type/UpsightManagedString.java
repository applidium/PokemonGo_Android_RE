package com.upsight.android.managedvariables.type;

import com.upsight.android.Upsight;
import com.upsight.android.UpsightContext;
import com.upsight.android.UpsightManagedVariablesExtension;
import com.upsight.android.managedvariables.type.UpsightManagedVariable.Listener;
import com.upsight.android.persistence.UpsightSubscription;

public abstract class UpsightManagedString extends UpsightManagedVariable<String> {
    protected UpsightManagedString(String str, String str2, String str3) {
        super(str, str2, str3);
    }

    public static UpsightManagedString fetch(UpsightContext upsightContext, String str) {
        UpsightManagedVariablesExtension upsightManagedVariablesExtension = (UpsightManagedVariablesExtension) upsightContext.getUpsightExtension(UpsightManagedVariablesExtension.EXTENSION_NAME);
        if (upsightManagedVariablesExtension != null) {
            return (UpsightManagedString) upsightManagedVariablesExtension.getApi().fetch(UpsightManagedString.class, str);
        }
        upsightContext.getLogger().m199e(Upsight.LOG_TAG, "com.upsight.extension.managedvariables must be registered in your Android Manifest", new Object[0]);
        return null;
    }

    public static UpsightSubscription fetch(UpsightContext upsightContext, String str, Listener<UpsightManagedString> listener) {
        UpsightManagedVariablesExtension upsightManagedVariablesExtension = (UpsightManagedVariablesExtension) upsightContext.getUpsightExtension(UpsightManagedVariablesExtension.EXTENSION_NAME);
        if (upsightManagedVariablesExtension != null) {
            return upsightManagedVariablesExtension.getApi().fetch(UpsightManagedString.class, str, listener);
        }
        upsightContext.getLogger().m199e(Upsight.LOG_TAG, "com.upsight.extension.managedvariables must be registered in your Android Manifest", new Object[0]);
        return new NoOpSubscription();
    }
}
