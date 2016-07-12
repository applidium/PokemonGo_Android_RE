package com.google.android.gms.internal;

import android.os.Bundle;
import android.view.View;
import com.google.android.gms.ads.formats.NativeAd.Image;
import com.google.android.gms.ads.internal.formats.zzc;
import com.google.android.gms.ads.mediation.NativeAppInstallAdMapper;
import com.google.android.gms.dynamic.zzd;
import com.google.android.gms.dynamic.zze;
import com.google.android.gms.internal.zzeq.zza;
import java.util.ArrayList;
import java.util.List;

@zzgr
public class zzev extends zza {
    private final NativeAppInstallAdMapper zzzN;

    public zzev(NativeAppInstallAdMapper nativeAppInstallAdMapper) {
        this.zzzN = nativeAppInstallAdMapper;
    }

    public String getBody() {
        return this.zzzN.getBody();
    }

    public String getCallToAction() {
        return this.zzzN.getCallToAction();
    }

    public Bundle getExtras() {
        return this.zzzN.getExtras();
    }

    public String getHeadline() {
        return this.zzzN.getHeadline();
    }

    public List getImages() {
        List<Image> images = this.zzzN.getImages();
        if (images == null) {
            return null;
        }
        List arrayList = new ArrayList();
        for (Image image : images) {
            arrayList.add(new zzc(image.getDrawable(), image.getUri(), image.getScale()));
        }
        return arrayList;
    }

    public boolean getOverrideClickHandling() {
        return this.zzzN.getOverrideClickHandling();
    }

    public boolean getOverrideImpressionRecording() {
        return this.zzzN.getOverrideImpressionRecording();
    }

    public String getPrice() {
        return this.zzzN.getPrice();
    }

    public double getStarRating() {
        return this.zzzN.getStarRating();
    }

    public String getStore() {
        return this.zzzN.getStore();
    }

    public void recordImpression() {
        this.zzzN.recordImpression();
    }

    public void zzc(zzd com_google_android_gms_dynamic_zzd) {
        this.zzzN.handleClick((View) zze.zzp(com_google_android_gms_dynamic_zzd));
    }

    public void zzd(zzd com_google_android_gms_dynamic_zzd) {
        this.zzzN.trackView((View) zze.zzp(com_google_android_gms_dynamic_zzd));
    }

    public zzcm zzdw() {
        Image icon = this.zzzN.getIcon();
        return icon != null ? new zzc(icon.getDrawable(), icon.getUri(), icon.getScale()) : null;
    }
}
