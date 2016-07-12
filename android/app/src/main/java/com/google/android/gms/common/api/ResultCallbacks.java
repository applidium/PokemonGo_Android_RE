package com.google.android.gms.common.api;

import com.google.android.gms.internal.zzlc;

public abstract class ResultCallbacks<R extends Result> implements ResultCallback<R> {
    public abstract void onFailure(Status status);

    public final void onResult(R r) {
        Status status = r.getStatus();
        if (status.isSuccess()) {
            onSuccess(r);
            return;
        }
        onFailure(status);
        zzlc.zzd(r);
    }

    public abstract void onSuccess(R r);
}
