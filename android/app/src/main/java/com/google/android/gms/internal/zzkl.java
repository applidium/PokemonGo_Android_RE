package com.google.android.gms.internal;

import android.content.Context;
import android.os.RemoteException;
import com.google.android.gms.auth.api.Auth;
import com.google.android.gms.auth.api.proxy.ProxyApi.ProxyResult;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.Result;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.internal.zzlb.zza;

abstract class zzkl extends zza<ProxyResult, zzki> {
    public zzkl(GoogleApiClient googleApiClient) {
        super(Auth.zzRE, googleApiClient);
    }

    protected abstract void zza(Context context, zzkk com_google_android_gms_internal_zzkk) throws RemoteException;

    protected final void zza(zzki com_google_android_gms_internal_zzki) throws RemoteException {
        zza(com_google_android_gms_internal_zzki.getContext(), (zzkk) com_google_android_gms_internal_zzki.zzpc());
    }

    protected /* synthetic */ Result zzb(Status status) {
        return zzj(status);
    }

    protected ProxyResult zzj(Status status) {
        return new zzkn(status);
    }
}
