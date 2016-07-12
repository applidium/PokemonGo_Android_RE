package com.google.android.gms.internal;

import android.content.Context;
import android.graphics.Color;
import android.location.Location;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.support.v4.view.ViewCompat;
import android.text.TextUtils;
import com.google.android.gms.ads.internal.client.AdRequestParcel;
import com.google.android.gms.ads.internal.client.AdSizeParcel;
import com.google.android.gms.ads.internal.client.SearchAdRequestParcel;
import com.google.android.gms.ads.internal.client.zzl;
import com.google.android.gms.ads.internal.formats.NativeAdOptionsParcel;
import com.google.android.gms.ads.internal.request.AdRequestInfoParcel;
import com.google.android.gms.ads.internal.request.AdResponseParcel;
import com.google.android.gms.ads.internal.util.client.zzb;
import com.google.android.gms.ads.internal.zzp;
import com.google.android.gms.appdatasearch.DocumentContents;
import com.google.android.gms.appdatasearch.DocumentSection;
import com.google.android.gms.appdatasearch.GetRecentContextCall.Request;
import com.google.android.gms.appdatasearch.GetRecentContextCall.Response;
import com.google.android.gms.appdatasearch.UsageInfo;
import com.google.android.gms.appindexing.AndroidAppUri;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.GoogleApiClient.Builder;
import com.google.android.gms.internal.zzhb.zza;
import com.nianticproject.holoholo.sfida.SfidaMessage;
import com.upsight.android.internal.util.NetworkHelper;
import com.voxelbusters.nativeplugins.defines.Keys;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.LinkedList;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.concurrent.TimeUnit;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
import spacemadness.com.lunarconsole.BuildConfig;
import spacemadness.com.lunarconsole.C1401R;

@zzgr
public final class zzgu {
    private static final SimpleDateFormat zzFN;

    static {
        zzFN = new SimpleDateFormat("yyyyMMdd", Locale.US);
    }

    private static String zzI(int i) {
        return String.format(Locale.US, "#%06x", new Object[]{Integer.valueOf(ViewCompat.MEASURED_SIZE_MASK & i)});
    }

