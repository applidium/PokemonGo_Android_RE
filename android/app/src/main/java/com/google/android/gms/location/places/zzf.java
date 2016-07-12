package com.google.android.gms.location.places;

import android.os.RemoteException;
import com.google.android.gms.common.api.Api.zzc;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.Result;
import com.google.android.gms.common.api.Status;

public class zzf extends com.google.android.gms.location.places.internal.zzh.zza {
    private final zzb zzaGi;
    private final zza zzaGj;

    public static abstract class zzb<A extends com.google.android.gms.common.api.Api.zzb> extends com.google.android.gms.location.places.zzl.zzb<PlacePhotoMetadataResult, A> {
        public zzb(zzc<A> com_google_android_gms_common_api_Api_zzc_A, GoogleApiClient googleApiClient) {
            super(com_google_android_gms_common_api_Api_zzc_A, googleApiClient);
        }

        protected PlacePhotoMetadataResult zzaM(Status status) {
            return new PlacePhotoMetadataResult(status, null);
        }

        protected /* synthetic */ Result zzb(Status status) {
            return zzaM(status);
        }
    }

    public static abstract class zza<A extends com.google.android.gms.common.api.Api.zzb> extends com.google.android.gms.location.places.zzl.zzb<PlacePhotoResult, A> {
        public zza(zzc<A> com_google_android_gms_common_api_Api_zzc_A, GoogleApiClient googleApiClient) {
            super(com_google_android_gms_common_api_Api_zzc_A, googleApiClient);
        }

        protected PlacePhotoResult zzaL(Status status) {
            return new PlacePhotoResult(status, null);
        }

        protected /* synthetic */ Result zzb(Status status) {
            return zzaL(status);
        }
    }

    public zzf(zza com_google_android_gms_location_places_zzf_zza) {
        this.zzaGi = null;
        this.zzaGj = com_google_android_gms_location_places_zzf_zza;
    }

    public zzf(zzb com_google_android_gms_location_places_zzf_zzb) {
        this.zzaGi = com_google_android_gms_location_places_zzf_zzb;
        this.zzaGj = null;
    }

    public void zza(PlacePhotoMetadataResult placePhotoMetadataResult) throws RemoteException {
        this.zzaGi.zzb((Result) placePhotoMetadataResult);
    }

    public void zza(PlacePhotoResult placePhotoResult) throws RemoteException {
        this.zzaGj.zzb((Result) placePhotoResult);
    }
}
