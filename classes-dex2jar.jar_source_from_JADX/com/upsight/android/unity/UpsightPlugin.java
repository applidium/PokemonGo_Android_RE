package com.upsight.android.unity;

import android.annotation.SuppressLint;
import android.app.Activity;
import android.app.Application;
import android.app.Application.ActivityLifecycleCallbacks;
import android.content.Context;
import android.content.Intent;
import android.os.Build.VERSION;
import android.os.Bundle;
import android.util.Log;
import com.upsight.android.Upsight;
import com.upsight.android.UpsightContext;
import com.upsight.android.UpsightException;
import com.upsight.android.analytics.UpsightGooglePlayHelper;
import com.upsight.android.analytics.event.UpsightCustomEvent;
import com.upsight.android.analytics.event.UpsightPublisherData;
import com.upsight.android.analytics.event.UpsightPublisherData.Builder;
import com.upsight.android.analytics.event.milestone.UpsightMilestoneEvent;
import com.upsight.android.analytics.event.monetization.UpsightMonetizationEvent;
import com.upsight.android.analytics.provider.UpsightLocationTracker;
import com.upsight.android.analytics.provider.UpsightLocationTracker.Data;
import com.upsight.android.analytics.provider.UpsightOptOutStatus;
import com.upsight.android.analytics.provider.UpsightUserAttributes;
import com.upsight.android.googlepushservices.UpsightGooglePushServices;
import com.upsight.android.googlepushservices.UpsightGooglePushServices.OnRegisterListener;
import com.upsight.android.googlepushservices.UpsightGooglePushServices.OnUnregisterListener;
import com.upsight.android.googlepushservices.UpsightPushBillboard;
import com.upsight.android.logger.UpsightLogger.Level;
import com.upsight.android.managedvariables.type.UpsightManagedBoolean;
import com.upsight.android.managedvariables.type.UpsightManagedFloat;
import com.upsight.android.managedvariables.type.UpsightManagedInt;
import com.upsight.android.managedvariables.type.UpsightManagedString;
import com.upsight.android.marketing.UpsightBillboard;
import com.upsight.android.marketing.UpsightMarketingContentStore;
import java.util.ArrayList;
import java.util.EnumSet;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import org.json.JSONException;
import org.json.JSONObject;

@SuppressLint({"NewApi"})
public class UpsightPlugin extends AbstractUpsightPlugin implements ActivityLifecycleCallbacks {
    private static UpsightPlugin sInstance;
    private BillboardHandler mBillboardHandler;
    private Map<String, UpsightBillboard> mBillboardMap;
    private boolean mHasActiveBillboard;
    private List<String> mJettisonedBillboardScopes;
    private UpsightBillboard mPushBillboard;
    private boolean mShouldSynchronizeManagedVariables;
    private UpsightContext mUpsight;

    /* renamed from: com.upsight.android.unity.UpsightPlugin.1 */
    class C09851 implements OnUnregisterListener {
        C09851() {
        }

        public void onFailure(UpsightException upsightException) {
            Log.e(Upsight.LOG_TAG, "unregistration failed: " + upsightException);
        }

        public void onSuccess() {
            Log.e(Upsight.LOG_TAG, "unregistration succeeded");
        }
    }

    /* renamed from: com.upsight.android.unity.UpsightPlugin.2 */
    class C09862 implements OnRegisterListener {
        C09862() {
        }

        public void onFailure(UpsightException upsightException) {
            Log.e(Upsight.LOG_TAG, "registration failed: " + upsightException);
        }

        public void onSuccess(String str) {
            Log.e(Upsight.LOG_TAG, "registration succeeded");
        }
    }

    public UpsightPlugin() {
        this.mBillboardMap = new HashMap();
        this.mHasActiveBillboard = false;
        this.mShouldSynchronizeManagedVariables = true;
    }

