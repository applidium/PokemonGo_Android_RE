package com.upsight.android;

import com.upsight.android.googleadvertisingid.UpsightGoogleAdvertisingProviderComponent;
import com.upsight.android.googleadvertisingid.internal.GooglePlayAdvertisingProvider;
import dagger.MembersInjector;
import javax.inject.Provider;

public final class UpsightGoogleAdvertisingIdExtension_MembersInjector implements MembersInjector<UpsightGoogleAdvertisingIdExtension> {
    static final /* synthetic */ boolean $assertionsDisabled;
    private final Provider<GooglePlayAdvertisingProvider> mAdvertisingIdProvider;
    private final MembersInjector<UpsightExtension<UpsightGoogleAdvertisingProviderComponent, Void>> supertypeInjector;

    static {
        $assertionsDisabled = !UpsightGoogleAdvertisingIdExtension_MembersInjector.class.desiredAssertionStatus();
    }

    public UpsightGoogleAdvertisingIdExtension_MembersInjector(MembersInjector<UpsightExtension<UpsightGoogleAdvertisingProviderComponent, Void>> membersInjector, Provider<GooglePlayAdvertisingProvider> provider) {
        if ($assertionsDisabled || membersInjector != null) {
            this.supertypeInjector = membersInjector;
            if ($assertionsDisabled || provider != null) {
                this.mAdvertisingIdProvider = provider;
                return;
            }
            throw new AssertionError();
        }
        throw new AssertionError();
    }

    public static MembersInjector<UpsightGoogleAdvertisingIdExtension> create(MembersInjector<UpsightExtension<UpsightGoogleAdvertisingProviderComponent, Void>> membersInjector, Provider<GooglePlayAdvertisingProvider> provider) {
        return new UpsightGoogleAdvertisingIdExtension_MembersInjector(membersInjector, provider);
    }

    public void injectMembers(UpsightGoogleAdvertisingIdExtension upsightGoogleAdvertisingIdExtension) {
        if (upsightGoogleAdvertisingIdExtension == null) {
            throw new NullPointerException("Cannot inject members into a null reference");
        }
        this.supertypeInjector.injectMembers(upsightGoogleAdvertisingIdExtension);
        upsightGoogleAdvertisingIdExtension.mAdvertisingIdProvider = (GooglePlayAdvertisingProvider) this.mAdvertisingIdProvider.get();
    }
}
