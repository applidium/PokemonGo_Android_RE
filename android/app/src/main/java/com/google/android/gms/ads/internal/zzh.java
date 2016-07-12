package com.google.android.gms.ads.internal;

import android.content.Context;
import android.view.MotionEvent;
import com.google.android.gms.ads.internal.client.zzl;
import com.google.android.gms.ads.internal.util.client.zzb;
import com.google.android.gms.internal.zzaj;
import com.google.android.gms.internal.zzam;
import com.google.android.gms.internal.zzby;
import com.google.android.gms.internal.zzgr;
import com.google.android.gms.internal.zzic;
import java.util.List;
import java.util.Vector;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.atomic.AtomicReference;
import spacemadness.com.lunarconsole.BuildConfig;

@zzgr
class zzh implements zzaj, Runnable {
    private final List<Object[]> zzoQ;
    private final AtomicReference<zzaj> zzoR;
    CountDownLatch zzoS;
    private zzq zzot;

    public zzh(zzq com_google_android_gms_ads_internal_zzq) {
        this.zzoQ = new Vector();
        this.zzoR = new AtomicReference();
        this.zzoS = new CountDownLatch(1);
        this.zzot = com_google_android_gms_ads_internal_zzq;
        if (zzl.zzcF().zzgT()) {
            zzic.zza((Runnable) this);
        } else {
            run();
        }
    }

    private void zzbh() {
        if (!this.zzoQ.isEmpty()) {
            for (Object[] objArr : this.zzoQ) {
                if (objArr.length == 1) {
                    ((zzaj) this.zzoR.get()).zza((MotionEvent) objArr[0]);
                } else if (objArr.length == 3) {
                    ((zzaj) this.zzoR.get()).zza(((Integer) objArr[0]).intValue(), ((Integer) objArr[1]).intValue(), ((Integer) objArr[2]).intValue());
                }
            }
            this.zzoQ.clear();
        }
    }

    private Context zzp(Context context) {
        if (!((Boolean) zzby.zzuw.get()).booleanValue()) {
            return context;
        }
        Context applicationContext = context.getApplicationContext();
        return applicationContext != null ? applicationContext : context;
    }

    public void run() {
        try {
            boolean z = !((Boolean) zzby.zzuI.get()).booleanValue() || this.zzot.zzqj.zzJx;
            zza(zzb(this.zzot.zzqj.zzJu, zzp(this.zzot.context), z));
        } finally {
            this.zzoS.countDown();
            this.zzot = null;
        }
    }

    public void zza(int i, int i2, int i3) {
        zzaj com_google_android_gms_internal_zzaj = (zzaj) this.zzoR.get();
        if (com_google_android_gms_internal_zzaj != null) {
            zzbh();
            com_google_android_gms_internal_zzaj.zza(i, i2, i3);
            return;
        }
        this.zzoQ.add(new Object[]{Integer.valueOf(i), Integer.valueOf(i2), Integer.valueOf(i3)});
    }

    public void zza(MotionEvent motionEvent) {
        zzaj com_google_android_gms_internal_zzaj = (zzaj) this.zzoR.get();
        if (com_google_android_gms_internal_zzaj != null) {
            zzbh();
            com_google_android_gms_internal_zzaj.zza(motionEvent);
            return;
        }
        this.zzoQ.add(new Object[]{motionEvent});
    }

    protected void zza(zzaj com_google_android_gms_internal_zzaj) {
        this.zzoR.set(com_google_android_gms_internal_zzaj);
    }

    protected zzaj zzb(String str, Context context, boolean z) {
        return zzam.zza(str, context, z);
    }

    public String zzb(Context context) {
        if (zzbg()) {
            zzaj com_google_android_gms_internal_zzaj = (zzaj) this.zzoR.get();
            if (com_google_android_gms_internal_zzaj != null) {
                zzbh();
                return com_google_android_gms_internal_zzaj.zzb(zzp(context));
            }
        }
        return BuildConfig.FLAVOR;
    }

    public String zzb(Context context, String str) {
        if (zzbg()) {
            zzaj com_google_android_gms_internal_zzaj = (zzaj) this.zzoR.get();
            if (com_google_android_gms_internal_zzaj != null) {
                zzbh();
                return com_google_android_gms_internal_zzaj.zzb(zzp(context), str);
            }
        }
        return BuildConfig.FLAVOR;
    }

    protected boolean zzbg() {
        try {
            this.zzoS.await();
            return true;
        } catch (Throwable e) {
            zzb.zzd("Interrupted during GADSignals creation.", e);
            return false;
        }
    }
}
