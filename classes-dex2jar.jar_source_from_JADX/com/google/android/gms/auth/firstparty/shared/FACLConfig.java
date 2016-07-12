package com.google.android.gms.auth.firstparty.shared;

import android.os.Parcel;
import android.text.TextUtils;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.common.internal.zzw;

public class FACLConfig implements SafeParcelable {
    public static final zza CREATOR;
    final int version;
    boolean zzTA;
    boolean zzTB;
    boolean zzTC;
    boolean zzTx;
    String zzTy;
    boolean zzTz;

    static {
        CREATOR = new zza();
    }

    FACLConfig(int i, boolean z, String str, boolean z2, boolean z3, boolean z4, boolean z5) {
        this.version = i;
        this.zzTx = z;
        this.zzTy = str;
        this.zzTz = z2;
        this.zzTA = z3;
        this.zzTB = z4;
        this.zzTC = z5;
    }

    public int describeContents() {
        return 0;
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof FACLConfig)) {
            return false;
        }
        FACLConfig fACLConfig = (FACLConfig) obj;
        return this.zzTx == fACLConfig.zzTx && TextUtils.equals(this.zzTy, fACLConfig.zzTy) && this.zzTz == fACLConfig.zzTz && this.zzTA == fACLConfig.zzTA && this.zzTB == fACLConfig.zzTB && this.zzTC == fACLConfig.zzTC;
    }

    public int hashCode() {
        return zzw.hashCode(Boolean.valueOf(this.zzTx), this.zzTy, Boolean.valueOf(this.zzTz), Boolean.valueOf(this.zzTA), Boolean.valueOf(this.zzTB), Boolean.valueOf(this.zzTC));
    }

    public void writeToParcel(Parcel parcel, int i) {
        zza.zza(this, parcel, i);
    }
}
