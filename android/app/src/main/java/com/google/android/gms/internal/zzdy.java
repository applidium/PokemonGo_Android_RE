package com.google.android.gms.internal;

import com.google.android.gms.ads.internal.util.client.zzb;
import java.io.File;
import java.io.IOException;
import java.text.DecimalFormat;
import java.util.Collections;
import java.util.HashSet;
import java.util.Set;

@zzgr
public class zzdy extends zzdv {
    private static final Set<String> zzyk;
    private static final DecimalFormat zzyl;
    private File zzym;
    private boolean zzyn;

    static {
        zzyk = Collections.synchronizedSet(new HashSet());
        zzyl = new DecimalFormat("#,###");
    }

    public zzdy(zziz com_google_android_gms_internal_zziz) {
        super(com_google_android_gms_internal_zziz);
        File cacheDir = com_google_android_gms_internal_zziz.getContext().getCacheDir();
        if (cacheDir == null) {
            zzb.zzaH("Context.getCacheDir() returned null");
            return;
        }
        this.zzym = new File(cacheDir, "admobVideoStreams");
        if (!this.zzym.isDirectory() && !this.zzym.mkdirs()) {
            zzb.zzaH("Could not create preload cache directory at " + this.zzym.getAbsolutePath());
            this.zzym = null;
        } else if (!this.zzym.setReadable(true, false) || !this.zzym.setExecutable(true, false)) {
            zzb.zzaH("Could not set cache file permissions at " + this.zzym.getAbsolutePath());
            this.zzym = null;
        }
    }

    private File zza(File file) {
        return new File(this.zzym, file.getName() + ".done");
    }

    private static void zzb(File file) {
        if (file.isFile()) {
            file.setLastModified(System.currentTimeMillis());
            return;
        }
        try {
            file.createNewFile();
        } catch (IOException e) {
        }
    }

    public void abort() {
        this.zzyn = true;
    }

