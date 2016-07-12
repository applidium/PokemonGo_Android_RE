package com.google.android.gms.internal;

import android.os.SystemClock;
import android.support.v4.view.MotionEventCompat;
import java.io.EOFException;
import java.io.File;
import java.io.FileOutputStream;
import java.io.FilterInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.Map.Entry;
import spacemadness.com.lunarconsole.BuildConfig;

public class zzv implements zzb {
    private final int zzaA;
    private final Map<String, zza> zzax;
    private long zzay;
    private final File zzaz;

    static class zza {
        public String key;
        public long zzaB;
        public String zzb;
        public long zzc;
        public long zzd;
        public long zze;
        public long zzf;
        public Map<String, String> zzg;

        private zza() {
        }

        public zza(String str, com.google.android.gms.internal.zzb.zza com_google_android_gms_internal_zzb_zza) {
            this.key = str;
            this.zzaB = (long) com_google_android_gms_internal_zzb_zza.data.length;
            this.zzb = com_google_android_gms_internal_zzb_zza.zzb;
            this.zzc = com_google_android_gms_internal_zzb_zza.zzc;
            this.zzd = com_google_android_gms_internal_zzb_zza.zzd;
            this.zze = com_google_android_gms_internal_zzb_zza.zze;
            this.zzf = com_google_android_gms_internal_zzb_zza.zzf;
            this.zzg = com_google_android_gms_internal_zzb_zza.zzg;
        }

        public static zza zzf(InputStream inputStream) throws IOException {
            zza com_google_android_gms_internal_zzv_zza = new zza();
            if (zzv.zzb(inputStream) != 538247942) {
                throw new IOException();
            }
            com_google_android_gms_internal_zzv_zza.key = zzv.zzd(inputStream);
            com_google_android_gms_internal_zzv_zza.zzb = zzv.zzd(inputStream);
            if (com_google_android_gms_internal_zzv_zza.zzb.equals(BuildConfig.FLAVOR)) {
                com_google_android_gms_internal_zzv_zza.zzb = null;
            }
            com_google_android_gms_internal_zzv_zza.zzc = zzv.zzc(inputStream);
            com_google_android_gms_internal_zzv_zza.zzd = zzv.zzc(inputStream);
            com_google_android_gms_internal_zzv_zza.zze = zzv.zzc(inputStream);
            com_google_android_gms_internal_zzv_zza.zzf = zzv.zzc(inputStream);
            com_google_android_gms_internal_zzv_zza.zzg = zzv.zze(inputStream);
            return com_google_android_gms_internal_zzv_zza;
        }

        public boolean zza(OutputStream outputStream) {
            try {
                zzv.zza(outputStream, 538247942);
                zzv.zza(outputStream, this.key);
                zzv.zza(outputStream, this.zzb == null ? BuildConfig.FLAVOR : this.zzb);
                zzv.zza(outputStream, this.zzc);
                zzv.zza(outputStream, this.zzd);
                zzv.zza(outputStream, this.zze);
                zzv.zza(outputStream, this.zzf);
                zzv.zza(this.zzg, outputStream);
                outputStream.flush();
                return true;
            } catch (IOException e) {
                zzs.zzb("%s", e.toString());
                return false;
            }
        }

        public com.google.android.gms.internal.zzb.zza zzb(byte[] bArr) {
            com.google.android.gms.internal.zzb.zza com_google_android_gms_internal_zzb_zza = new com.google.android.gms.internal.zzb.zza();
            com_google_android_gms_internal_zzb_zza.data = bArr;
            com_google_android_gms_internal_zzb_zza.zzb = this.zzb;
            com_google_android_gms_internal_zzb_zza.zzc = this.zzc;
            com_google_android_gms_internal_zzb_zza.zzd = this.zzd;
            com_google_android_gms_internal_zzb_zza.zze = this.zze;
            com_google_android_gms_internal_zzb_zza.zzf = this.zzf;
            com_google_android_gms_internal_zzb_zza.zzg = this.zzg;
            return com_google_android_gms_internal_zzb_zza;
        }
    }

