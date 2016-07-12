package com.google.android.gms.ads.internal;

import android.content.Context;
import android.view.MotionEvent;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.View.OnTouchListener;
import com.google.android.gms.ads.internal.client.AdSizeParcel;
import com.google.android.gms.ads.internal.util.client.VersionInfoParcel;
import com.google.android.gms.ads.internal.util.client.zzb;
import com.google.android.gms.common.internal.zzx;
import com.google.android.gms.internal.zzcg;
import com.google.android.gms.internal.zzch;
import com.google.android.gms.internal.zzcj;
import com.google.android.gms.internal.zzck;
import com.google.android.gms.internal.zzem;
import com.google.android.gms.internal.zzfi;
import com.google.android.gms.internal.zzgr;
import com.google.android.gms.internal.zzhs;
import com.google.android.gms.internal.zzhs.zza;
import com.google.android.gms.internal.zzid;
import com.google.android.gms.internal.zziz;

@zzgr
public abstract class zzc extends zzb implements zzg, zzfi {

    /* renamed from: com.google.android.gms.ads.internal.zzc.1 */
    class C02021 implements Runnable {
        final /* synthetic */ zza zzoB;
        final /* synthetic */ zzc zzoC;

        C02021(zzc com_google_android_gms_ads_internal_zzc, zza com_google_android_gms_internal_zzhs_zza) {
            this.zzoC = com_google_android_gms_ads_internal_zzc;
            this.zzoB = com_google_android_gms_internal_zzhs_zza;
        }

        public void run() {
            this.zzoC.zzb(new zzhs(this.zzoB, null, null, null, null, null, null));
        }
    }

    /* renamed from: com.google.android.gms.ads.internal.zzc.2 */
    class C02052 implements Runnable {
        final /* synthetic */ zza zzoB;
        final /* synthetic */ zzc zzoC;
        final /* synthetic */ zzcg zzoD;

        /* renamed from: com.google.android.gms.ads.internal.zzc.2.1 */
        class C02031 implements OnTouchListener {
            final /* synthetic */ zze zzoE;
            final /* synthetic */ C02052 zzoF;

            C02031(C02052 c02052, zze com_google_android_gms_ads_internal_zze) {
                this.zzoF = c02052;
                this.zzoE = com_google_android_gms_ads_internal_zze;
            }

            public boolean onTouch(View view, MotionEvent motionEvent) {
                this.zzoE.recordClick();
                return false;
            }
        }

        /* renamed from: com.google.android.gms.ads.internal.zzc.2.2 */
        class C02042 implements OnClickListener {
            final /* synthetic */ zze zzoE;
            final /* synthetic */ C02052 zzoF;

            C02042(C02052 c02052, zze com_google_android_gms_ads_internal_zze) {
                this.zzoF = c02052;
                this.zzoE = com_google_android_gms_ads_internal_zze;
            }

            public void onClick(View view) {
                this.zzoE.recordClick();
            }
        }

        C02052(zzc com_google_android_gms_ads_internal_zzc, zza com_google_android_gms_internal_zzhs_zza, zzcg com_google_android_gms_internal_zzcg) {
            this.zzoC = com_google_android_gms_ads_internal_zzc;
            this.zzoB = com_google_android_gms_internal_zzhs_zza;
            this.zzoD = com_google_android_gms_internal_zzcg;
        }

        public void run() {
            if (this.zzoB.zzHD.zzET && this.zzoC.zzot.zzqC != null) {
                String str = null;
                if (this.zzoB.zzHD.zzBF != null) {
                    str = zzp.zzbv().zzaz(this.zzoB.zzHD.zzBF);
                }
                zzcj com_google_android_gms_internal_zzch = new zzch(this.zzoC, str, this.zzoB.zzHD.body);
                this.zzoC.zzot.zzqH = 1;
                try {
                    this.zzoC.zzot.zzqC.zza(com_google_android_gms_internal_zzch);
                    return;
                } catch (Throwable e) {
                    zzb.zzd("Could not call the onCustomRenderedAdLoadedListener.", e);
                }
            }
            zze com_google_android_gms_ads_internal_zze = new zze();
            zziz zza = this.zzoC.zza(this.zzoB, com_google_android_gms_ads_internal_zze);
            com_google_android_gms_ads_internal_zze.zza(new zze.zzb(this.zzoB, zza));
            zza.setOnTouchListener(new C02031(this, com_google_android_gms_ads_internal_zze));
            zza.setOnClickListener(new C02042(this, com_google_android_gms_ads_internal_zze));
            this.zzoC.zzot.zzqH = 0;
            this.zzoC.zzot.zzqm = zzp.zzbu().zza(this.zzoC.zzot.context, this.zzoC, this.zzoB, this.zzoC.zzot.zzqi, zza, this.zzoC.zzox, this.zzoC, this.zzoD);
        }
    }