    public static AdResponseParcel zza(Context context, AdRequestInfoParcel adRequestInfoParcel, String str) {
        try {
            String str2;
            AdResponseParcel adResponseParcel;
            int i;
            List list;
            List list2;
            List list3;
            long j;
            int i2;
            JSONObject jSONObject = new JSONObject(str);
            String optString = jSONObject.optString("ad_base_url", null);
            Object optString2 = jSONObject.optString("ad_url", null);
            String optString3 = jSONObject.optString("ad_size", null);
            boolean z = (adRequestInfoParcel == null || adRequestInfoParcel.zzEt == 0) ? false : true;
            CharSequence optString4 = z ? jSONObject.optString("ad_json", null) : jSONObject.optString("ad_html", null);
            long j2 = -1;
            String optString5 = jSONObject.optString("debug_dialog", null);
            long j3 = jSONObject.has("interstitial_timeout") ? (long) (jSONObject.getDouble("interstitial_timeout") * 1000.0d) : -1;
            String optString6 = jSONObject.optString("orientation", null);
            int i3 = -1;
            if ("portrait".equals(optString6)) {
                i3 = zzp.zzbx().zzgH();
            } else if ("landscape".equals(optString6)) {
                i3 = zzp.zzbx().zzgG();
            }
            if (TextUtils.isEmpty(optString4)) {
                if (TextUtils.isEmpty(optString2)) {
                    zzb.zzaH("Could not parse the mediation config: Missing required " + (z ? "ad_json" : "ad_html") + " or " + "ad_url" + " field.");
                    return new AdResponseParcel(0);
                }
                AdResponseParcel zza = zzgt.zza(adRequestInfoParcel, context, adRequestInfoParcel.zzqj.zzJu, optString2, null, null, null, null, null);
                optString = zza.zzBF;
                str2 = zza.body;
                j2 = zza.zzEO;
                adResponseParcel = zza;
            } else if (TextUtils.isEmpty(optString)) {
                zzb.zzaH("Could not parse the mediation config: Missing required ad_base_url field");
                return new AdResponseParcel(0);
            } else {
                adResponseParcel = null;
                CharSequence charSequence = optString4;
            }
            JSONArray optJSONArray = jSONObject.optJSONArray("click_urls");
            List list4 = adResponseParcel == null ? null : adResponseParcel.zzyY;
            if (optJSONArray != null) {
                if (list4 == null) {
                    list4 = new LinkedList();
                }
                for (i = 0; i < optJSONArray.length(); i++) {
                    list4.add(optJSONArray.getString(i));
                }
                list = list4;
            } else {
                list = list4;
            }
            JSONArray optJSONArray2 = jSONObject.optJSONArray("impression_urls");
            list4 = adResponseParcel == null ? null : adResponseParcel.zzyZ;
            if (optJSONArray2 != null) {
                if (list4 == null) {
                    list4 = new LinkedList();
                }
                for (i = 0; i < optJSONArray2.length(); i++) {
                    list4.add(optJSONArray2.getString(i));
                }
                list2 = list4;
            } else {
                list2 = list4;
            }
            JSONArray optJSONArray3 = jSONObject.optJSONArray("manual_impression_urls");
            list4 = adResponseParcel == null ? null : adResponseParcel.zzEM;
            if (optJSONArray3 != null) {
                if (list4 == null) {
                    list4 = new LinkedList();
                }
                for (i = 0; i < optJSONArray3.length(); i++) {
                    list4.add(optJSONArray3.getString(i));
                }
                list3 = list4;
            } else {
                list3 = list4;
            }
            int i4;
            if (adResponseParcel != null) {
                i4 = adResponseParcel.orientation != -1 ? adResponseParcel.orientation : i3;
                if (adResponseParcel.zzEJ > 0) {
                    j = adResponseParcel.zzEJ;
                    i2 = i4;
                }
                j = j3;
                i2 = i4;
            } else {
                i4 = i3;
                j = j3;
                i2 = i4;
            }
            String optString7 = jSONObject.optString("active_view");
            String str3 = null;
            boolean optBoolean = jSONObject.optBoolean("ad_is_javascript", false);
            if (optBoolean) {
                str3 = jSONObject.optString("ad_passback_url", null);
            }
            return new AdResponseParcel(adRequestInfoParcel, optString, str2, list, list2, j, jSONObject.optBoolean("mediation", false), jSONObject.optLong("mediation_config_cache_time_milliseconds", -1), list3, jSONObject.optLong("refresh_interval_milliseconds", -1), i2, optString3, j2, optString5, optBoolean, str3, optString7, jSONObject.optBoolean("custom_render_allowed", false), z, adRequestInfoParcel.zzEv, jSONObject.optBoolean("content_url_opted_out", true), jSONObject.optBoolean("prefetch", false), jSONObject.optInt("oauth2_token_status", 0), jSONObject.optString("gws_query_id", BuildConfig.FLAVOR), "height".equals(jSONObject.optString("fluid", BuildConfig.FLAVOR)));
        } catch (JSONException e) {
            zzb.zzaH("Could not parse the mediation config: " + e.getMessage());
            return new AdResponseParcel(0);
        }
    }

