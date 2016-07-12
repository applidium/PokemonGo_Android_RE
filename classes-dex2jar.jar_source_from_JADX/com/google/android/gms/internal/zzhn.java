package com.google.android.gms.internal;

import android.content.Context;
import com.google.android.gms.internal.zzhs.zza;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.concurrent.Future;

@zzgr
public class zzhn extends zzhz implements zzhm {
    private final Context mContext;
    private final zza zzDe;
    private final String zzGY;
    private final ArrayList<Future> zzHp;
    private final ArrayList<String> zzHq;
    private final HashSet<String> zzHr;
    private final zzhg zzHs;
    private final Object zzpd;

    /* renamed from: com.google.android.gms.internal.zzhn.1 */
    class C05701 implements Runnable {
        final /* synthetic */ zzhn zzHt;
        final /* synthetic */ zzhs zzpF;

        C05701(zzhn com_google_android_gms_internal_zzhn, zzhs com_google_android_gms_internal_zzhs) {
            this.zzHt = com_google_android_gms_internal_zzhn;
            this.zzpF = com_google_android_gms_internal_zzhs;
        }

        public void run() {
            this.zzHt.zzHs.zzb(this.zzpF);
        }
    }

    /* renamed from: com.google.android.gms.internal.zzhn.2 */
    class C05712 implements Runnable {
        final /* synthetic */ zzhn zzHt;
        final /* synthetic */ zzhs zzpF;

        C05712(zzhn com_google_android_gms_internal_zzhn, zzhs com_google_android_gms_internal_zzhs) {
            this.zzHt = com_google_android_gms_internal_zzhn;
            this.zzpF = com_google_android_gms_internal_zzhs;
        }

        public void run() {
            this.zzHt.zzHs.zzb(this.zzpF);
        }
    }

    public zzhn(Context context, String str, zza com_google_android_gms_internal_zzhs_zza, zzhg com_google_android_gms_internal_zzhg) {
        this.zzHp = new ArrayList();
        this.zzHq = new ArrayList();
        this.zzHr = new HashSet();
        this.zzpd = new Object();
        this.mContext = context;
        this.zzGY = str;
        this.zzDe = com_google_android_gms_internal_zzhs_zza;
        this.zzHs = com_google_android_gms_internal_zzhg;
    }

    private void zzk(String str, String str2) {
        synchronized (this.zzpd) {
            zzhh zzau = this.zzHs.zzau(str);
            if (zzau == null || zzau.zzgd() == null || zzau.zzgc() == null) {
                return;
            }
            this.zzHp.add(new zzhi(this.mContext, str, this.zzGY, str2, this.zzDe, zzau, this).zzgz());
            this.zzHq.add(str);
        }
    }

    public void onStop() {
    }

    public void zzav(String str) {
        synchronized (this.zzpd) {
            this.zzHr.add(str);
        }
    }

    public void zzb(String str, int i) {
    }

    public void zzbn() {
        for (zzed com_google_android_gms_internal_zzed : this.zzDe.zzHx.zzyW) {
            String str = com_google_android_gms_internal_zzed.zzyT;
            for (String zzk : com_google_android_gms_internal_zzed.zzyO) {
                zzk(zzk, str);
            }
        }
        int i = 0;
        while (i < this.zzHp.size()) {
            try {
                ((Future) this.zzHp.get(i)).get();
                synchronized (this.zzpd) {
                    if (this.zzHr.contains(this.zzHq.get(i))) {
                        com.google.android.gms.ads.internal.util.client.zza.zzJt.post(new C05701(this, new zzhs(this.zzDe.zzHC.zzEn, null, this.zzDe.zzHD.zzyY, -2, this.zzDe.zzHD.zzyZ, this.zzDe.zzHD.zzEM, this.zzDe.zzHD.orientation, this.zzDe.zzHD.zzzc, this.zzDe.zzHC.zzEq, this.zzDe.zzHD.zzEK, (zzed) this.zzDe.zzHx.zzyW.get(i), null, (String) this.zzHq.get(i), this.zzDe.zzHx, null, this.zzDe.zzHD.zzEL, this.zzDe.zzqn, this.zzDe.zzHD.zzEJ, this.zzDe.zzHz, this.zzDe.zzHD.zzEO, this.zzDe.zzHD.zzEP, this.zzDe.zzHw, null)));
                        return;
                    }
                    i++;
                }
            } catch (InterruptedException e) {
            } catch (Exception e2) {
            }
        }
        com.google.android.gms.ads.internal.util.client.zza.zzJt.post(new C05712(this, new zzhs(this.zzDe.zzHC.zzEn, null, this.zzDe.zzHD.zzyY, 3, this.zzDe.zzHD.zzyZ, this.zzDe.zzHD.zzEM, this.zzDe.zzHD.orientation, this.zzDe.zzHD.zzzc, this.zzDe.zzHC.zzEq, this.zzDe.zzHD.zzEK, null, null, null, this.zzDe.zzHx, null, this.zzDe.zzHD.zzEL, this.zzDe.zzqn, this.zzDe.zzHD.zzEJ, this.zzDe.zzHz, this.zzDe.zzHD.zzEO, this.zzDe.zzHD.zzEP, this.zzDe.zzHw, null)));
    }
}
