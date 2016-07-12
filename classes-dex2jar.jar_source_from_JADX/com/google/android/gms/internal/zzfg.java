package com.google.android.gms.internal;

import android.app.Activity;
import android.content.Context;
import android.util.DisplayMetrics;
import android.view.Display;
import android.view.WindowManager;
import com.google.android.gms.ads.internal.client.zzl;
import com.google.android.gms.ads.internal.util.client.zzb;
import com.google.android.gms.ads.internal.zzp;
import com.google.android.gms.internal.zzff.zza;
import java.util.Map;

@zzgr
public class zzfg extends zzfh implements zzdk {
    private final Context mContext;
    private final zzbq zzAA;
    DisplayMetrics zzAB;
    private float zzAC;
    int zzAD;
    int zzAE;
    private int zzAF;
    int zzAG;
    int zzAH;
    int zzAI;
    int zzAJ;
    private final zziz zzoM;
    private final WindowManager zzri;

    public zzfg(zziz com_google_android_gms_internal_zziz, Context context, zzbq com_google_android_gms_internal_zzbq) {
        super(com_google_android_gms_internal_zziz);
        this.zzAD = -1;
        this.zzAE = -1;
        this.zzAG = -1;
        this.zzAH = -1;
        this.zzAI = -1;
        this.zzAJ = -1;
        this.zzoM = com_google_android_gms_internal_zziz;
        this.mContext = context;
        this.zzAA = com_google_android_gms_internal_zzbq;
        this.zzri = (WindowManager) context.getSystemService("window");
    }

    private void zzei() {
        this.zzAB = new DisplayMetrics();
        Display defaultDisplay = this.zzri.getDefaultDisplay();
        defaultDisplay.getMetrics(this.zzAB);
        this.zzAC = this.zzAB.density;
        this.zzAF = defaultDisplay.getRotation();
    }

    private void zzen() {
        int[] iArr = new int[2];
        this.zzoM.getLocationOnScreen(iArr);
        zze(zzl.zzcF().zzc(this.mContext, iArr[0]), zzl.zzcF().zzc(this.mContext, iArr[1]));
    }

    private zzff zzeq() {
        return new zza().zzp(this.zzAA.zzcW()).zzo(this.zzAA.zzcX()).zzq(this.zzAA.zzdb()).zzr(this.zzAA.zzcY()).zzs(this.zzAA.zzcZ()).zzeh();
    }

    public void zza(zziz com_google_android_gms_internal_zziz, Map<String, String> map) {
        zzel();
    }

    public void zze(int i, int i2) {
        zzc(i, i2 - (this.mContext instanceof Activity ? zzp.zzbv().zzj((Activity) this.mContext)[0] : 0), this.zzAI, this.zzAJ);
        this.zzoM.zzhe().zzd(i, i2);
    }

    void zzej() {
        this.zzAD = zzl.zzcF().zzb(this.zzAB, this.zzAB.widthPixels);
        this.zzAE = zzl.zzcF().zzb(this.zzAB, this.zzAB.heightPixels);
        Activity zzgZ = this.zzoM.zzgZ();
        if (zzgZ == null || zzgZ.getWindow() == null) {
            this.zzAG = this.zzAD;
            this.zzAH = this.zzAE;
            return;
        }
        int[] zzg = zzp.zzbv().zzg(zzgZ);
        this.zzAG = zzl.zzcF().zzb(this.zzAB, zzg[0]);
        this.zzAH = zzl.zzcF().zzb(this.zzAB, zzg[1]);
    }

    void zzek() {
        if (this.zzoM.zzaN().zztf) {
            this.zzAI = this.zzAD;
            this.zzAJ = this.zzAE;
            return;
        }
        this.zzoM.measure(0, 0);
        this.zzAI = zzl.zzcF().zzc(this.mContext, this.zzoM.getMeasuredWidth());
        this.zzAJ = zzl.zzcF().zzc(this.mContext, this.zzoM.getMeasuredHeight());
    }

    public void zzel() {
        zzei();
        zzej();
        zzek();
        zzeo();
        zzep();
        zzen();
        zzem();
    }

    void zzem() {
        if (zzb.zzN(2)) {
            zzb.zzaG("Dispatching Ready Event.");
        }
        zzal(this.zzoM.zzhh().zzJu);
    }

    void zzeo() {
        zza(this.zzAD, this.zzAE, this.zzAG, this.zzAH, this.zzAC, this.zzAF);
    }

    void zzep() {
        this.zzoM.zzb("onDeviceFeaturesReceived", zzeq().toJson());
    }
}
