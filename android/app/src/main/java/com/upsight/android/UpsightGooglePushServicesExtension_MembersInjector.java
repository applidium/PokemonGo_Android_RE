package com.upsight.android;

import com.upsight.android.googlepushservices.UpsightGooglePushServicesApi;
import com.upsight.android.googlepushservices.UpsightGooglePushServicesComponent;
import dagger.MembersInjector;
import javax.inject.Provider;

public final class UpsightGooglePushServicesExtension_MembersInjector implements MembersInjector<UpsightGooglePushServicesExtension> {
    static final /* synthetic */ boolean $assertionsDisabled;
    private final Provider<UpsightGooglePushServicesApi> mUpsightPushProvider;
    private final MembersInjector<UpsightExtension<UpsightGooglePushServicesComponent, UpsightGooglePushServicesApi>> supertypeInjector;

    static {
        $assertionsDisabled = !UpsightGooglePushServicesExtension_MembersInjector.class.desiredAssertionStatus();
    }

    public UpsightGooglePushServicesExtension_MembersInjector(MembersInjector<UpsightExtension<UpsightGooglePushServicesComponent, UpsightGooglePushServicesApi>> membersInjector, Provider<UpsightGooglePushServicesApi> provider) {
        if ($assertionsDisabled || membersInjector != null) {
            this.supertypeInjector = membersInjector;
            if ($assertionsDisabled || provider != null) {
                this.mUpsightPushProvider = provider;
                return;
            }
            throw new AssertionError();
        }
        throw new AssertionError();
    }

    public static MembersInjector<UpsightGooglePushServicesExtension> create(MembersInjector<UpsightExtension<UpsightGooglePushServicesComponent, UpsightGooglePushServicesApi>> membersInjector, Provider<UpsightGooglePushServicesApi> provider) {
        return new UpsightGooglePushServicesExtension_MembersInjector(membersInjector, provider);
    }

    public void injectMembers(UpsightGooglePushServicesExtension upsightGooglePushServicesExtension) {
        if (upsightGooglePushServicesExtension == null) {
            throw new NullPointerException("Cannot inject members into a null reference");
        }
        this.supertypeInjector.injectMembers(upsightGooglePushServicesExtension);
        upsightGooglePushServicesExtension.mUpsightPush = (UpsightGooglePushServicesApi) this.mUpsightPushProvider.get();
    }
}