    /* JADX WARNING: inconsistent code. */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public boolean zzab(java.lang.String r26) {
        /*
        r25 = this;
        r0 = r25;
        r2 = r0.zzym;
        if (r2 != 0) goto L_0x0013;
    L_0x0006:
        r2 = 0;
        r3 = "noCacheDir";
        r4 = 0;
        r0 = r25;
        r1 = r26;
        r0.zza(r1, r2, r3, r4);
        r2 = 0;
    L_0x0012:
        return r2;
    L_0x0013:
        r3 = r25.zzdK();
        r2 = com.google.android.gms.internal.zzby.zzuy;
        r2 = r2.get();
        r2 = (java.lang.Integer) r2;
        r2 = r2.intValue();
        if (r3 <= r2) goto L_0x003d;
    L_0x0025:
        r2 = r25.zzdL();
        if (r2 != 0) goto L_0x0013;
    L_0x002b:
        r2 = "Unable to expire stream cache";
        com.google.android.gms.ads.internal.util.client.zzb.zzaH(r2);
        r2 = 0;
        r3 = "expireFailed";
        r4 = 0;
        r0 = r25;
        r1 = r26;
        r0.zza(r1, r2, r3, r4);
        r2 = 0;
        goto L_0x0012;
    L_0x003d:
        r2 = r25.zzac(r26);
        r9 = new java.io.File;
        r0 = r25;
        r3 = r0.zzym;
        r9.<init>(r3, r2);
        r0 = r25;
        r10 = r0.zza(r9);
        r2 = r9.isFile();
        if (r2 == 0) goto L_0x0086;
    L_0x0056:
        r2 = r10.isFile();
        if (r2 == 0) goto L_0x0086;
    L_0x005c:
        r2 = r9.length();
        r2 = (int) r2;
        r3 = new java.lang.StringBuilder;
        r3.<init>();
        r4 = "Stream cache hit at ";
        r3 = r3.append(r4);
        r0 = r26;
        r3 = r3.append(r0);
        r3 = r3.toString();
        com.google.android.gms.ads.internal.util.client.zzb.zzaF(r3);
        r3 = r9.getAbsolutePath();
        r0 = r25;
        r1 = r26;
        r0.zza(r1, r3, r2);
        r2 = 1;
        goto L_0x0012;
    L_0x0086:
        r2 = new java.lang.StringBuilder;
        r2.<init>();
        r0 = r25;
        r3 = r0.zzym;
        r3 = r3.getAbsolutePath();
        r2 = r2.append(r3);
        r0 = r26;
        r2 = r2.append(r0);
        r11 = r2.toString();
        r3 = zzyk;
        monitor-enter(r3);
        r2 = zzyk;	 Catch:{ all -> 0x00d6 }
        r2 = r2.contains(r11);	 Catch:{ all -> 0x00d6 }
        if (r2 == 0) goto L_0x00d9;
    L_0x00ac:
        r2 = new java.lang.StringBuilder;	 Catch:{ all -> 0x00d6 }
        r2.<init>();	 Catch:{ all -> 0x00d6 }
        r4 = "Stream cache already in progress at ";
        r2 = r2.append(r4);	 Catch:{ all -> 0x00d6 }
        r0 = r26;
        r2 = r2.append(r0);	 Catch:{ all -> 0x00d6 }
        r2 = r2.toString();	 Catch:{ all -> 0x00d6 }
        com.google.android.gms.ads.internal.util.client.zzb.zzaH(r2);	 Catch:{ all -> 0x00d6 }
        r2 = r9.getAbsolutePath();	 Catch:{ all -> 0x00d6 }
        r4 = "inProgress";
        r5 = 0;
        r0 = r25;
        r1 = r26;
        r0.zza(r1, r2, r4, r5);	 Catch:{ all -> 0x00d6 }
        r2 = 0;
        monitor-exit(r3);	 Catch:{ all -> 0x00d6 }
        goto L_0x0012;
    L_0x00d6:
        r2 = move-exception;
        monitor-exit(r3);	 Catch:{ all -> 0x00d6 }
        throw r2;
    L_0x00d9:
        r2 = zzyk;	 Catch:{ all -> 0x00d6 }
        r2.add(r11);	 Catch:{ all -> 0x00d6 }
        monitor-exit(r3);	 Catch:{ all -> 0x00d6 }
        r4 = 0;
        r2 = new java.net.URL;	 Catch:{ IOException -> 0x03b6 }
        r0 = r26;
        r2.<init>(r0);	 Catch:{ IOException -> 0x03b6 }
        r3 = r2.openConnection();	 Catch:{ IOException -> 0x03b6 }
        r2 = com.google.android.gms.internal.zzby.zzuD;	 Catch:{ IOException -> 0x03b6 }
        r2 = r2.get();	 Catch:{ IOException -> 0x03b6 }
        r2 = (java.lang.Integer) r2;	 Catch:{ IOException -> 0x03b6 }
        r2 = r2.intValue();	 Catch:{ IOException -> 0x03b6 }
        r3.setConnectTimeout(r2);	 Catch:{ IOException -> 0x03b6 }
        r3.setReadTimeout(r2);	 Catch:{ IOException -> 0x03b6 }
        r2 = r3 instanceof java.net.HttpURLConnection;	 Catch:{ IOException -> 0x03b6 }
        if (r2 == 0) goto L_0x01b2;
    L_0x0101:
        r0 = r3;
        r0 = (java.net.HttpURLConnection) r0;	 Catch:{ IOException -> 0x03b6 }
        r2 = r0;
        r2 = r2.getResponseCode();	 Catch:{ IOException -> 0x03b6 }
        r5 = 400; // 0x190 float:5.6E-43 double:1.976E-321;
        if (r2 < r5) goto L_0x01b2;
    L_0x010d:
        r3 = "badUrl";
        r5 = new java.lang.StringBuilder;	 Catch:{ IOException -> 0x03c2 }
        r5.<init>();	 Catch:{ IOException -> 0x03c2 }
        r6 = "HTTP request failed. Code: ";
        r5 = r5.append(r6);	 Catch:{ IOException -> 0x03c2 }
        r6 = java.lang.Integer.toString(r2);	 Catch:{ IOException -> 0x03c2 }
        r5 = r5.append(r6);	 Catch:{ IOException -> 0x03c2 }
        r5 = r5.toString();	 Catch:{ IOException -> 0x03c2 }
        r6 = new java.io.IOException;	 Catch:{ IOException -> 0x014b }
        r7 = new java.lang.StringBuilder;	 Catch:{ IOException -> 0x014b }
        r7.<init>();	 Catch:{ IOException -> 0x014b }
        r8 = "HTTP status code ";
        r7 = r7.append(r8);	 Catch:{ IOException -> 0x014b }
        r2 = r7.append(r2);	 Catch:{ IOException -> 0x014b }
        r7 = " at ";
        r2 = r2.append(r7);	 Catch:{ IOException -> 0x014b }
        r0 = r26;
        r2 = r2.append(r0);	 Catch:{ IOException -> 0x014b }
        r2 = r2.toString();	 Catch:{ IOException -> 0x014b }
        r6.<init>(r2);	 Catch:{ IOException -> 0x014b }
        throw r6;	 Catch:{ IOException -> 0x014b }
    L_0x014b:
        r2 = move-exception;
        r24 = r4;
        r4 = r5;
        r5 = r2;
        r2 = r24;
    L_0x0152:
        r2.close();	 Catch:{ IOException -> 0x03d2, NullPointerException -> 0x03d5 }
    L_0x0155:
        r0 = r25;
        r2 = r0.zzyn;
        if (r2 == 0) goto L_0x0396;
    L_0x015b:
        r2 = new java.lang.StringBuilder;
        r2.<init>();
        r5 = "Preload aborted for URL \"";
        r2 = r2.append(r5);
        r0 = r26;
        r2 = r2.append(r0);
        r5 = "\"";
        r2 = r2.append(r5);
        r2 = r2.toString();
        com.google.android.gms.ads.internal.util.client.zzb.zzaG(r2);
    L_0x0179:
        r2 = r9.exists();
        if (r2 == 0) goto L_0x019f;
    L_0x017f:
        r2 = r9.delete();
        if (r2 != 0) goto L_0x019f;
    L_0x0185:
        r2 = new java.lang.StringBuilder;
        r2.<init>();
        r5 = "Could not delete partial cache file at ";
        r2 = r2.append(r5);
        r5 = r9.getAbsolutePath();
        r2 = r2.append(r5);
        r2 = r2.toString();
        com.google.android.gms.ads.internal.util.client.zzb.zzaH(r2);
    L_0x019f:
        r2 = r9.getAbsolutePath();
        r0 = r25;
        r1 = r26;
        r0.zza(r1, r2, r3, r4);
        r2 = zzyk;
        r2.remove(r11);
        r2 = 0;
        goto L_0x0012;
    L_0x01b2:
        r6 = r3.getContentLength();	 Catch:{ IOException -> 0x03b6 }
        if (r6 >= 0) goto L_0x01e6;
    L_0x01b8:
        r2 = new java.lang.StringBuilder;	 Catch:{ IOException -> 0x03b6 }
        r2.<init>();	 Catch:{ IOException -> 0x03b6 }
        r3 = "Stream cache aborted, missing content-length header at ";
        r2 = r2.append(r3);	 Catch:{ IOException -> 0x03b6 }
        r0 = r26;
        r2 = r2.append(r0);	 Catch:{ IOException -> 0x03b6 }
        r2 = r2.toString();	 Catch:{ IOException -> 0x03b6 }
        com.google.android.gms.ads.internal.util.client.zzb.zzaH(r2);	 Catch:{ IOException -> 0x03b6 }
        r2 = r9.getAbsolutePath();	 Catch:{ IOException -> 0x03b6 }
        r3 = "contentLengthMissing";
        r5 = 0;
        r0 = r25;
        r1 = r26;
        r0.zza(r1, r2, r3, r5);	 Catch:{ IOException -> 0x03b6 }
        r2 = zzyk;	 Catch:{ IOException -> 0x03b6 }
        r2.remove(r11);	 Catch:{ IOException -> 0x03b6 }
        r2 = 0;
        goto L_0x0012;
    L_0x01e6:
        r2 = zzyl;	 Catch:{ IOException -> 0x03b6 }
        r12 = (long) r6;	 Catch:{ IOException -> 0x03b6 }
        r5 = r2.format(r12);	 Catch:{ IOException -> 0x03b6 }
        r2 = com.google.android.gms.internal.zzby.zzuz;	 Catch:{ IOException -> 0x03b6 }
        r2 = r2.get();	 Catch:{ IOException -> 0x03b6 }
        r2 = (java.lang.Integer) r2;	 Catch:{ IOException -> 0x03b6 }
        r12 = r2.intValue();	 Catch:{ IOException -> 0x03b6 }
        if (r6 <= r12) goto L_0x0245;
    L_0x01fb:
        r2 = new java.lang.StringBuilder;	 Catch:{ IOException -> 0x03b6 }
        r2.<init>();	 Catch:{ IOException -> 0x03b6 }
        r3 = "Content length ";
        r2 = r2.append(r3);	 Catch:{ IOException -> 0x03b6 }
        r2 = r2.append(r5);	 Catch:{ IOException -> 0x03b6 }
        r3 = " exceeds limit at ";
        r2 = r2.append(r3);	 Catch:{ IOException -> 0x03b6 }
        r0 = r26;
        r2 = r2.append(r0);	 Catch:{ IOException -> 0x03b6 }
        r2 = r2.toString();	 Catch:{ IOException -> 0x03b6 }
        com.google.android.gms.ads.internal.util.client.zzb.zzaH(r2);	 Catch:{ IOException -> 0x03b6 }
        r2 = new java.lang.StringBuilder;	 Catch:{ IOException -> 0x03b6 }
        r2.<init>();	 Catch:{ IOException -> 0x03b6 }
        r3 = "File too big for full file cache. Size: ";
        r2 = r2.append(r3);	 Catch:{ IOException -> 0x03b6 }
        r2 = r2.append(r5);	 Catch:{ IOException -> 0x03b6 }
        r2 = r2.toString();	 Catch:{ IOException -> 0x03b6 }
        r3 = r9.getAbsolutePath();	 Catch:{ IOException -> 0x03b6 }
        r5 = "sizeExceeded";
        r0 = r25;
        r1 = r26;
        r0.zza(r1, r3, r5, r2);	 Catch:{ IOException -> 0x03b6 }
        r2 = zzyk;	 Catch:{ IOException -> 0x03b6 }
        r2.remove(r11);	 Catch:{ IOException -> 0x03b6 }
        r2 = 0;
        goto L_0x0012;
    L_0x0245:
        r2 = new java.lang.StringBuilder;	 Catch:{ IOException -> 0x03b6 }
        r2.<init>();	 Catch:{ IOException -> 0x03b6 }
        r7 = "Caching ";
        r2 = r2.append(r7);	 Catch:{ IOException -> 0x03b6 }
        r2 = r2.append(r5);	 Catch:{ IOException -> 0x03b6 }
        r5 = " bytes from ";
        r2 = r2.append(r5);	 Catch:{ IOException -> 0x03b6 }
        r0 = r26;
        r2 = r2.append(r0);	 Catch:{ IOException -> 0x03b6 }
        r2 = r2.toString();	 Catch:{ IOException -> 0x03b6 }
        com.google.android.gms.ads.internal.util.client.zzb.zzaF(r2);	 Catch:{ IOException -> 0x03b6 }
        r2 = r3.getInputStream();	 Catch:{ IOException -> 0x03b6 }
        r13 = java.nio.channels.Channels.newChannel(r2);	 Catch:{ IOException -> 0x03b6 }
        r8 = new java.io.FileOutputStream;	 Catch:{ IOException -> 0x03b6 }
        r8.<init>(r9);	 Catch:{ IOException -> 0x03b6 }
        r14 = r8.getChannel();	 Catch:{ IOException -> 0x0340 }
        r2 = 1048576; // 0x100000 float:1.469368E-39 double:5.180654E-318;
        r15 = java.nio.ByteBuffer.allocate(r2);	 Catch:{ IOException -> 0x0340 }
        r16 = com.google.android.gms.ads.internal.zzp.zzbz();	 Catch:{ IOException -> 0x0340 }
        r5 = 0;
        r18 = r16.currentTimeMillis();	 Catch:{ IOException -> 0x0340 }
        r2 = com.google.android.gms.internal.zzby.zzuC;	 Catch:{ IOException -> 0x0340 }
        r2 = r2.get();	 Catch:{ IOException -> 0x0340 }
        r2 = (java.lang.Long) r2;	 Catch:{ IOException -> 0x0340 }
        r2 = r2.longValue();	 Catch:{ IOException -> 0x0340 }
        r17 = new com.google.android.gms.internal.zzik;	 Catch:{ IOException -> 0x0340 }
        r0 = r17;
        r0.<init>(r2);	 Catch:{ IOException -> 0x0340 }
        r2 = com.google.android.gms.internal.zzby.zzuB;	 Catch:{ IOException -> 0x0340 }
        r2 = r2.get();	 Catch:{ IOException -> 0x0340 }
        r2 = (java.lang.Long) r2;	 Catch:{ IOException -> 0x0340 }
        r20 = r2.longValue();	 Catch:{ IOException -> 0x0340 }
    L_0x02a6:
        r2 = r13.read(r15);	 Catch:{ IOException -> 0x0340 }
        if (r2 < 0) goto L_0x0348;
    L_0x02ac:
        r5 = r5 + r2;
        if (r5 <= r12) goto L_0x02d5;
    L_0x02af:
        r3 = "sizeExceeded";
        r2 = new java.lang.StringBuilder;	 Catch:{ IOException -> 0x03cc }
        r2.<init>();	 Catch:{ IOException -> 0x03cc }
        r4 = "File too big for full file cache. Size: ";
        r2 = r2.append(r4);	 Catch:{ IOException -> 0x03cc }
        r4 = java.lang.Integer.toString(r5);	 Catch:{ IOException -> 0x03cc }
        r2 = r2.append(r4);	 Catch:{ IOException -> 0x03cc }
        r4 = r2.toString();	 Catch:{ IOException -> 0x03cc }
        r2 = new java.io.IOException;	 Catch:{ IOException -> 0x02d0 }
        r5 = "stream cache file size limit exceeded";
        r2.<init>(r5);	 Catch:{ IOException -> 0x02d0 }
        throw r2;	 Catch:{ IOException -> 0x02d0 }
    L_0x02d0:
        r2 = move-exception;
        r5 = r2;
        r2 = r8;
        goto L_0x0152;
    L_0x02d5:
        r15.flip();	 Catch:{ IOException -> 0x0340 }
    L_0x02d8:
        r2 = r14.write(r15);	 Catch:{ IOException -> 0x0340 }
        if (r2 > 0) goto L_0x02d8;
    L_0x02de:
        r15.clear();	 Catch:{ IOException -> 0x0340 }
        r2 = r16.currentTimeMillis();	 Catch:{ IOException -> 0x0340 }
        r2 = r2 - r18;
        r22 = 1000; // 0x3e8 float:1.401E-42 double:4.94E-321;
        r22 = r22 * r20;
        r2 = (r2 > r22 ? 1 : (r2 == r22 ? 0 : -1));
        if (r2 <= 0) goto L_0x0316;
    L_0x02ef:
        r3 = "downloadTimeout";
        r2 = new java.lang.StringBuilder;	 Catch:{ IOException -> 0x03cc }
        r2.<init>();	 Catch:{ IOException -> 0x03cc }
        r4 = "Timeout exceeded. Limit: ";
        r2 = r2.append(r4);	 Catch:{ IOException -> 0x03cc }
        r4 = java.lang.Long.toString(r20);	 Catch:{ IOException -> 0x03cc }
        r2 = r2.append(r4);	 Catch:{ IOException -> 0x03cc }
        r4 = " sec";
        r2 = r2.append(r4);	 Catch:{ IOException -> 0x03cc }
        r4 = r2.toString();	 Catch:{ IOException -> 0x03cc }
        r2 = new java.io.IOException;	 Catch:{ IOException -> 0x02d0 }
        r5 = "stream cache time limit exceeded";
        r2.<init>(r5);	 Catch:{ IOException -> 0x02d0 }
        throw r2;	 Catch:{ IOException -> 0x02d0 }
    L_0x0316:
        r0 = r25;
        r2 = r0.zzyn;	 Catch:{ IOException -> 0x0340 }
        if (r2 == 0) goto L_0x032c;
    L_0x031c:
        r2 = new java.io.IOException;	 Catch:{ IOException -> 0x0324 }
        r3 = "abort requested";
        r2.<init>(r3);	 Catch:{ IOException -> 0x0324 }
        throw r2;	 Catch:{ IOException -> 0x0324 }
    L_0x0324:
        r2 = move-exception;
        r3 = "externalAbort";
        r4 = 0;
        r5 = r2;
        r2 = r8;
        goto L_0x0152;
    L_0x032c:
        r2 = r17.tryAcquire();	 Catch:{ IOException -> 0x0340 }
        if (r2 == 0) goto L_0x02a6;
    L_0x0332:
        r4 = r9.getAbsolutePath();	 Catch:{ IOException -> 0x0340 }
        r7 = 0;
        r2 = r25;
        r3 = r26;
        r2.zza(r3, r4, r5, r6, r7);	 Catch:{ IOException -> 0x0340 }
        goto L_0x02a6;
    L_0x0340:
        r2 = move-exception;
        r4 = 0;
        r3 = "error";
        r5 = r2;
        r2 = r8;
        goto L_0x0152;
    L_0x0348:
        r8.close();	 Catch:{ IOException -> 0x0340 }
        r2 = 3;
        r2 = com.google.android.gms.ads.internal.util.client.zzb.zzN(r2);	 Catch:{ IOException -> 0x0340 }
        if (r2 == 0) goto L_0x037b;
    L_0x0352:
        r2 = zzyl;	 Catch:{ IOException -> 0x0340 }
        r6 = (long) r5;	 Catch:{ IOException -> 0x0340 }
        r2 = r2.format(r6);	 Catch:{ IOException -> 0x0340 }
        r3 = new java.lang.StringBuilder;	 Catch:{ IOException -> 0x0340 }
        r3.<init>();	 Catch:{ IOException -> 0x0340 }
        r4 = "Preloaded ";
        r3 = r3.append(r4);	 Catch:{ IOException -> 0x0340 }
        r2 = r3.append(r2);	 Catch:{ IOException -> 0x0340 }
        r3 = " bytes from ";
        r2 = r2.append(r3);	 Catch:{ IOException -> 0x0340 }
        r0 = r26;
        r2 = r2.append(r0);	 Catch:{ IOException -> 0x0340 }
        r2 = r2.toString();	 Catch:{ IOException -> 0x0340 }
        com.google.android.gms.ads.internal.util.client.zzb.zzaF(r2);	 Catch:{ IOException -> 0x0340 }
    L_0x037b:
        r2 = 1;
        r3 = 0;
        r9.setReadable(r2, r3);	 Catch:{ IOException -> 0x0340 }
        zzb(r10);	 Catch:{ IOException -> 0x0340 }
        r2 = r9.getAbsolutePath();	 Catch:{ IOException -> 0x0340 }
        r0 = r25;
        r1 = r26;
        r0.zza(r1, r2, r5);	 Catch:{ IOException -> 0x0340 }
        r2 = zzyk;	 Catch:{ IOException -> 0x0340 }
        r2.remove(r11);	 Catch:{ IOException -> 0x0340 }
        r2 = 1;
        goto L_0x0012;
    L_0x0396:
        r2 = new java.lang.StringBuilder;
        r2.<init>();
        r6 = "Preload failed for URL \"";
        r2 = r2.append(r6);
        r0 = r26;
        r2 = r2.append(r0);
        r6 = "\"";
        r2 = r2.append(r6);
        r2 = r2.toString();
        com.google.android.gms.ads.internal.util.client.zzb.zzd(r2, r5);
        goto L_0x0179;
    L_0x03b6:
        r2 = move-exception;
        r5 = 0;
        r3 = "error";
        r24 = r4;
        r4 = r5;
        r5 = r2;
        r2 = r24;
        goto L_0x0152;
    L_0x03c2:
        r2 = move-exception;
        r5 = 0;
        r24 = r4;
        r4 = r5;
        r5 = r2;
        r2 = r24;
        goto L_0x0152;
    L_0x03cc:
        r2 = move-exception;
        r4 = 0;
        r5 = r2;
        r2 = r8;
        goto L_0x0152;
    L_0x03d2:
        r2 = move-exception;
        goto L_0x0155;
    L_0x03d5:
        r2 = move-exception;
        goto L_0x0155;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.zzdy.zzab(java.lang.String):boolean");
    }

    public int zzdK() {
        int i = 0;
        if (this.zzym != null) {
            for (File name : this.zzym.listFiles()) {
                if (!name.getName().endsWith(".done")) {
                    i++;
                }
            }
        }
        return i;
    }

    public boolean zzdL() {
        if (this.zzym == null) {
            return false;
        }
        File file = null;
        long j = Long.MAX_VALUE;
        File[] listFiles = this.zzym.listFiles();
        int length = listFiles.length;
        int i = 0;
        while (i < length) {
            long j2;
            File file2 = listFiles[i];
            if (!file2.getName().endsWith(".done")) {
                long lastModified = file2.lastModified();
                if (lastModified < j) {
                    j2 = lastModified;
                    j = j2;
                    i++;
                    file = file2;
                }
            }
            file2 = file;
            j2 = j;
            j = j2;
            i++;
            file = file2;
        }
        if (file == null) {
            return false;
        }
        boolean delete = file.delete();
        file2 = zza(file);
        return file2.isFile() ? delete & file2.delete() : delete;
    }
}
