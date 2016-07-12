package com.google.android.gms.internal;

import com.google.android.gms.common.api.Releasable;
import com.google.android.gms.common.api.Result;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.data.DataHolder;

public abstract class zzle implements Releasable, Result {
    protected final Status zzSC;
    protected final DataHolder zzabq;

    protected zzle(DataHolder dataHolder, Status status) {
        this.zzSC = status;
        this.zzabq = dataHolder;
    }

    public Status getStatus() {
        return this.zzSC;
    }

    public void release() {
        if (this.zzabq != null) {
            this.zzabq.close();
        }
    }
}
