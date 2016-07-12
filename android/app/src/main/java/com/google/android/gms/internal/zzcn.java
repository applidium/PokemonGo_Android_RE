package com.google.android.gms.internal;

import android.graphics.drawable.Drawable;
import android.net.Uri;
import com.google.android.gms.ads.formats.NativeAd.Image;
import com.google.android.gms.ads.internal.util.client.zzb;
import com.google.android.gms.dynamic.zzd;
import com.google.android.gms.dynamic.zze;

@zzgr
public class zzcn extends Image {
    private final Drawable mDrawable;
    private final Uri mUri;
    private final double zzwn;
    private final zzcm zzxc;

    public zzcn(zzcm com_google_android_gms_internal_zzcm) {
        Drawable drawable;
        double d;
        Uri uri = null;
        this.zzxc = com_google_android_gms_internal_zzcm;
        try {
            zzd zzdv = this.zzxc.zzdv();
            if (zzdv != null) {
                drawable = (Drawable) zze.zzp(zzdv);
                this.mDrawable = drawable;
                uri = this.zzxc.getUri();
                this.mUri = uri;
                d = 1.0d;
                d = this.zzxc.getScale();
                this.zzwn = d;
            }
        } catch (Throwable e) {
            zzb.zzb("Failed to get drawable.", e);
        }
        Object obj = uri;
        this.mDrawable = drawable;
        try {
            uri = this.zzxc.getUri();
        } catch (Throwable e2) {
            zzb.zzb("Failed to get uri.", e2);
        }
        this.mUri = uri;
        d = 1.0d;
        try {
            d = this.zzxc.getScale();
        } catch (Throwable e3) {
            zzb.zzb("Failed to get scale.", e3);
        }
        this.zzwn = d;
    }

    public Drawable getDrawable() {
        return this.mDrawable;
    }

    public double getScale() {
        return this.zzwn;
    }

    public Uri getUri() {
        return this.mUri;
    }
}
