package com.upsight.android.googlepushservices.internal;

import android.app.IntentService;
import android.app.NotificationManager;
import android.app.PendingIntent;
import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import android.support.v4.app.NotificationCompat;
import android.support.v4.app.NotificationCompat.BigTextStyle;
import android.support.v4.content.WakefulBroadcastReceiver;
import android.text.TextUtils;
import com.google.android.gms.gcm.GoogleCloudMessaging;
import com.google.android.gms.location.places.Place;
import com.nianticproject.holoholo.sfida.SfidaMessage;
import com.upsight.android.Upsight;
import com.upsight.android.UpsightContext;
import com.upsight.android.UpsightGooglePushServicesExtension;
import com.upsight.android.analytics.event.content.UpsightContentUnrenderedEvent;
import com.upsight.android.analytics.event.content.UpsightContentUnrenderedEvent.Builder;
import com.upsight.android.googlepushservices.UpsightGooglePushServicesComponent;
import com.upsight.android.logger.UpsightLogger;
import com.upsight.android.marketing.internal.content.MarketingContent;
import javax.inject.Inject;
import org.json.JSONObject;
import spacemadness.com.lunarconsole.C1401R;

public final class PushIntentService extends IntentService {
    private static final String ACTION_ACTIVITY = "activity";
    private static final String ACTION_CONTENT_UNIT = "content_id";
    private static final String ACTION_PLACEMENT = "placement";
    private static final String CONTENT_UNRENDERED_CONTENT_PROVIDER_KEY_NAME = "name";
    private static final String CONTENT_UNRENDERED_CONTENT_PROVIDER_KEY_PARAMETERS = "parameters";
    private static final String CONTENT_UNRENDERED_CONTENT_PROVIDER_PARAMETERS_KEY_CONTENT_ID = "content_id";
    private static final Integer INVALID_MSG_ID;
    private static final String LOG_TAG;
    private static final String SERVICE_NAME = "UpsightGcmPushIntentService";
    private static final String URI_HOST = "com.playhaven.android";
    private static final String URI_SCHEME = "playhaven";
    @Inject
    GoogleCloudMessaging mGcm;

