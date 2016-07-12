package com.google.android.gms.location.internal;

import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.common.internal.zzw;
import com.google.android.gms.location.LocationRequest;
import java.util.Collections;
import java.util.List;

public class LocationRequestInternal implements SafeParcelable {
    public static final zzm CREATOR;
    static final List<ClientIdentity> zzaFD;
    String mTag;
    private final int mVersionCode;
    boolean zzaFE;
    boolean zzaFF;
    boolean zzaFG;
    List<ClientIdentity> zzaFH;
    boolean zzaFI;
    LocationRequest zzasN;

    static {
        zzaFD = Collections.emptyList();
        CREATOR = new zzm();
    }

    LocationRequestInternal(int i, LocationRequest locationRequest, boolean z, boolean z2, boolean z3, List<ClientIdentity> list, String str, boolean z4) {
        this.mVersionCode = i;
        this.zzasN = locationRequest;
        this.zzaFE = z;
        this.zzaFF = z2;
        this.zzaFG = z3;
        this.zzaFH = list;
        this.mTag = str;
        this.zzaFI = z4;
    }

    public static LocationRequestInternal zza(String str, LocationRequest locationRequest) {
        return new LocationRequestInternal(1, locationRequest, false, true, true, zzaFD, str, false);
    }

    @Deprecated
    public static LocationRequestInternal zzb(LocationRequest locationRequest) {
        return zza(null, locationRequest);
    }

    public int describeContents() {
        return 0;
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof LocationRequestInternal)) {
            return false;
        }
        LocationRequestInternal locationRequestInternal = (LocationRequestInternal) obj;
        return zzw.equal(this.zzasN, locationRequestInternal.zzasN) && this.zzaFE == locationRequestInternal.zzaFE && this.zzaFF == locationRequestInternal.zzaFF && this.zzaFG == locationRequestInternal.zzaFG && this.zzaFI == locationRequestInternal.zzaFI && zzw.equal(this.zzaFH, locationRequestInternal.zzaFH);
    }

    int getVersionCode() {
        return this.mVersionCode;
    }

    public int hashCode() {
        return this.zzasN.hashCode();
    }

    public String toString() {
        StringBuilder stringBuilder = new StringBuilder();
        stringBuilder.append(this.zzasN.toString());
        if (this.mTag != null) {
            stringBuilder.append(" tag=").append(this.mTag);
        }
        stringBuilder.append(" nlpDebug=").append(this.zzaFE);
        stringBuilder.append(" trigger=").append(this.zzaFG);
        stringBuilder.append(" restorePIListeners=").append(this.zzaFF);
        stringBuilder.append(" hideAppOps=").append(this.zzaFI);
        stringBuilder.append(" clients=").append(this.zzaFH);
        return stringBuilder.toString();
    }

    public void writeToParcel(Parcel parcel, int i) {
        zzm.zza(this, parcel, i);
    }
}