    private static class zzb extends FilterInputStream {
        private int zzaC;

        private zzb(InputStream inputStream) {
            super(inputStream);
            this.zzaC = 0;
        }

        public int read() throws IOException {
            int read = super.read();
            if (read != -1) {
                this.zzaC++;
            }
            return read;
        }

        public int read(byte[] bArr, int i, int i2) throws IOException {
            int read = super.read(bArr, i, i2);
            if (read != -1) {
                this.zzaC += read;
            }
            return read;
        }
    }

    public zzv(File file) {
        this(file, 5242880);
    }

    public zzv(File file, int i) {
        this.zzax = new LinkedHashMap(16, 0.75f, true);
        this.zzay = 0;
        this.zzaz = file;
        this.zzaA = i;
    }

    private void removeEntry(String str) {
        zza com_google_android_gms_internal_zzv_zza = (zza) this.zzax.get(str);
        if (com_google_android_gms_internal_zzv_zza != null) {
            this.zzay -= com_google_android_gms_internal_zzv_zza.zzaB;
            this.zzax.remove(str);
        }
    }

    private static int zza(InputStream inputStream) throws IOException {
        int read = inputStream.read();
        if (read != -1) {
            return read;
        }
        throw new EOFException();
    }

    static void zza(OutputStream outputStream, int i) throws IOException {
        outputStream.write((i >> 0) & MotionEventCompat.ACTION_MASK);
        outputStream.write((i >> 8) & MotionEventCompat.ACTION_MASK);
        outputStream.write((i >> 16) & MotionEventCompat.ACTION_MASK);
        outputStream.write((i >> 24) & MotionEventCompat.ACTION_MASK);
    }

    static void zza(OutputStream outputStream, long j) throws IOException {
        outputStream.write((byte) ((int) (j >>> null)));
        outputStream.write((byte) ((int) (j >>> 8)));
        outputStream.write((byte) ((int) (j >>> 16)));
        outputStream.write((byte) ((int) (j >>> 24)));
        outputStream.write((byte) ((int) (j >>> 32)));
        outputStream.write((byte) ((int) (j >>> 40)));
        outputStream.write((byte) ((int) (j >>> 48)));
        outputStream.write((byte) ((int) (j >>> 56)));
    }

    static void zza(OutputStream outputStream, String str) throws IOException {
        byte[] bytes = str.getBytes("UTF-8");
        zza(outputStream, (long) bytes.length);
        outputStream.write(bytes, 0, bytes.length);
    }

    private void zza(String str, zza com_google_android_gms_internal_zzv_zza) {
        if (this.zzax.containsKey(str)) {
            zza com_google_android_gms_internal_zzv_zza2 = (zza) this.zzax.get(str);
            this.zzay = (com_google_android_gms_internal_zzv_zza.zzaB - com_google_android_gms_internal_zzv_zza2.zzaB) + this.zzay;
        } else {
            this.zzay += com_google_android_gms_internal_zzv_zza.zzaB;
        }
        this.zzax.put(str, com_google_android_gms_internal_zzv_zza);
    }

    static void zza(Map<String, String> map, OutputStream outputStream) throws IOException {
        if (map != null) {
            zza(outputStream, map.size());
            for (Entry entry : map.entrySet()) {
                zza(outputStream, (String) entry.getKey());
                zza(outputStream, (String) entry.getValue());
            }
            return;
        }
        zza(outputStream, 0);
    }

    private static byte[] zza(InputStream inputStream, int i) throws IOException {
        byte[] bArr = new byte[i];
        int i2 = 0;
        while (i2 < i) {
            int read = inputStream.read(bArr, i2, i - i2);
            if (read == -1) {
                break;
            }
            i2 += read;
        }
        if (i2 == i) {
            return bArr;
        }
        throw new IOException("Expected " + i + " bytes, read " + i2 + " bytes");
    }

