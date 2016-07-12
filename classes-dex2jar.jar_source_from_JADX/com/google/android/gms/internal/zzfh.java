package com.google.android.gms.internal;

import com.google.android.gms.ads.internal.util.client.zzb;
import com.voxelbusters.nativeplugins.defines.Keys;
import com.voxelbusters.nativeplugins.defines.Keys.GameServices;
import org.json.JSONObject;
import spacemadness.com.lunarconsole.BuildConfig;

@zzgr
public class zzfh {
    private final String zzAK;
    private final zziz zzoM;

    public zzfh(zziz com_google_android_gms_internal_zziz) {
        this(com_google_android_gms_internal_zziz, BuildConfig.FLAVOR);
    }

    public zzfh(zziz com_google_android_gms_internal_zziz, String str) {
        this.zzoM = com_google_android_gms_internal_zziz;
        this.zzAK = str;
    }

    public void zza(int i, int i2, int i3, int i4, float f, int i5) {
        try {
            this.zzoM.zzb("onScreenInfoChanged", new JSONObject().put("width", i).put("height", i2).put("maxSizeWidth", i3).put("maxSizeHeight", i4).put("density", (double) f).put("rotation", i5));
        } catch (Throwable e) {
            zzb.zzb("Error occured while obtaining screen information.", e);
        }
    }

    public void zzak(String str) {
        try {
            this.zzoM.zzb("onError", new JSONObject().put(Keys.MESSAGE, str).put("action", this.zzAK));
        } catch (Throwable e) {
            zzb.zzb("Error occurred while dispatching error event.", e);
        }
    }

    public void zzal(String str) {
        try {
            this.zzoM.zzb("onReadyEventReceived", new JSONObject().put("js", str));
        } catch (Throwable e) {
            zzb.zzb("Error occured while dispatching ready Event.", e);
        }
    }

    public void zzam(String str) {
        try {
            this.zzoM.zzb("onStateChanged", new JSONObject().put(GameServices.STATE, str));
        } catch (Throwable e) {
            zzb.zzb("Error occured while dispatching state change.", e);
        }
    }

    public void zzb(int i, int i2, int i3, int i4) {
        try {
            this.zzoM.zzb("onSizeChanged", new JSONObject().put("x", i).put("y", i2).put("width", i3).put("height", i4));
        } catch (Throwable e) {
            zzb.zzb("Error occured while dispatching size change.", e);
        }
    }

    public void zzc(int i, int i2, int i3, int i4) {
        try {
            this.zzoM.zzb("onDefaultPositionReceived", new JSONObject().put("x", i).put("y", i2).put("width", i3).put("height", i4));
        } catch (Throwable e) {
            zzb.zzb("Error occured while dispatching default position.", e);
        }
    }
}
