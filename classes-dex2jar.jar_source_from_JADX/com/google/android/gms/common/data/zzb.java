package com.google.android.gms.common.data;

import com.google.android.gms.common.internal.zzx;
import java.util.Iterator;
import java.util.NoSuchElementException;

public class zzb<T> implements Iterator<T> {
    protected final DataBuffer<T> zzadi;
    protected int zzadj;

    public zzb(DataBuffer<T> dataBuffer) {
        this.zzadi = (DataBuffer) zzx.zzw(dataBuffer);
        this.zzadj = -1;
    }

    public boolean hasNext() {
        return this.zzadj < this.zzadi.getCount() + -1;
    }

    public T next() {
        if (hasNext()) {
            DataBuffer dataBuffer = this.zzadi;
            int i = this.zzadj + 1;
            this.zzadj = i;
            return dataBuffer.get(i);
        }
        throw new NoSuchElementException("Cannot advance the iterator beyond " + this.zzadj);
    }

    public void remove() {
        throw new UnsupportedOperationException("Cannot remove elements from a DataBufferIterator");
    }
}
