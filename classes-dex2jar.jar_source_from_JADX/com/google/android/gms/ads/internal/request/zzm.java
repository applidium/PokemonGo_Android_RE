package com.google.android.gms.ads.internal.request;

import android.content.Context;
import android.os.Bundle;
import android.text.TextUtils;
import com.google.android.gms.ads.identifier.AdvertisingIdClient;
import com.google.android.gms.ads.identifier.AdvertisingIdClient.Info;
import com.google.android.gms.ads.internal.client.AdSizeParcel;
import com.google.android.gms.ads.internal.zzp;
import com.google.android.gms.common.GooglePlayServicesNotAvailableException;
import com.google.android.gms.common.GooglePlayServicesRepairableException;
import com.google.android.gms.internal.zzbb;
import com.google.android.gms.internal.zzbe;
import com.google.android.gms.internal.zzbr;
import com.google.android.gms.internal.zzby;
import com.google.android.gms.internal.zzdk;
import com.google.android.gms.internal.zzdl;
import com.google.android.gms.internal.zzdp;
import com.google.android.gms.internal.zzdz;
import com.google.android.gms.internal.zzdz.zzd;
import com.google.android.gms.internal.zzgr;
import com.google.android.gms.internal.zzgu;
import com.google.android.gms.internal.zzhz;
import com.google.android.gms.internal.zziz;
import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;
import java.util.UUID;
import java.util.concurrent.CancellationException;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Future;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;
import org.json.JSONException;
import org.json.JSONObject;

@zzgr
public class zzm extends zzhz {
    static final long zzFi;
    private static boolean zzFj;
    private static zzdz zzFk;
    private static zzdl zzFl;
    private static zzdp zzFm;
    private static zzdk zzFn;
    private static final Object zzpy;
    private final Context mContext;
    private final Object zzDh;
    private final com.google.android.gms.ads.internal.request.zza.zza zzEe;
    private final com.google.android.gms.ads.internal.request.AdRequestInfoParcel.zza zzEf;
    private zzd zzFo;

    /* renamed from: com.google.android.gms.ads.internal.request.zzm.1 */
    class C01961 implements Runnable {
        final /* synthetic */ zzm zzFp;
        final /* synthetic */ com.google.android.gms.internal.zzhs.zza zzoB;

        C01961(zzm com_google_android_gms_ads_internal_request_zzm, com.google.android.gms.internal.zzhs.zza com_google_android_gms_internal_zzhs_zza) {
            this.zzFp = com_google_android_gms_ads_internal_request_zzm;
            this.zzoB = com_google_android_gms_internal_zzhs_zza;
        }

        public void run() {
            this.zzFp.zzEe.zza(this.zzoB);
            if (this.zzFp.zzFo != null) {
                this.zzFp.zzFo.release();
                this.zzFp.zzFo = null;
            }
        }
    }

    /* renamed from: com.google.android.gms.ads.internal.request.zzm.2 */
    class C01992 implements Runnable {
        final /* synthetic */ zzm zzFp;
        final /* synthetic */ JSONObject zzFq;
        final /* synthetic */ String zzFr;

        /* renamed from: com.google.android.gms.ads.internal.request.zzm.2.1 */
        class C01971 implements com.google.android.gms.internal.zzis.zzc<zzbe> {
            final /* synthetic */ C01992 zzFs;

            C01971(C01992 c01992) {
                this.zzFs = c01992;
            }

            public void zzb(zzbe com_google_android_gms_internal_zzbe) {
                try {
                    com_google_android_gms_internal_zzbe.zza("AFMA_getAdapterLessMediationAd", this.zzFs.zzFq);
                } catch (Throwable e) {
                    com.google.android.gms.ads.internal.util.client.zzb.zzb("Error requesting an ad url", e);
                    zzm.zzFm.zzZ(this.zzFs.zzFr);
                }
            }

            public /* synthetic */ void zzc(Object obj) {
                zzb((zzbe) obj);
            }
        }

