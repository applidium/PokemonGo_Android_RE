package com.upsight.android.managedvariables.internal.type;

import com.fasterxml.jackson.annotation.JsonProperty;
import com.upsight.android.persistence.annotation.UpsightStorableIdentifier;

abstract class ManagedVariableModel<T> {
    @UpsightStorableIdentifier
    String id;
    @JsonProperty("tag")
    String tag;
    @JsonProperty("value")
    T value;

    ManagedVariableModel() {
    }

    public String getTag() {
        return this.tag;
    }

    public T getValue() {
        return this.value;
    }
}
