package com.google.android.gms.location.places;

import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.common.internal.zzw;
import com.google.android.gms.common.internal.zzw.zza;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

public class AutocompleteFilter implements SafeParcelable {
    public static final zzc CREATOR;
    final int mVersionCode;
    final boolean zzaFW;
    final List<Integer> zzaFX;
    private final Set<Integer> zzaFY;

    static {
        CREATOR = new zzc();
    }

    AutocompleteFilter(int i, boolean z, Collection<Integer> collection) {
        this.mVersionCode = i;
        this.zzaFW = z;
        this.zzaFX = collection == null ? Collections.emptyList() : new ArrayList(collection);
        if (this.zzaFX.isEmpty()) {
            this.zzaFY = Collections.emptySet();
        } else {
            this.zzaFY = Collections.unmodifiableSet(new HashSet(this.zzaFX));
        }
    }

    public static AutocompleteFilter create(Collection<Integer> collection) {
        return zza(true, collection);
    }

    public static AutocompleteFilter zza(boolean z, Collection<Integer> collection) {
        return new AutocompleteFilter(0, z, collection);
    }

    public int describeContents() {
        zzc com_google_android_gms_location_places_zzc = CREATOR;
        return 0;
    }

    public boolean equals(Object obj) {
        if (this != obj) {
            if (!(obj instanceof AutocompleteFilter)) {
                return false;
            }
            AutocompleteFilter autocompleteFilter = (AutocompleteFilter) obj;
            if (!this.zzaFY.equals(autocompleteFilter.zzaFY)) {
                return false;
            }
            if (this.zzaFW != autocompleteFilter.zzaFW) {
                return false;
            }
        }
        return true;
    }

    public Set<Integer> getPlaceTypes() {
        return this.zzaFY;
    }

    public int hashCode() {
        return zzw.hashCode(Boolean.valueOf(this.zzaFW), this.zzaFY);
    }

    public String toString() {
        zza zzv = zzw.zzv(this);
        if (!this.zzaFW) {
            zzv.zzg("restrictedToPlaces", Boolean.valueOf(this.zzaFW));
        }
        zzv.zzg("placeTypes", this.zzaFY);
        return zzv.toString();
    }

    public void writeToParcel(Parcel parcel, int i) {
        zzc com_google_android_gms_location_places_zzc = CREATOR;
        zzc.zza(this, parcel, i);
    }

    public boolean zzwM() {
        return this.zzaFW;
    }
}
