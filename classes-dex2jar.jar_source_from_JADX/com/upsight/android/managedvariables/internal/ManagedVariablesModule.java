package com.upsight.android.managedvariables.internal;

import com.upsight.android.managedvariables.internal.experience.UserExperienceModule;
import com.upsight.android.managedvariables.internal.type.UxmModule;
import dagger.Module;

@Module(includes = {ResourceModule.class, UxmModule.class, UserExperienceModule.class, BaseManagedVariablesModule.class})
public class ManagedVariablesModule {
}
