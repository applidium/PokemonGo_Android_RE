package com.google.android.gms.internal;

import com.google.android.gms.common.internal.zzw;
import com.voxelbusters.nativeplugins.defines.Keys.Twitter;
import java.util.ArrayList;
import java.util.List;

public class zzig {
    private final String[] zzIO;
    private final double[] zzIP;
    private final double[] zzIQ;
    private final int[] zzIR;
    private int zzIS;

    public static class zza {
        public final int count;
        public final String name;
        public final double zzIT;
        public final double zzIU;
        public final double zzIV;

        public zza(String str, double d, double d2, double d3, int i) {
            this.name = str;
            this.zzIU = d;
            this.zzIT = d2;
            this.zzIV = d3;
            this.count = i;
        }

        public boolean equals(Object obj) {
            if (!(obj instanceof zza)) {
                return false;
            }
            zza com_google_android_gms_internal_zzig_zza = (zza) obj;
            return zzw.equal(this.name, com_google_android_gms_internal_zzig_zza.name) && this.zzIT == com_google_android_gms_internal_zzig_zza.zzIT && this.zzIU == com_google_android_gms_internal_zzig_zza.zzIU && this.count == com_google_android_gms_internal_zzig_zza.count && Double.compare(this.zzIV, com_google_android_gms_internal_zzig_zza.zzIV) == 0;
        }

        public int hashCode() {
            return zzw.hashCode(this.name, Double.valueOf(this.zzIT), Double.valueOf(this.zzIU), Double.valueOf(this.zzIV), Integer.valueOf(this.count));
        }

        public String toString() {
            return zzw.zzv(this).zzg(Twitter.NAME, this.name).zzg("minBound", Double.valueOf(this.zzIU)).zzg("maxBound", Double.valueOf(this.zzIT)).zzg("percent", Double.valueOf(this.zzIV)).zzg("count", Integer.valueOf(this.count)).toString();
        }
    }

    public static class zzb {
        private final List<String> zzIW;
        private final List<Double> zzIX;
        private final List<Double> zzIY;

        public zzb() {
            this.zzIW = new ArrayList();
            this.zzIX = new ArrayList();
            this.zzIY = new ArrayList();
        }

        /* JADX WARNING: inconsistent code. */
        /* Code decompiled incorrectly, please refer to instructions dump. */
        public com.google.android.gms.internal.zzig.zzb zza(java.lang.String r7, double r8, double r10) {
            /*
            r6 = this;
            r0 = 0;
            r1 = r0;
        L_0x0002:
            r0 = r6.zzIW;
            r0 = r0.size();
            if (r1 >= r0) goto L_0x0026;
        L_0x000a:
            r0 = r6.zzIY;
            r0 = r0.get(r1);
            r0 = (java.lang.Double) r0;
            r2 = r0.doubleValue();
            r0 = r6.zzIX;
            r0 = r0.get(r1);
            r0 = (java.lang.Double) r0;
            r4 = r0.doubleValue();
            r0 = (r8 > r2 ? 1 : (r8 == r2 ? 0 : -1));
            if (r0 >= 0) goto L_0x003e;
        L_0x0026:
            r0 = r6.zzIW;
            r0.add(r1, r7);
            r0 = r6.zzIY;
            r2 = java.lang.Double.valueOf(r8);
            r0.add(r1, r2);
            r0 = r6.zzIX;
            r2 = java.lang.Double.valueOf(r10);
            r0.add(r1, r2);
            return r6;
        L_0x003e:
            r0 = (r2 > r8 ? 1 : (r2 == r8 ? 0 : -1));
            if (r0 != 0) goto L_0x0046;
        L_0x0042:
            r0 = (r10 > r4 ? 1 : (r10 == r4 ? 0 : -1));
            if (r0 < 0) goto L_0x0026;
        L_0x0046:
            r0 = r1 + 1;
            r1 = r0;
            goto L_0x0002;
            */
            throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.zzig.zzb.zza(java.lang.String, double, double):com.google.android.gms.internal.zzig$zzb");
        }

        public zzig zzgK() {
            return new zzig();
        }
    }

    private zzig(zzb com_google_android_gms_internal_zzig_zzb) {
        int size = com_google_android_gms_internal_zzig_zzb.zzIX.size();
        this.zzIO = (String[]) com_google_android_gms_internal_zzig_zzb.zzIW.toArray(new String[size]);
        this.zzIP = zzg(com_google_android_gms_internal_zzig_zzb.zzIX);
        this.zzIQ = zzg(com_google_android_gms_internal_zzig_zzb.zzIY);
        this.zzIR = new int[size];
        this.zzIS = 0;
    }

    private double[] zzg(List<Double> list) {
        double[] dArr = new double[list.size()];
        for (int i = 0; i < dArr.length; i++) {
            dArr[i] = ((Double) list.get(i)).doubleValue();
        }
        return dArr;
    }

    public List<zza> getBuckets() {
        List<zza> arrayList = new ArrayList(this.zzIO.length);
        for (int i = 0; i < this.zzIO.length; i++) {
            arrayList.add(new zza(this.zzIO[i], this.zzIQ[i], this.zzIP[i], ((double) this.zzIR[i]) / ((double) this.zzIS), this.zzIR[i]));
        }
        return arrayList;
    }

    public void zza(double d) {
        this.zzIS++;
        int i = 0;
        while (i < this.zzIQ.length) {
            if (this.zzIQ[i] <= d && d < this.zzIP[i]) {
                int[] iArr = this.zzIR;
                iArr[i] = iArr[i] + 1;
            }
            if (d >= this.zzIQ[i]) {
                i++;
            } else {
                return;
            }
        }
    }
}