    static int zzb(InputStream inputStream) throws IOException {
        return ((((zza(inputStream) << 0) | 0) | (zza(inputStream) << 8)) | (zza(inputStream) << 16)) | (zza(inputStream) << 24);
    }

    static long zzc(InputStream inputStream) throws IOException {
        return (((((((0 | ((((long) zza(inputStream)) & 255) << null)) | ((((long) zza(inputStream)) & 255) << 8)) | ((((long) zza(inputStream)) & 255) << 16)) | ((((long) zza(inputStream)) & 255) << 24)) | ((((long) zza(inputStream)) & 255) << 32)) | ((((long) zza(inputStream)) & 255) << 40)) | ((((long) zza(inputStream)) & 255) << 48)) | ((((long) zza(inputStream)) & 255) << 56);
    }

    private void zzc(int i) {
        if (this.zzay + ((long) i) >= ((long) this.zzaA)) {
            int i2;
            if (zzs.DEBUG) {
                zzs.zza("Pruning old cache entries.", new Object[0]);
            }
            long j = this.zzay;
            long elapsedRealtime = SystemClock.elapsedRealtime();
            Iterator it = this.zzax.entrySet().iterator();
            int i3 = 0;
            while (it.hasNext()) {
                zza com_google_android_gms_internal_zzv_zza = (zza) ((Entry) it.next()).getValue();
                if (zzf(com_google_android_gms_internal_zzv_zza.key).delete()) {
                    this.zzay -= com_google_android_gms_internal_zzv_zza.zzaB;
                } else {
                    zzs.zzb("Could not delete cache entry for key=%s, filename=%s", com_google_android_gms_internal_zzv_zza.key, zze(com_google_android_gms_internal_zzv_zza.key));
                }
                it.remove();
                i2 = i3 + 1;
                if (((float) (this.zzay + ((long) i))) < ((float) this.zzaA) * 0.9f) {
                    break;
                }
                i3 = i2;
            }
            i2 = i3;
            if (zzs.DEBUG) {
                zzs.zza("pruned %d files, %d bytes, %d ms", Integer.valueOf(i2), Long.valueOf(this.zzay - j), Long.valueOf(SystemClock.elapsedRealtime() - elapsedRealtime));
            }
        }
    }

    static String zzd(InputStream inputStream) throws IOException {
        return new String(zza(inputStream, (int) zzc(inputStream)), "UTF-8");
    }

    private String zze(String str) {
        int length = str.length() / 2;
        return String.valueOf(str.substring(0, length).hashCode()) + String.valueOf(str.substring(length).hashCode());
    }

    static Map<String, String> zze(InputStream inputStream) throws IOException {
        int zzb = zzb(inputStream);
        Map<String, String> emptyMap = zzb == 0 ? Collections.emptyMap() : new HashMap(zzb);
        for (int i = 0; i < zzb; i++) {
            emptyMap.put(zzd(inputStream).intern(), zzd(inputStream).intern());
        }
        return emptyMap;
    }

    public void remove(String str) {
        synchronized (this) {
            boolean delete = zzf(str).delete();
            removeEntry(str);
            if (!delete) {
                zzs.zzb("Could not delete cache entry for key=%s, filename=%s", str, zze(str));
            }
        }
    }

