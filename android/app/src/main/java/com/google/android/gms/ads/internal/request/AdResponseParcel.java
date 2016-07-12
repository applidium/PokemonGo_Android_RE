package com.google.android.gms.ads.internal.request;

import android.os.Parcel;
import android.text.TextUtils;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.internal.zzgr;
import java.util.Collections;
import java.util.List;

@zzgr
public final class AdResponseParcel implements SafeParcelable {
    public static final zzh CREATOR;
    public String body;
    public final int errorCode;
    public final int orientation;
    public final int versionCode;
    public final String zzBF;
    public final long zzEJ;
    public final boolean zzEK;
    public final long zzEL;
    public final List<String> zzEM;
    public final String zzEN;
    public final long zzEO;
    public final String zzEP;
    public final boolean zzEQ;
    public final String zzER;
    public final String zzES;
    public final boolean zzET;
    public final boolean zzEU;
    public final boolean zzEV;
    public final int zzEW;
    public LargeParcelTeleporter zzEX;
    public String zzEY;
    public String zzEZ;
    public final boolean zzEv;
    public final boolean zzth;
    public boolean zzti;
    public final List<String> zzyY;
    public final List<String> zzyZ;
    public final long zzzc;
    private AdRequestInfoParcel zzzz;

    static {
        CREATOR = new zzh();
    }

    public AdResponseParcel(int i) {
        this(14, null, null, null, i, null, -1, false, -1, null, -1, -1, null, -1, null, false, null, null, false, false, false, true, false, 0, null, null, null, false);
    }

    public AdResponseParcel(int i, long j) {
        this(14, null, null, null, i, null, -1, false, -1, null, j, -1, null, -1, null, false, null, null, false, false, false, true, false, 0, null, null, null, false);
    }

    AdResponseParcel(int i, String str, String str2, List<String> list, int i2, List<String> list2, long j, boolean z, long j2, List<String> list3, long j3, int i3, String str3, long j4, String str4, boolean z2, String str5, String str6, boolean z3, boolean z4, boolean z5, boolean z6, boolean z7, int i4, LargeParcelTeleporter largeParcelTeleporter, String str7, String str8, boolean z8) {
        this.versionCode = i;
        this.zzBF = str;
        this.body = str2;
        this.zzyY = list != null ? Collections.unmodifiableList(list) : null;
        this.errorCode = i2;
        this.zzyZ = list2 != null ? Collections.unmodifiableList(list2) : null;
        this.zzEJ = j;
        this.zzEK = z;
        this.zzEL = j2;
        this.zzEM = list3 != null ? Collections.unmodifiableList(list3) : null;
        this.zzzc = j3;
        this.orientation = i3;
        this.zzEN = str3;
        this.zzEO = j4;
        this.zzEP = str4;
        this.zzEQ = z2;
        this.zzER = str5;
        this.zzES = str6;
        this.zzET = z3;
        this.zzth = z4;
        this.zzEv = z5;
        this.zzEU = z6;
        this.zzEV = z7;
        this.zzEW = i4;
        this.zzEX = largeParcelTeleporter;
        this.zzEY = str7;
        this.zzEZ = str8;
        if (this.body == null && this.zzEX != null) {
            StringParcel stringParcel = (StringParcel) this.zzEX.zza(StringParcel.CREATOR);
            if (!(stringParcel == null || TextUtils.isEmpty(stringParcel.zzfP()))) {
                this.body = stringParcel.zzfP();
            }
        }
        this.zzti = z8;
    }

    public AdResponseParcel(AdRequestInfoParcel adRequestInfoParcel, String str, String str2, List<String> list, List<String> list2, long j, boolean z, long j2, List<String> list3, long j3, int i, String str3, long j4, String str4, String str5, boolean z2, boolean z3, boolean z4, boolean z5, boolean z6, int i2, String str6, boolean z7) {
        this(14, str, str2, list, -2, list2, j, z, j2, list3, j3, i, str3, j4, str4, false, null, str5, z2, z3, z4, z5, z6, i2, null, null, str6, z7);
        this.zzzz = adRequestInfoParcel;
    }

    public AdResponseParcel(AdRequestInfoParcel adRequestInfoParcel, String str, String str2, List<String> list, List<String> list2, long j, boolean z, long j2, List<String> list3, long j3, int i, String str3, long j4, String str4, boolean z2, String str5, String str6, boolean z3, boolean z4, boolean z5, boolean z6, boolean z7, int i2, String str7, boolean z8) {
        this(14, str, str2, list, -2, list2, j, z, j2, list3, j3, i, str3, j4, str4, z2, str5, str6, z3, z4, z5, z6, z7, i2, null, null, str7, z8);
        this.zzzz = adRequestInfoParcel;
    }

    public int describeContents() {
        return 0;
    }

    public void writeToParcel(Parcel parcel, int i) {
        if (!(this.zzzz == null || this.zzzz.versionCode < 9 || TextUtils.isEmpty(this.body))) {
            this.zzEX = new LargeParcelTeleporter(new StringParcel(this.body));
            this.body = null;
        }
        zzh.zza(this, parcel, i);
    }
}