        /* renamed from: com.google.android.gms.ads.internal.request.zzm.2.2 */
        class C01982 implements com.google.android.gms.internal.zzis.zza {
            final /* synthetic */ C01992 zzFs;

            C01982(C01992 c01992) {
                this.zzFs = c01992;
            }

            public void run() {
                zzm.zzFm.zzZ(this.zzFs.zzFr);
            }
        }

        C01992(zzm com_google_android_gms_ads_internal_request_zzm, JSONObject jSONObject, String str) {
            this.zzFp = com_google_android_gms_ads_internal_request_zzm;
            this.zzFq = jSONObject;
            this.zzFr = str;
        }

        public void run() {
            this.zzFp.zzFo = zzm.zzFk.zzdO();
            this.zzFp.zzFo.zza(new C01971(this), new C01982(this));
        }
    }

    /* renamed from: com.google.android.gms.ads.internal.request.zzm.3 */
    class C02003 implements Runnable {
        final /* synthetic */ zzm zzFp;

        C02003(zzm com_google_android_gms_ads_internal_request_zzm) {
            this.zzFp = com_google_android_gms_ads_internal_request_zzm;
        }

        public void run() {
            if (this.zzFp.zzFo != null) {
                this.zzFp.zzFo.release();
                this.zzFp.zzFo = null;
            }
        }
    }

    public static class zza implements com.google.android.gms.internal.zzdz.zzb<zzbb> {
        public void zza(zzbb com_google_android_gms_internal_zzbb) {
            zzm.zzd(com_google_android_gms_internal_zzbb);
        }

        public /* synthetic */ void zzc(Object obj) {
            zza((zzbb) obj);
        }
    }

    public static class zzb implements com.google.android.gms.internal.zzdz.zzb<zzbb> {
        public void zza(zzbb com_google_android_gms_internal_zzbb) {
            zzm.zzc(com_google_android_gms_internal_zzbb);
        }

        public /* synthetic */ void zzc(Object obj) {
            zza((zzbb) obj);
        }
    }

    public static class zzc implements zzdk {
        public void zza(zziz com_google_android_gms_internal_zziz, Map<String, String> map) {
            String str = (String) map.get("request_id");
            com.google.android.gms.ads.internal.util.client.zzb.zzaH("Invalid request: " + ((String) map.get("errors")));
            zzm.zzFm.zzZ(str);
        }
    }

    static {
        zzFi = TimeUnit.SECONDS.toMillis(10);
        zzpy = new Object();
        zzFj = false;
        zzFk = null;
        zzFl = null;
        zzFm = null;
        zzFn = null;
    }

    public zzm(Context context, com.google.android.gms.ads.internal.request.AdRequestInfoParcel.zza com_google_android_gms_ads_internal_request_AdRequestInfoParcel_zza, com.google.android.gms.ads.internal.request.zza.zza com_google_android_gms_ads_internal_request_zza_zza) {
        super(true);
        this.zzDh = new Object();
        this.zzEe = com_google_android_gms_ads_internal_request_zza_zza;
        this.mContext = context;
        this.zzEf = com_google_android_gms_ads_internal_request_AdRequestInfoParcel_zza;
        synchronized (zzpy) {
            if (!zzFj) {
                zzFm = new zzdp();
                zzFl = new zzdl(context.getApplicationContext(), com_google_android_gms_ads_internal_request_AdRequestInfoParcel_zza.zzqj);
                zzFn = new zzc();
                zzFk = new zzdz(this.mContext.getApplicationContext(), this.zzEf.zzqj, (String) zzby.zzul.get(), new zzb(), new zza());
                zzFj = true;
            }
        }
    }

