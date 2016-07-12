package com.google.android.gms.internal;

import java.util.concurrent.TimeUnit;

@zzgr
public class zzio<T> implements zziq<T> {
    private final zzir zzJA;
    private final T zzJy;

    public zzio(T t) {
        this.zzJy = t;
        this.zzJA = new zzir();
        this.zzJA.zzgV();
    }

    public boolean cancel(boolean z) {
        return false;
    }

    public T get() {
        return this.zzJy;
    }

    public T get(long j, TimeUnit timeUnit) {
        return this.zzJy;
    }

    public boolean isCancelled() {
        return false;
    }

    public boolean isDone() {
        return true;
    }

    public void zzc(Runnable runnable) {
        this.zzJA.zzc(runnable);
    }
}
