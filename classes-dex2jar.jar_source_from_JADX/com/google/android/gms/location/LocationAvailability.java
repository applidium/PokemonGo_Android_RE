package com.google.android.gms.location;

import android.content.Intent;
import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.common.internal.zzw;

public final class LocationAvailability implements SafeParcelable {
    public static final LocationAvailabilityCreator CREATOR;
    private final int mVersionCode;
    int zzaEA;
    int zzaEB;
    long zzaEC;
    int zzaED;

    static {
        CREATOR = new LocationAvailabilityCreator();
    }

    LocationAvailability(int i, int i2, int i3, int i4, long j) {
        this.mVersionCode = i;
        this.zzaED = i2;
        this.zzaEA = i3;
        this.zzaEB = i4;
        this.zzaEC = j;
    }

    public static LocationAvailability extractLocationAvailability(Intent intent) {
        return !hasLocationAvailability(intent) ? null : (LocationAvailability) intent.getExtras().getParcelable("com.google.android.gms.location.EXTRA_LOCATION_AVAILABILITY");
    }

    public static boolean hasLocationAvailability(Intent intent) {
        return intent == null ? false : intent.hasExtra("com.google.android.gms.location.EXTRA_LOCATION_AVAILABILITY");
    }

    public int describeContents() {
        return 0;
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof LocationAvailability)) {
            return false;
        }
        LocationAvailability locationAvailability = (LocationAvailability) obj;
        return this.zzaED == locationAvailability.zzaED && this.zzaEA == locationAvailability.zzaEA && this.zzaEB == locationAvailability.zzaEB && this.zzaEC == locationAvailability.zzaEC;
    }

    int getVersionCode() {
        return this.mVersionCode;
    }

    public int hashCode() {
        return zzw.hashCode(Integer.valueOf(this.zzaED), Integer.valueOf(this.zzaEA), Integer.valueOf(this.zzaEB), Long.valueOf(this.zzaEC));
    }

    public boolean isLocationAvailable() {
        return this.zzaED < LocationStatusCodes.GEOFENCE_NOT_AVAILABLE;
    }

    public String toString() {
        return "LocationAvailability[isLocationAvailable: " + isLocationAvailable() + "]";
    }

    public void writeToParcel(Parcel parcel, int i) {
        LocationAvailabilityCreator.zza(this, parcel, i);
    }
}