    public static JSONObject zza(Context context, AdRequestInfoParcel adRequestInfoParcel, zzgy com_google_android_gms_internal_zzgy, zza com_google_android_gms_internal_zzhb_zza, Location location, zzbr com_google_android_gms_internal_zzbr, String str, String str2, List<String> list) {
        try {
            HashMap hashMap = new HashMap();
            if (list.size() > 0) {
                hashMap.put("eid", TextUtils.join(",", list));
            }
            if (adRequestInfoParcel.zzEm != null) {
                hashMap.put("ad_pos", adRequestInfoParcel.zzEm);
            }
            zza(hashMap, adRequestInfoParcel.zzEn);
            hashMap.put("format", adRequestInfoParcel.zzqn.zzte);
            if (adRequestInfoParcel.zzqn.width == -1) {
                hashMap.put("smart_w", "full");
            }
            if (adRequestInfoParcel.zzqn.height == -2) {
                hashMap.put("smart_h", "auto");
            }
            if (adRequestInfoParcel.zzqn.zzti) {
                hashMap.put("fluid", "height");
            }
            if (adRequestInfoParcel.zzqn.zztg != null) {
                StringBuilder stringBuilder = new StringBuilder();
                for (AdSizeParcel adSizeParcel : adRequestInfoParcel.zzqn.zztg) {
                    if (stringBuilder.length() != 0) {
                        stringBuilder.append("|");
                    }
                    stringBuilder.append(adSizeParcel.width == -1 ? (int) (((float) adSizeParcel.widthPixels) / com_google_android_gms_internal_zzgy.zzEz) : adSizeParcel.width);
                    stringBuilder.append("x");
                    stringBuilder.append(adSizeParcel.height == -2 ? (int) (((float) adSizeParcel.heightPixels) / com_google_android_gms_internal_zzgy.zzEz) : adSizeParcel.height);
                }
                hashMap.put("sz", stringBuilder);
            }
            if (adRequestInfoParcel.zzEt != 0) {
                hashMap.put("native_version", Integer.valueOf(adRequestInfoParcel.zzEt));
                hashMap.put("native_templates", adRequestInfoParcel.zzqD);
                hashMap.put("native_image_orientation", zzc(adRequestInfoParcel.zzqB));
                if (!adRequestInfoParcel.zzEE.isEmpty()) {
                    hashMap.put("native_custom_templates", adRequestInfoParcel.zzEE);
                }
            }
            hashMap.put("slotname", adRequestInfoParcel.zzqh);
            hashMap.put("pn", adRequestInfoParcel.applicationInfo.packageName);
            if (adRequestInfoParcel.zzEo != null) {
                hashMap.put("vc", Integer.valueOf(adRequestInfoParcel.zzEo.versionCode));
            }
            hashMap.put("ms", str2);
            hashMap.put("seq_num", adRequestInfoParcel.zzEq);
            hashMap.put("session_id", adRequestInfoParcel.zzEr);
            hashMap.put("js", adRequestInfoParcel.zzqj.zzJu);
            zza(hashMap, com_google_android_gms_internal_zzgy, com_google_android_gms_internal_zzhb_zza);
            hashMap.put("fdz", Integer.valueOf(com_google_android_gms_internal_zzbr.zzdd()));
            hashMap.put("platform", Build.MANUFACTURER);
            hashMap.put("submodel", Build.MODEL);
            if (adRequestInfoParcel.zzEn.versionCode >= 2 && adRequestInfoParcel.zzEn.zzsJ != null) {
                zza(hashMap, adRequestInfoParcel.zzEn.zzsJ);
            }
            if (adRequestInfoParcel.versionCode >= 2) {
                hashMap.put("quality_signals", adRequestInfoParcel.zzEs);
            }
            if (adRequestInfoParcel.versionCode >= 4 && adRequestInfoParcel.zzEv) {
                hashMap.put("forceHttps", Boolean.valueOf(adRequestInfoParcel.zzEv));
            }
            Bundle bundle = (adRequestInfoParcel.versionCode < 4 || adRequestInfoParcel.zzEu == null) ? new Bundle() : adRequestInfoParcel.zzEu;
            zza(context, adRequestInfoParcel, bundle);
            hashMap.put("content_info", bundle);
            if (adRequestInfoParcel.versionCode >= 5) {
                hashMap.put("u_sd", Float.valueOf(adRequestInfoParcel.zzEz));
                hashMap.put("sh", Integer.valueOf(adRequestInfoParcel.zzEy));
                hashMap.put("sw", Integer.valueOf(adRequestInfoParcel.zzEx));
            } else {
                hashMap.put("u_sd", Float.valueOf(com_google_android_gms_internal_zzgy.zzEz));
                hashMap.put("sh", Integer.valueOf(com_google_android_gms_internal_zzgy.zzEy));
                hashMap.put("sw", Integer.valueOf(com_google_android_gms_internal_zzgy.zzEx));
            }
            if (adRequestInfoParcel.versionCode >= 6) {
                if (!TextUtils.isEmpty(adRequestInfoParcel.zzEA)) {
                    try {
                        hashMap.put("view_hierarchy", new JSONObject(adRequestInfoParcel.zzEA));
                    } catch (Throwable e) {
                        zzb.zzd("Problem serializing view hierarchy to JSON", e);
                    }
                }
                hashMap.put("correlation_id", Long.valueOf(adRequestInfoParcel.zzEB));
            }
            if (adRequestInfoParcel.versionCode >= 7) {
                hashMap.put("request_id", adRequestInfoParcel.zzEC);
            }
            if (adRequestInfoParcel.versionCode >= 11 && adRequestInfoParcel.zzEG != null) {
                hashMap.put("capability", adRequestInfoParcel.zzEG.toBundle());
            }
            zza(hashMap, str);
            if (adRequestInfoParcel.versionCode >= 12 && !TextUtils.isEmpty(adRequestInfoParcel.zzEH)) {
                hashMap.put("anchor", adRequestInfoParcel.zzEH);
            }
            if (zzb.zzN(2)) {
                zzb.m37v("Ad Request JSON: " + zzp.zzbv().zzz(hashMap).toString(2));
            }
            return zzp.zzbv().zzz(hashMap);
        } catch (JSONException e2) {
            zzb.zzaH("Problem serializing ad request to JSON: " + e2.getMessage());
            return null;
        }
    }