    public zzc(Context context, AdSizeParcel adSizeParcel, String str, zzem com_google_android_gms_internal_zzem, VersionInfoParcel versionInfoParcel, zzd com_google_android_gms_ads_internal_zzd) {
        super(context, adSizeParcel, str, com_google_android_gms_internal_zzem, versionInfoParcel, com_google_android_gms_ads_internal_zzd);
    }

    public void recordClick() {
        onAdClicked();
    }

    public void recordImpression() {
        zza(this.zzot.zzqo, false);
    }

    protected zziz zza(zza com_google_android_gms_internal_zzhs_zza, zze com_google_android_gms_ads_internal_zze) {
        zziz com_google_android_gms_internal_zziz;
        View nextView = this.zzot.zzqk.getNextView();
        zziz com_google_android_gms_internal_zziz2;
        if (nextView instanceof zziz) {
            zzb.zzaF("Reusing webview...");
            com_google_android_gms_internal_zziz2 = (zziz) nextView;
            com_google_android_gms_internal_zziz2.zza(this.zzot.context, this.zzot.zzqn, this.zzoo);
            com_google_android_gms_internal_zziz = com_google_android_gms_internal_zziz2;
        } else {
            if (nextView != null) {
                this.zzot.zzqk.removeView(nextView);
            }
            com_google_android_gms_internal_zziz2 = zzp.zzbw().zza(this.zzot.context, this.zzot.zzqn, false, false, this.zzot.zzqi, this.zzot.zzqj, this.zzoo, this.zzow);
            if (this.zzot.zzqn.zztg == null) {
                zzb(com_google_android_gms_internal_zziz2.getView());
            }
            com_google_android_gms_internal_zziz = com_google_android_gms_internal_zziz2;
        }
        com_google_android_gms_internal_zziz.zzhe().zzb(this, this, this, this, false, this, null, com_google_android_gms_ads_internal_zze, this);
        com_google_android_gms_internal_zziz.zzaJ(com_google_android_gms_internal_zzhs_zza.zzHC.zzEC);
        return com_google_android_gms_internal_zziz;
    }

    public void zza(int i, int i2, int i3, int i4) {
        zzaS();
    }

    public void zza(zzck com_google_android_gms_internal_zzck) {
        zzx.zzci("setOnCustomRenderedAdLoadedListener must be called on the main UI thread.");
        this.zzot.zzqC = com_google_android_gms_internal_zzck;
    }

    protected void zza(zza com_google_android_gms_internal_zzhs_zza, zzcg com_google_android_gms_internal_zzcg) {
        if (com_google_android_gms_internal_zzhs_zza.errorCode != -2) {
            zzid.zzIE.post(new C02021(this, com_google_android_gms_internal_zzhs_zza));
            return;
        }
        if (com_google_android_gms_internal_zzhs_zza.zzqn != null) {
            this.zzot.zzqn = com_google_android_gms_internal_zzhs_zza.zzqn;
        }
        if (com_google_android_gms_internal_zzhs_zza.zzHD.zzEK) {
            this.zzot.zzqH = 0;
            this.zzot.zzqm = zzp.zzbu().zza(this.zzot.context, this, com_google_android_gms_internal_zzhs_zza, this.zzot.zzqi, null, this.zzox, this, com_google_android_gms_internal_zzcg);
            return;
        }
        zzid.zzIE.post(new C02052(this, com_google_android_gms_internal_zzhs_zza, com_google_android_gms_internal_zzcg));
    }

    protected boolean zza(zzhs com_google_android_gms_internal_zzhs, zzhs com_google_android_gms_internal_zzhs2) {
        if (this.zzot.zzbN() && this.zzot.zzqk != null) {
            this.zzot.zzqk.zzbT().zzaC(com_google_android_gms_internal_zzhs2.zzEP);
        }
        return super.zza(com_google_android_gms_internal_zzhs, com_google_android_gms_internal_zzhs2);
    }

    public void zzbc() {
        zzaQ();
    }

    public void zzc(View view) {
        this.zzot.zzqG = view;
        zzb(new zzhs(this.zzot.zzqp, null, null, null, null, null, null));
    }
}
