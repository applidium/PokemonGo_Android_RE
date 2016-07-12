package com.google.android.gms.common.data;

import java.util.ArrayList;

public abstract class zzf<T> extends AbstractDataBuffer<T> {
    private boolean zzadD;
    private ArrayList<Integer> zzadE;

    protected zzf(DataHolder dataHolder) {
        super(dataHolder);
        this.zzadD = false;
    }

    private void zzoz() {
        synchronized (this) {
            if (!this.zzadD) {
                int count = this.zzabq.getCount();
                this.zzadE = new ArrayList();
                if (count > 0) {
                    this.zzadE.add(Integer.valueOf(0));
                    String zzoy = zzoy();
                    String zzd = this.zzabq.zzd(zzoy, 0, this.zzabq.zzbt(0));
                    int i = 1;
                    while (i < count) {
                        int zzbt = this.zzabq.zzbt(i);
                        String zzd2 = this.zzabq.zzd(zzoy, i, zzbt);
                        if (zzd2 == null) {
                            throw new NullPointerException("Missing value for markerColumn: " + zzoy + ", at row: " + i + ", for window: " + zzbt);
                        }
                        if (zzd2.equals(zzd)) {
                            zzd2 = zzd;
                        } else {
                            this.zzadE.add(Integer.valueOf(i));
                        }
                        i++;
                        zzd = zzd2;
                    }
                }
                this.zzadD = true;
            }
        }
    }

    public final T get(int i) {
        zzoz();
        return zzj(zzbw(i), zzbx(i));
    }

    public int getCount() {
        zzoz();
        return this.zzadE.size();
    }

    int zzbw(int i) {
        if (i >= 0 && i < this.zzadE.size()) {
            return ((Integer) this.zzadE.get(i)).intValue();
        }
        throw new IllegalArgumentException("Position " + i + " is out of bounds for this buffer");
    }

    protected int zzbx(int i) {
        if (i < 0 || i == this.zzadE.size()) {
            return 0;
        }
        int count = i == this.zzadE.size() + -1 ? this.zzabq.getCount() - ((Integer) this.zzadE.get(i)).intValue() : ((Integer) this.zzadE.get(i + 1)).intValue() - ((Integer) this.zzadE.get(i)).intValue();
        if (count != 1) {
            return count;
        }
        int zzbw = zzbw(i);
        int zzbt = this.zzabq.zzbt(zzbw);
        String zzoA = zzoA();
        return (zzoA == null || this.zzabq.zzd(zzoA, zzbw, zzbt) != null) ? count : 0;
    }

    protected abstract T zzj(int i, int i2);

    protected String zzoA() {
        return null;
    }

    protected abstract String zzoy();
}
