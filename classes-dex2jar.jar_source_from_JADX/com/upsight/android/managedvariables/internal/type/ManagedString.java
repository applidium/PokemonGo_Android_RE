package com.upsight.android.managedvariables.internal.type;

import com.upsight.android.managedvariables.type.UpsightManagedString;
import com.upsight.android.persistence.annotation.UpsightStorableType;

class ManagedString extends UpsightManagedString {
    static final String MODEL_TYPE = "com.upsight.uxm.string";

    @UpsightStorableType("com.upsight.uxm.string")
    static class Model extends ManagedVariableModel<String> {
        Model() {
        }
    }

    ManagedString(String str, String str2, String str3) {
        super(str, str2, str3);
    }
}
