package com.google.android.gms.internal;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import com.google.android.gms.common.internal.zzx;

public final class zzlm<L> {
    private volatile L mListener;
    private final zza zzacG;

    public interface zzb<L> {
        void zznN();

        void zzq(L l);
    }

    private final class zza extends Handler {
        final /* synthetic */ zzlm zzacH;

        public zza(zzlm com_google_android_gms_internal_zzlm, Looper looper) {
            this.zzacH = com_google_android_gms_internal_zzlm;
            super(looper);
        }

        public void handleMessage(Message message) {
            boolean z = true;
            if (message.what != 1) {
                z = false;
            }
            zzx.zzaa(z);
            this.zzacH.zzb((zzb) message.obj);
        }
    }

    public zzlm(Looper looper, L l) {
        this.zzacG = new zza(this, looper);
        this.mListener = zzx.zzb((Object) l, (Object) "Listener must not be null");
    }

    public void clear() {
        this.mListener = null;
    }

    public void zza(zzb<? super L> com_google_android_gms_internal_zzlm_zzb__super_L) {
        zzx.zzb((Object) com_google_android_gms_internal_zzlm_zzb__super_L, (Object) "Notifier must not be null");
        this.zzacG.sendMessage(this.zzacG.obtainMessage(1, com_google_android_gms_internal_zzlm_zzb__super_L));
    }

    void zzb(zzb<? super L> com_google_android_gms_internal_zzlm_zzb__super_L) {
        Object obj = this.mListener;
        if (obj == null) {
            com_google_android_gms_internal_zzlm_zzb__super_L.zznN();
            return;
        }
        try {
            com_google_android_gms_internal_zzlm_zzb__super_L.zzq(obj);
        } catch (RuntimeException e) {
            com_google_android_gms_internal_zzlm_zzb__super_L.zznN();
            throw e;
        }
    }
}
