package com.google.android.gms.ads.internal;

import android.content.Context;
import android.os.Bundle;
import android.view.View;
import com.google.android.gms.ads.AdSize;
import com.google.android.gms.ads.internal.client.AdRequestParcel;
import com.google.android.gms.ads.internal.client.AdSizeParcel;
import com.google.android.gms.ads.internal.client.zzl;
import com.google.android.gms.ads.internal.util.client.VersionInfoParcel;
import com.google.android.gms.common.internal.zzx;
import com.google.android.gms.dynamic.zzd;
import com.google.android.gms.dynamic.zze;
import com.google.android.gms.internal.zzem;
import com.google.android.gms.internal.zzgr;
import com.google.android.gms.internal.zzhs;
import com.google.android.gms.internal.zzhs.zza;
import com.google.android.gms.internal.zziz;
import com.google.android.gms.internal.zzja.zzb;
import java.util.List;

@zzgr
public class zzf extends zzc {
    private boolean zzoN;

    /* renamed from: com.google.android.gms.ads.internal.zzf.1 */
    class C02061 implements zzb {
        final /* synthetic */ zzhs zzoO;
        final /* synthetic */ zzf zzoP;

        C02061(zzf com_google_android_gms_ads_internal_zzf, zzhs com_google_android_gms_internal_zzhs) {
            this.zzoP = com_google_android_gms_ads_internal_zzf;
            this.zzoO = com_google_android_gms_internal_zzhs;
        }

        public void zzbf() {
            this.zzoP.zzov.zza(this.zzoP.zzot.zzqn, this.zzoO).zza(this.zzoO.zzBD);
        }
    }

    public zzf(Context context, AdSizeParcel adSizeParcel, String str, zzem com_google_android_gms_internal_zzem, VersionInfoParcel versionInfoParcel, zzd com_google_android_gms_ads_internal_zzd) {
        super(context, adSizeParcel, str, com_google_android_gms_internal_zzem, versionInfoParcel, com_google_android_gms_ads_internal_zzd);
    }

    private AdSizeParcel zzb(zza com_google_android_gms_internal_zzhs_zza) {
        if (com_google_android_gms_internal_zzhs_zza.zzHD.zzti) {
            return this.zzot.zzqn;
        }
        AdSize adSize;
        String str = com_google_android_gms_internal_zzhs_zza.zzHD.zzEN;
        if (str != null) {
            String[] split = str.split("[xX]");
            split[0] = split[0].trim();
            split[1] = split[1].trim();
            adSize = new AdSize(Integer.parseInt(split[0]), Integer.parseInt(split[1]));
        } else {
            adSize = this.zzot.zzqn.zzcD();
        }
        return new AdSizeParcel(this.zzot.context, adSize);
    }

    private boolean zzb(zzhs com_google_android_gms_internal_zzhs, zzhs com_google_android_gms_internal_zzhs2) {
        View view;
        if (com_google_android_gms_internal_zzhs2.zzEK) {
            try {
                zzd view2 = com_google_android_gms_internal_zzhs2.zzzv.getView();
                if (view2 == null) {
                    com.google.android.gms.ads.internal.util.client.zzb.zzaH("View in mediation adapter is null.");
                    return false;
                }
                view = (View) zze.zzp(view2);
                View nextView = this.zzot.zzqk.getNextView();
                if (nextView != null) {
                    if (nextView instanceof zziz) {
                        ((zziz) nextView).destroy();
                    }
                    this.zzot.zzqk.removeView(nextView);
                }
                try {
                    zzb(view);
                } catch (Throwable th) {
                    com.google.android.gms.ads.internal.util.client.zzb.zzd("Could not add mediation view to view hierarchy.", th);
                    return false;
                }
            } catch (Throwable th2) {
                com.google.android.gms.ads.internal.util.client.zzb.zzd("Could not get View from mediation adapter.", th2);
                return false;
            }
        } else if (!(com_google_android_gms_internal_zzhs2.zzHy == null || com_google_android_gms_internal_zzhs2.zzBD == null)) {
            com_google_android_gms_internal_zzhs2.zzBD.zza(com_google_android_gms_internal_zzhs2.zzHy);
            this.zzot.zzqk.removeAllViews();
            this.zzot.zzqk.setMinimumWidth(com_google_android_gms_internal_zzhs2.zzHy.widthPixels);
            this.zzot.zzqk.setMinimumHeight(com_google_android_gms_internal_zzhs2.zzHy.heightPixels);
            zzb(com_google_android_gms_internal_zzhs2.zzBD.getView());
        }
        if (this.zzot.zzqk.getChildCount() > 1) {
            this.zzot.zzqk.showNext();
        }
        if (com_google_android_gms_internal_zzhs != null) {
            view = this.zzot.zzqk.getNextView();
            if (view instanceof zziz) {
                ((zziz) view).zza(this.zzot.context, this.zzot.zzqn, this.zzoo);
            } else if (view != null) {
                this.zzot.zzqk.removeView(view);
            }
            this.zzot.zzbM();
        }
        this.zzot.zzqk.setVisibility(0);
        return true;
    }

