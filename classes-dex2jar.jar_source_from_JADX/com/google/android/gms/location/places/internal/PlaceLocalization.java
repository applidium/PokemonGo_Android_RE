package com.google.android.gms.location.places.internal;

import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.common.internal.zzw;
import com.voxelbusters.nativeplugins.defines.Keys.Twitter;
import java.util.List;

@Deprecated
public final class PlaceLocalization implements SafeParcelable {
    public static final zzo CREATOR;
    public final String address;
    public final String name;
    public final int versionCode;
    public final String zzaHC;
    public final String zzaHD;
    public final List<String> zzaHE;

    static {
        CREATOR = new zzo();
    }

    public PlaceLocalization(int i, String str, String str2, String str3, String str4, List<String> list) {
        this.versionCode = i;
        this.name = str;
        this.address = str2;
        this.zzaHC = str3;
        this.zzaHD = str4;
        this.zzaHE = list;
    }

    public static PlaceLocalization zza(String str, String str2, String str3, String str4, List<String> list) {
        return new PlaceLocalization(0, str, str2, str3, str4, list);
    }

    public int describeContents() {
        zzo com_google_android_gms_location_places_internal_zzo = CREATOR;
        return 0;
    }

    public boolean equals(Object obj) {
        if (this != obj) {
            if (!(obj instanceof PlaceLocalization)) {
                return false;
            }
            PlaceLocalization placeLocalization = (PlaceLocalization) obj;
            if (!zzw.equal(this.name, placeLocalization.name) || !zzw.equal(this.address, placeLocalization.address) || !zzw.equal(this.zzaHC, placeLocalization.zzaHC) || !zzw.equal(this.zzaHD, placeLocalization.zzaHD)) {
                return false;
            }
            if (!zzw.equal(this.zzaHE, placeLocalization.zzaHE)) {
                return false;
            }
        }
        return true;
    }

    public int hashCode() {
        return zzw.hashCode(this.name, this.address, this.zzaHC, this.zzaHD);
    }

    public String toString() {
        return zzw.zzv(this).zzg(Twitter.NAME, this.name).zzg("address", this.address).zzg("internationalPhoneNumber", this.zzaHC).zzg("regularOpenHours", this.zzaHD).zzg("attributions", this.zzaHE).toString();
    }

    public void writeToParcel(Parcel parcel, int i) {
        zzo com_google_android_gms_location_places_internal_zzo = CREATOR;
        zzo.zza(this, parcel, i);
    }
}
