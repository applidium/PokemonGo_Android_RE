package com.google.android.gms.internal;

import android.content.ComponentName;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.net.Uri;
import android.support.v4.view.accessibility.AccessibilityNodeInfoCompat;
import android.text.TextUtils;
import com.google.android.gms.ads.internal.overlay.zzd;
import com.google.android.gms.ads.internal.util.client.zzb;
import java.util.HashMap;
import java.util.Map;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

@zzgr
public final class zzdj {
    public static final zzdk zzxA;
    public static final zzdk zzxo;
    public static final zzdk zzxp;
    public static final zzdk zzxq;
    public static final zzdk zzxr;
    public static final zzdk zzxs;
    public static final zzdk zzxt;
    public static final zzdk zzxu;
    public static final zzdk zzxv;
    public static final zzdk zzxw;
    public static final zzdk zzxx;
    public static final zzdk zzxy;
    public static final zzdk zzxz;

    /* renamed from: com.google.android.gms.internal.zzdj.1 */
    static final class C04951 implements zzdk {
        C04951() {
        }

        public void zza(zziz com_google_android_gms_internal_zziz, Map<String, String> map) {
        }
    }

    /* renamed from: com.google.android.gms.internal.zzdj.2 */
    static final class C04962 implements zzdk {
        C04962() {
        }

        public void zza(zziz com_google_android_gms_internal_zziz, Map<String, String> map) {
            if (((Boolean) zzby.zzvs.get()).booleanValue()) {
                com_google_android_gms_internal_zziz.zzE(!Boolean.parseBoolean((String) map.get("disabled")));
            }
        }
    }

    /* renamed from: com.google.android.gms.internal.zzdj.3 */
    static final class C04973 implements zzdk {
        C04973() {
        }

        public void zza(zziz com_google_android_gms_internal_zziz, Map<String, String> map) {
            String str = (String) map.get("urls");
            if (TextUtils.isEmpty(str)) {
                zzb.zzaH("URLs missing in canOpenURLs GMSG.");
                return;
            }
            String[] split = str.split(",");
            Map hashMap = new HashMap();
            PackageManager packageManager = com_google_android_gms_internal_zziz.getContext().getPackageManager();
            for (String str2 : split) {
                String[] split2 = str2.split(";", 2);
                hashMap.put(str2, Boolean.valueOf(packageManager.resolveActivity(new Intent(split2.length > 1 ? split2[1].trim() : "android.intent.action.VIEW", Uri.parse(split2[0].trim())), AccessibilityNodeInfoCompat.ACTION_CUT) != null));
            }
            com_google_android_gms_internal_zziz.zzb("openableURLs", hashMap);
        }
    }

    /* renamed from: com.google.android.gms.internal.zzdj.4 */
    static final class C04984 implements zzdk {
        C04984() {
        }

        public void zza(zziz com_google_android_gms_internal_zziz, Map<String, String> map) {
            PackageManager packageManager = com_google_android_gms_internal_zziz.getContext().getPackageManager();
            try {
                try {
                    JSONArray jSONArray = new JSONObject((String) map.get(ModelColumns.DATA)).getJSONArray("intents");
                    JSONObject jSONObject = new JSONObject();
                    for (int i = 0; i < jSONArray.length(); i++) {
                        try {
                            JSONObject jSONObject2 = jSONArray.getJSONObject(i);
                            String optString = jSONObject2.optString(TriggerIfContentAvailable.ID);
                            Object optString2 = jSONObject2.optString("u");
                            Object optString3 = jSONObject2.optString("i");
                            Object optString4 = jSONObject2.optString("m");
                            Object optString5 = jSONObject2.optString("p");
                            Object optString6 = jSONObject2.optString("c");
                            jSONObject2.optString("f");
                            jSONObject2.optString("e");
                            Intent intent = new Intent();
                            if (!TextUtils.isEmpty(optString2)) {
                                intent.setData(Uri.parse(optString2));
                            }
                            if (!TextUtils.isEmpty(optString3)) {
                                intent.setAction(optString3);
                            }
                            if (!TextUtils.isEmpty(optString4)) {
                                intent.setType(optString4);
                            }
                            if (!TextUtils.isEmpty(optString5)) {
                                intent.setPackage(optString5);
                            }
                            if (!TextUtils.isEmpty(optString6)) {
                                String[] split = optString6.split("/", 2);
                                if (split.length == 2) {
                                    intent.setComponent(new ComponentName(split[0], split[1]));
                                }
                            }
                            try {
                                jSONObject.put(optString, packageManager.resolveActivity(intent, AccessibilityNodeInfoCompat.ACTION_CUT) != null);
                            } catch (Throwable e) {
                                zzb.zzb("Error constructing openable urls response.", e);
                            }
                        } catch (Throwable e2) {
                            zzb.zzb("Error parsing the intent data.", e2);
                        }
                    }
                    com_google_android_gms_internal_zziz.zzb("openableIntents", jSONObject);
                } catch (JSONException e3) {
                    com_google_android_gms_internal_zziz.zzb("openableIntents", new JSONObject());
                }
            } catch (JSONException e4) {
                com_google_android_gms_internal_zziz.zzb("openableIntents", new JSONObject());
            }
        }
    }

