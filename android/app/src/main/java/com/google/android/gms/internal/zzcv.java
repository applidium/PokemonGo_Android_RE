package com.google.android.gms.internal;

import com.google.android.gms.ads.formats.NativeAd.Image;
import com.google.android.gms.ads.formats.NativeCustomTemplateAd;
import com.google.android.gms.ads.internal.util.client.zzb;
import java.util.List;

@zzgr
public class zzcv implements NativeCustomTemplateAd {
    private final zzcu zzxi;

    public zzcv(zzcu com_google_android_gms_internal_zzcu) {
        this.zzxi = com_google_android_gms_internal_zzcu;
    }

    public List<String> getAvailableAssetNames() {
        try {
            return this.zzxi.getAvailableAssetNames();
        } catch (Throwable e) {
            zzb.zzb("Failed to get available asset names.", e);
            return null;
        }
    }

    public String getCustomTemplateId() {
        try {
            return this.zzxi.getCustomTemplateId();
        } catch (Throwable e) {
            zzb.zzb("Failed to get custom template id.", e);
            return null;
        }
    }

    public Image getImage(String str) {
        try {
            zzcm zzV = this.zzxi.zzV(str);
            if (zzV != null) {
                return new zzcn(zzV);
            }
        } catch (Throwable e) {
            zzb.zzb("Failed to get image.", e);
        }
        return null;
    }

    public CharSequence getText(String str) {
        try {
            return this.zzxi.zzU(str);
        } catch (Throwable e) {
            zzb.zzb("Failed to get string.", e);
            return null;
        }
    }

    public void performClick(String str) {
        try {
            this.zzxi.performClick(str);
        } catch (Throwable e) {
            zzb.zzb("Failed to perform click.", e);
        }
    }

    public void recordImpression() {
        try {
            this.zzxi.recordImpression();
        } catch (Throwable e) {
            zzb.zzb("Failed to record impression.", e);
        }
    }
}
