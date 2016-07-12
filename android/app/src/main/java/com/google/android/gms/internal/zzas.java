package com.google.android.gms.internal;

import java.io.IOException;

class zzas implements zzaq {
    private zzrx zznG;
    private byte[] zznH;
    private final int zznI;

    public zzas(int i) {
        this.zznI = i;
        reset();
    }

    public void reset() {
        this.zznH = new byte[this.zznI];
        this.zznG = zzrx.zzC(this.zznH);
    }

    public byte[] zzac() throws IOException {
        int zzFD = this.zznG.zzFD();
        if (zzFD < 0) {
            throw new IOException();
        } else if (zzFD == 0) {
            return this.zznH;
        } else {
            Object obj = new byte[(this.zznH.length - zzFD)];
            System.arraycopy(this.zznH, 0, obj, 0, obj.length);
            return obj;
        }
    }

    public void zzb(int i, long j) throws IOException {
        this.zznG.zzb(i, j);
    }

    public void zzb(int i, String str) throws IOException {
        this.zznG.zzb(i, str);
    }
}
