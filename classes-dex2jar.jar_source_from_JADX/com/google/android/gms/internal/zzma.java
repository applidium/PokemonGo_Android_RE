package com.google.android.gms.internal;

import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.Result;
import com.google.android.gms.common.api.Status;

abstract class zzma<R extends Result> extends com.google.android.gms.internal.zzlb.zza<R, zzmb> {

    static abstract class zza extends zzma<Status> {
        public zza(GoogleApiClient googleApiClient) {
            super(googleApiClient);
        }

        public /* synthetic */ Result zzb(Status status) {
            return zzd(status);
        }

        public Status zzd(Status status) {
            return status;
        }
    }

    public zzma(GoogleApiClient googleApiClient) {
        super(zzlx.zzRk, googleApiClient);
    }
}
