package com.google.android.gms.common.api;

import android.os.Looper;
import com.google.android.gms.common.internal.zzx;
import com.google.android.gms.internal.zzlc;
import com.google.android.gms.internal.zzln;
import com.google.android.gms.internal.zzlo;

public final class PendingResults {

    private static final class zza<R extends Result> extends zzlc<R> {
        private final R zzaaW;

        public zza(R r) {
            super(Looper.getMainLooper());
            this.zzaaW = r;
        }

        protected R zzb(Status status) {
            if (status.getStatusCode() == this.zzaaW.getStatus().getStatusCode()) {
                return this.zzaaW;
            }
            throw new UnsupportedOperationException("Creating failed results is not supported");
        }
    }

    private static final class zzb<R extends Result> extends zzlc<R> {
        private final R zzaaX;

        public zzb(GoogleApiClient googleApiClient, R r) {
            super(googleApiClient);
            this.zzaaX = r;
        }

        protected R zzb(Status status) {
            return this.zzaaX;
        }
    }

    private static final class zzc<R extends Result> extends zzlc<R> {
        public zzc(GoogleApiClient googleApiClient) {
            super(googleApiClient);
        }

        protected R zzb(Status status) {
            throw new UnsupportedOperationException("Creating failed results is not supported");
        }
    }

    private PendingResults() {
    }

    public static PendingResult<Status> canceledPendingResult() {
        PendingResult com_google_android_gms_internal_zzlo = new zzlo(Looper.getMainLooper());
        com_google_android_gms_internal_zzlo.cancel();
        return com_google_android_gms_internal_zzlo;
    }

    public static <R extends Result> PendingResult<R> canceledPendingResult(R r) {
        zzx.zzb((Object) r, (Object) "Result must not be null");
        zzx.zzb(r.getStatus().getStatusCode() == 16, (Object) "Status code must be CommonStatusCodes.CANCELED");
        PendingResult com_google_android_gms_common_api_PendingResults_zza = new zza(r);
        com_google_android_gms_common_api_PendingResults_zza.cancel();
        return com_google_android_gms_common_api_PendingResults_zza;
    }

    public static <R extends Result> OptionalPendingResult<R> immediatePendingResult(R r) {
        zzx.zzb((Object) r, (Object) "Result must not be null");
        PendingResult com_google_android_gms_common_api_PendingResults_zzc = new zzc(null);
        com_google_android_gms_common_api_PendingResults_zzc.zzb((Result) r);
        return new zzln(com_google_android_gms_common_api_PendingResults_zzc);
    }

    public static PendingResult<Status> immediatePendingResult(Status status) {
        zzx.zzb((Object) status, (Object) "Result must not be null");
        PendingResult com_google_android_gms_internal_zzlo = new zzlo(Looper.getMainLooper());
        com_google_android_gms_internal_zzlo.zzb((Result) status);
        return com_google_android_gms_internal_zzlo;
    }

    public static <R extends Result> PendingResult<R> zza(R r, GoogleApiClient googleApiClient) {
        zzx.zzb((Object) r, (Object) "Result must not be null");
        zzx.zzb(!r.getStatus().isSuccess(), (Object) "Status code must not be SUCCESS");
        PendingResult com_google_android_gms_common_api_PendingResults_zzb = new zzb(googleApiClient, r);
        com_google_android_gms_common_api_PendingResults_zzb.zzb((Result) r);
        return com_google_android_gms_common_api_PendingResults_zzb;
    }

    public static PendingResult<Status> zza(Status status, GoogleApiClient googleApiClient) {
        zzx.zzb((Object) status, (Object) "Result must not be null");
        PendingResult com_google_android_gms_internal_zzlo = new zzlo(googleApiClient);
        com_google_android_gms_internal_zzlo.zzb((Result) status);
        return com_google_android_gms_internal_zzlo;
    }
}
