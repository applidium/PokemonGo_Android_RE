package com.google.android.gms.internal;

import android.os.Process;
import com.google.android.gms.ads.internal.util.client.zzb;
import com.google.android.gms.ads.internal.zzp;
import java.util.concurrent.Callable;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.Future;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.atomic.AtomicInteger;

@zzgr
public final class zzic {
    private static final ExecutorService zzIr;
    private static final ExecutorService zzIs;

    /* renamed from: com.google.android.gms.internal.zzic.1 */
    static final class C05771 implements Callable<Void> {
        final /* synthetic */ Runnable zzIt;

        C05771(Runnable runnable) {
            this.zzIt = runnable;
        }

        public /* synthetic */ Object call() throws Exception {
            return zzgA();
        }

        public Void zzgA() {
            this.zzIt.run();
            return null;
        }
    }

    /* renamed from: com.google.android.gms.internal.zzic.2 */
    static final class C05782 implements Callable<Void> {
        final /* synthetic */ Runnable zzIt;

        C05782(Runnable runnable) {
            this.zzIt = runnable;
        }

        public /* synthetic */ Object call() throws Exception {
            return zzgA();
        }

        public Void zzgA() {
            this.zzIt.run();
            return null;
        }
    }

    /* renamed from: com.google.android.gms.internal.zzic.3 */
    static final class C05793 implements Runnable {
        final /* synthetic */ Callable zzIu;
        final /* synthetic */ zzin zzrA;

        C05793(zzin com_google_android_gms_internal_zzin, Callable callable) {
            this.zzrA = com_google_android_gms_internal_zzin;
            this.zzIu = callable;
        }

        public void run() {
            try {
                Process.setThreadPriority(10);
                this.zzrA.zzf(this.zzIu.call());
            } catch (Throwable e) {
                zzp.zzby().zzc(e, true);
                this.zzrA.cancel(true);
            }
        }
    }

    /* renamed from: com.google.android.gms.internal.zzic.4 */
    static final class C05804 implements Runnable {
        final /* synthetic */ Future zzIv;
        final /* synthetic */ zzin zzrA;

        C05804(zzin com_google_android_gms_internal_zzin, Future future) {
            this.zzrA = com_google_android_gms_internal_zzin;
            this.zzIv = future;
        }

        public void run() {
            if (this.zzrA.isCancelled()) {
                this.zzIv.cancel(true);
            }
        }
    }

    /* renamed from: com.google.android.gms.internal.zzic.5 */
    static final class C05815 implements ThreadFactory {
        private final AtomicInteger zzIw;
        final /* synthetic */ String zzIx;

        C05815(String str) {
            this.zzIx = str;
            this.zzIw = new AtomicInteger(1);
        }

        public Thread newThread(Runnable runnable) {
            return new Thread(runnable, "AdWorker(" + this.zzIx + ") #" + this.zzIw.getAndIncrement());
        }
    }

    static {
        zzIr = Executors.newFixedThreadPool(10, zzay("Default"));
        zzIs = Executors.newFixedThreadPool(5, zzay("Loader"));
    }

    public static zziq<Void> zza(int i, Runnable runnable) {
        return i == 1 ? zza(zzIs, new C05771(runnable)) : zza(zzIr, new C05782(runnable));
    }

    public static zziq<Void> zza(Runnable runnable) {
        return zza(0, runnable);
    }

    public static <T> zziq<T> zza(Callable<T> callable) {
        return zza(zzIr, (Callable) callable);
    }

    public static <T> zziq<T> zza(ExecutorService executorService, Callable<T> callable) {
        Object com_google_android_gms_internal_zzin = new zzin();
        try {
            com_google_android_gms_internal_zzin.zzd(new C05804(com_google_android_gms_internal_zzin, executorService.submit(new C05793(com_google_android_gms_internal_zzin, callable))));
        } catch (Throwable e) {
            zzb.zzd("Thread execution is rejected.", e);
            com_google_android_gms_internal_zzin.cancel(true);
        }
        return com_google_android_gms_internal_zzin;
    }

    private static ThreadFactory zzay(String str) {
        return new C05815(str);
    }
}
