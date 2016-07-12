package com.google.android.gms.location.places.personalized;

import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.common.internal.zzw;

public class PlaceAlias implements SafeParcelable {
    public static final zzc CREATOR;
    public static final PlaceAlias zzaHY;
    public static final PlaceAlias zzaHZ;
    final int mVersionCode;
    private final String zzaIa;

    static {
        CREATOR = new zzc();
        zzaHY = new PlaceAlias(0, "Home");
        zzaHZ = new PlaceAlias(0, "Work");
    }

    PlaceAlias(int i, String str) {
        this.mVersionCode = i;
        this.zzaIa = str;
    }

    public int describeContents() {
        zzc com_google_android_gms_location_places_personalized_zzc = CREATOR;
        return 0;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof PlaceAlias)) {
            return false;
        }
        return zzw.equal(this.zzaIa, ((PlaceAlias) obj).zzaIa);
    }

    public int hashCode() {
        return zzw.hashCode(this.zzaIa);
    }

    public String toString() {
        return zzw.zzv(this).zzg("alias", this.zzaIa).toString();
    }

    public void writeToParcel(Parcel parcel, int i) {
        zzc com_google_android_gms_location_places_personalized_zzc = CREATOR;
        zzc.zza(this, parcel, i);
    }

    public String zzxq() {
        return this.zzaIa;
    }
}
