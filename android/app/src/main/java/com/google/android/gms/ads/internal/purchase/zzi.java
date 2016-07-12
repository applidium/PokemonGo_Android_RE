package com.google.android.gms.ads.internal.purchase;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.os.Bundle;
import android.os.IBinder;
import com.google.android.gms.ads.internal.util.client.zzb;
import com.google.android.gms.ads.internal.zzp;
import com.google.android.gms.ads.purchase.InAppPurchaseActivity;
import com.google.android.gms.common.GooglePlayServicesUtil;
import com.google.android.gms.internal.zzgr;
import com.google.android.gms.internal.zzhu;
import com.upsight.android.analytics.UpsightGooglePlayHelper;
import org.json.JSONException;
import org.json.JSONObject;

@zzgr
public class zzi {

    /* renamed from: com.google.android.gms.ads.internal.purchase.zzi.1 */
    class C01921 implements ServiceConnection {
        final /* synthetic */ zzi zzDa;
        final /* synthetic */ Context zzry;

        C01921(zzi com_google_android_gms_ads_internal_purchase_zzi, Context context) {
            this.zzDa = com_google_android_gms_ads_internal_purchase_zzi;
            this.zzry = context;
        }

        public void onServiceConnected(ComponentName componentName, IBinder iBinder) {
            boolean z = false;
            zzb com_google_android_gms_ads_internal_purchase_zzb = new zzb(this.zzry.getApplicationContext(), false);
            com_google_android_gms_ads_internal_purchase_zzb.zzN(iBinder);
            int zza = com_google_android_gms_ads_internal_purchase_zzb.zza(3, this.zzry.getPackageName(), "inapp");
            zzhu zzby = zzp.zzby();
            if (zza == 0) {
                z = true;
            }
            zzby.zzB(z);
            this.zzry.unbindService(this);
            com_google_android_gms_ads_internal_purchase_zzb.destroy();
        }

        public void onServiceDisconnected(ComponentName componentName) {
        }
    }

    public void zza(Context context, boolean z, GInAppPurchaseManagerInfoParcel gInAppPurchaseManagerInfoParcel) {
        Intent intent = new Intent();
        intent.setClassName(context, InAppPurchaseActivity.CLASS_NAME);
        intent.putExtra("com.google.android.gms.ads.internal.purchase.useClientJar", z);
        GInAppPurchaseManagerInfoParcel.zza(intent, gInAppPurchaseManagerInfoParcel);
        zzp.zzbv().zzb(context, intent);
    }

    public String zzao(String str) {
        String str2 = null;
        if (str != null) {
            try {
                str2 = new JSONObject(str).getString("developerPayload");
            } catch (JSONException e) {
                zzb.zzaH("Fail to parse purchase data");
            }
        }
        return str2;
    }

    public String zzap(String str) {
        String str2 = null;
        if (str != null) {
            try {
                str2 = new JSONObject(str).getString("purchaseToken");
            } catch (JSONException e) {
                zzb.zzaH("Fail to parse purchase data");
            }
        }
        return str2;
    }

    public int zzc(Bundle bundle) {
        Object obj = bundle.get(UpsightGooglePlayHelper.PURCHASE_RESPONSE_CODE);
        if (obj == null) {
            zzb.zzaH("Bundle with null response code, assuming OK (known issue)");
            return 0;
        } else if (obj instanceof Integer) {
            return ((Integer) obj).intValue();
        } else {
            if (obj instanceof Long) {
                return (int) ((Long) obj).longValue();
            }
            zzb.zzaH("Unexpected type for intent response code. " + obj.getClass().getName());
            return 5;
        }
    }

    public int zzd(Intent intent) {
        if (intent == null) {
            return 5;
        }
        Object obj = intent.getExtras().get(UpsightGooglePlayHelper.PURCHASE_RESPONSE_CODE);
        if (obj == null) {
            zzb.zzaH("Intent with no response code, assuming OK (known issue)");
            return 0;
        } else if (obj instanceof Integer) {
            return ((Integer) obj).intValue();
        } else {
            if (obj instanceof Long) {
                return (int) ((Long) obj).longValue();
            }
            zzb.zzaH("Unexpected type for intent response code. " + obj.getClass().getName());
            return 5;
        }
    }

    public String zze(Intent intent) {
        return intent == null ? null : intent.getStringExtra(UpsightGooglePlayHelper.PURCHASE_INAPP_PURCHASE_DATA);
    }

    public String zzf(Intent intent) {
        return intent == null ? null : intent.getStringExtra(UpsightGooglePlayHelper.PURCHASE_INAPP_DATA_SIGNATURE);
    }

    public void zzx(Context context) {
        ServiceConnection c01921 = new C01921(this, context);
        Intent intent = new Intent("com.android.vending.billing.InAppBillingService.BIND");
        intent.setPackage(GooglePlayServicesUtil.GOOGLE_PLAY_STORE_PACKAGE);
        context.bindService(intent, c01921, 1);
    }
}
