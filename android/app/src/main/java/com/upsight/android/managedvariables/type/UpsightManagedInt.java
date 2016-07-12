package com.upsight.android.managedvariables.type;

import com.upsight.android.Upsight;
import com.upsight.android.UpsightContext;
import com.upsight.android.UpsightManagedVariablesExtension;
import com.upsight.android.managedvariables.type.UpsightManagedVariable.Listener;
import com.upsight.android.persistence.UpsightSubscription;

public abstract class UpsightManagedInt extends UpsightManagedVariable<Integer> {
    protected UpsightManagedInt(String str, Integer num, Integer num2) {
        super(str, num, num2);
    }

    public static UpsightManagedInt fetch(UpsightContext upsightContext, String str) {
        UpsightManagedVariablesExtension upsightManagedVariablesExtension = (UpsightManagedVariablesExtension) upsightContext.getUpsightExtension(UpsightManagedVariablesExtension.EXTENSION_NAME);
        if (upsightManagedVariablesExtension != null) {
            return (UpsightManagedInt) upsightManagedVariablesExtension.getApi().fetch(UpsightManagedInt.class, str);
        }
        upsightContext.getLogger().m199e(Upsight.LOG_TAG, "com.upsight.extension.managedvariables must be registered in your Android Manifest", new Object[0]);
        return null;
    }

    public static UpsightSubscription fetch(UpsightContext upsightContext, String str, Listener<UpsightManagedInt> listener) {
        UpsightManagedVariablesExtension upsightManagedVariablesExtension = (UpsightManagedVariablesExtension) upsightContext.getUpsightExtension(UpsightManagedVariablesExtension.EXTENSION_NAME);
        if (upsightManagedVariablesExtension != null) {
            return upsightManagedVariablesExtension.getApi().fetch(UpsightManagedInt.class, str, listener);
        }
        upsightContext.getLogger().m199e(Upsight.LOG_TAG, "com.upsight.extension.managedvariables must be registered in your Android Manifest", new Object[0]);
        return new NoOpSubscription();
    }
}
