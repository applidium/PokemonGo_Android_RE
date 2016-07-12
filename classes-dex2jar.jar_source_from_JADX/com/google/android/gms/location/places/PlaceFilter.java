package com.google.android.gms.location.places;

import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.common.internal.zzw;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Collections;
import java.util.List;
import java.util.Set;

public final class PlaceFilter extends zza implements SafeParcelable {
    public static final zzg CREATOR;
    final int mVersionCode;
    final List<Integer> zzaFX;
    private final Set<Integer> zzaFY;
    final List<String> zzaFZ;
    final List<UserDataType> zzaGa;
    private final Set<String> zzaGb;
    private final Set<UserDataType> zzaGc;
    final boolean zzaGl;

    @Deprecated
    public static final class zza {
        private boolean zzaGl;
        private Collection<Integer> zzaGm;
        private Collection<UserDataType> zzaGn;
        private String[] zzaGo;

        private zza() {
            this.zzaGm = null;
            this.zzaGl = false;
            this.zzaGn = null;
            this.zzaGo = null;
        }

        public PlaceFilter zzwU() {
            Collection collection = null;
            Collection arrayList = this.zzaGm != null ? new ArrayList(this.zzaGm) : null;
            Collection arrayList2 = this.zzaGn != null ? new ArrayList(this.zzaGn) : null;
            if (this.zzaGo != null) {
                collection = Arrays.asList(this.zzaGo);
            }
            return new PlaceFilter(arrayList, this.zzaGl, collection, arrayList2);
        }
    }

    static {
        CREATOR = new zzg();
    }

    public PlaceFilter() {
        this(false, null);
    }

    PlaceFilter(int i, List<Integer> list, boolean z, List<String> list2, List<UserDataType> list3) {
        this.mVersionCode = i;
        this.zzaFX = list == null ? Collections.emptyList() : Collections.unmodifiableList(list);
        this.zzaGl = z;
        this.zzaGa = list3 == null ? Collections.emptyList() : Collections.unmodifiableList(list3);
        this.zzaFZ = list2 == null ? Collections.emptyList() : Collections.unmodifiableList(list2);
        this.zzaFY = zza.zzs(this.zzaFX);
        this.zzaGc = zza.zzs(this.zzaGa);
        this.zzaGb = zza.zzs(this.zzaFZ);
    }

    public PlaceFilter(Collection<Integer> collection, boolean z, Collection<String> collection2, Collection<UserDataType> collection3) {
        this(0, zza.zzf(collection), z, zza.zzf(collection2), zza.zzf(collection3));
    }

    public PlaceFilter(boolean z, Collection<String> collection) {
        this(null, z, collection, null);
    }

    @Deprecated
    public static PlaceFilter zzwT() {
        return new zza().zzwU();
    }

    public int describeContents() {
        zzg com_google_android_gms_location_places_zzg = CREATOR;
        return 0;
    }

    public boolean equals(Object obj) {
        if (this != obj) {
            if (!(obj instanceof PlaceFilter)) {
                return false;
            }
            PlaceFilter placeFilter = (PlaceFilter) obj;
            if (!this.zzaFY.equals(placeFilter.zzaFY) || this.zzaGl != placeFilter.zzaGl || !this.zzaGc.equals(placeFilter.zzaGc)) {
                return false;
            }
            if (!this.zzaGb.equals(placeFilter.zzaGb)) {
                return false;
            }
        }
        return true;
    }

    public Set<String> getPlaceIds() {
        return this.zzaGb;
    }

    public Set<Integer> getPlaceTypes() {
        return this.zzaFY;
    }

    public int hashCode() {
        return zzw.hashCode(this.zzaFY, Boolean.valueOf(this.zzaGl), this.zzaGc, this.zzaGb);
    }

    public boolean isRestrictedToPlacesOpenNow() {
        return this.zzaGl;
    }

    public String toString() {
        com.google.android.gms.common.internal.zzw.zza zzv = zzw.zzv(this);
        if (!this.zzaFY.isEmpty()) {
            zzv.zzg("types", this.zzaFY);
        }
        zzv.zzg("requireOpenNow", Boolean.valueOf(this.zzaGl));
        if (!this.zzaGb.isEmpty()) {
            zzv.zzg("placeIds", this.zzaGb);
        }
        if (!this.zzaGc.isEmpty()) {
            zzv.zzg("requestedUserDataTypes", this.zzaGc);
        }
        return zzv.toString();
    }

    public void writeToParcel(Parcel parcel, int i) {
        zzg com_google_android_gms_location_places_zzg = CREATOR;
        zzg.zza(this, parcel, i);
    }

    public Set<UserDataType> zzwS() {
        return this.zzaGc;
    }
}
