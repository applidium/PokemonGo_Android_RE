package com.google.android.gms.internal;

import android.os.Handler;
import com.voxelbusters.nativeplugins.defines.Keys.Twitter;
import java.util.concurrent.Executor;

public class zze implements zzn {
    private final Executor zzs;

    /* renamed from: com.google.android.gms.internal.zze.1 */
    class C05271 implements Executor {
        final /* synthetic */ Handler zzt;
        final /* synthetic */ zze zzu;

        C05271(zze com_google_android_gms_internal_zze, Handler handler) {
            this.zzu = com_google_android_gms_internal_zze;
            this.zzt = handler;
        }

        public void execute(Runnable runnable) {
            this.zzt.post(runnable);
        }
    }

    private class zza implements Runnable {
        final /* synthetic */ zze zzu;
        private final zzk zzv;
        private final zzm zzw;
        private final Runnable zzx;

        public zza(zze com_google_android_gms_internal_zze, zzk com_google_android_gms_internal_zzk, zzm com_google_android_gms_internal_zzm, Runnable runnable) {
            this.zzu = com_google_android_gms_internal_zze;
            this.zzv = com_google_android_gms_internal_zzk;
            this.zzw = com_google_android_gms_internal_zzm;
            this.zzx = runnable;
        }

        public void run() {
            if (this.zzv.isCanceled()) {
                this.zzv.zzd("canceled-at-delivery");
                return;
            }
            if (this.zzw.isSuccess()) {
                this.zzv.zza(this.zzw.result);
            } else {
                this.zzv.zzc(this.zzw.zzah);
            }
            if (this.zzw.zzai) {
                this.zzv.zzc("intermediate-response");
            } else {
                this.zzv.zzd(Twitter.COMPOSER_ACTION_DONE);
            }
            if (this.zzx != null) {
                this.zzx.run();
            }
        }
    }

    public zze(Handler handler) {
        this.zzs = new C05271(this, handler);
    }

    public void zza(zzk<?> com_google_android_gms_internal_zzk_, zzm<?> com_google_android_gms_internal_zzm_) {
        zza(com_google_android_gms_internal_zzk_, com_google_android_gms_internal_zzm_, null);
    }

    public void zza(zzk<?> com_google_android_gms_internal_zzk_, zzm<?> com_google_android_gms_internal_zzm_, Runnable runnable) {
        com_google_android_gms_internal_zzk_.zzv();
        com_google_android_gms_internal_zzk_.zzc("post-response");
        this.zzs.execute(new zza(this, com_google_android_gms_internal_zzk_, com_google_android_gms_internal_zzm_, runnable));
    }

    public void zza(zzk<?> com_google_android_gms_internal_zzk_, zzr com_google_android_gms_internal_zzr) {
        com_google_android_gms_internal_zzk_.zzc("post-error");
        this.zzs.execute(new zza(this, com_google_android_gms_internal_zzk_, zzm.zzd(com_google_android_gms_internal_zzr), null));
    }
}
