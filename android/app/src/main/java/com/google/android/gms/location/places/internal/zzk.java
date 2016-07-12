package com.google.android.gms.location.places.internal;

import android.content.Context;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Looper;
import android.os.RemoteException;
import com.google.android.gms.common.api.Api.zzb;
import com.google.android.gms.common.api.GoogleApiClient.ConnectionCallbacks;
import com.google.android.gms.common.api.GoogleApiClient.OnConnectionFailedListener;
import com.google.android.gms.common.internal.zzf;
import com.google.android.gms.common.internal.zzj;
import com.google.android.gms.common.internal.zzx;
import com.google.android.gms.location.places.PlaceFilter;
import com.google.android.gms.location.places.PlaceReport;
import com.google.android.gms.location.places.PlacesOptions;
import com.google.android.gms.location.places.PlacesOptions.Builder;
import com.google.android.gms.location.places.zzl;
import java.util.Locale;

public class zzk extends zzj<zzf> {
    private final PlacesParams zzaHb;
    private final Locale zzaHc;

    public static class zza extends com.google.android.gms.common.api.Api.zza<zzk, PlacesOptions> {
        private final String zzaHd;
        private final String zzaHe;

        public zza(String str, String str2) {
            this.zzaHd = str;
            this.zzaHe = str2;
        }

        public /* synthetic */ zzb zza(Context context, Looper looper, zzf com_google_android_gms_common_internal_zzf, Object obj, ConnectionCallbacks connectionCallbacks, OnConnectionFailedListener onConnectionFailedListener) {
            return zzb(context, looper, com_google_android_gms_common_internal_zzf, (PlacesOptions) obj, connectionCallbacks, onConnectionFailedListener);
        }

        public zzk zzb(Context context, Looper looper, zzf com_google_android_gms_common_internal_zzf, PlacesOptions placesOptions, ConnectionCallbacks connectionCallbacks, OnConnectionFailedListener onConnectionFailedListener) {
            return new zzk(context, looper, com_google_android_gms_common_internal_zzf, connectionCallbacks, onConnectionFailedListener, this.zzaHd != null ? this.zzaHd : context.getPackageName(), this.zzaHe != null ? this.zzaHe : context.getPackageName(), placesOptions == null ? new Builder().build() : placesOptions);
        }
    }

    public zzk(Context context, Looper looper, zzf com_google_android_gms_common_internal_zzf, ConnectionCallbacks connectionCallbacks, OnConnectionFailedListener onConnectionFailedListener, String str, String str2, PlacesOptions placesOptions) {
        super(context, looper, 67, com_google_android_gms_common_internal_zzf, connectionCallbacks, onConnectionFailedListener);
        this.zzaHc = Locale.getDefault();
        String str3 = null;
        if (com_google_android_gms_common_internal_zzf.getAccount() != null) {
            str3 = com_google_android_gms_common_internal_zzf.getAccount().name;
        }
        this.zzaHb = new PlacesParams(str, this.zzaHc, str3, placesOptions.zzaGG, str2);
    }

    protected /* synthetic */ IInterface zzW(IBinder iBinder) {
        return zzci(iBinder);
    }

    public void zza(zzl com_google_android_gms_location_places_zzl, PlaceFilter placeFilter) throws RemoteException {
        if (placeFilter == null) {
            placeFilter = PlaceFilter.zzwT();
        }
        ((zzf) zzpc()).zza(placeFilter, this.zzaHb, (zzi) com_google_android_gms_location_places_zzl);
    }

    public void zza(zzl com_google_android_gms_location_places_zzl, PlaceReport placeReport) throws RemoteException {
        zzx.zzw(placeReport);
        ((zzf) zzpc()).zza(placeReport, this.zzaHb, (zzi) com_google_android_gms_location_places_zzl);
    }

    protected zzf zzci(IBinder iBinder) {
        return com.google.android.gms.location.places.internal.zzf.zza.zzce(iBinder);
    }

    protected String zzfK() {
        return "com.google.android.gms.location.places.PlaceDetectionApi";
    }

    protected String zzfL() {
        return "com.google.android.gms.location.places.internal.IGooglePlaceDetectionService";
    }
}
