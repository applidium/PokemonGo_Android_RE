package com.upsight.android.managedvariables;

import com.upsight.android.managedvariables.experience.UpsightUserExperience.Handler;
import com.upsight.android.managedvariables.type.UpsightManagedVariable;
import com.upsight.android.managedvariables.type.UpsightManagedVariable.Listener;
import com.upsight.android.persistence.UpsightSubscription;

public interface UpsightManagedVariablesApi {
    <T extends UpsightManagedVariable> T fetch(Class<T> cls, String str);

    <T extends UpsightManagedVariable> UpsightSubscription fetch(Class<T> cls, String str, Listener<T> listener);

    void registerUserExperienceHandler(Handler handler);
}
