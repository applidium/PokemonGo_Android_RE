package com.upsight.android.managedvariables;

import com.upsight.android.UpsightExtension.BaseComponent;
import com.upsight.android.UpsightManagedVariablesExtension;
import com.upsight.android.managedvariables.internal.type.UxmSchema;

public interface UpsightManagedVariablesComponent extends BaseComponent<UpsightManagedVariablesExtension> {
    UxmSchema uxmSchema();
}
