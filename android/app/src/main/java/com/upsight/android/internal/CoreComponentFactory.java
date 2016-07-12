package com.upsight.android.internal;

import android.content.Context;
import com.upsight.android.UpsightCoreComponent;
import com.upsight.android.UpsightCoreComponent.Factory;

public class CoreComponentFactory implements Factory {
    public UpsightCoreComponent create(Context context) {
        return DaggerCoreComponent.builder().contextModule(new ContextModule(context)).build();
    }
}
