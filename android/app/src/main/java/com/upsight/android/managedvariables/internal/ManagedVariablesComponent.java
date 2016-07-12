package com.upsight.android.managedvariables.internal;

import com.upsight.android.managedvariables.UpsightManagedVariablesComponent;
import dagger.Component;
import javax.inject.Singleton;

@Singleton
@Component(modules = {ManagedVariablesModule.class})
public interface ManagedVariablesComponent extends UpsightManagedVariablesComponent {
}
