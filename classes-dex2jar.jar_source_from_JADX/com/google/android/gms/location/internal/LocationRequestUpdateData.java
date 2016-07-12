package com.google.android.gms.location.internal;

import android.app.PendingIntent;
import android.os.IBinder;
import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.location.zzc;
import com.google.android.gms.location.zzd;
import com.google.android.gms.location.zzd.zza;

public class LocationRequestUpdateData implements SafeParcelable {
    public static final zzn CREATOR;
    PendingIntent mPendingIntent;
    private final int mVersionCode;
    int zzaFJ;
    LocationRequestInternal zzaFK;
    zzd zzaFL;
    zzc zzaFM;
    zzg zzaFN;

    static {
        CREATOR = new zzn();
    }

    LocationRequestUpdateData(int i, int i2, LocationRequestInternal locationRequestInternal, IBinder iBinder, PendingIntent pendingIntent, IBinder iBinder2, IBinder iBinder3) {
        zzg com_google_android_gms_location_internal_zzg = null;
        this.mVersionCode = i;
        this.zzaFJ = i2;
        this.zzaFK = locationRequestInternal;
        this.zzaFL = iBinder == null ? null : zza.zzbX(iBinder);
        this.mPendingIntent = pendingIntent;
        this.zzaFM = iBinder2 == null ? null : zzc.zza.zzbW(iBinder2);
        if (iBinder3 != null) {
            com_google_android_gms_location_internal_zzg = zzg.zza.zzbZ(iBinder3);
        }
        this.zzaFN = com_google_android_gms_location_internal_zzg;
    }

    public static LocationRequestUpdateData zza(LocationRequestInternal locationRequestInternal, PendingIntent pendingIntent, zzg com_google_android_gms_location_internal_zzg) {
        return new LocationRequestUpdateData(1, 1, locationRequestInternal, null, pendingIntent, null, com_google_android_gms_location_internal_zzg != null ? com_google_android_gms_location_internal_zzg.asBinder() : null);
    }

    public static LocationRequestUpdateData zza(LocationRequestInternal locationRequestInternal, zzc com_google_android_gms_location_zzc, zzg com_google_android_gms_location_internal_zzg) {
        return new LocationRequestUpdateData(1, 1, locationRequestInternal, null, null, com_google_android_gms_location_zzc.asBinder(), com_google_android_gms_location_internal_zzg != null ? com_google_android_gms_location_internal_zzg.asBinder() : null);
    }

    public static LocationRequestUpdateData zza(LocationRequestInternal locationRequestInternal, zzd com_google_android_gms_location_zzd, zzg com_google_android_gms_location_internal_zzg) {
        return new LocationRequestUpdateData(1, 1, locationRequestInternal, com_google_android_gms_location_zzd.asBinder(), null, null, com_google_android_gms_location_internal_zzg != null ? com_google_android_gms_location_internal_zzg.asBinder() : null);
    }

    public static LocationRequestUpdateData zza(zzc com_google_android_gms_location_zzc, zzg com_google_android_gms_location_internal_zzg) {
        return new LocationRequestUpdateData(1, 2, null, null, null, com_google_android_gms_location_zzc.asBinder(), com_google_android_gms_location_internal_zzg != null ? com_google_android_gms_location_internal_zzg.asBinder() : null);
    }

    public static LocationRequestUpdateData zza(zzd com_google_android_gms_location_zzd, zzg com_google_android_gms_location_internal_zzg) {
        return new LocationRequestUpdateData(1, 2, null, com_google_android_gms_location_zzd.asBinder(), null, null, com_google_android_gms_location_internal_zzg != null ? com_google_android_gms_location_internal_zzg.asBinder() : null);
    }

    public static LocationRequestUpdateData zzb(PendingIntent pendingIntent, zzg com_google_android_gms_location_internal_zzg) {
        return new LocationRequestUpdateData(1, 2, null, null, pendingIntent, null, com_google_android_gms_location_internal_zzg != null ? com_google_android_gms_location_internal_zzg.asBinder() : null);
    }

    public int describeContents() {
        return 0;
    }

    int getVersionCode() {
        return this.mVersionCode;
    }

    public void writeToParcel(Parcel parcel, int i) {
        zzn.zza(this, parcel, i);
    }

    IBinder zzwF() {
        return this.zzaFL == null ? null : this.zzaFL.asBinder();
    }

    IBinder zzwG() {
        return this.zzaFM == null ? null : this.zzaFM.asBinder();
    }

    IBinder zzwH() {
        return this.zzaFN == null ? null : this.zzaFN.asBinder();
    }
}
