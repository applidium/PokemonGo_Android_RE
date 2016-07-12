package com.upsight.android.googlepushservices.internal;

import android.app.IntentService;
import com.upsight.android.analytics.internal.session.SessionManager;
import dagger.MembersInjector;
import javax.inject.Provider;

public final class PushClickIntentService_MembersInjector implements MembersInjector<PushClickIntentService> {
    static final /* synthetic */ boolean $assertionsDisabled;
    private final Provider<SessionManager> mSessionManagerProvider;
    private final MembersInjector<IntentService> supertypeInjector;

    static {
        $assertionsDisabled = !PushClickIntentService_MembersInjector.class.desiredAssertionStatus();
    }

    public PushClickIntentService_MembersInjector(MembersInjector<IntentService> membersInjector, Provider<SessionManager> provider) {
        if ($assertionsDisabled || membersInjector != null) {
            this.supertypeInjector = membersInjector;
            if ($assertionsDisabled || provider != null) {
                this.mSessionManagerProvider = provider;
                return;
            }
            throw new AssertionError();
        }
        throw new AssertionError();
    }

    public static MembersInjector<PushClickIntentService> create(MembersInjector<IntentService> membersInjector, Provider<SessionManager> provider) {
        return new PushClickIntentService_MembersInjector(membersInjector, provider);
    }

    public void injectMembers(PushClickIntentService pushClickIntentService) {
        if (pushClickIntentService == null) {
            throw new NullPointerException("Cannot inject members into a null reference");
        }
        this.supertypeInjector.injectMembers(pushClickIntentService);
        pushClickIntentService.mSessionManager = (SessionManager) this.mSessionManagerProvider.get();
    }
}