    @SuppressLint({"NewApi"})
    public static UpsightPlugin instance() {
        int i;
        synchronized (UpsightPlugin.class) {
            try {
            } finally {
                i = UpsightPlugin.class;
            }
        }
        if (sInstance == null) {
            sInstance = new UpsightPlugin();
            Context activity = sInstance.getActivity();
            if (activity != null) {
                sInstance.mUpsight = Upsight.createContext(activity);
                sInstance.mBillboardHandler = new BillboardHandler(activity, sInstance);
                Log.i(Upsight.LOG_TAG, "creating UpsightPushBillboard");
                sInstance.mPushBillboard = UpsightPushBillboard.create(sInstance.mUpsight, sInstance.mBillboardHandler);
                i = VERSION.SDK_INT;
                if (i >= 14) {
                    Log.i(Upsight.LOG_TAG, "wiring up an ActivityLifecycleCallback listener since we are on API 14+");
                    Application application = activity.getApplication();
                    i = sInstance;
                    application.registerActivityLifecycleCallbacks(i);
                }
            }
        }
        UpsightPlugin upsightPlugin = sInstance;
        return upsightPlugin;
    }

    private static UpsightPublisherData publisherDataFromJsonString(String str) {
        Builder builder = new Builder();
        if (str != null && str.length() > 0) {
            try {
                JSONObject jSONObject = new JSONObject(str);
                Iterator keys = jSONObject.keys();
                while (keys.hasNext()) {
                    String str2 = (String) keys.next();
                    try {
                        Object obj = jSONObject.get(str2);
                        if (obj instanceof String) {
                            builder.put(str2, (String) obj);
                        } else if (obj instanceof Float) {
                            builder.put(str2, ((Float) obj).floatValue());
                        } else if (obj instanceof Double) {
                            builder.put(str2, ((Double) obj).doubleValue());
                        } else if (obj instanceof Long) {
                            builder.put(str2, ((Long) obj).longValue());
                        } else if (obj instanceof Boolean) {
                            builder.put(str2, ((Boolean) obj).booleanValue());
                        }
                    } catch (JSONException e) {
                        e.printStackTrace();
                    }
                }
            } catch (JSONException e2) {
                e2.printStackTrace();
            }
        }
        return builder.build();
    }

    public void destroyBillboard(String str) {
        if (this.mBillboardMap.containsKey(str) && !getHasActiveBillboard()) {
            Log.i(Upsight.LOG_TAG, "Destroying billboard for scope: " + str);
            ((UpsightBillboard) this.mBillboardMap.get(str)).destroy();
            this.mBillboardMap.remove(str);
        }
    }

    public String getAppToken() {
        return this.mUpsight.getApplicationToken();
    }

    boolean getHasActiveBillboard() {
        return this.mHasActiveBillboard;
    }

    public boolean getManagedBool(String str) {
        try {
            UpsightManagedBoolean fetch = UpsightManagedBoolean.fetch(this.mUpsight, str);
            if (fetch != null) {
                return ((Boolean) fetch.get()).booleanValue();
            }
            Log.e(Upsight.LOG_TAG, "Unknown tag " + str + " for managed bool, please check your UXM schema");
            return false;
        } catch (Exception e) {
            e.printStackTrace();
            return false;
        }
    }

    public float getManagedFloat(String str) {
        try {
            UpsightManagedFloat fetch = UpsightManagedFloat.fetch(this.mUpsight, str);
            if (fetch != null) {
                return ((Float) fetch.get()).floatValue();
            }
            Log.e(Upsight.LOG_TAG, "Unknown tag " + str + " for managed float, please check your UXM schema");
            return 0.0f;
        } catch (Exception e) {
            e.printStackTrace();
            return 0.0f;
        }
    }

    public int getManagedInt(String str) {
        try {
            UpsightManagedInt fetch = UpsightManagedInt.fetch(this.mUpsight, str);
            if (fetch != null) {
                return ((Integer) fetch.get()).intValue();
            }
            Log.e(Upsight.LOG_TAG, "Unknown tag " + str + " for managed int, please check your UXM schema");
            return 0;
        } catch (Exception e) {
            e.printStackTrace();
            return 0;
        }
    }