    /* renamed from: com.google.android.gms.internal.zzdj.5 */
    static final class C04995 implements zzdk {
        C04995() {
        }

        public void zza(zziz com_google_android_gms_internal_zziz, Map<String, String> map) {
            String str = (String) map.get("u");
            if (str == null) {
                zzb.zzaH("URL missing from click GMSG.");
                return;
            }
            Uri zza;
            Uri parse = Uri.parse(str);
            try {
                zzan zzhg = com_google_android_gms_internal_zziz.zzhg();
                if (zzhg != null && zzhg.zzb(parse)) {
                    zza = zzhg.zza(parse, com_google_android_gms_internal_zziz.getContext());
                    new zzij(com_google_android_gms_internal_zziz.getContext(), com_google_android_gms_internal_zziz.zzhh().zzJu, zza.toString()).zzgz();
                }
            } catch (zzao e) {
                zzb.zzaH("Unable to append parameter to URL: " + str);
            }
            zza = parse;
            new zzij(com_google_android_gms_internal_zziz.getContext(), com_google_android_gms_internal_zziz.zzhh().zzJu, zza.toString()).zzgz();
        }
    }

    /* renamed from: com.google.android.gms.internal.zzdj.6 */
    static final class C05006 implements zzdk {
        C05006() {
        }

        public void zza(zziz com_google_android_gms_internal_zziz, Map<String, String> map) {
            zzd zzhc = com_google_android_gms_internal_zziz.zzhc();
            if (zzhc != null) {
                zzhc.close();
                return;
            }
            zzhc = com_google_android_gms_internal_zziz.zzhd();
            if (zzhc != null) {
                zzhc.close();
            } else {
                zzb.zzaH("A GMSG tried to close something that wasn't an overlay.");
            }
        }
    }

    /* renamed from: com.google.android.gms.internal.zzdj.7 */
    static final class C05017 implements zzdk {
        C05017() {
        }

        public void zza(zziz com_google_android_gms_internal_zziz, Map<String, String> map) {
            com_google_android_gms_internal_zziz.zzD("1".equals(map.get("custom_close")));
        }
    }

    /* renamed from: com.google.android.gms.internal.zzdj.8 */
    static final class C05028 implements zzdk {
        C05028() {
        }

        public void zza(zziz com_google_android_gms_internal_zziz, Map<String, String> map) {
            String str = (String) map.get("u");
            if (str == null) {
                zzb.zzaH("URL missing from httpTrack GMSG.");
            } else {
                new zzij(com_google_android_gms_internal_zziz.getContext(), com_google_android_gms_internal_zziz.zzhh().zzJu, str).zzgz();
            }
        }
    }

    /* renamed from: com.google.android.gms.internal.zzdj.9 */
    static final class C05039 implements zzdk {
        C05039() {
        }

        public void zza(zziz com_google_android_gms_internal_zziz, Map<String, String> map) {
            zzb.zzaG("Received log message: " + ((String) map.get("string")));
        }
    }

    static {
        zzxo = new C04951();
        zzxp = new C04973();
        zzxq = new C04984();
        zzxr = new C04995();
        zzxs = new C05006();
        zzxt = new C05017();
        zzxu = new C05028();
        zzxv = new C05039();
        zzxw = new zzdk() {
            public void zza(zziz com_google_android_gms_internal_zziz, Map<String, String> map) {
                String str = (String) map.get("ty");
                String str2 = (String) map.get("td");
                try {
                    int parseInt = Integer.parseInt((String) map.get("tx"));
                    int parseInt2 = Integer.parseInt(str);
                    int parseInt3 = Integer.parseInt(str2);
                    zzan zzhg = com_google_android_gms_internal_zziz.zzhg();
                    if (zzhg != null) {
                        zzhg.zzab().zza(parseInt, parseInt2, parseInt3);
                    }
                } catch (NumberFormatException e) {
                    zzb.zzaH("Could not parse touch parameters from gmsg.");
                }
            }
        };
        zzxx = new C04962();
        zzxy = new zzds();
        zzxz = new zzdw();
        zzxA = new zzdi();
    }
}
