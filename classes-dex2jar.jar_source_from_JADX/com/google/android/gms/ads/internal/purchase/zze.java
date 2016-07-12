package com.google.android.gms.ads.internal.purchase;

import android.app.Activity;
import android.app.PendingIntent;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.IntentSender.SendIntentException;
import android.content.ServiceConnection;
import android.os.Bundle;
import android.os.IBinder;
import android.os.RemoteException;
import com.google.android.gms.ads.internal.util.client.zzb;
import com.google.android.gms.ads.internal.zzp;
import com.google.android.gms.common.GooglePlayServicesUtil;
import com.google.android.gms.internal.zzfr;
import com.google.android.gms.internal.zzft.zza;
import com.google.android.gms.internal.zzgr;
import com.google.android.gms.location.places.Place;

@zzgr
public class zze extends zza implements ServiceConnection {
    private final Activity mActivity;
    private zzb zzCD;
    zzh zzCE;
    private zzk zzCG;
    private Context zzCL;
    private zzfr zzCM;
    private zzf zzCN;
    private zzj zzCO;
    private String zzCP;

    public zze(Activity activity) {
        this.zzCP = null;
        this.mActivity = activity;
        this.zzCE = zzh.zzw(this.mActivity.getApplicationContext());
    }

    public void onActivityResult(int i, int i2, Intent intent) {
        if (i == Place.TYPE_ADMINISTRATIVE_AREA_LEVEL_1) {
            boolean z = false;
            try {
                int zzd = zzp.zzbF().zzd(intent);
                if (i2 == -1) {
                    zzp.zzbF();
                    if (zzd == 0) {
                        if (this.zzCG.zza(this.zzCP, i2, intent)) {
                            z = true;
                        }
                        this.zzCM.recordPlayBillingResolution(zzd);
                        this.mActivity.finish();
                        zza(this.zzCM.getProductId(), z, i2, intent);
                    }
                }
                this.zzCE.zza(this.zzCN);
                this.zzCM.recordPlayBillingResolution(zzd);
                this.mActivity.finish();
                zza(this.zzCM.getProductId(), z, i2, intent);
            } catch (RemoteException e) {
                zzb.zzaH("Fail to process purchase result.");
                this.mActivity.finish();
            } finally {
                this.zzCP = null;
            }
        }
    }

    public void onCreate() {
        GInAppPurchaseManagerInfoParcel zzc = GInAppPurchaseManagerInfoParcel.zzc(this.mActivity.getIntent());
        this.zzCO = zzc.zzCy;
        this.zzCG = zzc.zzqE;
        this.zzCM = zzc.zzCw;
        this.zzCD = new zzb(this.mActivity.getApplicationContext());
        this.zzCL = zzc.zzCx;
        if (this.mActivity.getResources().getConfiguration().orientation == 2) {
            this.mActivity.setRequestedOrientation(zzp.zzbx().zzgG());
        } else {
            this.mActivity.setRequestedOrientation(zzp.zzbx().zzgH());
        }
        Intent intent = new Intent("com.android.vending.billing.InAppBillingService.BIND");
        intent.setPackage(GooglePlayServicesUtil.GOOGLE_PLAY_STORE_PACKAGE);
        this.mActivity.bindService(intent, this, 1);
    }

    public void onDestroy() {
        this.mActivity.unbindService(this);
        this.zzCD.destroy();
    }

    public void onServiceConnected(ComponentName componentName, IBinder iBinder) {
        Throwable e;
        this.zzCD.zzN(iBinder);
        try {
            this.zzCP = this.zzCG.zzfq();
            Bundle zzb = this.zzCD.zzb(this.mActivity.getPackageName(), this.zzCM.getProductId(), this.zzCP);
            PendingIntent pendingIntent = (PendingIntent) zzb.getParcelable("BUY_INTENT");
            if (pendingIntent == null) {
                int zzc = zzp.zzbF().zzc(zzb);
                this.zzCM.recordPlayBillingResolution(zzc);
                zza(this.zzCM.getProductId(), false, zzc, null);
                this.mActivity.finish();
                return;
            }
            this.zzCN = new zzf(this.zzCM.getProductId(), this.zzCP);
            this.zzCE.zzb(this.zzCN);
            this.mActivity.startIntentSenderForResult(pendingIntent.getIntentSender(), Place.TYPE_ADMINISTRATIVE_AREA_LEVEL_1, new Intent(), Integer.valueOf(0).intValue(), Integer.valueOf(0).intValue(), Integer.valueOf(0).intValue());
        } catch (RemoteException e2) {
            e = e2;
            zzb.zzd("Error when connecting in-app billing service", e);
            this.mActivity.finish();
        } catch (SendIntentException e3) {
            e = e3;
            zzb.zzd("Error when connecting in-app billing service", e);
            this.mActivity.finish();
        }
    }

    public void onServiceDisconnected(ComponentName componentName) {
        zzb.zzaG("In-app billing service disconnected.");
        this.zzCD.destroy();
    }

    protected void zza(String str, boolean z, int i, Intent intent) {
        if (this.zzCO != null) {
            this.zzCO.zza(str, z, i, intent, this.zzCN);
        }
    }
}