    public com.google.android.gms.internal.zzb.zza zza(String str) {
        com.google.android.gms.internal.zzb.zza com_google_android_gms_internal_zzb_zza;
        zzb com_google_android_gms_internal_zzv_zzb;
        IOException e;
        Throwable th;
        synchronized (this) {
            zza com_google_android_gms_internal_zzv_zza = (zza) this.zzax.get(str);
            if (com_google_android_gms_internal_zzv_zza == null) {
                com_google_android_gms_internal_zzb_zza = null;
            } else {
                File zzf = zzf(str);
                try {
                    com_google_android_gms_internal_zzv_zzb = new zzb(null);
                    try {
                        zza.zzf(com_google_android_gms_internal_zzv_zzb);
                        com_google_android_gms_internal_zzb_zza = com_google_android_gms_internal_zzv_zza.zzb(zza((InputStream) com_google_android_gms_internal_zzv_zzb, (int) (zzf.length() - ((long) com_google_android_gms_internal_zzv_zzb.zzaC))));
                        if (com_google_android_gms_internal_zzv_zzb != null) {
                            try {
                                com_google_android_gms_internal_zzv_zzb.close();
                            } catch (IOException e2) {
                                com_google_android_gms_internal_zzb_zza = null;
                            }
                        }
                    } catch (IOException e3) {
                        e = e3;
                        try {
                            zzs.zzb("%s: %s", zzf.getAbsolutePath(), e.toString());
                            remove(str);
                            if (com_google_android_gms_internal_zzv_zzb != null) {
                                try {
                                    com_google_android_gms_internal_zzv_zzb.close();
                                } catch (IOException e4) {
                                    com_google_android_gms_internal_zzb_zza = null;
                                }
                            }
                            com_google_android_gms_internal_zzb_zza = null;
                            return com_google_android_gms_internal_zzb_zza;
                        } catch (Throwable th2) {
                            th = th2;
                            if (com_google_android_gms_internal_zzv_zzb != null) {
                                try {
                                    com_google_android_gms_internal_zzv_zzb.close();
                                } catch (IOException e5) {
                                    com_google_android_gms_internal_zzb_zza = null;
                                }
                            }
                            throw th;
                        }
                    }
                } catch (IOException e6) {
                    e = e6;
                    com_google_android_gms_internal_zzv_zzb = null;
                    zzs.zzb("%s: %s", zzf.getAbsolutePath(), e.toString());
                    remove(str);
                    if (com_google_android_gms_internal_zzv_zzb != null) {
                        com_google_android_gms_internal_zzv_zzb.close();
                    }
                    com_google_android_gms_internal_zzb_zza = null;
                    return com_google_android_gms_internal_zzb_zza;
                } catch (Throwable th3) {
                    th = th3;
                    com_google_android_gms_internal_zzv_zzb = null;
                    if (com_google_android_gms_internal_zzv_zzb != null) {
                        com_google_android_gms_internal_zzv_zzb.close();
                    }
                    throw th;
                }
            }
        }
        return com_google_android_gms_internal_zzb_zza;
    }