    /* renamed from: com.upsight.android.googlepushservices.internal.PushIntentService.1 */
    static /* synthetic */ class C09171 {
        static final /* synthetic */ int[] f267x51d6a9c0;

        static {
            f267x51d6a9c0 = new int[UriTypes.values().length];
            try {
                f267x51d6a9c0[UriTypes.CUSTOM.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f267x51d6a9c0[UriTypes.DEFAULT.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                f267x51d6a9c0[UriTypes.ACTIVITY.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
            try {
                f267x51d6a9c0[UriTypes.PLACEMENT.ordinal()] = 4;
            } catch (NoSuchFieldError e4) {
            }
        }
    }

    class PushIds {
        final Integer campaignId;
        final Integer contentId;
        final Integer messageId;

        private PushIds(Integer num, Integer num2, Integer num3) {
            this.messageId = num;
            this.campaignId = num2;
            this.contentId = num3;
        }
    }

    public enum PushParams {
        message_id,
        msg_campaign_id,
        content_id,
        title,
        text,
        uri
    }

    public enum UriTypes {
        DEFAULT,
        CUSTOM,
        INVALID,
        PLACEMENT,
        ACTIVITY
    }

    static {
        LOG_TAG = PushIntentService.class.getSimpleName();
        INVALID_MSG_ID = Integer.valueOf(0);
    }

    public PushIntentService() {
        super(SERVICE_NAME);
    }

    private void interpretPushEvent(Bundle bundle) {
        Intent intent = null;
        Object string = bundle.getString(PushParams.uri.name());
        Uri parse = !TextUtils.isEmpty(string) ? Uri.parse(string) : null;
        if (parse != null) {
            UpsightContext createContext = Upsight.createContext(this);
            UpsightLogger logger = createContext.getLogger();
            PushIds parsePushIds = parsePushIds(parse, bundle, logger);
            switch (C09171.f267x51d6a9c0[checkUri(logger, parse).ordinal()]) {
                case C1401R.styleable.LoadingImageView_imageAspectRatio /*1*/:
                    intent = new Intent("android.intent.action.VIEW", parse);
                    break;
                case C1401R.styleable.LoadingImageView_circleCrop /*2*/:
                    intent = getPackageManager().getLaunchIntentForPackage(getPackageName());
                    break;
                case SfidaMessage.ACTIVITY_BYTE_LENGTH /*3*/:
                    try {
                        intent = new Intent(this, Class.forName(parse.getQueryParameter(ACTION_ACTIVITY)));
                        break;
                    } catch (Throwable e) {
                        logger.m200e(LOG_TAG, e, "Could not parse class name", new Object[0]);
                        break;
                    }
                case Place.TYPE_AQUARIUM /*4*/:
                    JSONObject jSONObject = new JSONObject();
                    try {
                        jSONObject.put(CONTENT_UNRENDERED_CONTENT_PROVIDER_KEY_NAME, MarketingContent.UPSIGHT_CONTENT_PROVIDER);
                        JSONObject jSONObject2 = new JSONObject();
                        jSONObject2.put(CONTENT_UNRENDERED_CONTENT_PROVIDER_PARAMETERS_KEY_CONTENT_ID, parsePushIds.contentId);
                        jSONObject.put(CONTENT_UNRENDERED_CONTENT_PROVIDER_KEY_PARAMETERS, jSONObject2);
                    } catch (Throwable e2) {
                        logger.m200e(LOG_TAG, e2, "Could not construct \"content_provider\" bundle in \"upsight.content.unrendered\"", new Object[0]);
                    }
                    Builder scope = UpsightContentUnrenderedEvent.createBuilder(jSONObject).setScope("com_upsight_push_scope");
                    if (parsePushIds.campaignId != null) {
                        scope.setCampaignId(parsePushIds.campaignId);
                    }
                    scope.record(createContext);
                    intent = getPackageManager().getLaunchIntentForPackage(getPackageName());
                    break;
            }
            if (intent != null) {
                showNotification(intent, parsePushIds.campaignId, parsePushIds.messageId, bundle.getString(PushParams.title.name()), bundle.getString(PushParams.text.name()));
            }
        }
    }

    private static Integer parseAsInt(String str, Integer num, UpsightLogger upsightLogger) {
        if (TextUtils.isEmpty(str) || !TextUtils.isDigitsOnly(str)) {
            return num;
        }
        try {
            return Integer.valueOf(Integer.parseInt(str));
        } catch (Throwable e) {
            if (num == null) {
                upsightLogger.m200e(LOG_TAG, e, String.format("Could not parse %s. Setting to null.", new Object[]{str}), new Object[0]);
                return num;
            }
            upsightLogger.m200e(LOG_TAG, e, String.format("Could not parse %s. Setting to %d.", new Object[]{str, num}), new Object[0]);
            return num;
        }
    }

    private void showNotification(Intent intent, Integer num, Integer num2, String str, String str2) {
        ((NotificationManager) getSystemService("notification")).notify(num2.intValue(), new NotificationCompat.Builder(this).setAutoCancel(true).setSmallIcon(getApplicationInfo().icon).setContentTitle(str).setContentText(str2).setContentIntent(PendingIntent.getService(this, 0, PushClickIntentService.newIntent(this, intent, num, num2), 268435456)).setStyle(new BigTextStyle().bigText(str2)).build());
    }

    public UriTypes checkUri(UpsightLogger upsightLogger, Uri uri) {
        CharSequence host = uri.getHost();
        CharSequence scheme = uri.getScheme();
        if (TextUtils.isEmpty(host) || TextUtils.isEmpty(scheme)) {
            upsightLogger.m199e(LOG_TAG, String.format("Invalid URI, host or scheme is null or empty: %s.", new Object[]{uri}), new Object[0]);
            return UriTypes.INVALID;
        } else if (URI_SCHEME.equals(scheme) && URI_HOST.equals(host)) {
            return uri.getQueryParameter(ACTION_ACTIVITY) != null ? UriTypes.ACTIVITY : uri.getQueryParameter(ACTION_PLACEMENT) != null ? UriTypes.PLACEMENT : uri.getQueryParameter(CONTENT_UNRENDERED_CONTENT_PROVIDER_PARAMETERS_KEY_CONTENT_ID) != null ? UriTypes.PLACEMENT : UriTypes.DEFAULT;
        } else {
            try {
                return getPackageManager().resolveActivity(new Intent().setData(uri), 0) == null ? UriTypes.INVALID : UriTypes.CUSTOM;
            } catch (Exception e) {
                upsightLogger.m199e(LOG_TAG, String.format("Nothing registered for %s", new Object[]{uri}), new Object[0]);
                return UriTypes.INVALID;
            }
        }
    }

    protected void onHandleIntent(Intent intent) {
        ((UpsightGooglePushServicesComponent) ((UpsightGooglePushServicesExtension) Upsight.createContext(this).getUpsightExtension(UpsightGooglePushServicesExtension.EXTENSION_NAME)).getComponent()).inject(this);
        if (GoogleCloudMessaging.MESSAGE_TYPE_MESSAGE.equals(this.mGcm.getMessageType(intent))) {
            Bundle extras = intent.getExtras();
            if (!(extras.isEmpty() || TextUtils.isEmpty(extras.getString(PushParams.message_id.name())))) {
                interpretPushEvent(extras);
            }
        }
        WakefulBroadcastReceiver.completeWakefulIntent(intent);
    }

    PushIds parsePushIds(Uri uri, Bundle bundle, UpsightLogger upsightLogger) {
        return new PushIds(parseAsInt(bundle.getString(PushParams.message_id.name()), INVALID_MSG_ID, upsightLogger), parseAsInt(bundle.getString(PushParams.msg_campaign_id.name()), null, upsightLogger), parseAsInt(uri.getQueryParameter(PushParams.content_id.name()), null, upsightLogger), null);
    }
}
