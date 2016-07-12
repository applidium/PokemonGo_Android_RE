package com.google.android.gms.location.places.internal;

import android.os.RemoteException;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.PendingResult;
import com.google.android.gms.common.internal.zzx;
import com.google.android.gms.location.places.AddPlaceRequest;
import com.google.android.gms.location.places.AutocompleteFilter;
import com.google.android.gms.location.places.AutocompletePredictionBuffer;
import com.google.android.gms.location.places.GeoDataApi;
import com.google.android.gms.location.places.PlaceBuffer;
import com.google.android.gms.location.places.PlacePhotoMetadataResult;
import com.google.android.gms.location.places.Places;
import com.google.android.gms.location.places.zzf;
import com.google.android.gms.location.places.zzf.zzb;
import com.google.android.gms.location.places.zzl;
import com.google.android.gms.location.places.zzl.zza;
import com.google.android.gms.location.places.zzl.zzc;
import com.google.android.gms.maps.model.LatLngBounds;
import java.util.Arrays;

public class zzd implements GeoDataApi {

    /* renamed from: com.google.android.gms.location.places.internal.zzd.1 */
    class C06671 extends zzc<zze> {
        final /* synthetic */ AddPlaceRequest zzaGV;
        final /* synthetic */ zzd zzaGW;

        C06671(zzd com_google_android_gms_location_places_internal_zzd, Api.zzc com_google_android_gms_common_api_Api_zzc, GoogleApiClient googleApiClient, AddPlaceRequest addPlaceRequest) {
            this.zzaGW = com_google_android_gms_location_places_internal_zzd;
            this.zzaGV = addPlaceRequest;
            super(com_google_android_gms_common_api_Api_zzc, googleApiClient);
        }

        protected void zza(zze com_google_android_gms_location_places_internal_zze) throws RemoteException {
            com_google_android_gms_location_places_internal_zze.zza(new zzl((zzc) this, com_google_android_gms_location_places_internal_zze.getContext()), this.zzaGV);
        }
    }

    /* renamed from: com.google.android.gms.location.places.internal.zzd.2 */
    class C06682 extends zzc<zze> {
        final /* synthetic */ zzd zzaGW;
        final /* synthetic */ String[] zzaGX;

        C06682(zzd com_google_android_gms_location_places_internal_zzd, Api.zzc com_google_android_gms_common_api_Api_zzc, GoogleApiClient googleApiClient, String[] strArr) {
            this.zzaGW = com_google_android_gms_location_places_internal_zzd;
            this.zzaGX = strArr;
            super(com_google_android_gms_common_api_Api_zzc, googleApiClient);
        }

        protected void zza(zze com_google_android_gms_location_places_internal_zze) throws RemoteException {
            com_google_android_gms_location_places_internal_zze.zza(new zzl((zzc) this, com_google_android_gms_location_places_internal_zze.getContext()), Arrays.asList(this.zzaGX));
        }
    }

    /* renamed from: com.google.android.gms.location.places.internal.zzd.3 */
    class C06693 extends zza<zze> {
        final /* synthetic */ zzd zzaGW;
        final /* synthetic */ LatLngBounds zzaGY;
        final /* synthetic */ AutocompleteFilter zzaGZ;
        final /* synthetic */ String zzaxk;

        C06693(zzd com_google_android_gms_location_places_internal_zzd, Api.zzc com_google_android_gms_common_api_Api_zzc, GoogleApiClient googleApiClient, String str, LatLngBounds latLngBounds, AutocompleteFilter autocompleteFilter) {
            this.zzaGW = com_google_android_gms_location_places_internal_zzd;
            this.zzaxk = str;
            this.zzaGY = latLngBounds;
            this.zzaGZ = autocompleteFilter;
            super(com_google_android_gms_common_api_Api_zzc, googleApiClient);
        }

        protected void zza(zze com_google_android_gms_location_places_internal_zze) throws RemoteException {
            com_google_android_gms_location_places_internal_zze.zza(new zzl((zza) this), this.zzaxk, this.zzaGY, this.zzaGZ);
        }
    }

    /* renamed from: com.google.android.gms.location.places.internal.zzd.4 */
    class C06704 extends zzb<zze> {
        final /* synthetic */ zzd zzaGW;
        final /* synthetic */ String zzaHa;

        C06704(zzd com_google_android_gms_location_places_internal_zzd, Api.zzc com_google_android_gms_common_api_Api_zzc, GoogleApiClient googleApiClient, String str) {
            this.zzaGW = com_google_android_gms_location_places_internal_zzd;
            this.zzaHa = str;
            super(com_google_android_gms_common_api_Api_zzc, googleApiClient);
        }

        protected void zza(zze com_google_android_gms_location_places_internal_zze) throws RemoteException {
            com_google_android_gms_location_places_internal_zze.zza(new zzf((zzb) this), this.zzaHa);
        }
    }

    public PendingResult<PlaceBuffer> addPlace(GoogleApiClient googleApiClient, AddPlaceRequest addPlaceRequest) {
        return googleApiClient.zzb(new C06671(this, Places.zzaGz, googleApiClient, addPlaceRequest));
    }

    public PendingResult<AutocompletePredictionBuffer> getAutocompletePredictions(GoogleApiClient googleApiClient, String str, LatLngBounds latLngBounds, AutocompleteFilter autocompleteFilter) {
        return googleApiClient.zza(new C06693(this, Places.zzaGz, googleApiClient, str, latLngBounds, autocompleteFilter));
    }

    public PendingResult<PlaceBuffer> getPlaceById(GoogleApiClient googleApiClient, String... strArr) {
        boolean z = true;
        if (strArr == null || strArr.length < 1) {
            z = false;
        }
        zzx.zzaa(z);
        return googleApiClient.zza(new C06682(this, Places.zzaGz, googleApiClient, strArr));
    }

    public PendingResult<PlacePhotoMetadataResult> getPlacePhotos(GoogleApiClient googleApiClient, String str) {
        return googleApiClient.zza(new C06704(this, Places.zzaGz, googleApiClient, str));
    }
}
