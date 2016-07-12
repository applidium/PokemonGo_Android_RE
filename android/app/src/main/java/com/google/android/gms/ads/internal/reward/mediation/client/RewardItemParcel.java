package com.google.android.gms.ads.internal.reward.mediation.client;

import android.os.Parcel;
import com.google.android.gms.ads.reward.RewardItem;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.internal.zzgr;

@zzgr
public final class RewardItemParcel implements SafeParcelable {
    public static final zzc CREATOR;
    public final String type;
    public final int versionCode;
    public final int zzHv;

    static {
        CREATOR = new zzc();
    }

    public RewardItemParcel(int i, String str, int i2) {
        this.versionCode = i;
        this.type = str;
        this.zzHv = i2;
    }

    public RewardItemParcel(RewardItem rewardItem) {
        this(1, rewardItem.getType(), rewardItem.getAmount());
    }

    public RewardItemParcel(String str, int i) {
        this(1, str, i);
    }

    public int describeContents() {
        return 0;
    }

    public void writeToParcel(Parcel parcel, int i) {
        zzc.zza(this, parcel, i);
    }
}