    /* JADX WARNING: inconsistent code. */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public void zza() {
        /*
        r10 = this;
        r2 = 0;
        r0 = 0;
        monitor-enter(r10);
        r1 = r10.zzaz;	 Catch:{ all -> 0x006b }
        r1 = r1.exists();	 Catch:{ all -> 0x006b }
        if (r1 != 0) goto L_0x0026;
    L_0x000b:
        r0 = r10.zzaz;	 Catch:{ all -> 0x006b }
        r0 = r0.mkdirs();	 Catch:{ all -> 0x006b }
        if (r0 != 0) goto L_0x0024;
    L_0x0013:
        r0 = "Unable to create cache dir %s";
        r1 = 1;
        r1 = new java.lang.Object[r1];	 Catch:{ all -> 0x006b }
        r2 = 0;
        r3 = r10.zzaz;	 Catch:{ all -> 0x006b }
        r3 = r3.getAbsolutePath();	 Catch:{ all -> 0x006b }
        r1[r2] = r3;	 Catch:{ all -> 0x006b }
        com.google.android.gms.internal.zzs.zzc(r0, r1);	 Catch:{ all -> 0x006b }
    L_0x0024:
        monitor-exit(r10);
        return;
    L_0x0026:
        r1 = r10.zzaz;	 Catch:{ all -> 0x006b }
        r3 = r1.listFiles();	 Catch:{ all -> 0x006b }
        if (r3 == 0) goto L_0x0024;
    L_0x002e:
        r4 = r3.length;	 Catch:{ all -> 0x006b }
    L_0x002f:
        if (r0 >= r4) goto L_0x0024;
    L_0x0031:
        r5 = r3[r0];
        r1 = new java.io.BufferedInputStream;	 Catch:{ IOException -> 0x0054, all -> 0x0074 }
        r6 = new java.io.FileInputStream;	 Catch:{ IOException -> 0x0054, all -> 0x0074 }
        r6.<init>(r5);	 Catch:{ IOException -> 0x0054, all -> 0x0074 }
        r1.<init>(r6);	 Catch:{ IOException -> 0x0054, all -> 0x0074 }
        r6 = com.google.android.gms.internal.zzv.zza.zzf(r1);	 Catch:{ IOException -> 0x0072 }
        r8 = r5.length();	 Catch:{ IOException -> 0x0072 }
        r6.zzaB = r8;	 Catch:{ IOException -> 0x0072 }
        r7 = r6.key;	 Catch:{ IOException -> 0x0072 }
        r10.zza(r7, r6);	 Catch:{ IOException -> 0x0072 }
        if (r1 == 0) goto L_0x0051;
    L_0x004e:
        r1.close();	 Catch:{ IOException -> 0x006e }
    L_0x0051:
        r0 = r0 + 1;
        goto L_0x002f;
    L_0x0054:
        r1 = move-exception;
        r1 = r2;
    L_0x0056:
        if (r5 == 0) goto L_0x005b;
    L_0x0058:
        r5.delete();	 Catch:{ all -> 0x0063 }
    L_0x005b:
        if (r1 == 0) goto L_0x0051;
    L_0x005d:
        r1.close();	 Catch:{ IOException -> 0x0061 }
        goto L_0x0051;
    L_0x0061:
        r1 = move-exception;
        goto L_0x0051;
    L_0x0063:
        r0 = move-exception;
        r2 = r1;
    L_0x0065:
        if (r2 == 0) goto L_0x006a;
    L_0x0067:
        r2.close();	 Catch:{ IOException -> 0x0070 }
    L_0x006a:
        throw r0;	 Catch:{ all -> 0x006b }
    L_0x006b:
        r0 = move-exception;
        monitor-exit(r10);
        throw r0;
    L_0x006e:
        r1 = move-exception;
        goto L_0x0051;
    L_0x0070:
        r1 = move-exception;
        goto L_0x006a;
    L_0x0072:
        r6 = move-exception;
        goto L_0x0056;
    L_0x0074:
        r0 = move-exception;
        goto L_0x0065;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.zzv.zza():void");
    }

    public void zza(String str, com.google.android.gms.internal.zzb.zza com_google_android_gms_internal_zzb_zza) {
        synchronized (this) {
            zzc(com_google_android_gms_internal_zzb_zza.data.length);
            File zzf = zzf(str);
            try {
                OutputStream fileOutputStream = new FileOutputStream(zzf);
                zza com_google_android_gms_internal_zzv_zza = new zza(str, com_google_android_gms_internal_zzb_zza);
                if (com_google_android_gms_internal_zzv_zza.zza(fileOutputStream)) {
                    fileOutputStream.write(com_google_android_gms_internal_zzb_zza.data);
                    fileOutputStream.close();
                    zza(str, com_google_android_gms_internal_zzv_zza);
                } else {
                    fileOutputStream.close();
                    zzs.zzb("Failed to write header for %s", zzf.getAbsolutePath());
                    throw new IOException();
                }
            } catch (IOException e) {
                if (!zzf.delete()) {
                    zzs.zzb("Could not clean up file %s", zzf.getAbsolutePath());
                }
            }
        }
    }

    public File zzf(String str) {
        return new File(this.zzaz, zze(str));
    }
}
