package com.upsight.android.managedvariables.internal;

import com.upsight.android.managedvariables.UpsightManagedVariablesApi;
import com.upsight.android.managedvariables.experience.UpsightUserExperience;
import com.upsight.android.managedvariables.experience.UpsightUserExperience.Handler;
import com.upsight.android.managedvariables.internal.type.ManagedVariableManager;
import com.upsight.android.managedvariables.type.UpsightManagedVariable;
import com.upsight.android.managedvariables.type.UpsightManagedVariable.Listener;
import com.upsight.android.persistence.UpsightSubscription;
import javax.inject.Inject;
import javax.inject.Singleton;

@Singleton
class ManagedVariables implements UpsightManagedVariablesApi {
    private ManagedVariableManager mManagedVariableManager;
    private UpsightUserExperience mUserExperience;

    @Inject
    public ManagedVariables(ManagedVariableManager managedVariableManager, UpsightUserExperience upsightUserExperience) {
        this.mManagedVariableManager = managedVariableManager;
        this.mUserExperience = upsightUserExperience;
    }

    public <T extends UpsightManagedVariable> T fetch(Class<T> cls, String str) {
        return (UpsightManagedVariable) this.mManagedVariableManager.fetch(cls, str);
    }

    public <T extends UpsightManagedVariable> UpsightSubscription fetch(Class<T> cls, String str, Listener<T> listener) {
        return this.mManagedVariableManager.fetch(cls, str, listener);
    }

    public void registerUserExperienceHandler(Handler handler) {
        this.mUserExperience.registerHandler(handler);
    }
}