    public String getManagedString(String str) {
        try {
            UpsightManagedString fetch = UpsightManagedString.fetch(this.mUpsight, str);
            if (fetch != null) {
                return (String) fetch.get();
            }
            Log.e(Upsight.LOG_TAG, "Unknown tag " + str + " for managed string, please check your UXM schema");
            return null;
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }

    public boolean getOptOutStatus() {
        return UpsightOptOutStatus.get(this.mUpsight);
    }

    public String getPluginVersion() {
        return this.mUpsight.getSdkPlugin();
    }

    public String getPublicKey() {
        return this.mUpsight.getPublicKey();
    }

    public boolean getShouldSynchronizeManagedVariables() {
        return this.mShouldSynchronizeManagedVariables;
    }

    public String getSid() {
        return this.mUpsight.getSid();
    }

    public boolean getUserAttributesBool(String str) {
        try {
            return UpsightUserAttributes.getBoolean(this.mUpsight, str).booleanValue();
        } catch (Exception e) {
            e.printStackTrace();
            return false;
        }
    }

    public float getUserAttributesFloat(String str) {
        try {
            return UpsightUserAttributes.getFloat(this.mUpsight, str).floatValue();
        } catch (Exception e) {
            e.printStackTrace();
            return 0.0f;
        }
    }

    public int getUserAttributesInt(String str) {
        try {
            return UpsightUserAttributes.getInteger(this.mUpsight, str).intValue();
        } catch (Exception e) {
            e.printStackTrace();
            return 0;
        }
    }

    public String getUserAttributesString(String str) {
        try {
            return UpsightUserAttributes.getString(this.mUpsight, str);
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }

    public boolean isContentReadyForBillboardWithScope(String str) {
        return UpsightMarketingContentStore.isContentReady(this.mUpsight, str);
    }

    public void onActivityCreated(Activity activity, Bundle bundle) {
    }

    public void onActivityDestroyed(Activity activity) {
    }

    public void onActivityPaused(Activity activity) {
        this.mPushBillboard.destroy();
        this.mPushBillboard = null;
        this.mJettisonedBillboardScopes = new ArrayList();
        for (String str : this.mBillboardMap.keySet()) {
            this.mJettisonedBillboardScopes.add(str);
            ((UpsightBillboard) this.mBillboardMap.get(str)).destroy();
        }
        this.mBillboardMap.clear();
        Log.i(Upsight.LOG_TAG, "tombstoned " + this.mJettisonedBillboardScopes.size() + " scopes when pausing");
    }

    public void onActivityResumed(Activity activity) {
        Log.i(Upsight.LOG_TAG, "resurrecting " + this.mJettisonedBillboardScopes.size() + " scopes when resuming and push billboard");
        if (this.mPushBillboard == null) {
            this.mPushBillboard = UpsightPushBillboard.create(this.mUpsight, this.mBillboardHandler);
        }
        for (String prepareBillboard : this.mJettisonedBillboardScopes) {
            prepareBillboard(prepareBillboard);
        }
        this.mJettisonedBillboardScopes = null;
    }

    public void onActivitySaveInstanceState(Activity activity, Bundle bundle) {
    }

    public void onActivityStarted(Activity activity) {
    }

    public void onActivityStopped(Activity activity) {
    }

    public void prepareBillboard(String str) {
        if (!this.mBillboardMap.containsKey(str) && !getHasActiveBillboard()) {
            if (this.mBillboardMap.size() > 0) {
                for (String str2 : this.mBillboardMap.keySet()) {
                    Log.i(Upsight.LOG_TAG, "clearing out cached billboard [" + str2 + "] to make room for the new billboard: " + str);
                    ((UpsightBillboard) this.mBillboardMap.get(str2)).destroy();
                }
                this.mBillboardMap.clear();
            }
            this.mBillboardMap.put(str, UpsightBillboard.create(this.mUpsight, str, this.mBillboardHandler));
        }
    }

    public void purgeLocation() {
        UpsightLocationTracker.purge(this.mUpsight);
    }

    public void recordAnalyticsEvent(String str, String str2) {
        UpsightCustomEvent.Builder createBuilder = UpsightCustomEvent.createBuilder(str);
        createBuilder.put(publisherDataFromJsonString(str2));
        createBuilder.record(this.mUpsight);
    }

    public void recordGooglePlayPurchase(int i, String str, double d, double d2, String str2, int i2, String str3, String str4, String str5) {
        Builder builder = new Builder();
        builder.put(publisherDataFromJsonString(str5));
        try {
            Intent intent = new Intent();
            intent.putExtra(UpsightGooglePlayHelper.PURCHASE_RESPONSE_CODE, i2);
            intent.putExtra(UpsightGooglePlayHelper.PURCHASE_INAPP_PURCHASE_DATA, str3);
            intent.putExtra(UpsightGooglePlayHelper.PURCHASE_INAPP_DATA_SIGNATURE, str4);
            UpsightGooglePlayHelper.trackPurchase(this.mUpsight, i, str, d, d2, str2, intent, builder.build());
        } catch (UpsightException e) {
            Log.i(Upsight.LOG_TAG, "Failed to recordGooglePlayPurchase: " + e.getMessage());
            e.printStackTrace();
        }
    }

    public void recordMilestoneEvent(String str, String str2) {
        UpsightMilestoneEvent.Builder createBuilder = UpsightMilestoneEvent.createBuilder(str);
        createBuilder.put(publisherDataFromJsonString(str2));
        createBuilder.record(this.mUpsight);
    }

    public void recordMonetizationEvent(double d, String str, String str2, double d2, String str3, int i, String str4) {
        UpsightMonetizationEvent.Builder createBuilder = UpsightMonetizationEvent.createBuilder(Double.valueOf(d), str);
        createBuilder.put(publisherDataFromJsonString(str4));
        if (str2 != null) {
            createBuilder.setProduct(str2);
        }
        if (d2 >= 0.0d) {
            createBuilder.setPrice(Double.valueOf(d2));
        }
        if (str3 != null) {
            createBuilder.setResolution(str3);
        }
        if (i > 0) {
            createBuilder.setQuantity(Integer.valueOf(i));
        }
        createBuilder.record(this.mUpsight);
    }

    public void registerForPushNotifications() {
        Log.i(Upsight.LOG_TAG, "registering for push notifications");
        UpsightGooglePushServices.register(this.mUpsight, new C09862());
    }

    public void removeBillboardFromMap(String str) {
        if (this.mBillboardMap.containsKey(str)) {
            Log.i(Upsight.LOG_TAG, "Removing used billboard from internal map for scope: " + str);
            this.mBillboardMap.remove(str);
        }
    }

    void setHasActiveBillboard(boolean z) {
        this.mHasActiveBillboard = z;
    }

    public void setLocation(double d, double d2, String str) {
        Data create = Data.create(d, d2);
        if (str != null && str.length() > 0) {
            create.setTimeZone(str);
        }
        UpsightLocationTracker.track(this.mUpsight, create);
    }

    public void setLoggerLevel(String str) {
        if (str.toLowerCase().equals("verbose")) {
            Log.i(Upsight.LOG_TAG, "enabling verbose logs");
            this.mUpsight.getLogger().setLogLevel(Upsight.LOG_TAG, EnumSet.allOf(Level.class));
            return;
        }
        this.mUpsight.getLogger().setLogLevel(Upsight.LOG_TAG, EnumSet.of(Level.valueOf(str)));
    }

    public void setOptOutStatus(boolean z) {
        UpsightOptOutStatus.set(this.mUpsight, z);
    }

    public void setShouldSynchronizeManagedVariables(boolean z) {
        this.mShouldSynchronizeManagedVariables = z;
    }

    public void setUserAttributesBool(String str, boolean z) {
        try {
            UpsightUserAttributes.put(this.mUpsight, str, Boolean.valueOf(z));
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public void setUserAttributesFloat(String str, float f) {
        try {
            UpsightUserAttributes.put(this.mUpsight, str, Float.valueOf(f));
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public void setUserAttributesInt(String str, int i) {
        try {
            UpsightUserAttributes.put(this.mUpsight, str, Integer.valueOf(i));
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public void setUserAttributesString(String str, String str2) {
        try {
            UpsightUserAttributes.put(this.mUpsight, str, str2);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public void unregisterForPushNotifications() {
        Log.i(Upsight.LOG_TAG, "unregistering for push notifications");
        UpsightGooglePushServices.unregister(this.mUpsight, new C09851());
    }
}
