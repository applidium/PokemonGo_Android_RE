package com.google.android.gms.ads.internal.reward.client;

import android.os.Parcel;
import com.google.android.gms.ads.internal.client.AdRequestParcel;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.internal.zzgr;

@zzgr
public final class RewardedVideoAdRequestParcel implements SafeParcelable {
    public static final zzh CREATOR;
    public final int versionCode;
    public final AdRequestParcel zzEn;
    public final String zzqh;

    static {
        CREATOR = new zzh();
    }

    public RewardedVideoAdRequestParcel(int i, AdRequestParcel adRequestParcel, String str) {
        this.versionCode = i;
        this.zzEn = adRequestParcel;
        this.zzqh = str;
    }

    public RewardedVideoAdRequestParcel(AdRequestParcel adRequestParcel, String str) {
        this(1, adRequestParcel, str);
    }

    public int describeContents() {
        return 0;
    }

    public void writeToParcel(Parcel parcel, int i) {
        zzh.zza(this, parcel, i);
    }
}