    static void zza(Context context, AdRequestInfoParcel adRequestInfoParcel, Bundle bundle) {
        if (!((Boolean) zzby.zzuZ.get()).booleanValue()) {
            zzb.zzaG("App index is not enabled");
        } else if (!zzmm.zzjA()) {
            zzb.zzaG("Not on service, return");
        } else if (zzl.zzcF().zzgT()) {
            zzb.zzaG("Cannot invoked on UI thread");
        } else if (adRequestInfoParcel == null || adRequestInfoParcel.zzEo == null) {
            zzb.zzaH("Invalid ad request info");
        } else {
            String str = adRequestInfoParcel.zzEo.packageName;
            if (TextUtils.isEmpty(str)) {
                zzb.zzaH("Fail to get package name");
                return;
            }
            try {
                zza(zzd(context, str), str, bundle);
            } catch (RuntimeException e) {
                zzb.zzaG("Fail to add app index to content info");
            }
        }
    }

    static void zza(UsageInfo usageInfo, String str, Bundle bundle) {
        if (usageInfo != null && usageInfo.zzlu() != null) {
            DocumentContents zzlu = usageInfo.zzlu();
            Object zzln = zzlu.zzln();
            if (!TextUtils.isEmpty(zzln)) {
                bundle.putString("web_url", zzln);
            }
            try {
                DocumentSection zzbw = zzlu.zzbw("intent_data");
                if (zzbw != null && !TextUtils.isEmpty(zzbw.zzQj)) {
                    bundle.putString("app_uri", AndroidAppUri.newAndroidAppUri(str, Uri.parse(zzbw.zzQj)).toString());
                }
            } catch (IllegalArgumentException e) {
                zzb.zzaH("Failed to parse the third-party Android App URI");
            }
        }
    }

    private static void zza(HashMap<String, Object> hashMap, Location location) {
        HashMap hashMap2 = new HashMap();
        float accuracy = location.getAccuracy();
        long time = location.getTime();
        long latitude = (long) (location.getLatitude() * 1.0E7d);
        long longitude = (long) (location.getLongitude() * 1.0E7d);
        hashMap2.put("radius", Float.valueOf(accuracy * 1000.0f));
        hashMap2.put("lat", Long.valueOf(latitude));
        hashMap2.put("long", Long.valueOf(longitude));
        hashMap2.put("time", Long.valueOf(time * 1000));
        hashMap.put("uule", hashMap2);
    }

