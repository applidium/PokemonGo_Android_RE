package com.google.android.gms.internal;

import android.support.v4.view.accessibility.AccessibilityNodeInfoCompat;
import android.util.Base64OutputStream;
import com.google.android.gms.ads.internal.util.client.zzb;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Comparator;
import java.util.Iterator;
import java.util.Locale;
import java.util.PriorityQueue;
import org.apache.commons.io.IOUtils;
import spacemadness.com.lunarconsole.BuildConfig;
import spacemadness.com.lunarconsole.C1401R;

public class zzbm {
    private final int zzsp;
    private final int zzsq;
    private final int zzsr;
    private final zzbl zzss;

    /* renamed from: com.google.android.gms.internal.zzbm.1 */
    class C04841 implements Comparator<String> {
        final /* synthetic */ zzbm zzst;

        C04841(zzbm com_google_android_gms_internal_zzbm) {
            this.zzst = com_google_android_gms_internal_zzbm;
        }

        public int compare(String str, String str2) {
            return str2.length() - str.length();
        }
    }

    /* renamed from: com.google.android.gms.internal.zzbm.2 */
    class C04852 implements Comparator<com.google.android.gms.internal.zzbp.zza> {
        final /* synthetic */ zzbm zzst;

        C04852(zzbm com_google_android_gms_internal_zzbm) {
            this.zzst = com_google_android_gms_internal_zzbm;
        }

        public /* synthetic */ int compare(Object obj, Object obj2) {
            return zza((com.google.android.gms.internal.zzbp.zza) obj, (com.google.android.gms.internal.zzbp.zza) obj2);
        }

        public int zza(com.google.android.gms.internal.zzbp.zza com_google_android_gms_internal_zzbp_zza, com.google.android.gms.internal.zzbp.zza com_google_android_gms_internal_zzbp_zza2) {
            return (int) (com_google_android_gms_internal_zzbp_zza.value - com_google_android_gms_internal_zzbp_zza2.value);
        }
    }

    static class zza {
        ByteArrayOutputStream zzsu;
        Base64OutputStream zzsv;

        public zza() {
            this.zzsu = new ByteArrayOutputStream(AccessibilityNodeInfoCompat.ACTION_SCROLL_FORWARD);
            this.zzsv = new Base64OutputStream(this.zzsu, 10);
        }

        public java.lang.String toString() {
            /* JADX: method processing error */
/*
            Error: jadx.core.utils.exceptions.JadxRuntimeException: Can't find immediate dominator for block B:15:? in {2, 6, 11, 13, 14, 16, 17} preds:[]
	at jadx.core.dex.visitors.blocksmaker.BlockProcessor.computeDominators(BlockProcessor.java:129)
	at jadx.core.dex.visitors.blocksmaker.BlockProcessor.processBlocksTree(BlockProcessor.java:48)
	at jadx.core.dex.visitors.blocksmaker.BlockProcessor.rerun(BlockProcessor.java:44)
	at jadx.core.dex.visitors.blocksmaker.BlockFinallyExtract.visit(BlockFinallyExtract.java:57)
	at jadx.core.dex.visitors.DepthTraversal.visit(DepthTraversal.java:31)
	at jadx.core.dex.visitors.DepthTraversal.visit(DepthTraversal.java:17)
	at jadx.core.dex.visitors.DepthTraversal.visit(DepthTraversal.java:14)
	at jadx.core.ProcessClass.process(ProcessClass.java:37)
	at jadx.core.ProcessClass.processDependencies(ProcessClass.java:59)
	at jadx.core.ProcessClass.process(ProcessClass.java:42)
	at jadx.api.JadxDecompiler.processClass(JadxDecompiler.java:281)
	at jadx.api.JavaClass.decompile(JavaClass.java:59)
	at jadx.api.JadxDecompiler$1.run(JadxDecompiler.java:161)
*/
            /*
            r3 = this;
            r2 = 0;
            r0 = r3.zzsv;	 Catch:{ IOException -> 0x0016 }
            r0.close();	 Catch:{ IOException -> 0x0016 }
        L_0x0006:
            r0 = r3.zzsu;	 Catch:{ IOException -> 0x001d, all -> 0x002a }
            r0.close();	 Catch:{ IOException -> 0x001d, all -> 0x002a }
            r0 = r3.zzsu;	 Catch:{ IOException -> 0x001d, all -> 0x002a }
            r0 = r0.toString();	 Catch:{ IOException -> 0x001d, all -> 0x002a }
            r3.zzsu = r2;
            r3.zzsv = r2;
        L_0x0015:
            return r0;
        L_0x0016:
            r0 = move-exception;
            r1 = "HashManager: Unable to convert to Base64.";
            com.google.android.gms.ads.internal.util.client.zzb.zzb(r1, r0);
            goto L_0x0006;
        L_0x001d:
            r0 = move-exception;
            r1 = "HashManager: Unable to convert to Base64.";	 Catch:{ IOException -> 0x001d, all -> 0x002a }
            com.google.android.gms.ads.internal.util.client.zzb.zzb(r1, r0);	 Catch:{ IOException -> 0x001d, all -> 0x002a }
            r0 = "";
            r3.zzsu = r2;
            r3.zzsv = r2;
            goto L_0x0015;
        L_0x002a:
            r0 = move-exception;
            r3.zzsu = r2;
            r3.zzsv = r2;
            throw r0;
            */
            throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.zzbm.zza.toString():java.lang.String");
        }