    private JSONObject zza(AdRequestInfoParcel adRequestInfoParcel, String str) {
        Info advertisingIdInfo;
        Throwable e;
        Object obj;
        JSONObject jSONObject = null;
        Bundle bundle = adRequestInfoParcel.zzEn.extras.getBundle("sdk_less_server_data");
        String string = adRequestInfoParcel.zzEn.extras.getString("sdk_less_network_id");
        if (bundle != null) {
            JSONObject zza = zzgu.zza(this.mContext, adRequestInfoParcel, zzp.zzbB().zzC(this.mContext), jSONObject, jSONObject, new zzbr((String) zzby.zzul.get()), jSONObject, jSONObject, new ArrayList());
            if (zza != null) {
                Map hashMap;
                try {
                    advertisingIdInfo = AdvertisingIdClient.getAdvertisingIdInfo(this.mContext);
                } catch (IOException e2) {
                    e = e2;
                    com.google.android.gms.ads.internal.util.client.zzb.zzd("Cannot get advertising id info", e);
                    obj = jSONObject;
                    hashMap = new HashMap();
                    hashMap.put("request_id", str);
                    hashMap.put("network_id", string);
                    hashMap.put("request_param", zza);
                    hashMap.put(ModelColumns.DATA, bundle);
                    if (advertisingIdInfo != null) {
                        hashMap.put("adid", advertisingIdInfo.getId());
                        hashMap.put("lat", Integer.valueOf(advertisingIdInfo.isLimitAdTrackingEnabled() ? 0 : 1));
                    }
                    jSONObject = zzp.zzbv().zzz(hashMap);
                    return jSONObject;
                } catch (IllegalStateException e3) {
                    e = e3;
                    com.google.android.gms.ads.internal.util.client.zzb.zzd("Cannot get advertising id info", e);
                    obj = jSONObject;
                    hashMap = new HashMap();
                    hashMap.put("request_id", str);
                    hashMap.put("network_id", string);
                    hashMap.put("request_param", zza);
                    hashMap.put(ModelColumns.DATA, bundle);
                    if (advertisingIdInfo != null) {
                        hashMap.put("adid", advertisingIdInfo.getId());
                        if (advertisingIdInfo.isLimitAdTrackingEnabled()) {
                        }
                        hashMap.put("lat", Integer.valueOf(advertisingIdInfo.isLimitAdTrackingEnabled() ? 0 : 1));
                    }
                    jSONObject = zzp.zzbv().zzz(hashMap);
                    return jSONObject;
                } catch (GooglePlayServicesNotAvailableException e4) {
                    e = e4;
                    com.google.android.gms.ads.internal.util.client.zzb.zzd("Cannot get advertising id info", e);
                    obj = jSONObject;
                    hashMap = new HashMap();
                    hashMap.put("request_id", str);
                    hashMap.put("network_id", string);
                    hashMap.put("request_param", zza);
                    hashMap.put(ModelColumns.DATA, bundle);
                    if (advertisingIdInfo != null) {
                        hashMap.put("adid", advertisingIdInfo.getId());
                        if (advertisingIdInfo.isLimitAdTrackingEnabled()) {
                        }
                        hashMap.put("lat", Integer.valueOf(advertisingIdInfo.isLimitAdTrackingEnabled() ? 0 : 1));
                    }
                    jSONObject = zzp.zzbv().zzz(hashMap);
                    return jSONObject;
                } catch (GooglePlayServicesRepairableException e5) {
                    e = e5;
                    com.google.android.gms.ads.internal.util.client.zzb.zzd("Cannot get advertising id info", e);
                    obj = jSONObject;
                    hashMap = new HashMap();
                    hashMap.put("request_id", str);
                    hashMap.put("network_id", string);
                    hashMap.put("request_param", zza);
                    hashMap.put(ModelColumns.DATA, bundle);
                    if (advertisingIdInfo != null) {
                        hashMap.put("adid", advertisingIdInfo.getId());
                        if (advertisingIdInfo.isLimitAdTrackingEnabled()) {
                        }
                        hashMap.put("lat", Integer.valueOf(advertisingIdInfo.isLimitAdTrackingEnabled() ? 0 : 1));
                    }
                    jSONObject = zzp.zzbv().zzz(hashMap);
                    return jSONObject;
                }
                hashMap = new HashMap();
                hashMap.put("request_id", str);
                hashMap.put("network_id", string);
                hashMap.put("request_param", zza);
                hashMap.put(ModelColumns.DATA, bundle);
                if (advertisingIdInfo != null) {
                    hashMap.put("adid", advertisingIdInfo.getId());
                    if (advertisingIdInfo.isLimitAdTrackingEnabled()) {
                    }
                    hashMap.put("lat", Integer.valueOf(advertisingIdInfo.isLimitAdTrackingEnabled() ? 0 : 1));
                }
                try {
                    jSONObject = zzp.zzbv().zzz(hashMap);
                } catch (JSONException e6) {
                }
            }
        }
        return jSONObject;
    }