    public void setManualImpressionsEnabled(boolean z) {
        zzx.zzci("setManualImpressionsEnabled must be called from the main thread.");
        this.zzoN = z;
    }

    public void showInterstitial() {
        throw new IllegalStateException("Interstitial is NOT supported by BannerAdManager.");
    }

    protected zziz zza(zza com_google_android_gms_internal_zzhs_zza, zze com_google_android_gms_ads_internal_zze) {
        if (this.zzot.zzqn.zzti) {
            this.zzot.zzqn = zzb(com_google_android_gms_internal_zzhs_zza);
        }
        return super.zza(com_google_android_gms_internal_zzhs_zza, com_google_android_gms_ads_internal_zze);
    }

    public boolean zza(zzhs com_google_android_gms_internal_zzhs, zzhs com_google_android_gms_internal_zzhs2) {
        if (!super.zza(com_google_android_gms_internal_zzhs, com_google_android_gms_internal_zzhs2)) {
            return false;
        }
        if (!this.zzot.zzbN() || zzb(com_google_android_gms_internal_zzhs, com_google_android_gms_internal_zzhs2)) {
            zza(com_google_android_gms_internal_zzhs2, false);
            if (this.zzot.zzbN()) {
                if (com_google_android_gms_internal_zzhs2.zzBD != null) {
                    if (com_google_android_gms_internal_zzhs2.zzHw != null) {
                        this.zzov.zza(this.zzot.zzqn, com_google_android_gms_internal_zzhs2);
                    }
                    if (com_google_android_gms_internal_zzhs2.zzbY()) {
                        this.zzov.zza(this.zzot.zzqn, com_google_android_gms_internal_zzhs2).zza(com_google_android_gms_internal_zzhs2.zzBD);
                    } else {
                        com_google_android_gms_internal_zzhs2.zzBD.zzhe().zza(new C02061(this, com_google_android_gms_internal_zzhs2));
                    }
                }
            } else if (!(this.zzot.zzqG == null || com_google_android_gms_internal_zzhs2.zzHw == null)) {
                this.zzov.zza(this.zzot.zzqn, com_google_android_gms_internal_zzhs2, this.zzot.zzqG);
            }
            return true;
        }
        zze(0);
        return false;
    }

    protected boolean zzaU() {
        boolean z = true;
        if (!zzp.zzbv().zza(this.zzot.context.getPackageManager(), this.zzot.context.getPackageName(), "android.permission.INTERNET")) {
            zzl.zzcF().zza(this.zzot.zzqk, this.zzot.zzqn, "Missing internet permission in AndroidManifest.xml.", "Missing internet permission in AndroidManifest.xml. You must have the following declaration: <uses-permission android:name=\"android.permission.INTERNET\" />");
            z = false;
        }
        if (!zzp.zzbv().zzH(this.zzot.context)) {
            zzl.zzcF().zza(this.zzot.zzqk, this.zzot.zzqn, "Missing AdActivity with android:configChanges in AndroidManifest.xml.", "Missing AdActivity with android:configChanges in AndroidManifest.xml. You must have the following declaration within the <application> element: <activity android:name=\"com.google.android.gms.ads.AdActivity\" android:configChanges=\"keyboard|keyboardHidden|orientation|screenLayout|uiMode|screenSize|smallestScreenSize\" />");
            z = false;
        }
        if (!(z || this.zzot.zzqk == null)) {
            this.zzot.zzqk.setVisibility(0);
        }
        return z;
    }

    public boolean zzb(AdRequestParcel adRequestParcel) {
        return super.zzb(zze(adRequestParcel));
    }

    AdRequestParcel zze(AdRequestParcel adRequestParcel) {
        if (adRequestParcel.zzsG == this.zzoN) {
            return adRequestParcel;
        }
        int i = adRequestParcel.versionCode;
        long j = adRequestParcel.zzsB;
        Bundle bundle = adRequestParcel.extras;
        int i2 = adRequestParcel.zzsC;
        List list = adRequestParcel.zzsD;
        boolean z = adRequestParcel.zzsE;
        int i3 = adRequestParcel.zzsF;
        boolean z2 = adRequestParcel.zzsG || this.zzoN;
        return new AdRequestParcel(i, j, bundle, i2, list, z, i3, z2, adRequestParcel.zzsH, adRequestParcel.zzsI, adRequestParcel.zzsJ, adRequestParcel.zzsK, adRequestParcel.zzsL, adRequestParcel.zzsM, adRequestParcel.zzsN, adRequestParcel.zzsO, adRequestParcel.zzsP);
    }
}
