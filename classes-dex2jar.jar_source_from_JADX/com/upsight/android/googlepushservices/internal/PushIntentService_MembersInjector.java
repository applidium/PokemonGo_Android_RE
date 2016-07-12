package com.upsight.android.googlepushservices.internal;

import android.app.IntentService;
import com.google.android.gms.gcm.GoogleCloudMessaging;
import dagger.MembersInjector;
import javax.inject.Provider;

public final class PushIntentService_MembersInjector implements MembersInjector<PushIntentService> {
    static final /* synthetic */ boolean $assertionsDisabled;
    private final Provider<GoogleCloudMessaging> mGcmProvider;
    private final MembersInjector<IntentService> supertypeInjector;

    static {
        $assertionsDisabled = !PushIntentService_MembersInjector.class.desiredAssertionStatus();
    }

    public PushIntentService_MembersInjector(MembersInjector<IntentService> membersInjector, Provider<GoogleCloudMessaging> provider) {
        if ($assertionsDisabled || membersInjector != null) {
            this.supertypeInjector = membersInjector;
            if ($assertionsDisabled || provider != null) {
                this.mGcmProvider = provider;
                return;
            }
            throw new AssertionError();
        }
        throw new AssertionError();
    }

    public static MembersInjector<PushIntentService> create(MembersInjector<IntentService> membersInjector, Provider<GoogleCloudMessaging> provider) {
        return new PushIntentService_MembersInjector(membersInjector, provider);
    }

    public void injectMembers(PushIntentService pushIntentService) {
        if (pushIntentService == null) {
            throw new NullPointerException("Cannot inject members into a null reference");
        }
        this.supertypeInjector.injectMembers(pushIntentService);
        pushIntentService.mGcm = (GoogleCloudMessaging) this.mGcmProvider.get();
    }
}
