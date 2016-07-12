package com.google.android.gms.internal;

import android.support.v4.view.accessibility.AccessibilityNodeInfoCompat;
import com.google.android.gms.common.api.CommonStatusCodes;
import com.google.android.gms.internal.zzb.zza;
import com.google.android.gms.location.places.Place;
import java.io.IOException;
import java.io.InputStream;
import java.util.Date;
import java.util.Map;
import java.util.TreeMap;
import org.apache.http.Header;
import org.apache.http.HttpEntity;
import org.apache.http.StatusLine;
import org.apache.http.impl.cookie.DateUtils;

public class zzt implements zzf {
    protected static final boolean DEBUG;
    private static int zzao;
    private static int zzap;
    protected final zzy zzaq;
    protected final zzu zzar;

    static {
        DEBUG = zzs.DEBUG;
        zzao = CommonStatusCodes.AUTH_API_INVALID_CREDENTIALS;
        zzap = AccessibilityNodeInfoCompat.ACTION_SCROLL_FORWARD;
    }

    public zzt(zzy com_google_android_gms_internal_zzy) {
        this(com_google_android_gms_internal_zzy, new zzu(zzap));
    }

    public zzt(zzy com_google_android_gms_internal_zzy, zzu com_google_android_gms_internal_zzu) {
        this.zzaq = com_google_android_gms_internal_zzy;
        this.zzar = com_google_android_gms_internal_zzu;
    }

    protected static Map<String, String> zza(Header[] headerArr) {
        Map<String, String> treeMap = new TreeMap(String.CASE_INSENSITIVE_ORDER);
        for (int i = 0; i < headerArr.length; i++) {
            treeMap.put(headerArr[i].getName(), headerArr[i].getValue());
        }
        return treeMap;
    }

    private void zza(long j, zzk<?> com_google_android_gms_internal_zzk_, byte[] bArr, StatusLine statusLine) {
        if (DEBUG || j > ((long) zzao)) {
            Integer valueOf = bArr != null ? Integer.valueOf(bArr.length) : "null";
            zzs.zzb("HTTP response for request=<%s> [lifetime=%d], [size=%s], [rc=%d], [retryCount=%s]", com_google_android_gms_internal_zzk_, Long.valueOf(j), valueOf, Integer.valueOf(statusLine.getStatusCode()), Integer.valueOf(com_google_android_gms_internal_zzk_.zzu().zze()));
        }
    }

    private static void zza(String str, zzk<?> com_google_android_gms_internal_zzk_, zzr com_google_android_gms_internal_zzr) throws zzr {
        zzo zzu = com_google_android_gms_internal_zzk_.zzu();
        int zzt = com_google_android_gms_internal_zzk_.zzt();
        try {
            zzu.zza(com_google_android_gms_internal_zzr);
            com_google_android_gms_internal_zzk_.zzc(String.format("%s-retry [timeout=%s]", new Object[]{str, Integer.valueOf(zzt)}));
        } catch (zzr e) {
            com_google_android_gms_internal_zzk_.zzc(String.format("%s-timeout-giveup [timeout=%s]", new Object[]{str, Integer.valueOf(zzt)}));
            throw e;
        }
    }

    private void zza(Map<String, String> map, zza com_google_android_gms_internal_zzb_zza) {
        if (com_google_android_gms_internal_zzb_zza != null) {
            if (com_google_android_gms_internal_zzb_zza.zzb != null) {
                map.put("If-None-Match", com_google_android_gms_internal_zzb_zza.zzb);
            }
            if (com_google_android_gms_internal_zzb_zza.zzd > 0) {
                map.put("If-Modified-Since", DateUtils.formatDate(new Date(com_google_android_gms_internal_zzb_zza.zzd)));
            }
        }
    }

    private byte[] zza(HttpEntity httpEntity) throws IOException, zzp {
        zzaa com_google_android_gms_internal_zzaa = new zzaa(this.zzar, (int) httpEntity.getContentLength());
        byte[] bArr = null;
        try {
            InputStream content = httpEntity.getContent();
            if (content == null) {
                throw new zzp();
            }
            bArr = this.zzar.zzb(Place.TYPE_SUBLOCALITY_LEVEL_2);
            while (true) {
                int read = content.read(bArr);
                if (read == -1) {
                    break;
                }
                com_google_android_gms_internal_zzaa.write(bArr, 0, read);
            }
            byte[] toByteArray = com_google_android_gms_internal_zzaa.toByteArray();
            return toByteArray;
        } finally {
            try {
                httpEntity.consumeContent();
            } catch (IOException e) {
                zzs.zza("Error occured when calling consumingContent", new Object[0]);
            }
            this.zzar.zza(bArr);
            com_google_android_gms_internal_zzaa.close();
        }
    }