    private static void zza(HashMap<String, Object> hashMap, AdRequestParcel adRequestParcel) {
        String zzgy = zzhy.zzgy();
        if (zzgy != null) {
            hashMap.put("abf", zzgy);
        }
        if (adRequestParcel.zzsB != -1) {
            hashMap.put("cust_age", zzFN.format(new Date(adRequestParcel.zzsB)));
        }
        if (adRequestParcel.extras != null) {
            hashMap.put("extras", adRequestParcel.extras);
        }
        if (adRequestParcel.zzsC != -1) {
            hashMap.put("cust_gender", Integer.valueOf(adRequestParcel.zzsC));
        }
        if (adRequestParcel.zzsD != null) {
            hashMap.put("kw", adRequestParcel.zzsD);
        }
        if (adRequestParcel.zzsF != -1) {
            hashMap.put("tag_for_child_directed_treatment", Integer.valueOf(adRequestParcel.zzsF));
        }
        if (adRequestParcel.zzsE) {
            hashMap.put("adtest", "on");
        }
        if (adRequestParcel.versionCode >= 2) {
            if (adRequestParcel.zzsG) {
                hashMap.put("d_imp_hdr", Integer.valueOf(1));
            }
            if (!TextUtils.isEmpty(adRequestParcel.zzsH)) {
                hashMap.put("ppid", adRequestParcel.zzsH);
            }
            if (adRequestParcel.zzsI != null) {
                zza((HashMap) hashMap, adRequestParcel.zzsI);
            }
        }
        if (adRequestParcel.versionCode >= 3 && adRequestParcel.zzsK != null) {
            hashMap.put(Keys.URL, adRequestParcel.zzsK);
        }
        if (adRequestParcel.versionCode >= 5) {
            if (adRequestParcel.zzsM != null) {
                hashMap.put("custom_targeting", adRequestParcel.zzsM);
            }
            if (adRequestParcel.zzsN != null) {
                hashMap.put("category_exclusions", adRequestParcel.zzsN);
            }
            if (adRequestParcel.zzsO != null) {
                hashMap.put("request_agent", adRequestParcel.zzsO);
            }
        }
        if (adRequestParcel.versionCode >= 6 && adRequestParcel.zzsP != null) {
            hashMap.put("request_pkg", adRequestParcel.zzsP);
        }
    }

