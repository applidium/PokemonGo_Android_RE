package com.google.android.gms.internal;

import java.util.concurrent.CancellationException;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;

@zzgr
public class zzin<T> implements zziq<T> {
    private final zzir zzJA;
    private T zzJy;
    private boolean zzJz;
    private final Object zzpd;
    private boolean zzzD;

    public zzin() {
        this.zzpd = new Object();
        this.zzJy = null;
        this.zzJz = false;
        this.zzzD = false;
        this.zzJA = new zzir();
    }

    public boolean cancel(boolean z) {
        if (!z) {
            return false;
        }
        synchronized (this.zzpd) {
            if (this.zzJz) {
                return false;
            }
            this.zzzD = true;
            this.zzJz = true;
            this.zzpd.notifyAll();
            this.zzJA.zzgV();
            return true;
        }
    }

    public T get() {
        T t;
        synchronized (this.zzpd) {
            if (!this.zzJz) {
                try {
                    this.zzpd.wait();
                } catch (InterruptedException e) {
                }
            }
            if (this.zzzD) {
                throw new CancellationException("CallbackFuture was cancelled.");
            }
            t = this.zzJy;
        }
        return t;
    }

    public T get(long j, TimeUnit timeUnit) throws TimeoutException {
        T t;
        synchronized (this.zzpd) {
            if (!this.zzJz) {
                try {
                    long toMillis = timeUnit.toMillis(j);
                    if (toMillis != 0) {
                        this.zzpd.wait(toMillis);
                    }
                } catch (InterruptedException e) {
                }
            }
            if (!this.zzJz) {
                throw new TimeoutException("CallbackFuture timed out.");
            } else if (this.zzzD) {
                throw new CancellationException("CallbackFuture was cancelled.");
            } else {
                t = this.zzJy;
            }
        }
        return t;
    }

    public boolean isCancelled() {
        boolean z;
        synchronized (this.zzpd) {
            z = this.zzzD;
        }
        return z;
    }

    public boolean isDone() {
        boolean z;
        synchronized (this.zzpd) {
            z = this.zzJz;
        }
        return z;
    }

    public void zzc(Runnable runnable) {
        this.zzJA.zzc(runnable);
    }

    public void zzd(Runnable runnable) {
        this.zzJA.zzd(runnable);
    }

    public void zzf(T t) {
        synchronized (this.zzpd) {
            if (this.zzzD) {
            } else if (this.zzJz) {
                throw new IllegalStateException("Provided CallbackFuture with multiple values.");
            } else {
                this.zzJz = true;
                this.zzJy = t;
                this.zzpd.notifyAll();
                this.zzJA.zzgV();
            }
        }
    }
}