    /* JADX WARNING: inconsistent code. */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public com.google.android.gms.internal.zzi zza(com.google.android.gms.internal.zzk<?> r20) throws com.google.android.gms.internal.zzr {
        /*
        r19 = this;
        r16 = android.os.SystemClock.elapsedRealtime();
    L_0x0004:
        r3 = 0;
        r6 = java.util.Collections.emptyMap();
        r2 = new java.util.HashMap;	 Catch:{ SocketTimeoutException -> 0x008f, ConnectTimeoutException -> 0x00b0, MalformedURLException -> 0x00bf, IOException -> 0x00dd }
        r2.<init>();	 Catch:{ SocketTimeoutException -> 0x008f, ConnectTimeoutException -> 0x00b0, MalformedURLException -> 0x00bf, IOException -> 0x00dd }
        r4 = r20.zzi();	 Catch:{ SocketTimeoutException -> 0x008f, ConnectTimeoutException -> 0x00b0, MalformedURLException -> 0x00bf, IOException -> 0x00dd }
        r0 = r19;
        r0.zza(r2, r4);	 Catch:{ SocketTimeoutException -> 0x008f, ConnectTimeoutException -> 0x00b0, MalformedURLException -> 0x00bf, IOException -> 0x00dd }
        r0 = r19;
        r4 = r0.zzaq;	 Catch:{ SocketTimeoutException -> 0x008f, ConnectTimeoutException -> 0x00b0, MalformedURLException -> 0x00bf, IOException -> 0x00dd }
        r0 = r20;
        r14 = r4.zza(r0, r2);	 Catch:{ SocketTimeoutException -> 0x008f, ConnectTimeoutException -> 0x00b0, MalformedURLException -> 0x00bf, IOException -> 0x00dd }
        r12 = r14.getStatusLine();	 Catch:{ SocketTimeoutException -> 0x008f, ConnectTimeoutException -> 0x00b0, MalformedURLException -> 0x00bf, IOException -> 0x013b }
        r4 = r12.getStatusCode();	 Catch:{ SocketTimeoutException -> 0x008f, ConnectTimeoutException -> 0x00b0, MalformedURLException -> 0x00bf, IOException -> 0x013b }
        r2 = r14.getAllHeaders();	 Catch:{ SocketTimeoutException -> 0x008f, ConnectTimeoutException -> 0x00b0, MalformedURLException -> 0x00bf, IOException -> 0x013b }
        r6 = zza(r2);	 Catch:{ SocketTimeoutException -> 0x008f, ConnectTimeoutException -> 0x00b0, MalformedURLException -> 0x00bf, IOException -> 0x013b }
        r2 = 304; // 0x130 float:4.26E-43 double:1.5E-321;
        if (r4 != r2) goto L_0x0064;
    L_0x0035:
        r2 = r20.zzi();	 Catch:{ SocketTimeoutException -> 0x008f, ConnectTimeoutException -> 0x00b0, MalformedURLException -> 0x00bf, IOException -> 0x013b }
        if (r2 != 0) goto L_0x004b;
    L_0x003b:
        r3 = new com.google.android.gms.internal.zzi;	 Catch:{ SocketTimeoutException -> 0x008f, ConnectTimeoutException -> 0x00b0, MalformedURLException -> 0x00bf, IOException -> 0x013b }
        r4 = 304; // 0x130 float:4.26E-43 double:1.5E-321;
        r5 = 0;
        r7 = 1;
        r8 = android.os.SystemClock.elapsedRealtime();	 Catch:{ SocketTimeoutException -> 0x008f, ConnectTimeoutException -> 0x00b0, MalformedURLException -> 0x00bf, IOException -> 0x013b }
        r8 = r8 - r16;
        r3.<init>(r4, r5, r6, r7, r8);	 Catch:{ SocketTimeoutException -> 0x008f, ConnectTimeoutException -> 0x00b0, MalformedURLException -> 0x00bf, IOException -> 0x013b }
    L_0x004a:
        return r3;
    L_0x004b:
        r3 = r2.zzg;	 Catch:{ SocketTimeoutException -> 0x008f, ConnectTimeoutException -> 0x00b0, MalformedURLException -> 0x00bf, IOException -> 0x013b }
        r3.putAll(r6);	 Catch:{ SocketTimeoutException -> 0x008f, ConnectTimeoutException -> 0x00b0, MalformedURLException -> 0x00bf, IOException -> 0x013b }
        r7 = new com.google.android.gms.internal.zzi;	 Catch:{ SocketTimeoutException -> 0x008f, ConnectTimeoutException -> 0x00b0, MalformedURLException -> 0x00bf, IOException -> 0x013b }
        r8 = 304; // 0x130 float:4.26E-43 double:1.5E-321;
        r9 = r2.data;	 Catch:{ SocketTimeoutException -> 0x008f, ConnectTimeoutException -> 0x00b0, MalformedURLException -> 0x00bf, IOException -> 0x013b }
        r10 = r2.zzg;	 Catch:{ SocketTimeoutException -> 0x008f, ConnectTimeoutException -> 0x00b0, MalformedURLException -> 0x00bf, IOException -> 0x013b }
        r11 = 1;
        r2 = android.os.SystemClock.elapsedRealtime();	 Catch:{ SocketTimeoutException -> 0x008f, ConnectTimeoutException -> 0x00b0, MalformedURLException -> 0x00bf, IOException -> 0x013b }
        r12 = r2 - r16;
        r7.<init>(r8, r9, r10, r11, r12);	 Catch:{ SocketTimeoutException -> 0x008f, ConnectTimeoutException -> 0x00b0, MalformedURLException -> 0x00bf, IOException -> 0x013b }
        r3 = r7;
        goto L_0x004a;
    L_0x0064:
        r2 = r14.getEntity();	 Catch:{ SocketTimeoutException -> 0x008f, ConnectTimeoutException -> 0x00b0, MalformedURLException -> 0x00bf, IOException -> 0x013b }
        if (r2 == 0) goto L_0x009e;
    L_0x006a:
        r2 = r14.getEntity();	 Catch:{ SocketTimeoutException -> 0x008f, ConnectTimeoutException -> 0x00b0, MalformedURLException -> 0x00bf, IOException -> 0x013b }
        r0 = r19;
        r11 = r0.zza(r2);	 Catch:{ SocketTimeoutException -> 0x008f, ConnectTimeoutException -> 0x00b0, MalformedURLException -> 0x00bf, IOException -> 0x013b }
    L_0x0074:
        r2 = android.os.SystemClock.elapsedRealtime();	 Catch:{ SocketTimeoutException -> 0x008f, ConnectTimeoutException -> 0x00b0, MalformedURLException -> 0x00bf, IOException -> 0x0140 }
        r8 = r2 - r16;
        r7 = r19;
        r10 = r20;
        r7.zza(r8, r10, r11, r12);	 Catch:{ SocketTimeoutException -> 0x008f, ConnectTimeoutException -> 0x00b0, MalformedURLException -> 0x00bf, IOException -> 0x0140 }
        r2 = 200; // 0xc8 float:2.8E-43 double:9.9E-322;
        if (r4 < r2) goto L_0x0089;
    L_0x0085:
        r2 = 299; // 0x12b float:4.19E-43 double:1.477E-321;
        if (r4 <= r2) goto L_0x00a2;
    L_0x0089:
        r2 = new java.io.IOException;	 Catch:{ SocketTimeoutException -> 0x008f, ConnectTimeoutException -> 0x00b0, MalformedURLException -> 0x00bf, IOException -> 0x0140 }
        r2.<init>();	 Catch:{ SocketTimeoutException -> 0x008f, ConnectTimeoutException -> 0x00b0, MalformedURLException -> 0x00bf, IOException -> 0x0140 }
        throw r2;	 Catch:{ SocketTimeoutException -> 0x008f, ConnectTimeoutException -> 0x00b0, MalformedURLException -> 0x00bf, IOException -> 0x0140 }
    L_0x008f:
        r2 = move-exception;
        r2 = "socket";
        r3 = new com.google.android.gms.internal.zzq;
        r3.<init>();
        r0 = r20;
        zza(r2, r0, r3);
        goto L_0x0004;
    L_0x009e:
        r2 = 0;
        r11 = new byte[r2];	 Catch:{ SocketTimeoutException -> 0x008f, ConnectTimeoutException -> 0x00b0, MalformedURLException -> 0x00bf, IOException -> 0x013b }
        goto L_0x0074;
    L_0x00a2:
        r3 = new com.google.android.gms.internal.zzi;	 Catch:{ SocketTimeoutException -> 0x008f, ConnectTimeoutException -> 0x00b0, MalformedURLException -> 0x00bf, IOException -> 0x0140 }
        r7 = 0;
        r8 = android.os.SystemClock.elapsedRealtime();	 Catch:{ SocketTimeoutException -> 0x008f, ConnectTimeoutException -> 0x00b0, MalformedURLException -> 0x00bf, IOException -> 0x0140 }
        r8 = r8 - r16;
        r5 = r11;
        r3.<init>(r4, r5, r6, r7, r8);	 Catch:{ SocketTimeoutException -> 0x008f, ConnectTimeoutException -> 0x00b0, MalformedURLException -> 0x00bf, IOException -> 0x0140 }
        goto L_0x004a;
    L_0x00b0:
        r2 = move-exception;
        r2 = "connection";
        r3 = new com.google.android.gms.internal.zzq;
        r3.<init>();
        r0 = r20;
        zza(r2, r0, r3);
        goto L_0x0004;
    L_0x00bf:
        r2 = move-exception;
        r3 = new java.lang.RuntimeException;
        r4 = new java.lang.StringBuilder;
        r4.<init>();
        r5 = "Bad URL ";
        r4 = r4.append(r5);
        r5 = r20.getUrl();
        r4 = r4.append(r5);
        r4 = r4.toString();
        r3.<init>(r4, r2);
        throw r3;
    L_0x00dd:
        r2 = move-exception;
        r5 = 0;
        r18 = r3;
        r3 = r2;
        r2 = r18;
    L_0x00e4:
        if (r2 == 0) goto L_0x0128;
    L_0x00e6:
        r2 = r2.getStatusLine();
        r4 = r2.getStatusCode();
        r2 = "Unexpected response code %d for %s";
        r3 = 2;
        r3 = new java.lang.Object[r3];
        r7 = 0;
        r8 = java.lang.Integer.valueOf(r4);
        r3[r7] = r8;
        r7 = 1;
        r8 = r20.getUrl();
        r3[r7] = r8;
        com.google.android.gms.internal.zzs.zzc(r2, r3);
        if (r5 == 0) goto L_0x0134;
    L_0x0106:
        r3 = new com.google.android.gms.internal.zzi;
        r7 = 0;
        r8 = android.os.SystemClock.elapsedRealtime();
        r8 = r8 - r16;
        r3.<init>(r4, r5, r6, r7, r8);
        r2 = 401; // 0x191 float:5.62E-43 double:1.98E-321;
        if (r4 == r2) goto L_0x011a;
    L_0x0116:
        r2 = 403; // 0x193 float:5.65E-43 double:1.99E-321;
        if (r4 != r2) goto L_0x012e;
    L_0x011a:
        r2 = "auth";
        r4 = new com.google.android.gms.internal.zza;
        r4.<init>(r3);
        r0 = r20;
        zza(r2, r0, r4);
        goto L_0x0004;
    L_0x0128:
        r2 = new com.google.android.gms.internal.zzj;
        r2.<init>(r3);
        throw r2;
    L_0x012e:
        r2 = new com.google.android.gms.internal.zzp;
        r2.<init>(r3);
        throw r2;
    L_0x0134:
        r2 = new com.google.android.gms.internal.zzh;
        r3 = 0;
        r2.<init>(r3);
        throw r2;
    L_0x013b:
        r2 = move-exception;
        r5 = 0;
        r3 = r2;
        r2 = r14;
        goto L_0x00e4;
    L_0x0140:
        r2 = move-exception;
        r5 = r11;
        r3 = r2;
        r2 = r14;
        goto L_0x00e4;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.zzt.zza(com.google.android.gms.internal.zzk):com.google.android.gms.internal.zzi");
    }
}