    private static void zza(HashMap<String, Object> hashMap, SearchAdRequestParcel searchAdRequestParcel) {
        Object obj;
        Object obj2 = null;
        if (Color.alpha(searchAdRequestParcel.zztP) != 0) {
            hashMap.put("acolor", zzI(searchAdRequestParcel.zztP));
        }
        if (Color.alpha(searchAdRequestParcel.backgroundColor) != 0) {
            hashMap.put("bgcolor", zzI(searchAdRequestParcel.backgroundColor));
        }
        if (!(Color.alpha(searchAdRequestParcel.zztQ) == 0 || Color.alpha(searchAdRequestParcel.zztR) == 0)) {
            hashMap.put("gradientto", zzI(searchAdRequestParcel.zztQ));
            hashMap.put("gradientfrom", zzI(searchAdRequestParcel.zztR));
        }
        if (Color.alpha(searchAdRequestParcel.zztS) != 0) {
            hashMap.put("bcolor", zzI(searchAdRequestParcel.zztS));
        }
        hashMap.put("bthick", Integer.toString(searchAdRequestParcel.zztT));
        switch (searchAdRequestParcel.zztU) {
            case C1401R.styleable.AdsAttrs_adSize /*0*/:
                obj = NetworkHelper.NETWORK_OPERATOR_NONE;
                break;
            case C1401R.styleable.LoadingImageView_imageAspectRatio /*1*/:
                obj = "dashed";
                break;
            case C1401R.styleable.LoadingImageView_circleCrop /*2*/:
                obj = "dotted";
                break;
            case SfidaMessage.ACTIVITY_BYTE_LENGTH /*3*/:
                obj = "solid";
                break;
            default:
                obj = null;
                break;
        }
        if (obj != null) {
            hashMap.put("btype", obj);
        }
        switch (searchAdRequestParcel.zztV) {
            case C1401R.styleable.AdsAttrs_adSize /*0*/:
                obj2 = "light";
                break;
            case C1401R.styleable.LoadingImageView_imageAspectRatio /*1*/:
                obj2 = "medium";
                break;
            case C1401R.styleable.LoadingImageView_circleCrop /*2*/:
                obj2 = "dark";
                break;
        }
        if (obj2 != null) {
            hashMap.put("callbuttoncolor", obj2);
        }
        if (searchAdRequestParcel.zztW != null) {
            hashMap.put("channel", searchAdRequestParcel.zztW);
        }
        if (Color.alpha(searchAdRequestParcel.zztX) != 0) {
            hashMap.put("dcolor", zzI(searchAdRequestParcel.zztX));
        }
        if (searchAdRequestParcel.zztY != null) {
            hashMap.put("font", searchAdRequestParcel.zztY);
        }
        if (Color.alpha(searchAdRequestParcel.zztZ) != 0) {
            hashMap.put("hcolor", zzI(searchAdRequestParcel.zztZ));
        }
        hashMap.put("headersize", Integer.toString(searchAdRequestParcel.zzua));
        if (searchAdRequestParcel.zzub != null) {
            hashMap.put("q", searchAdRequestParcel.zzub);
        }
    }

    private static void zza(HashMap<String, Object> hashMap, zzgy com_google_android_gms_internal_zzgy, zza com_google_android_gms_internal_zzhb_zza) {
        hashMap.put("am", Integer.valueOf(com_google_android_gms_internal_zzgy.zzGs));
        hashMap.put("cog", zzx(com_google_android_gms_internal_zzgy.zzGt));
        hashMap.put("coh", zzx(com_google_android_gms_internal_zzgy.zzGu));
        if (!TextUtils.isEmpty(com_google_android_gms_internal_zzgy.zzGv)) {
            hashMap.put("carrier", com_google_android_gms_internal_zzgy.zzGv);
        }
        hashMap.put("gl", com_google_android_gms_internal_zzgy.zzGw);
        if (com_google_android_gms_internal_zzgy.zzGx) {
            hashMap.put("simulator", Integer.valueOf(1));
        }
        if (com_google_android_gms_internal_zzgy.zzGy) {
            hashMap.put("is_sidewinder", Integer.valueOf(1));
        }
        hashMap.put("ma", zzx(com_google_android_gms_internal_zzgy.zzGz));
        hashMap.put("sp", zzx(com_google_android_gms_internal_zzgy.zzGA));
        hashMap.put("hl", com_google_android_gms_internal_zzgy.zzGB);
        if (!TextUtils.isEmpty(com_google_android_gms_internal_zzgy.zzGC)) {
            hashMap.put("mv", com_google_android_gms_internal_zzgy.zzGC);
        }
        hashMap.put("muv", Integer.valueOf(com_google_android_gms_internal_zzgy.zzGD));
        if (com_google_android_gms_internal_zzgy.zzGE != -2) {
            hashMap.put("cnt", Integer.valueOf(com_google_android_gms_internal_zzgy.zzGE));
        }
        hashMap.put("gnt", Integer.valueOf(com_google_android_gms_internal_zzgy.zzGF));
        hashMap.put("pt", Integer.valueOf(com_google_android_gms_internal_zzgy.zzGG));
        hashMap.put("rm", Integer.valueOf(com_google_android_gms_internal_zzgy.zzGH));
        hashMap.put("riv", Integer.valueOf(com_google_android_gms_internal_zzgy.zzGI));
        Bundle bundle = new Bundle();
        bundle.putString("build", com_google_android_gms_internal_zzgy.zzGN);
        Bundle bundle2 = new Bundle();
        bundle2.putBoolean("is_charging", com_google_android_gms_internal_zzgy.zzGK);
        bundle2.putDouble("battery_level", com_google_android_gms_internal_zzgy.zzGJ);
        bundle.putBundle("battery", bundle2);
        bundle2 = new Bundle();
        bundle2.putInt("active_network_state", com_google_android_gms_internal_zzgy.zzGM);
        bundle2.putBoolean("active_network_metered", com_google_android_gms_internal_zzgy.zzGL);
        if (com_google_android_gms_internal_zzhb_zza != null) {
            Bundle bundle3 = new Bundle();
            bundle3.putInt("predicted_latency_micros", com_google_android_gms_internal_zzhb_zza.zzGS);
            bundle3.putLong("predicted_down_throughput_bps", com_google_android_gms_internal_zzhb_zza.zzGT);
            bundle3.putLong("predicted_up_throughput_bps", com_google_android_gms_internal_zzhb_zza.zzGU);
            bundle2.putBundle("predictions", bundle3);
        }
        bundle.putBundle("network", bundle2);
        hashMap.put("device", bundle);
    }

