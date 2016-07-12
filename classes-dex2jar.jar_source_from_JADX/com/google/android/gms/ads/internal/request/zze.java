package com.google.android.gms.ads.internal.request;

import android.content.Context;
import android.os.DeadObjectException;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Looper;
import com.google.android.gms.ads.internal.request.zzj.zza;
import com.google.android.gms.common.api.GoogleApiClient.ConnectionCallbacks;
import com.google.android.gms.common.api.GoogleApiClient.OnConnectionFailedListener;
import com.google.android.gms.common.internal.zzf;
import com.google.android.gms.common.internal.zzj;
import com.google.android.gms.internal.zzgr;

@zzgr
public class zze extends zzj<zzj> {
    final int zzEl;

    public zze(Context context, Looper looper, ConnectionCallbacks connectionCallbacks, OnConnectionFailedListener onConnectionFailedListener, int i) {
        super(context, looper, 8, zzf.zzak(context), connectionCallbacks, onConnectionFailedListener);
        this.zzEl = i;
    }

    protected zzj zzV(IBinder iBinder) {
        return zza.zzX(iBinder);
    }

    protected /* synthetic */ IInterface zzW(IBinder iBinder) {
        return zzV(iBinder);
    }

    protected String zzfK() {
        return "com.google.android.gms.ads.service.START";
    }

    protected String zzfL() {
        return "com.google.android.gms.ads.internal.request.IAdRequestService";
    }

    public zzj zzfM() throws DeadObjectException {
        return (zzj) super.zzpc();
    }
}
