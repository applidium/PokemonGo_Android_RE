package com.google.android.gms.location;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.List;

public final class LocationSettingsRequest implements SafeParcelable {
    public static final Creator<LocationSettingsRequest> CREATOR;
    private final int mVersionCode;
    private final boolean zzaEL;
    private final boolean zzaEM;
    private final boolean zzaEN;
    private final List<LocationRequest> zzasK;

    public static final class Builder {
        private boolean zzaEL;
        private boolean zzaEM;
        private boolean zzaEN;
        private final ArrayList<LocationRequest> zzaEO;

        public Builder() {
            this.zzaEO = new ArrayList();
            this.zzaEL = false;
            this.zzaEM = false;
            this.zzaEN = false;
        }

        public Builder addAllLocationRequests(Collection<LocationRequest> collection) {
            this.zzaEO.addAll(collection);
            return this;
        }

        public Builder addLocationRequest(LocationRequest locationRequest) {
            this.zzaEO.add(locationRequest);
            return this;
        }

        public LocationSettingsRequest build() {
            return new LocationSettingsRequest(this.zzaEL, this.zzaEM, this.zzaEN, null);
        }

        public Builder setAlwaysShow(boolean z) {
            this.zzaEL = z;
            return this;
        }

        public Builder setNeedBle(boolean z) {
            this.zzaEM = z;
            return this;
        }
    }

    static {
        CREATOR = new zzf();
    }

    LocationSettingsRequest(int i, List<LocationRequest> list, boolean z, boolean z2, boolean z3) {
        this.mVersionCode = i;
        this.zzasK = list;
        this.zzaEL = z;
        this.zzaEM = z2;
        this.zzaEN = z3;
    }

    private LocationSettingsRequest(List<LocationRequest> list, boolean z, boolean z2, boolean z3) {
        this(2, (List) list, z, z2, z3);
    }

    public int describeContents() {
        return 0;
    }

    public int getVersionCode() {
        return this.mVersionCode;
    }

    public void writeToParcel(Parcel parcel, int i) {
        zzf.zza(this, parcel, i);
    }

    public List<LocationRequest> zztd() {
        return Collections.unmodifiableList(this.zzasK);
    }

    public boolean zzwx() {
        return this.zzaEL;
    }

    public boolean zzwy() {
        return this.zzaEM;
    }

    public boolean zzwz() {
        return this.zzaEN;
    }
}
