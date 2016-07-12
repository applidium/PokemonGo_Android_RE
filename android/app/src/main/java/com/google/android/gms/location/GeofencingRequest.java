package com.google.android.gms.location;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.common.internal.zzx;
import com.google.android.gms.location.internal.ParcelableGeofence;
import java.util.ArrayList;
import java.util.List;

public class GeofencingRequest implements SafeParcelable {
    public static final Creator<GeofencingRequest> CREATOR;
    public static final int INITIAL_TRIGGER_DWELL = 4;
    public static final int INITIAL_TRIGGER_ENTER = 1;
    public static final int INITIAL_TRIGGER_EXIT = 2;
    private final int mVersionCode;
    private final List<ParcelableGeofence> zzaEt;
    private final int zzaEu;

    public static final class Builder {
        private final List<ParcelableGeofence> zzaEt;
        private int zzaEu;

        public Builder() {
            this.zzaEt = new ArrayList();
            this.zzaEu = 5;
        }

        public static int zzgM(int i) {
            return i & 7;
        }

        public Builder addGeofence(Geofence geofence) {
            zzx.zzb((Object) geofence, (Object) "geofence can't be null.");
            zzx.zzb(geofence instanceof ParcelableGeofence, (Object) "Geofence must be created using Geofence.Builder.");
            this.zzaEt.add((ParcelableGeofence) geofence);
            return this;
        }

        public Builder addGeofences(List<Geofence> list) {
            if (!(list == null || list.isEmpty())) {
                for (Geofence geofence : list) {
                    if (geofence != null) {
                        addGeofence(geofence);
                    }
                }
            }
            return this;
        }

        public GeofencingRequest build() {
            zzx.zzb(!this.zzaEt.isEmpty(), (Object) "No geofence has been added to this request.");
            return new GeofencingRequest(this.zzaEu, null);
        }

        public Builder setInitialTrigger(int i) {
            this.zzaEu = zzgM(i);
            return this;
        }
    }

    static {
        CREATOR = new zza();
    }

    GeofencingRequest(int i, List<ParcelableGeofence> list, int i2) {
        this.mVersionCode = i;
        this.zzaEt = list;
        this.zzaEu = i2;
    }

    private GeofencingRequest(List<ParcelableGeofence> list, int i) {
        this((int) INITIAL_TRIGGER_ENTER, (List) list, i);
    }

    public int describeContents() {
        return 0;
    }

    public List<Geofence> getGeofences() {
        List<Geofence> arrayList = new ArrayList();
        arrayList.addAll(this.zzaEt);
        return arrayList;
    }

    public int getInitialTrigger() {
        return this.zzaEu;
    }

    public int getVersionCode() {
        return this.mVersionCode;
    }

    public void writeToParcel(Parcel parcel, int i) {
        zza.zza(this, parcel, i);
    }

    public List<ParcelableGeofence> zzwv() {
        return this.zzaEt;
    }
}
