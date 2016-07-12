package com.google.android.gms.internal;

import android.os.Handler;
import android.os.Looper;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;
import java.util.Queue;
import java.util.Set;
import java.util.concurrent.PriorityBlockingQueue;
import java.util.concurrent.atomic.AtomicInteger;

public class zzl {
    private AtomicInteger zzY;
    private final Map<String, Queue<zzk<?>>> zzZ;
    private final Set<zzk<?>> zzaa;
    private final PriorityBlockingQueue<zzk<?>> zzab;
    private final PriorityBlockingQueue<zzk<?>> zzac;
    private zzg[] zzad;
    private zzc zzae;
    private List<zza> zzaf;
    private final zzb zzj;
    private final zzn zzk;
    private final zzf zzz;

    public interface zza<T> {
        void zzg(zzk<T> com_google_android_gms_internal_zzk_T);
    }

    public zzl(zzb com_google_android_gms_internal_zzb, zzf com_google_android_gms_internal_zzf) {
        this(com_google_android_gms_internal_zzb, com_google_android_gms_internal_zzf, 4);
    }

    public zzl(zzb com_google_android_gms_internal_zzb, zzf com_google_android_gms_internal_zzf, int i) {
        this(com_google_android_gms_internal_zzb, com_google_android_gms_internal_zzf, i, new zze(new Handler(Looper.getMainLooper())));
    }

    public zzl(zzb com_google_android_gms_internal_zzb, zzf com_google_android_gms_internal_zzf, int i, zzn com_google_android_gms_internal_zzn) {
        this.zzY = new AtomicInteger();
        this.zzZ = new HashMap();
        this.zzaa = new HashSet();
        this.zzab = new PriorityBlockingQueue();
        this.zzac = new PriorityBlockingQueue();
        this.zzaf = new ArrayList();
        this.zzj = com_google_android_gms_internal_zzb;
        this.zzz = com_google_android_gms_internal_zzf;
        this.zzad = new zzg[i];
        this.zzk = com_google_android_gms_internal_zzn;
    }

    public int getSequenceNumber() {
        return this.zzY.incrementAndGet();
    }

    public void start() {
        stop();
        this.zzae = new zzc(this.zzab, this.zzac, this.zzj, this.zzk);
        this.zzae.start();
        for (int i = 0; i < this.zzad.length; i++) {
            zzg com_google_android_gms_internal_zzg = new zzg(this.zzac, this.zzz, this.zzj, this.zzk);
            this.zzad[i] = com_google_android_gms_internal_zzg;
            com_google_android_gms_internal_zzg.start();
        }
    }

    public void stop() {
        if (this.zzae != null) {
            this.zzae.quit();
        }
        for (int i = 0; i < this.zzad.length; i++) {
            if (this.zzad[i] != null) {
                this.zzad[i].quit();
            }
        }
    }

    public <T> zzk<T> zze(zzk<T> com_google_android_gms_internal_zzk_T) {
        com_google_android_gms_internal_zzk_T.zza(this);
        synchronized (this.zzaa) {
            this.zzaa.add(com_google_android_gms_internal_zzk_T);
        }
        com_google_android_gms_internal_zzk_T.zza(getSequenceNumber());
        com_google_android_gms_internal_zzk_T.zzc("add-to-queue");
        if (com_google_android_gms_internal_zzk_T.zzr()) {
            synchronized (this.zzZ) {
                String zzh = com_google_android_gms_internal_zzk_T.zzh();
                if (this.zzZ.containsKey(zzh)) {
                    Queue queue = (Queue) this.zzZ.get(zzh);
                    if (queue == null) {
                        queue = new LinkedList();
                    }
                    queue.add(com_google_android_gms_internal_zzk_T);
                    this.zzZ.put(zzh, queue);
                    if (zzs.DEBUG) {
                        zzs.zza("Request for cacheKey=%s is in flight, putting on hold.", zzh);
                    }
                } else {
                    this.zzZ.put(zzh, null);
                    this.zzab.add(com_google_android_gms_internal_zzk_T);
                }
            }
        } else {
            this.zzac.add(com_google_android_gms_internal_zzk_T);
        }
        return com_google_android_gms_internal_zzk_T;
    }

    <T> void zzf(zzk<T> com_google_android_gms_internal_zzk_T) {
        synchronized (this.zzaa) {
            this.zzaa.remove(com_google_android_gms_internal_zzk_T);
        }
        synchronized (this.zzaf) {
            for (zza zzg : this.zzaf) {
                zzg.zzg(com_google_android_gms_internal_zzk_T);
            }
        }
        if (com_google_android_gms_internal_zzk_T.zzr()) {
            synchronized (this.zzZ) {
                Queue queue = (Queue) this.zzZ.remove(com_google_android_gms_internal_zzk_T.zzh());
                if (queue != null) {
                    if (zzs.DEBUG) {
                        zzs.zza("Releasing %d waiting requests for cacheKey=%s.", Integer.valueOf(queue.size()), r2);
                    }
                    this.zzab.addAll(queue);
                }
            }
        }
    }
}
