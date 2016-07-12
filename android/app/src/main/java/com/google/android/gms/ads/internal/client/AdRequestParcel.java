package com.google.android.gms.ads.internal.client;

import android.location.Location;
import android.os.Bundle;
import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.common.internal.zzw;
import com.google.android.gms.internal.zzgr;
import java.util.List;

@zzgr
public final class AdRequestParcel implements SafeParcelable {
    public static final zzg CREATOR;
    public final Bundle extras;
    public final int versionCode;
    public final long zzsB;
    public final int zzsC;
    public final List<String> zzsD;
    public final boolean zzsE;
    public final int zzsF;
    public final boolean zzsG;
    public final String zzsH;
    public final SearchAdRequestParcel zzsI;
    public final Location zzsJ;
    public final String zzsK;
    public final Bundle zzsL;
    public final Bundle zzsM;
    public final List<String> zzsN;
    public final String zzsO;
    public final String zzsP;

    static {
        CREATOR = new zzg();
    }

    public AdRequestParcel(int i, long j, Bundle bundle, int i2, List<String> list, boolean z, int i3, boolean z2, String str, SearchAdRequestParcel searchAdRequestParcel, Location location, String str2, Bundle bundle2, Bundle bundle3, List<String> list2, String str3, String str4) {
        this.versionCode = i;
        this.zzsB = j;
        if (bundle == null) {
            bundle = new Bundle();
        }
        this.extras = bundle;
        this.zzsC = i2;
        this.zzsD = list;
        this.zzsE = z;
        this.zzsF = i3;
        this.zzsG = z2;
        this.zzsH = str;
        this.zzsI = searchAdRequestParcel;
        this.zzsJ = location;
        this.zzsK = str2;
        this.zzsL = bundle2;
        this.zzsM = bundle3;
        this.zzsN = list2;
        this.zzsO = str3;
        this.zzsP = str4;
    }

    public int describeContents() {
        return 0;
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof AdRequestParcel)) {
            return false;
        }
        AdRequestParcel adRequestParcel = (AdRequestParcel) obj;
        return this.versionCode == adRequestParcel.versionCode && this.zzsB == adRequestParcel.zzsB && zzw.equal(this.extras, adRequestParcel.extras) && this.zzsC == adRequestParcel.zzsC && zzw.equal(this.zzsD, adRequestParcel.zzsD) && this.zzsE == adRequestParcel.zzsE && this.zzsF == adRequestParcel.zzsF && this.zzsG == adRequestParcel.zzsG && zzw.equal(this.zzsH, adRequestParcel.zzsH) && zzw.equal(this.zzsI, adRequestParcel.zzsI) && zzw.equal(this.zzsJ, adRequestParcel.zzsJ) && zzw.equal(this.zzsK, adRequestParcel.zzsK) && zzw.equal(this.zzsL, adRequestParcel.zzsL) && zzw.equal(this.zzsM, adRequestParcel.zzsM) && zzw.equal(this.zzsN, adRequestParcel.zzsN) && zzw.equal(this.zzsO, adRequestParcel.zzsO) && zzw.equal(this.zzsP, adRequestParcel.zzsP);
    }

    public int hashCode() {
        return zzw.hashCode(Integer.valueOf(this.versionCode), Long.valueOf(this.zzsB), this.extras, Integer.valueOf(this.zzsC), this.zzsD, Boolean.valueOf(this.zzsE), Integer.valueOf(this.zzsF), Boolean.valueOf(this.zzsG), this.zzsH, this.zzsI, this.zzsJ, this.zzsK, this.zzsL, this.zzsM, this.zzsN, this.zzsO, this.zzsP);
    }

    public void writeToParcel(Parcel parcel, int i) {
        zzg.zza(this, parcel, i);
    }
}
