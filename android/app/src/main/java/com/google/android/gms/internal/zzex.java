package com.google.android.gms.internal;

import android.location.Location;
import com.google.android.gms.ads.formats.NativeAdOptions;
import com.google.android.gms.ads.formats.NativeAdOptions.Builder;
import com.google.android.gms.ads.internal.formats.NativeAdOptionsParcel;
import com.google.android.gms.ads.mediation.NativeMediationAdRequest;
import java.util.Date;
import java.util.List;
import java.util.Set;

@zzgr
public final class zzex implements NativeMediationAdRequest {
    private final Date zzaT;
    private final Set<String> zzaV;
    private final boolean zzaW;
    private final Location zzaX;
    private final NativeAdOptionsParcel zzoY;
    private final List<String> zzoZ;
    private final int zzsR;
    private final int zzzI;

    public zzex(Date date, int i, Set<String> set, Location location, boolean z, int i2, NativeAdOptionsParcel nativeAdOptionsParcel, List<String> list) {
        this.zzaT = date;
        this.zzsR = i;
        this.zzaV = set;
        this.zzaX = location;
        this.zzaW = z;
        this.zzzI = i2;
        this.zzoY = nativeAdOptionsParcel;
        this.zzoZ = list;
    }

    public Date getBirthday() {
        return this.zzaT;
    }

    public int getGender() {
        return this.zzsR;
    }

    public Set<String> getKeywords() {
        return this.zzaV;
    }

    public Location getLocation() {
        return this.zzaX;
    }

    public NativeAdOptions getNativeAdOptions() {
        return this.zzoY == null ? null : new Builder().setReturnUrlsForImageAssets(this.zzoY.zzwR).setImageOrientation(this.zzoY.zzwS).setRequestMultipleImages(this.zzoY.zzwT).build();
    }

    public boolean isAppInstallAdRequested() {
        return this.zzoZ != null && this.zzoZ.contains("2");
    }

    public boolean isContentAdRequested() {
        return this.zzoZ != null && this.zzoZ.contains("1");
    }

    public boolean isTesting() {
        return this.zzaW;
    }

    public int taggedForChildDirectedTreatment() {
        return this.zzzI;
    }
}
