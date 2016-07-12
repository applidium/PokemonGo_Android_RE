package com.google.android.gms.internal;

import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.atomic.AtomicInteger;

public class zzip {

    public interface zza<D, R> {
        R zze(D d);
    }

    /* renamed from: com.google.android.gms.internal.zzip.1 */
    static final class C05921 implements Runnable {
        final /* synthetic */ zzin zzJB;
        final /* synthetic */ zza zzJC;
        final /* synthetic */ zziq zzJD;

        C05921(zzin com_google_android_gms_internal_zzin, zza com_google_android_gms_internal_zzip_zza, zziq com_google_android_gms_internal_zziq) {
            this.zzJB = com_google_android_gms_internal_zzin;
            this.zzJC = com_google_android_gms_internal_zzip_zza;
            this.zzJD = com_google_android_gms_internal_zziq;
        }

        /* JADX WARNING: inconsistent code. */
        /* Code decompiled incorrectly, please refer to instructions dump. */
        public void run() {
            /*
            r3 = this;
            r0 = r3.zzJB;	 Catch:{ CancellationException -> 0x0012, InterruptedException -> 0x001a, ExecutionException -> 0x001c }
            r1 = r3.zzJC;	 Catch:{ CancellationException -> 0x0012, InterruptedException -> 0x001a, ExecutionException -> 0x001c }
            r2 = r3.zzJD;	 Catch:{ CancellationException -> 0x0012, InterruptedException -> 0x001a, ExecutionException -> 0x001c }
            r2 = r2.get();	 Catch:{ CancellationException -> 0x0012, InterruptedException -> 0x001a, ExecutionException -> 0x001c }
            r1 = r1.zze(r2);	 Catch:{ CancellationException -> 0x0012, InterruptedException -> 0x001a, ExecutionException -> 0x001c }
            r0.zzf(r1);	 Catch:{ CancellationException -> 0x0012, InterruptedException -> 0x001a, ExecutionException -> 0x001c }
        L_0x0011:
            return;
        L_0x0012:
            r0 = move-exception;
        L_0x0013:
            r0 = r3.zzJB;
            r1 = 1;
            r0.cancel(r1);
            goto L_0x0011;
        L_0x001a:
            r0 = move-exception;
            goto L_0x0013;
        L_0x001c:
            r0 = move-exception;
            goto L_0x0013;
            */
            throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.zzip.1.run():void");
        }
    }

    /* renamed from: com.google.android.gms.internal.zzip.2 */
    static final class C05932 implements Runnable {
        final /* synthetic */ AtomicInteger zzJE;
        final /* synthetic */ int zzJF;
        final /* synthetic */ zzin zzJG;
        final /* synthetic */ List zzJH;

        C05932(AtomicInteger atomicInteger, int i, zzin com_google_android_gms_internal_zzin, List list) {
            this.zzJE = atomicInteger;
            this.zzJF = i;
            this.zzJG = com_google_android_gms_internal_zzin;
            this.zzJH = list;
        }

        /* JADX WARNING: inconsistent code. */
        /* Code decompiled incorrectly, please refer to instructions dump. */
        public void run() {
            /*
            r2 = this;
            r0 = r2.zzJE;
            r0 = r0.incrementAndGet();
            r1 = r2.zzJF;
            if (r0 < r1) goto L_0x0015;
        L_0x000a:
            r0 = r2.zzJG;	 Catch:{ ExecutionException -> 0x0016, InterruptedException -> 0x001d }
            r1 = r2.zzJH;	 Catch:{ ExecutionException -> 0x0016, InterruptedException -> 0x001d }
            r1 = com.google.android.gms.internal.zzip.zzi(r1);	 Catch:{ ExecutionException -> 0x0016, InterruptedException -> 0x001d }
            r0.zzf(r1);	 Catch:{ ExecutionException -> 0x0016, InterruptedException -> 0x001d }
        L_0x0015:
            return;
        L_0x0016:
            r0 = move-exception;
        L_0x0017:
            r1 = "Unable to convert list of futures to a future of list";
            com.google.android.gms.ads.internal.util.client.zzb.zzd(r1, r0);
            goto L_0x0015;
        L_0x001d:
            r0 = move-exception;
            goto L_0x0017;
            */
            throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.zzip.2.run():void");
        }
    }

    public static <A, B> zziq<B> zza(zziq<A> com_google_android_gms_internal_zziq_A, zza<A, B> com_google_android_gms_internal_zzip_zza_A__B) {
        zziq com_google_android_gms_internal_zzin = new zzin();
        com_google_android_gms_internal_zziq_A.zzc(new C05921(com_google_android_gms_internal_zzin, com_google_android_gms_internal_zzip_zza_A__B, com_google_android_gms_internal_zziq_A));
        return com_google_android_gms_internal_zzin;
    }

    public static <V> zziq<List<V>> zzh(List<zziq<V>> list) {
        zziq com_google_android_gms_internal_zzin = new zzin();
        int size = list.size();
        AtomicInteger atomicInteger = new AtomicInteger(0);
        for (zziq zzc : list) {
            zzc.zzc(new C05932(atomicInteger, size, com_google_android_gms_internal_zzin, list));
        }
        return com_google_android_gms_internal_zzin;
    }

    private static <V> List<V> zzi(List<zziq<V>> list) throws ExecutionException, InterruptedException {
        List<V> arrayList = new ArrayList();
        for (zziq com_google_android_gms_internal_zziq : list) {
            Object obj = com_google_android_gms_internal_zziq.get();
            if (obj != null) {
                arrayList.add(obj);
            }
        }
        return arrayList;
    }
}
