package com.google.android.gms.internal;

import android.net.TrafficStats;
import android.os.Build.VERSION;
import android.os.Process;
import android.os.SystemClock;
import java.util.concurrent.BlockingQueue;

public class zzg extends Thread {
    private final zzb zzj;
    private final zzn zzk;
    private volatile boolean zzl;
    private final BlockingQueue<zzk<?>> zzy;
    private final zzf zzz;

    public zzg(BlockingQueue<zzk<?>> blockingQueue, zzf com_google_android_gms_internal_zzf, zzb com_google_android_gms_internal_zzb, zzn com_google_android_gms_internal_zzn) {
        this.zzl = false;
        this.zzy = blockingQueue;
        this.zzz = com_google_android_gms_internal_zzf;
        this.zzj = com_google_android_gms_internal_zzb;
        this.zzk = com_google_android_gms_internal_zzn;
    }

    private void zzb(zzk<?> com_google_android_gms_internal_zzk_) {
        if (VERSION.SDK_INT >= 14) {
            TrafficStats.setThreadStatsTag(com_google_android_gms_internal_zzk_.zzg());
        }
    }

    private void zzb(zzk<?> com_google_android_gms_internal_zzk_, zzr com_google_android_gms_internal_zzr) {
        this.zzk.zza((zzk) com_google_android_gms_internal_zzk_, com_google_android_gms_internal_zzk_.zzb(com_google_android_gms_internal_zzr));
    }

    public void quit() {
        this.zzl = true;
        interrupt();
    }

    public void run() {
        Process.setThreadPriority(10);
        while (true) {
            long elapsedRealtime = SystemClock.elapsedRealtime();
            try {
                zzk com_google_android_gms_internal_zzk = (zzk) this.zzy.take();
                try {
                    com_google_android_gms_internal_zzk.zzc("network-queue-take");
                    if (com_google_android_gms_internal_zzk.isCanceled()) {
                        com_google_android_gms_internal_zzk.zzd("network-discard-cancelled");
                    } else {
                        zzb(com_google_android_gms_internal_zzk);
                        zzi zza = this.zzz.zza(com_google_android_gms_internal_zzk);
                        com_google_android_gms_internal_zzk.zzc("network-http-complete");
                        if (zza.zzB && com_google_android_gms_internal_zzk.zzw()) {
                            com_google_android_gms_internal_zzk.zzd("not-modified");
                        } else {
                            zzm zza2 = com_google_android_gms_internal_zzk.zza(zza);
                            com_google_android_gms_internal_zzk.zzc("network-parse-complete");
                            if (com_google_android_gms_internal_zzk.zzr() && zza2.zzag != null) {
                                this.zzj.zza(com_google_android_gms_internal_zzk.zzh(), zza2.zzag);
                                com_google_android_gms_internal_zzk.zzc("network-cache-written");
                            }
                            com_google_android_gms_internal_zzk.zzv();
                            this.zzk.zza(com_google_android_gms_internal_zzk, zza2);
                        }
                    }
                } catch (zzr e) {
                    e.zza(SystemClock.elapsedRealtime() - elapsedRealtime);
                    zzb(com_google_android_gms_internal_zzk, e);
                } catch (Throwable e2) {
                    zzs.zza(e2, "Unhandled exception %s", e2.toString());
                    zzr com_google_android_gms_internal_zzr = new zzr(e2);
                    com_google_android_gms_internal_zzr.zza(SystemClock.elapsedRealtime() - elapsedRealtime);
                    this.zzk.zza(com_google_android_gms_internal_zzk, com_google_android_gms_internal_zzr);
                }
            } catch (InterruptedException e3) {
                if (this.zzl) {
                    return;
                }
            }
        }
    }
}
