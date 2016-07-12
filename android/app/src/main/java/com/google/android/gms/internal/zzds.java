package com.google.android.gms.internal;

import android.content.Context;
import android.graphics.Color;
import android.os.SystemClock;
import android.text.TextUtils;
import android.view.MotionEvent;
import com.fasterxml.jackson.core.util.MinimalPrettyPrinter;
import com.google.android.gms.ads.internal.client.zzl;
import com.google.android.gms.ads.internal.overlay.zzk;
import com.google.android.gms.ads.internal.util.client.zzb;
import com.upsight.android.internal.persistence.PersistenceModule;
import java.util.Map;
import java.util.WeakHashMap;
import org.json.JSONObject;

@zzgr
public final class zzds implements zzdk {
    private final Map<zziz, Integer> zzxX;

    public zzds() {
        this.zzxX = new WeakHashMap();
    }

    private static int zza(Context context, Map<String, String> map, String str, int i) {
        String str2 = (String) map.get(str);
        if (str2 != null) {
            try {
                i = zzl.zzcF().zzb(context, Integer.parseInt(str2));
            } catch (NumberFormatException e) {
                zzb.zzaH("Could not parse " + str + " in a video GMSG: " + str2);
            }
        }
        return i;
    }

    public void zza(zziz com_google_android_gms_internal_zziz, Map<String, String> map) {
        String str = (String) map.get("action");
        if (str == null) {
            zzb.zzaH("Action missing from video GMSG.");
            return;
        }
        if (zzb.zzN(3)) {
            JSONObject jSONObject = new JSONObject(map);
            jSONObject.remove("google.afma.Notify_dt");
            zzb.zzaF("Video GMSG: " + str + MinimalPrettyPrinter.DEFAULT_ROOT_VALUE_SEPARATOR + jSONObject.toString());
        }
        String str2;
        if (PersistenceModule.DATA_STORE_BACKGROUND.equals(str)) {
            str2 = (String) map.get("color");
            if (TextUtils.isEmpty(str2)) {
                zzb.zzaH("Color parameter missing from color video GMSG.");
                return;
            }
            try {
                int parseColor = Color.parseColor(str2);
                zziy zzhl = com_google_android_gms_internal_zziz.zzhl();
                if (zzhl != null) {
                    zzk zzgX = zzhl.zzgX();
                    if (zzgX != null) {
                        zzgX.setBackgroundColor(parseColor);
                        return;
                    }
                }
                this.zzxX.put(com_google_android_gms_internal_zziz, Integer.valueOf(parseColor));
                return;
            } catch (IllegalArgumentException e) {
                zzb.zzaH("Invalid color parameter in video GMSG.");
                return;
            }
        }
        zziy zzhl2 = com_google_android_gms_internal_zziz.zzhl();
        if (zzhl2 == null) {
            zzb.zzaH("Could not get underlay container for a video GMSG.");
            return;
        }
        boolean equals = "new".equals(str);
        boolean equals2 = "position".equals(str);
        int zza;
        int zza2;
        if (equals || equals2) {
            int parseInt;
            Context context = com_google_android_gms_internal_zziz.getContext();
            int zza3 = zza(context, map, "x", 0);
            zza = zza(context, map, "y", 0);
            zza2 = zza(context, map, "w", -1);
            int zza4 = zza(context, map, "h", -1);
            try {
                parseInt = Integer.parseInt((String) map.get("player"));
            } catch (NumberFormatException e2) {
                parseInt = 0;
            }
            if (equals && zzhl2.zzgX() == null) {
                zzhl2.zza(zza3, zza, zza2, zza4, parseInt);
                if (this.zzxX.containsKey(com_google_android_gms_internal_zziz)) {
                    zza3 = ((Integer) this.zzxX.get(com_google_android_gms_internal_zziz)).intValue();
                    zzk zzgX2 = zzhl2.zzgX();
                    zzgX2.setBackgroundColor(zza3);
                    zzgX2.zzeW();
                    return;
                }
                return;
            }
            zzhl2.zze(zza3, zza, zza2, zza4);
            return;
        }
        zzk zzgX3 = zzhl2.zzgX();
        if (zzgX3 == null) {
            zzk.zzd(com_google_android_gms_internal_zziz);
        } else if ("click".equals(str)) {
            Context context2 = com_google_android_gms_internal_zziz.getContext();
            zza = zza(context2, map, "x", 0);
            zza2 = zza(context2, map, "y", 0);
            long uptimeMillis = SystemClock.uptimeMillis();
            MotionEvent obtain = MotionEvent.obtain(uptimeMillis, uptimeMillis, 0, (float) zza, (float) zza2, 0);
            zzgX3.zzd(obtain);
            obtain.recycle();
        } else if ("currentTime".equals(str)) {
            str2 = (String) map.get("time");
            if (str2 == null) {
                zzb.zzaH("Time parameter missing from currentTime video GMSG.");
                return;
            }
            try {
                zzgX3.seekTo((int) (Float.parseFloat(str2) * 1000.0f));
            } catch (NumberFormatException e3) {
                zzb.zzaH("Could not parse time parameter from currentTime video GMSG: " + str2);
            }
        } else if ("hide".equals(str)) {
            zzgX3.setVisibility(4);
        } else if ("load".equals(str)) {
            zzgX3.zzeV();
        } else if ("mimetype".equals(str)) {
            zzgX3.setMimeType((String) map.get("mimetype"));
        } else if ("muted".equals(str)) {
            if (Boolean.parseBoolean((String) map.get("muted"))) {
                zzgX3.zzex();
            } else {
                zzgX3.zzey();
            }
        } else if ("pause".equals(str)) {
            zzgX3.pause();
        } else if ("play".equals(str)) {
            zzgX3.play();
        } else if ("show".equals(str)) {
            zzgX3.setVisibility(0);
        } else if ("src".equals(str)) {
            zzgX3.zzan((String) map.get("src"));
        } else if ("volume".equals(str)) {
            str2 = (String) map.get("volume");
            if (str2 == null) {
                zzb.zzaH("Level parameter missing from volume video GMSG.");
                return;
            }
            try {
                zzgX3.zza(Float.parseFloat(str2));
            } catch (NumberFormatException e4) {
                zzb.zzaH("Could not parse volume parameter from volume video GMSG: " + str2);
            }
        } else if ("watermark".equals(str)) {
            zzgX3.zzeW();
        } else {
            zzb.zzaH("Unknown video action: " + str);
        }
    }
}
