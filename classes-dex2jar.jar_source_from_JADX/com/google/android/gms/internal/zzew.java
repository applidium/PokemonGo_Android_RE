package com.google.android.gms.internal;

import android.os.Bundle;
import android.view.View;
import com.google.android.gms.ads.formats.NativeAd.Image;
import com.google.android.gms.ads.internal.formats.zzc;
import com.google.android.gms.ads.mediation.NativeContentAdMapper;
import com.google.android.gms.dynamic.zzd;
import com.google.android.gms.dynamic.zze;
import com.google.android.gms.internal.zzer.zza;
import java.util.ArrayList;
import java.util.List;

@zzgr
public class zzew extends zza {
    private final NativeContentAdMapper zzzO;

    public zzew(NativeContentAdMapper nativeContentAdMapper) {
        this.zzzO = nativeContentAdMapper;
    }

    public String getAdvertiser() {
        return this.zzzO.getAdvertiser();
    }

    public String getBody() {
        return this.zzzO.getBody();
    }

    public String getCallToAction() {
        return this.zzzO.getCallToAction();
    }

    public Bundle getExtras() {
        return this.zzzO.getExtras();
    }

    public String getHeadline() {
        return this.zzzO.getHeadline();
    }

    public List getImages() {
        List<Image> images = this.zzzO.getImages();
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
        return this.zzzO.getOverrideClickHandling();
    }

    public boolean getOverrideImpressionRecording() {
        return this.zzzO.getOverrideImpressionRecording();
    }

    public void recordImpression() {
        this.zzzO.recordImpression();
    }

    public void zzc(zzd com_google_android_gms_dynamic_zzd) {
        this.zzzO.handleClick((View) zze.zzp(com_google_android_gms_dynamic_zzd));
    }

    public void zzd(zzd com_google_android_gms_dynamic_zzd) {
        this.zzzO.trackView((View) zze.zzp(com_google_android_gms_dynamic_zzd));
    }

    public zzcm zzdA() {
        Image logo = this.zzzO.getLogo();
        return logo != null ? new zzc(logo.getDrawable(), logo.getUri(), logo.getScale()) : null;
    }
}
