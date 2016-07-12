package com.google.android.gms.internal;

import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.LinkedList;
import java.util.List;

public class zzu {
    protected static final Comparator<byte[]> zzaw;
    private List<byte[]> zzas;
    private List<byte[]> zzat;
    private int zzau;
    private final int zzav;

    /* renamed from: com.google.android.gms.internal.zzu.1 */
    static final class C06331 implements Comparator<byte[]> {
        C06331() {
        }

        public /* synthetic */ int compare(Object obj, Object obj2) {
            return zza((byte[]) obj, (byte[]) obj2);
        }

        public int zza(byte[] bArr, byte[] bArr2) {
            return bArr.length - bArr2.length;
        }
    }

    static {
        zzaw = new C06331();
    }

    public zzu(int i) {
        this.zzas = new LinkedList();
        this.zzat = new ArrayList(64);
        this.zzau = 0;
        this.zzav = i;
    }

    /* JADX WARNING: inconsistent code. */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    private void zzy() {
        /*
        r2 = this;
        monitor-enter(r2);
    L_0x0001:
        r0 = r2.zzau;	 Catch:{ all -> 0x001d }
        r1 = r2.zzav;	 Catch:{ all -> 0x001d }
        if (r0 <= r1) goto L_0x0020;
    L_0x0007:
        r0 = r2.zzas;	 Catch:{ all -> 0x001d }
        r1 = 0;
        r0 = r0.remove(r1);	 Catch:{ all -> 0x001d }
        r0 = (byte[]) r0;	 Catch:{ all -> 0x001d }
        r1 = r2.zzat;	 Catch:{ all -> 0x001d }
        r1.remove(r0);	 Catch:{ all -> 0x001d }
        r1 = r2.zzau;	 Catch:{ all -> 0x001d }
        r0 = r0.length;	 Catch:{ all -> 0x001d }
        r0 = r1 - r0;
        r2.zzau = r0;	 Catch:{ all -> 0x001d }
        goto L_0x0001;
    L_0x001d:
        r0 = move-exception;
        monitor-exit(r2);
        throw r0;
    L_0x0020:
        monitor-exit(r2);
        return;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.zzu.zzy():void");
    }

    public void zza(byte[] bArr) {
        synchronized (this) {
            if (bArr != null) {
                if (bArr.length <= this.zzav) {
                    this.zzas.add(bArr);
                    int binarySearch = Collections.binarySearch(this.zzat, bArr, zzaw);
                    if (binarySearch < 0) {
                        binarySearch = (-binarySearch) - 1;
                    }
                    this.zzat.add(binarySearch, bArr);
                    this.zzau += bArr.length;
                    zzy();
                }
            }
        }
    }

    /* JADX WARNING: inconsistent code. */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public byte[] zzb(int r5) {
        /*
        r4 = this;
        monitor-enter(r4);
        r0 = 0;
        r1 = r0;
    L_0x0003:
        r0 = r4.zzat;	 Catch:{ all -> 0x002f }
        r0 = r0.size();	 Catch:{ all -> 0x002f }
        if (r1 >= r0) goto L_0x002c;
    L_0x000b:
        r0 = r4.zzat;	 Catch:{ all -> 0x002f }
        r0 = r0.get(r1);	 Catch:{ all -> 0x002f }
        r0 = (byte[]) r0;	 Catch:{ all -> 0x002f }
        r2 = r0.length;	 Catch:{ all -> 0x002f }
        if (r2 < r5) goto L_0x0028;
    L_0x0016:
        r2 = r4.zzau;	 Catch:{ all -> 0x002f }
        r3 = r0.length;	 Catch:{ all -> 0x002f }
        r2 = r2 - r3;
        r4.zzau = r2;	 Catch:{ all -> 0x002f }
        r2 = r4.zzat;	 Catch:{ all -> 0x002f }
        r2.remove(r1);	 Catch:{ all -> 0x002f }
        r1 = r4.zzas;	 Catch:{ all -> 0x002f }
        r1.remove(r0);	 Catch:{ all -> 0x002f }
    L_0x0026:
        monitor-exit(r4);
        return r0;
    L_0x0028:
        r0 = r1 + 1;
        r1 = r0;
        goto L_0x0003;
    L_0x002c:
        r0 = new byte[r5];	 Catch:{ all -> 0x002f }
        goto L_0x0026;
    L_0x002f:
        r0 = move-exception;
        monitor-exit(r4);
        throw r0;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.zzu.zzb(int):byte[]");
    }
}
