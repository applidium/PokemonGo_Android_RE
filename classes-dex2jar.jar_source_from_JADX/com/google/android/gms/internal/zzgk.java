package com.google.android.gms.internal;

import android.content.Context;
import com.google.ads.mediation.admob.AdMobAdapter;
import com.google.android.gms.ads.internal.request.AdRequestInfoParcel;
import com.google.android.gms.internal.zzhs.zza;
import spacemadness.com.lunarconsole.C1401R;

@zzgr
public class zzgk extends zzgf {
    protected zzei zzDA;
    private zzec zzDz;
    private final zzcg zzoo;
    private zzem zzox;
    private zzee zzzA;

    zzgk(Context context, zza com_google_android_gms_internal_zzhs_zza, zzem com_google_android_gms_internal_zzem, zzgg.zza com_google_android_gms_internal_zzgg_zza, zzcg com_google_android_gms_internal_zzcg) {
        super(context, com_google_android_gms_internal_zzhs_zza, com_google_android_gms_internal_zzgg_zza);
        this.zzox = com_google_android_gms_internal_zzem;
        this.zzzA = com_google_android_gms_internal_zzhs_zza.zzHx;
        this.zzoo = com_google_android_gms_internal_zzcg;
    }

    public void onStop() {
        synchronized (this.zzDh) {
            super.onStop();
            if (this.zzDz != null) {
                this.zzDz.cancel();
            }
        }
    }

    protected zzhs zzA(int i) {
        AdRequestInfoParcel adRequestInfoParcel = this.zzDe.zzHC;
        return new zzhs(adRequestInfoParcel.zzEn, null, this.zzDf.zzyY, i, this.zzDf.zzyZ, this.zzDf.zzEM, this.zzDf.orientation, this.zzDf.zzzc, adRequestInfoParcel.zzEq, this.zzDf.zzEK, this.zzDA != null ? this.zzDA.zzzu : null, this.zzDA != null ? this.zzDA.zzzv : null, this.zzDA != null ? this.zzDA.zzzw : AdMobAdapter.class.getName(), this.zzzA, this.zzDA != null ? this.zzDA.zzzx : null, this.zzDf.zzEL, this.zzDe.zzqn, this.zzDf.zzEJ, this.zzDe.zzHz, this.zzDf.zzEO, this.zzDf.zzEP, this.zzDe.zzHw, null);
    }

    protected void zzh(long j) throws zza {
        synchronized (this.zzDh) {
            this.zzDz = new zzek(this.mContext, this.zzDe.zzHC, this.zzox, this.zzzA, this.zzDf.zzth, j, ((Long) zzby.zzvw.get()).longValue(), this.zzoo);
        }
        this.zzDA = this.zzDz.zzc(this.zzzA.zzyW);
        switch (this.zzDA.zzzt) {
            case C1401R.styleable.AdsAttrs_adSize /*0*/:
            case C1401R.styleable.LoadingImageView_imageAspectRatio /*1*/:
                throw new zza("No fill from any mediation ad networks.", 3);
            default:
                throw new zza("Unexpected mediation result: " + this.zzDA.zzzt, 0);
        }
    }
}
