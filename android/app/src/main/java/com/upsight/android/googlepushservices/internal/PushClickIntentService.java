package com.upsight.android.googlepushservices.internal;

import android.app.IntentService;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.support.v4.widget.ExploreByTouchHelper;
import com.upsight.android.Upsight;
import com.upsight.android.UpsightContext;
import com.upsight.android.UpsightGooglePushServicesExtension;
import com.upsight.android.analytics.UpsightLifeCycleTracker;
import com.upsight.android.analytics.event.comm.UpsightCommClickEvent;
import com.upsight.android.analytics.event.comm.UpsightCommClickEvent.Builder;
import com.upsight.android.analytics.internal.session.ApplicationStatus;
import com.upsight.android.analytics.internal.session.ApplicationStatus.State;
import com.upsight.android.analytics.internal.session.SessionInitializerImpl;
import com.upsight.android.analytics.internal.session.SessionManager;
import com.upsight.android.googlepushservices.UpsightGooglePushServicesComponent;
import javax.inject.Inject;

public class PushClickIntentService extends IntentService {
    private static final String BUNDLE_KEY_MESSAGE_INTENT = "messageIntent";
    private static final Integer NO_CMP_ID;
    private static final Integer NO_MSG_ID;
    private static final String SERVICE_NAME = "UpsightGcmPushClickIntentService";
    @Inject
    SessionManager mSessionManager;

    static {
        NO_MSG_ID = Integer.valueOf(ExploreByTouchHelper.INVALID_ID);
        NO_CMP_ID = Integer.valueOf(ExploreByTouchHelper.INVALID_ID);
    }

    public PushClickIntentService() {
        super(SERVICE_NAME);
    }

    protected static Intent appendMessageIntentBundle(Intent intent, Integer num, Integer num2) {
        Bundle bundle = new Bundle();
        if (num != null) {
            bundle.putInt(SessionManager.SESSION_CAMPAIGN_ID, num.intValue());
        }
        if (num2 != null) {
            bundle.putInt(SessionManager.SESSION_MESSAGE_ID, num2.intValue());
        }
        intent.putExtra(UpsightLifeCycleTracker.STARTED_FROM_PUSH, true);
        intent.addFlags(268435456);
        return intent.putExtra(SessionManager.SESSION_EXTRA, bundle);
    }

    static Intent newIntent(Context context, Intent intent, Integer num, Integer num2) {
        return new Intent(context.getApplicationContext(), PushClickIntentService.class).putExtra(BUNDLE_KEY_MESSAGE_INTENT, appendMessageIntentBundle(intent, num, num2));
    }

    protected void onHandleIntent(Intent intent) {
        UpsightContext createContext = Upsight.createContext(this);
        ((UpsightGooglePushServicesComponent) ((UpsightGooglePushServicesExtension) createContext.getUpsightExtension(UpsightGooglePushServicesExtension.EXTENSION_NAME)).getComponent()).inject(this);
        Intent intent2 = (Intent) intent.getParcelableExtra(BUNDLE_KEY_MESSAGE_INTENT);
        Bundle bundleExtra = intent2.getBundleExtra(SessionManager.SESSION_EXTRA);
        SessionManager sessionManager = this.mSessionManager;
        if (State.BACKGROUND.name().equals(((ApplicationStatus) createContext.getDataStore().fetchObservable(ApplicationStatus.class).toBlocking().first()).getState().name())) {
            sessionManager.startSession(SessionInitializerImpl.fromPush(bundleExtra));
        }
        Builder createBuilder = UpsightCommClickEvent.createBuilder(Integer.valueOf(bundleExtra.getInt(SessionManager.SESSION_MESSAGE_ID, NO_MSG_ID.intValue())));
        Integer valueOf = Integer.valueOf(bundleExtra.getInt(SessionManager.SESSION_CAMPAIGN_ID, NO_CMP_ID.intValue()));
        if (!valueOf.equals(NO_CMP_ID)) {
            createBuilder.setMsgCampaignId(valueOf);
        }
        createBuilder.record(Upsight.createContext(this));
        startActivity(intent2);
    }
}
