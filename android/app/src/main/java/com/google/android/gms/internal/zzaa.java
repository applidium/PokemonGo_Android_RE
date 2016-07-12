package com.google.android.gms.internal;

import android.support.v4.view.accessibility.AccessibilityNodeInfoCompat;
import java.io.ByteArrayOutputStream;
import java.io.IOException;

public class zzaa extends ByteArrayOutputStream {
    private final zzu zzar;

    public zzaa(zzu com_google_android_gms_internal_zzu, int i) {
        this.zzar = com_google_android_gms_internal_zzu;
        this.buf = this.zzar.zzb(Math.max(i, AccessibilityNodeInfoCompat.ACTION_NEXT_AT_MOVEMENT_GRANULARITY));
    }

    private void zzd(int i) {
        if (this.count + i > this.buf.length) {
            Object zzb = this.zzar.zzb((this.count + i) * 2);
            System.arraycopy(this.buf, 0, zzb, 0, this.count);
            this.zzar.zza(this.buf);
            this.buf = zzb;
        }
    }

    public void close() throws IOException {
        this.zzar.zza(this.buf);
        this.buf = null;
        super.close();
    }

    public void finalize() {
        this.zzar.zza(this.buf);
    }

    public void write(int i) {
        synchronized (this) {
            zzd(1);
            super.write(i);
        }
    }

    public void write(byte[] bArr, int i, int i2) {
        synchronized (this) {
            zzd(i2);
            super.write(bArr, i, i2);
        }
    }
}
