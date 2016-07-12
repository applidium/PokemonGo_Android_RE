package com.google.android.gms.auth.firstparty.shared;

import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import java.util.List;

public class ScopeDetail implements SafeParcelable {
    public static final zzc CREATOR;
    String description;
    final int version;
    String zzTH;
    String zzTI;
    String zzTJ;
    String zzTK;
    List<String> zzTL;
    public FACLData zzTM;

    static {
        CREATOR = new zzc();
    }

    ScopeDetail(int i, String str, String str2, String str3, String str4, String str5, List<String> list, FACLData fACLData) {
        this.version = i;
        this.description = str;
        this.zzTH = str2;
        this.zzTI = str3;
        this.zzTJ = str4;
        this.zzTK = str5;
        this.zzTL = list;
        this.zzTM = fACLData;
    }

    public int describeContents() {
        return 0;
    }

    public void writeToParcel(Parcel parcel, int i) {
        zzc.zza(this, parcel, i);
    }
}
