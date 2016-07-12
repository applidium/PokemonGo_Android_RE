package com.google.android.gms.common.data;

import android.os.Bundle;
import java.util.Iterator;

public abstract class AbstractDataBuffer<T> implements DataBuffer<T> {
    protected final DataHolder zzabq;

    protected AbstractDataBuffer(DataHolder dataHolder) {
        this.zzabq = dataHolder;
        if (this.zzabq != null) {
            this.zzabq.zzr(this);
        }
    }

    @Deprecated
    public final void close() {
        release();
    }

    public abstract T get(int i);

    public int getCount() {
        return this.zzabq == null ? 0 : this.zzabq.getCount();
    }

    @Deprecated
    public boolean isClosed() {
        return this.zzabq == null || this.zzabq.isClosed();
    }

    public Iterator<T> iterator() {
        return new zzb(this);
    }

    public void release() {
        if (this.zzabq != null) {
            this.zzabq.close();
        }
    }

    public Iterator<T> singleRefIterator() {
        return new zzg(this);
    }

    public Bundle zzor() {
        return this.zzabq.zzor();
    }
}
