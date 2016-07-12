package com.google.android.gms.internal;

import android.util.Log;
import com.google.android.gms.common.api.PendingResult;
import com.google.android.gms.common.api.Releasable;
import com.google.android.gms.common.api.Result;
import com.google.android.gms.common.api.ResultCallback;
import com.google.android.gms.common.api.ResultCallbacks;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.api.zzb;
import com.google.android.gms.common.api.zze;
import com.google.android.gms.common.internal.zzx;

public class zzlq<R extends Result> extends zze<R> implements ResultCallback<R> {
    private final Object zzabh;
    private zzb<? super R, ? extends Result> zzacY;
    private zzlq<? extends Result> zzacZ;
    private ResultCallbacks<? super R> zzada;
    private PendingResult<R> zzadb;

    private void zzd(Result result) {
        if (result instanceof Releasable) {
            try {
                ((Releasable) result).release();
            } catch (Throwable e) {
                Log.w("TransformedResultImpl", "Unable to release " + result, e);
            }
        }
    }

    private void zzon() {
        if (this.zzadb == null) {
            return;
        }
        if (this.zzacY != null || this.zzada != null) {
            this.zzadb.setResultCallback(this);
        }
    }

    public void onResult(R r) {
        synchronized (this.zzabh) {
            if (!r.getStatus().isSuccess()) {
                zzx(r.getStatus());
                zzd(r);
            } else if (this.zzacY != null) {
                PendingResult zza = this.zzacY.zza(r);
                if (zza == null) {
                    zzx(new Status(13, "Transform returned null"));
                } else {
                    this.zzacZ.zza(zza);
                }
                zzd(r);
            } else if (this.zzada != null) {
                this.zzada.onSuccess(r);
            }
        }
    }

    public void zza(PendingResult<?> pendingResult) {
        synchronized (this.zzabh) {
            this.zzadb = pendingResult;
            zzon();
        }
    }

    public void zzx(Status status) {
        synchronized (this.zzabh) {
            if (this.zzacY != null) {
                Object zzu = this.zzacY.zzu(status);
                zzx.zzb(zzu, (Object) "onFailure must not return null");
                this.zzacZ.zzx(zzu);
            } else if (this.zzada != null) {
                this.zzada.onFailure(status);
            }
        }
    }
}
