package com.upsight.android.managedvariables.type;

import com.upsight.android.Upsight;
import com.upsight.android.UpsightContext;
import com.upsight.android.UpsightManagedVariablesExtension;
import com.upsight.android.managedvariables.type.UpsightManagedVariable.Listener;
import com.upsight.android.persistence.UpsightSubscription;

public abstract class UpsightManagedBoolean extends UpsightManagedVariable<Boolean> {
    protected UpsightManagedBoolean(String str, Boolean bool, Boolean bool2) {
        super(str, bool, bool2);
    }

    public static UpsightManagedBoolean fetch(UpsightContext upsightContext, String str) {
        UpsightManagedVariablesExtension upsightManagedVariablesExtension = (UpsightManagedVariablesExtension) upsightContext.getUpsightExtension(UpsightManagedVariablesExtension.EXTENSION_NAME);
        if (upsightManagedVariablesExtension != null) {
            return (UpsightManagedBoolean) upsightManagedVariablesExtension.getApi().fetch(UpsightManagedBoolean.class, str);
        }
        upsightContext.getLogger().m199e(Upsight.LOG_TAG, "com.upsight.extension.managedvariables must be registered in your Android Manifest", new Object[0]);
        return null;
    }

    public static UpsightSubscription fetch(UpsightContext upsightContext, String str, Listener<UpsightManagedBoolean> listener) {
        UpsightManagedVariablesExtension upsightManagedVariablesExtension = (UpsightManagedVariablesExtension) upsightContext.getUpsightExtension(UpsightManagedVariablesExtension.EXTENSION_NAME);
        if (upsightManagedVariablesExtension != null) {
            return upsightManagedVariablesExtension.getApi().fetch(UpsightManagedBoolean.class, str, listener);
        }
        upsightContext.getLogger().m199e(Upsight.LOG_TAG, "com.upsight.extension.managedvariables must be registered in your Android Manifest", new Object[0]);
        return new NoOpSubscription();
    }
}
