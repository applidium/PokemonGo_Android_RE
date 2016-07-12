package com.google.android.gms.location.places.internal;

import android.content.Context;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Looper;
import android.os.RemoteException;
import com.google.android.gms.common.api.GoogleApiClient.ConnectionCallbacks;
import com.google.android.gms.common.api.GoogleApiClient.OnConnectionFailedListener;
import com.google.android.gms.common.internal.zzf;
import com.google.android.gms.common.internal.zzj;
import com.google.android.gms.common.internal.zzx;
import com.google.android.gms.location.places.AddPlaceRequest;
import com.google.android.gms.location.places.AutocompleteFilter;
import com.google.android.gms.location.places.PlacesOptions;
import com.google.android.gms.location.places.PlacesOptions.Builder;
import com.google.android.gms.location.places.zzl;
import com.google.android.gms.maps.model.LatLngBounds;
import java.util.List;
import java.util.Locale;

public class zze extends zzj<zzg> {
    private final PlacesParams zzaHb;
    private final Locale zzaHc;

    public static class zza extends com.google.android.gms.common.api.Api.zza<zze, PlacesOptions> {
        private final String zzaHd;
        private final String zzaHe;

        public zza(String str, String str2) {
            this.zzaHd = str;
            this.zzaHe = str2;
        }

        public zze zza(Context context, Looper looper, zzf com_google_android_gms_common_internal_zzf, PlacesOptions placesOptions, ConnectionCallbacks connectionCallbacks, OnConnectionFailedListener onConnectionFailedListener) {
            return new zze(context, looper, com_google_android_gms_common_internal_zzf, connectionCallbacks, onConnectionFailedListener, this.zzaHd != null ? this.zzaHd : context.getPackageName(), this.zzaHe != null ? this.zzaHe : context.getPackageName(), placesOptions == null ? new Builder().build() : placesOptions);
        }
    }

    public zze(Context context, Looper looper, zzf com_google_android_gms_common_internal_zzf, ConnectionCallbacks connectionCallbacks, OnConnectionFailedListener onConnectionFailedListener, String str, String str2, PlacesOptions placesOptions) {
        super(context, looper, 65, com_google_android_gms_common_internal_zzf, connectionCallbacks, onConnectionFailedListener);
        this.zzaHc = Locale.getDefault();
        String str3 = null;
        if (com_google_android_gms_common_internal_zzf.getAccount() != null) {
            str3 = com_google_android_gms_common_internal_zzf.getAccount().name;
        }
        this.zzaHb = new PlacesParams(str, this.zzaHc, str3, placesOptions.zzaGG, str2);
    }

    protected /* synthetic */ IInterface zzW(IBinder iBinder) {
        return zzcd(iBinder);
    }

    public void zza(com.google.android.gms.location.places.zzf com_google_android_gms_location_places_zzf, String str) throws RemoteException {
        zzx.zzb((Object) str, (Object) "placeId cannot be null");
        ((zzg) zzpc()).zza(str, this.zzaHb, (zzh) com_google_android_gms_location_places_zzf);
    }

    public void zza(com.google.android.gms.location.places.zzf com_google_android_gms_location_places_zzf, String str, int i, int i2, int i3) throws RemoteException {
        boolean z = true;
        zzx.zzb((Object) str, (Object) "fifeUrl cannot be null");
        zzx.zzb(i > 0, (Object) "width should be > 0");
        if (i <= 0) {
            z = false;
        }
        zzx.zzb(z, (Object) "height should be > 0");
        ((zzg) zzpc()).zza(str, i, i2, i3, this.zzaHb, (zzh) com_google_android_gms_location_places_zzf);
    }

    public void zza(zzl com_google_android_gms_location_places_zzl, AddPlaceRequest addPlaceRequest) throws RemoteException {
        zzx.zzb((Object) addPlaceRequest, (Object) "userAddedPlace == null");
        ((zzg) zzpc()).zza(addPlaceRequest, this.zzaHb, (zzi) com_google_android_gms_location_places_zzl);
    }

    public void zza(zzl com_google_android_gms_location_places_zzl, String str, LatLngBounds latLngBounds, AutocompleteFilter autocompleteFilter) throws RemoteException {
        zzx.zzb((Object) str, (Object) "query == null");
        zzx.zzb((Object) com_google_android_gms_location_places_zzl, (Object) "callback == null");
        ((zzg) zzpc()).zza(str, latLngBounds, autocompleteFilter == null ? AutocompleteFilter.create(null) : autocompleteFilter, this.zzaHb, (zzi) com_google_android_gms_location_places_zzl);
    }

    public void zza(zzl com_google_android_gms_location_places_zzl, List<String> list) throws RemoteException {
        ((zzg) zzpc()).zzb((List) list, this.zzaHb, (zzi) com_google_android_gms_location_places_zzl);
    }

    protected zzg zzcd(IBinder iBinder) {
        return com.google.android.gms.location.places.internal.zzg.zza.zzcf(iBinder);
    }

    protected String zzfK() {
        return "com.google.android.gms.location.places.GeoDataApi";
    }

    protected String zzfL() {
        return "com.google.android.gms.location.places.internal.IGooglePlacesService";
    }
}
