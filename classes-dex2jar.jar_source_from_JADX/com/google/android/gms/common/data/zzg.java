package com.google.android.gms.common.data;

import java.util.NoSuchElementException;

public class zzg<T> extends zzb<T> {
    private T zzadF;

    public zzg(DataBuffer<T> dataBuffer) {
        super(dataBuffer);
    }

    public T next() {
        if (hasNext()) {
            this.zzadj++;
            if (this.zzadj == 0) {
                this.zzadF = this.zzadi.get(0);
                if (!(this.zzadF instanceof zzc)) {
                    throw new IllegalStateException("DataBuffer reference of type " + this.zzadF.getClass() + " is not movable");
                }
            }
            ((zzc) this.zzadF).zzbr(this.zzadj);
            return this.zzadF;
        }
        throw new NoSuchElementException("Cannot advance the iterator beyond " + this.zzadj);
    }
}
