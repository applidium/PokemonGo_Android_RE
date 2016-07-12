package com.google.android.gms.common.internal;

import android.content.Context;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Looper;
import com.google.android.gms.common.api.Api.zzd;
import com.google.android.gms.common.api.GoogleApiClient.ConnectionCallbacks;
import com.google.android.gms.common.api.GoogleApiClient.OnConnectionFailedListener;

public class zzac<T extends IInterface> extends zzj<T> {
    private final zzd<T> zzagt;

    public zzac(Context context, Looper looper, int i, ConnectionCallbacks connectionCallbacks, OnConnectionFailedListener onConnectionFailedListener, zzf com_google_android_gms_common_internal_zzf, zzd com_google_android_gms_common_api_Api_zzd) {
        super(context, looper, i, com_google_android_gms_common_internal_zzf, connectionCallbacks, onConnectionFailedListener);
        this.zzagt = com_google_android_gms_common_api_Api_zzd;
    }

    protected T zzW(IBinder iBinder) {
        return this.zzagt.zzW(iBinder);
    }

    protected void zzc(int i, T t) {
        this.zzagt.zza(i, t);
    }

    protected String zzfK() {
        return this.zzagt.zzfK();
    }

    protected String zzfL() {
        return this.zzagt.zzfL();
    }
}
