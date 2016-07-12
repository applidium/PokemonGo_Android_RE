package com.upsight.android;

import com.upsight.android.managedvariables.UpsightManagedVariablesApi;
import com.upsight.android.managedvariables.UpsightManagedVariablesComponent;
import com.upsight.android.managedvariables.internal.type.UxmBlockProvider;
import com.upsight.android.managedvariables.internal.type.UxmContentFactory;
import dagger.MembersInjector;
import javax.inject.Provider;

public final class UpsightManagedVariablesExtension_MembersInjector implements MembersInjector<UpsightManagedVariablesExtension> {
    static final /* synthetic */ boolean $assertionsDisabled;
    private final Provider<UpsightManagedVariablesApi> mManagedVariablesProvider;
    private final Provider<UxmBlockProvider> mUxmBlockProvider;
    private final Provider<UxmContentFactory> mUxmContentFactoryProvider;
    private final MembersInjector<UpsightExtension<UpsightManagedVariablesComponent, UpsightManagedVariablesApi>> supertypeInjector;

    static {
        $assertionsDisabled = !UpsightManagedVariablesExtension_MembersInjector.class.desiredAssertionStatus();
    }

    public UpsightManagedVariablesExtension_MembersInjector(MembersInjector<UpsightExtension<UpsightManagedVariablesComponent, UpsightManagedVariablesApi>> membersInjector, Provider<UpsightManagedVariablesApi> provider, Provider<UxmContentFactory> provider2, Provider<UxmBlockProvider> provider3) {
        if ($assertionsDisabled || membersInjector != null) {
            this.supertypeInjector = membersInjector;
            if ($assertionsDisabled || provider != null) {
                this.mManagedVariablesProvider = provider;
                if ($assertionsDisabled || provider2 != null) {
                    this.mUxmContentFactoryProvider = provider2;
                    if ($assertionsDisabled || provider3 != null) {
                        this.mUxmBlockProvider = provider3;
                        return;
                    }
                    throw new AssertionError();
                }
                throw new AssertionError();
            }
            throw new AssertionError();
        }
        throw new AssertionError();
    }

    public static MembersInjector<UpsightManagedVariablesExtension> create(MembersInjector<UpsightExtension<UpsightManagedVariablesComponent, UpsightManagedVariablesApi>> membersInjector, Provider<UpsightManagedVariablesApi> provider, Provider<UxmContentFactory> provider2, Provider<UxmBlockProvider> provider3) {
        return new UpsightManagedVariablesExtension_MembersInjector(membersInjector, provider, provider2, provider3);
    }

    public void injectMembers(UpsightManagedVariablesExtension upsightManagedVariablesExtension) {
        if (upsightManagedVariablesExtension == null) {
            throw new NullPointerException("Cannot inject members into a null reference");
        }
        this.supertypeInjector.injectMembers(upsightManagedVariablesExtension);
        upsightManagedVariablesExtension.mManagedVariables = (UpsightManagedVariablesApi) this.mManagedVariablesProvider.get();
        upsightManagedVariablesExtension.mUxmContentFactory = (UxmContentFactory) this.mUxmContentFactoryProvider.get();
        upsightManagedVariablesExtension.mUxmBlockProvider = (UxmBlockProvider) this.mUxmBlockProvider.get();
    }
}