    protected static void zzc(zzbb com_google_android_gms_internal_zzbb) {
        com_google_android_gms_internal_zzbb.zza("/loadAd", zzFm);
        com_google_android_gms_internal_zzbb.zza("/fetchHttpRequest", zzFl);
        com_google_android_gms_internal_zzbb.zza("/invalidRequest", zzFn);
    }

    protected static void zzd(zzbb com_google_android_gms_internal_zzbb) {
        com_google_android_gms_internal_zzbb.zzb("/loadAd", zzFm);
        com_google_android_gms_internal_zzbb.zzb("/fetchHttpRequest", zzFl);
        com_google_android_gms_internal_zzbb.zzb("/invalidRequest", zzFn);
    }

    private AdResponseParcel zzf(AdRequestInfoParcel adRequestInfoParcel) {
        String uuid = UUID.randomUUID().toString();
        JSONObject zza = zza(adRequestInfoParcel, uuid);
        if (zza == null) {
            return new AdResponseParcel(0);
        }
        long elapsedRealtime = zzp.zzbz().elapsedRealtime();
        Future zzY = zzFm.zzY(uuid);
        com.google.android.gms.ads.internal.util.client.zza.zzJt.post(new C01992(this, zza, uuid));
        try {
            JSONObject jSONObject = (JSONObject) zzY.get(zzFi - (zzp.zzbz().elapsedRealtime() - elapsedRealtime), TimeUnit.MILLISECONDS);
            if (jSONObject == null) {
                return new AdResponseParcel(-1);
            }
            AdResponseParcel zza2 = zzgu.zza(this.mContext, adRequestInfoParcel, jSONObject.toString());
            return (zza2.errorCode == -3 || !TextUtils.isEmpty(zza2.body)) ? zza2 : new AdResponseParcel(3);
        } catch (CancellationException e) {
            return new AdResponseParcel(-1);
        } catch (InterruptedException e2) {
            return new AdResponseParcel(-1);
        } catch (TimeoutException e3) {
            return new AdResponseParcel(2);
        } catch (ExecutionException e4) {
            return new AdResponseParcel(0);
        }
    }

    public void onStop() {
        synchronized (this.zzDh) {
            com.google.android.gms.ads.internal.util.client.zza.zzJt.post(new C02003(this));
        }
    }

    public void zzbn() {
        com.google.android.gms.ads.internal.util.client.zzb.zzaF("SdkLessAdLoaderBackgroundTask started.");
        AdRequestInfoParcel adRequestInfoParcel = new AdRequestInfoParcel(this.zzEf, null, -1);
        AdResponseParcel zzf = zzf(adRequestInfoParcel);
        AdSizeParcel adSizeParcel = null;
        com.google.android.gms.ads.internal.util.client.zza.zzJt.post(new C01961(this, new com.google.android.gms.internal.zzhs.zza(adRequestInfoParcel, zzf, null, adSizeParcel, zzf.errorCode, zzp.zzbz().elapsedRealtime(), zzf.zzEO, null)));
    }
}