    private static void zza(HashMap<String, Object> hashMap, String str) {
        if (str != null) {
            Map hashMap2 = new HashMap();
            hashMap2.put("token", str);
            hashMap.put("pan", hashMap2);
        }
    }

    private static String zzc(NativeAdOptionsParcel nativeAdOptionsParcel) {
        switch (nativeAdOptionsParcel != null ? nativeAdOptionsParcel.zzwS : 0) {
            case C1401R.styleable.LoadingImageView_imageAspectRatio /*1*/:
                return "portrait";
            case C1401R.styleable.LoadingImageView_circleCrop /*2*/:
                return "landscape";
            default:
                return "any";
        }
    }

    private static UsageInfo zzd(Context context, String str) {
        UsageInfo usageInfo;
        Throwable th;
        GoogleApiClient build;
        try {
            build = new Builder(context).addApi(com.google.android.gms.appdatasearch.zza.zzPV).build();
            try {
                build.connect();
                Response response = (Response) com.google.android.gms.appdatasearch.zza.zzPW.zza(build, new Request.zza().zzL(true).zzby(str).zzlr()).await(1, TimeUnit.SECONDS);
                if (response == null || !response.getStatus().isSuccess()) {
                    zzb.zzaG("Fail to obtain recent context call");
                    if (build == null) {
                        return null;
                    }
                    build.disconnect();
                    return null;
                } else if (response.zzQB == null || response.zzQB.isEmpty()) {
                    zzb.zzaG("Fail to obtain recent context");
                    if (build == null) {
                        return null;
                    }
                    build.disconnect();
                    return null;
                } else {
                    usageInfo = (UsageInfo) response.zzQB.get(0);
                    if (build != null) {
                        build.disconnect();
                    }
                    return usageInfo;
                }
            } catch (SecurityException e) {
                try {
                    zzb.zzaH("Fail to get recent context");
                    if (build == null) {
                        build.disconnect();
                        usageInfo = null;
                    } else {
                        usageInfo = null;
                    }
                    return usageInfo;
                } catch (Throwable th2) {
                    th = th2;
                    if (build != null) {
                        build.disconnect();
                    }
                    throw th;
                }
            } catch (Throwable th3) {
                th = th3;
                if (build != null) {
                    build.disconnect();
                }
                throw th;
            }
        } catch (SecurityException e2) {
            build = null;
            zzb.zzaH("Fail to get recent context");
            if (build == null) {
                usageInfo = null;
            } else {
                build.disconnect();
                usageInfo = null;
            }
            return usageInfo;
        } catch (Throwable th4) {
            th = th4;
            build = null;
            if (build != null) {
                build.disconnect();
            }
            throw th;
        }
    }

    private static Integer zzx(boolean z) {
        return Integer.valueOf(z ? 1 : 0);
    }
}
