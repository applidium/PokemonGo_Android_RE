package com.upsight.android.managedvariables.internal.type;

import com.upsight.android.managedvariables.type.UpsightManagedFloat;
import com.upsight.android.persistence.annotation.UpsightStorableType;

class ManagedFloat extends UpsightManagedFloat {
    static final String MODEL_TYPE = "com.upsight.uxm.float";

    @UpsightStorableType("com.upsight.uxm.float")
    static class Model extends ManagedVariableModel<Float> {
        Model() {
        }
    }

    ManagedFloat(String str, Float f, Float f2) {
        super(str, f, f2);
    }
}
