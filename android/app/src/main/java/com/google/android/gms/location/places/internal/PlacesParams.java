package com.google.android.gms.location.places.internal;

import android.os.Parcel;
import com.google.android.gms.common.GoogleApiAvailability;
import com.google.android.gms.common.GooglePlayServicesUtil;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.common.internal.zzw;
import java.util.Locale;

public class PlacesParams implements SafeParcelable {
    public static final zzt CREATOR;
    public static final PlacesParams zzaHQ;
    public final int versionCode;
    public final String zzaGG;
    public final String zzaHR;
    public final String zzaHS;
    public final String zzaHT;
    public final String zzaHU;
    public final int zzaHV;

    static {
        zzaHQ = new PlacesParams(GooglePlayServicesUtil.GOOGLE_PLAY_SERVICES_PACKAGE, Locale.getDefault(), null);
        CREATOR = new zzt();
    }

    public PlacesParams(int i, String str, String str2, String str3, String str4, String str5, int i2) {
        this.versionCode = i;
        this.zzaHR = str;
        this.zzaHS = str2;
        this.zzaHT = str3;
        this.zzaGG = str4;
        this.zzaHU = str5;
        this.zzaHV = i2;
    }

    public PlacesParams(String str, Locale locale, String str2) {
        this(1, str, locale.toString(), str2, null, null, GoogleApiAvailability.GOOGLE_PLAY_SERVICES_VERSION_CODE);
    }

    public PlacesParams(String str, Locale locale, String str2, String str3, String str4) {
        this(1, str, locale.toString(), str2, str3, str4, GoogleApiAvailability.GOOGLE_PLAY_SERVICES_VERSION_CODE);
    }

    public int describeContents() {
        zzt com_google_android_gms_location_places_internal_zzt = CREATOR;
        return 0;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || !(obj instanceof PlacesParams)) {
            return false;
        }
        PlacesParams placesParams = (PlacesParams) obj;
        return this.zzaHS.equals(placesParams.zzaHS) && this.zzaHR.equals(placesParams.zzaHR) && zzw.equal(this.zzaHT, placesParams.zzaHT) && zzw.equal(this.zzaGG, placesParams.zzaGG) && zzw.equal(this.zzaHU, placesParams.zzaHU);
    }

    public int hashCode() {
        return zzw.hashCode(this.zzaHR, this.zzaHS, this.zzaHT, this.zzaGG, this.zzaHU);
    }

    public String toString() {
        return zzw.zzv(this).zzg("clientPackageName", this.zzaHR).zzg("locale", this.zzaHS).zzg("accountName", this.zzaHT).zzg("gCoreClientName", this.zzaGG).zzg("chargedPackageName", this.zzaHU).toString();
    }

    public void writeToParcel(Parcel parcel, int i) {
        zzt com_google_android_gms_location_places_internal_zzt = CREATOR;
        zzt.zza(this, parcel, i);
    }
}
