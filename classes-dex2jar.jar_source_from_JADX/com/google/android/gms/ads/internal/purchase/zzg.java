package com.google.android.gms.ads.internal.purchase;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.os.IBinder;
import com.google.android.gms.ads.internal.zzp;
import com.google.android.gms.common.GooglePlayServicesUtil;
import com.google.android.gms.common.stats.zzb;
import com.google.android.gms.internal.zzfv.zza;
import com.google.android.gms.internal.zzgr;

@zzgr
public final class zzg extends zza implements ServiceConnection {
    private Context mContext;
    zzb zzCD;
    private String zzCJ;
    private zzf zzCN;
    private boolean zzCT;
    private int zzCU;
    private Intent zzCV;

    public zzg(Context context, String str, boolean z, int i, Intent intent, zzf com_google_android_gms_ads_internal_purchase_zzf) {
        this.zzCT = false;
        this.zzCJ = str;
        this.zzCU = i;
        this.zzCV = intent;
        this.zzCT = z;
        this.mContext = context;
        this.zzCN = com_google_android_gms_ads_internal_purchase_zzf;
    }

    public void finishPurchase() {
        int zzd = zzp.zzbF().zzd(this.zzCV);
        if (this.zzCU == -1 && zzd == 0) {
            this.zzCD = new zzb(this.mContext);
            Intent intent = new Intent("com.android.vending.billing.InAppBillingService.BIND");
            intent.setPackage(GooglePlayServicesUtil.GOOGLE_PLAY_STORE_PACKAGE);
            zzb.zzqh().zza(this.mContext, intent, (ServiceConnection) this, 1);
        }
    }

    public String getProductId() {
        return this.zzCJ;
    }

    public Intent getPurchaseData() {
        return this.zzCV;
    }

    public int getResultCode() {
        return this.zzCU;
    }

    public boolean isVerified() {
        return this.zzCT;
    }

    public void onServiceConnected(ComponentName componentName, IBinder iBinder) {
        com.google.android.gms.ads.internal.util.client.zzb.zzaG("In-app billing service connected.");
        this.zzCD.zzN(iBinder);
        String zzap = zzp.zzbF().zzap(zzp.zzbF().zze(this.zzCV));
        if (zzap != null) {
            if (this.zzCD.zzi(this.mContext.getPackageName(), zzap) == 0) {
                zzh.zzw(this.mContext).zza(this.zzCN);
            }
            zzb.zzqh().zza(this.mContext, this);
            this.zzCD.destroy();
        }
    }

    public void onServiceDisconnected(ComponentName componentName) {
        com.google.android.gms.ads.internal.util.client.zzb.zzaG("In-app billing service disconnected.");
        this.zzCD.destroy();
    }
}
