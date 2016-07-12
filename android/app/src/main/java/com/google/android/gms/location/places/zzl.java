package com.google.android.gms.location.places;

import android.content.Context;
import android.os.RemoteException;
import android.util.Log;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.Result;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.data.DataHolder;
import com.google.android.gms.common.internal.zzx;
import com.google.android.gms.internal.zzmz;

public class zzl extends com.google.android.gms.location.places.internal.zzi.zza {
    private static final String TAG;
    private final Context mContext;
    private final zzd zzaGB;
    private final zza zzaGC;
    private final zze zzaGD;
    private final zzf zzaGE;
    private final zzc zzaGF;

    public static abstract class zzb<R extends Result, A extends com.google.android.gms.common.api.Api.zzb> extends com.google.android.gms.internal.zzlb.zza<R, A> {
        public zzb(com.google.android.gms.common.api.Api.zzc<A> com_google_android_gms_common_api_Api_zzc_A, GoogleApiClient googleApiClient) {
            super(com_google_android_gms_common_api_Api_zzc_A, googleApiClient);
        }
    }

    public static abstract class zzc<A extends com.google.android.gms.common.api.Api.zzb> extends zzb<PlaceBuffer, A> {
        public zzc(com.google.android.gms.common.api.Api.zzc<A> com_google_android_gms_common_api_Api_zzc_A, GoogleApiClient googleApiClient) {
            super(com_google_android_gms_common_api_Api_zzc_A, googleApiClient);
        }

        protected PlaceBuffer zzaP(Status status) {
            return new PlaceBuffer(DataHolder.zzbu(status.getStatusCode()), null);
        }

        protected /* synthetic */ Result zzb(Status status) {
            return zzaP(status);
        }
    }

    public static abstract class zza<A extends com.google.android.gms.common.api.Api.zzb> extends zzb<AutocompletePredictionBuffer, A> {
        public zza(com.google.android.gms.common.api.Api.zzc<A> com_google_android_gms_common_api_Api_zzc_A, GoogleApiClient googleApiClient) {
            super(com_google_android_gms_common_api_Api_zzc_A, googleApiClient);
        }

        protected AutocompletePredictionBuffer zzaO(Status status) {
            return new AutocompletePredictionBuffer(DataHolder.zzbu(status.getStatusCode()));
        }

        protected /* synthetic */ Result zzb(Status status) {
            return zzaO(status);
        }
    }

    public static abstract class zzd<A extends com.google.android.gms.common.api.Api.zzb> extends zzb<PlaceLikelihoodBuffer, A> {
        public zzd(com.google.android.gms.common.api.Api.zzc<A> com_google_android_gms_common_api_Api_zzc_A, GoogleApiClient googleApiClient) {
            super(com_google_android_gms_common_api_Api_zzc_A, googleApiClient);
        }

        protected PlaceLikelihoodBuffer zzaQ(Status status) {
            return new PlaceLikelihoodBuffer(DataHolder.zzbu(status.getStatusCode()), 100, null);
        }

        protected /* synthetic */ Result zzb(Status status) {
            return zzaQ(status);
        }
    }

    public static abstract class zzf<A extends com.google.android.gms.common.api.Api.zzb> extends zzb<Status, A> {
        public zzf(com.google.android.gms.common.api.Api.zzc<A> com_google_android_gms_common_api_Api_zzc_A, GoogleApiClient googleApiClient) {
            super(com_google_android_gms_common_api_Api_zzc_A, googleApiClient);
        }

        protected /* synthetic */ Result zzb(Status status) {
            return zzd(status);
        }

        protected Status zzd(Status status) {
            return status;
        }
    }

    public static abstract class zze<A extends com.google.android.gms.common.api.Api.zzb> extends zzb<com.google.android.gms.location.places.personalized.zzd, A> {
        protected com.google.android.gms.location.places.personalized.zzd zzaR(Status status) {
            return com.google.android.gms.location.places.personalized.zzd.zzaS(status);
        }

        protected /* synthetic */ Result zzb(Status status) {
            return zzaR(status);
        }
    }

    static {
        TAG = zzl.class.getSimpleName();
    }

    public zzl(zza com_google_android_gms_location_places_zzl_zza) {
        this.zzaGB = null;
        this.zzaGC = com_google_android_gms_location_places_zzl_zza;
        this.zzaGD = null;
        this.zzaGE = null;
        this.zzaGF = null;
        this.mContext = null;
    }

    public zzl(zzc com_google_android_gms_location_places_zzl_zzc, Context context) {
        this.zzaGB = null;
        this.zzaGC = null;
        this.zzaGD = null;
        this.zzaGE = null;
        this.zzaGF = com_google_android_gms_location_places_zzl_zzc;
        this.mContext = context;
    }

    public zzl(zzd com_google_android_gms_location_places_zzl_zzd, Context context) {
        this.zzaGB = com_google_android_gms_location_places_zzl_zzd;
        this.zzaGC = null;
        this.zzaGD = null;
        this.zzaGE = null;
        this.zzaGF = null;
        this.mContext = context;
    }

    public zzl(zzf com_google_android_gms_location_places_zzl_zzf) {
        this.zzaGB = null;
        this.zzaGC = null;
        this.zzaGD = null;
        this.zzaGE = com_google_android_gms_location_places_zzl_zzf;
        this.zzaGF = null;
        this.mContext = null;
    }

    public void zzaN(Status status) throws RemoteException {
        this.zzaGE.zzb((Result) status);
    }

    public void zzab(DataHolder dataHolder) throws RemoteException {
        zzx.zza(this.zzaGB != null, (Object) "placeEstimator cannot be null");
        if (dataHolder == null) {
            if (Log.isLoggable(TAG, 6)) {
                Log.e(TAG, "onPlaceEstimated received null DataHolder: " + zzmz.zzqF());
            }
            this.zzaGB.zzv(Status.zzabd);
            return;
        }
        this.zzaGB.zzb(new PlaceLikelihoodBuffer(dataHolder, 100, this.mContext));
    }

    public void zzac(DataHolder dataHolder) throws RemoteException {
        if (dataHolder == null) {
            if (Log.isLoggable(TAG, 6)) {
                Log.e(TAG, "onAutocompletePrediction received null DataHolder: " + zzmz.zzqF());
            }
            this.zzaGC.zzv(Status.zzabd);
            return;
        }
        this.zzaGC.zzb(new AutocompletePredictionBuffer(dataHolder));
    }

    public void zzad(DataHolder dataHolder) throws RemoteException {
        if (dataHolder == null) {
            if (Log.isLoggable(TAG, 6)) {
                Log.e(TAG, "onPlaceUserDataFetched received null DataHolder: " + zzmz.zzqF());
            }
            this.zzaGD.zzv(Status.zzabd);
            return;
        }
        this.zzaGD.zzb(new com.google.android.gms.location.places.personalized.zzd(dataHolder));
    }

    public void zzae(DataHolder dataHolder) throws RemoteException {
        this.zzaGF.zzb(new PlaceBuffer(dataHolder, this.mContext));
    }
}
