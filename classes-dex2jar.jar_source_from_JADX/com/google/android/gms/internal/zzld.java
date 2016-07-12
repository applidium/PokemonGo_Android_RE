package com.google.android.gms.internal;

import com.google.android.gms.common.data.DataHolder;
import com.google.android.gms.internal.zzlm.zzb;

public abstract class zzld<L> implements zzb<L> {
    private final DataHolder zzabq;

    protected zzld(DataHolder dataHolder) {
        this.zzabq = dataHolder;
    }

    protected abstract void zza(L l, DataHolder dataHolder);

    public void zznN() {
        if (this.zzabq != null) {
            this.zzabq.close();
        }
    }

    public final void zzq(L l) {
        zza(l, this.zzabq);
    }
}