        public void write(byte[] bArr) throws IOException {
            this.zzsv.write(bArr);
        }
    }

    public zzbm(int i) {
        this.zzss = new zzbo();
        this.zzsq = i;
        this.zzsp = 6;
        this.zzsr = 0;
    }

    private String zzA(String str) {
        String[] split = str.split(IOUtils.LINE_SEPARATOR_UNIX);
        if (split.length == 0) {
            return BuildConfig.FLAVOR;
        }
        zza zzcz = zzcz();
        Arrays.sort(split, new C04841(this));
        int i = 0;
        while (i < split.length && i < this.zzsq) {
            if (split[i].trim().length() != 0) {
                try {
                    zzcz.write(this.zzss.zzz(split[i]));
                } catch (Throwable e) {
                    zzb.zzb("Error while writing hash to byteStream", e);
                }
            }
            i++;
        }
        return zzcz.toString();
    }

    String zzB(String str) {
        String[] split = str.split(IOUtils.LINE_SEPARATOR_UNIX);
        if (split.length == 0) {
            return BuildConfig.FLAVOR;
        }
        zza zzcz = zzcz();
        PriorityQueue priorityQueue = new PriorityQueue(this.zzsq, new C04852(this));
        for (String zzD : split) {
            String[] zzD2 = zzbn.zzD(zzD);
            if (zzD2.length >= this.zzsp) {
                zzbp.zza(zzD2, this.zzsq, this.zzsp, priorityQueue);
            }
        }
        Iterator it = priorityQueue.iterator();
        while (it.hasNext()) {
            try {
                zzcz.write(this.zzss.zzz(((com.google.android.gms.internal.zzbp.zza) it.next()).zzsx));
            } catch (Throwable e) {
                zzb.zzb("Error while writing hash to byteStream", e);
            }
        }
        return zzcz.toString();
    }

    public String zza(ArrayList<String> arrayList) {
        StringBuffer stringBuffer = new StringBuffer();
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            stringBuffer.append(((String) it.next()).toLowerCase(Locale.US));
            stringBuffer.append('\n');
        }
        switch (this.zzsr) {
            case C1401R.styleable.AdsAttrs_adSize /*0*/:
                return zzB(stringBuffer.toString());
            case C1401R.styleable.LoadingImageView_imageAspectRatio /*1*/:
                return zzA(stringBuffer.toString());
            default:
                return BuildConfig.FLAVOR;
        }
    }

    zza zzcz() {
        return new zza();
    }
}
