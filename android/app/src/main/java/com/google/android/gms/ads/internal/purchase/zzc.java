package com.google.android.gms.ads.internal.purchase;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.os.IBinder;
import android.os.RemoteException;
import android.os.SystemClock;
import com.google.android.gms.ads.internal.util.client.zzb;
import com.google.android.gms.ads.internal.zzp;
import com.google.android.gms.common.GooglePlayServicesUtil;
import com.google.android.gms.internal.zzfw;
import com.google.android.gms.internal.zzgr;
import com.google.android.gms.internal.zzhz;
import com.google.android.gms.internal.zzid;
import com.upsight.android.analytics.UpsightGooglePlayHelper;
import java.util.List;

@zzgr
public class zzc extends zzhz implements ServiceConnection {
    private Context mContext;
    private boolean zzCB;
    private zzfw zzCC;
    private zzb zzCD;
    private zzh zzCE;
    private List<zzf> zzCF;
    private zzk zzCG;
    private final Object zzpd;

    /* renamed from: com.google.android.gms.ads.internal.purchase.zzc.1 */
    class C01911 implements Runnable {
        final /* synthetic */ Intent val$intent;
        final /* synthetic */ zzf zzCH;
        final /* synthetic */ zzc zzCI;

        C01911(zzc com_google_android_gms_ads_internal_purchase_zzc, zzf com_google_android_gms_ads_internal_purchase_zzf, Intent intent) {
            this.zzCI = com_google_android_gms_ads_internal_purchase_zzc;
            this.zzCH = com_google_android_gms_ads_internal_purchase_zzf;
            this.val$intent = intent;
        }

        public void run() {
            try {
                if (this.zzCI.zzCG.zza(this.zzCH.zzCR, -1, this.val$intent)) {
                    this.zzCI.zzCC.zza(new zzg(this.zzCI.mContext, this.zzCH.zzCS, true, -1, this.val$intent, this.zzCH));
                } else {
                    this.zzCI.zzCC.zza(new zzg(this.zzCI.mContext, this.zzCH.zzCS, false, -1, this.val$intent, this.zzCH));
                }
            } catch (RemoteException e) {
                zzb.zzaH("Fail to verify and dispatch pending transaction");
            }
        }
    }

    public zzc(Context context, zzfw com_google_android_gms_internal_zzfw, zzk com_google_android_gms_ads_internal_purchase_zzk) {
        this(context, com_google_android_gms_internal_zzfw, com_google_android_gms_ads_internal_purchase_zzk, new zzb(context), zzh.zzw(context.getApplicationContext()));
    }

    zzc(Context context, zzfw com_google_android_gms_internal_zzfw, zzk com_google_android_gms_ads_internal_purchase_zzk, zzb com_google_android_gms_ads_internal_purchase_zzb, zzh com_google_android_gms_ads_internal_purchase_zzh) {
        this.zzpd = new Object();
        this.zzCB = false;
        this.zzCF = null;
        this.mContext = context;
        this.zzCC = com_google_android_gms_internal_zzfw;
        this.zzCG = com_google_android_gms_ads_internal_purchase_zzk;
        this.zzCD = com_google_android_gms_ads_internal_purchase_zzb;
        this.zzCE = com_google_android_gms_ads_internal_purchase_zzh;
        this.zzCF = this.zzCE.zzg(10);
    }

    private void zze(long j) {
        do {
            if (!zzf(j)) {
                zzb.m37v("Timeout waiting for pending transaction to be processed.");
            }
        } while (!this.zzCB);
    }

    private boolean zzf(long j) {
        long elapsedRealtime = 60000 - (SystemClock.elapsedRealtime() - j);
        if (elapsedRealtime <= 0) {
            return false;
        }
        try {
            this.zzpd.wait(elapsedRealtime);
        } catch (InterruptedException e) {
            zzb.zzaH("waitWithTimeout_lock interrupted");
        }
        return true;
    }

    public void onServiceConnected(ComponentName componentName, IBinder iBinder) {
        synchronized (this.zzpd) {
            this.zzCD.zzN(iBinder);
            zzfm();
            this.zzCB = true;
            this.zzpd.notify();
        }
    }

    public void onServiceDisconnected(ComponentName componentName) {
        zzb.zzaG("In-app billing service disconnected.");
        this.zzCD.destroy();
    }

    public void onStop() {
        synchronized (this.zzpd) {
            com.google.android.gms.common.stats.zzb.zzqh().zza(this.mContext, this);
            this.zzCD.destroy();
        }
    }

    protected void zza(zzf com_google_android_gms_ads_internal_purchase_zzf, String str, String str2) {
        Intent intent = new Intent();
        zzp.zzbF();
        intent.putExtra(UpsightGooglePlayHelper.PURCHASE_RESPONSE_CODE, 0);
        zzp.zzbF();
        intent.putExtra(UpsightGooglePlayHelper.PURCHASE_INAPP_PURCHASE_DATA, str);
        zzp.zzbF();
        intent.putExtra(UpsightGooglePlayHelper.PURCHASE_INAPP_DATA_SIGNATURE, str2);
        zzid.zzIE.post(new C01911(this, com_google_android_gms_ads_internal_purchase_zzf, intent));
    }

    public void zzbn() {
        synchronized (this.zzpd) {
            Intent intent = new Intent("com.android.vending.billing.InAppBillingService.BIND");
            intent.setPackage(GooglePlayServicesUtil.GOOGLE_PLAY_STORE_PACKAGE);
            com.google.android.gms.common.stats.zzb.zzqh().zza(this.mContext, intent, (ServiceConnection) this, 1);
            zze(SystemClock.elapsedRealtime());
            com.google.android.gms.common.stats.zzb.zzqh().zza(this.mContext, this);
            this.zzCD.destroy();
        }
    }

    /* JADX WARNING: inconsistent code. */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    protected void zzfm() {
        /*
        r12 = this;
        r0 = r12.zzCF;
        r0 = r0.isEmpty();
        if (r0 == 0) goto L_0x0009;
    L_0x0008:
        return;
    L_0x0009:
        r6 = new java.util.HashMap;
        r6.<init>();
        r0 = r12.zzCF;
        r1 = r0.iterator();
    L_0x0014:
        r0 = r1.hasNext();
        if (r0 == 0) goto L_0x0026;
    L_0x001a:
        r0 = r1.next();
        r0 = (com.google.android.gms.ads.internal.purchase.zzf) r0;
        r2 = r0.zzCS;
        r6.put(r2, r0);
        goto L_0x0014;
    L_0x0026:
        r0 = 0;
    L_0x0027:
        r1 = r12.zzCD;
        r2 = r12.mContext;
        r2 = r2.getPackageName();
        r0 = r1.zzj(r2, r0);
        if (r0 != 0) goto L_0x0055;
    L_0x0035:
        r0 = r6.keySet();
        r1 = r0.iterator();
    L_0x003d:
        r0 = r1.hasNext();
        if (r0 == 0) goto L_0x0008;
    L_0x0043:
        r0 = r1.next();
        r0 = (java.lang.String) r0;
        r2 = r12.zzCE;
        r0 = r6.get(r0);
        r0 = (com.google.android.gms.ads.internal.purchase.zzf) r0;
        r2.zza(r0);
        goto L_0x003d;
    L_0x0055:
        r1 = com.google.android.gms.ads.internal.zzp.zzbF();
        r1 = r1.zzc(r0);
        if (r1 != 0) goto L_0x0035;
    L_0x005f:
        r1 = "INAPP_PURCHASE_ITEM_LIST";
        r7 = r0.getStringArrayList(r1);
        r1 = "INAPP_PURCHASE_DATA_LIST";
        r8 = r0.getStringArrayList(r1);
        r1 = "INAPP_DATA_SIGNATURE_LIST";
        r9 = r0.getStringArrayList(r1);
        r1 = "INAPP_CONTINUATION_TOKEN";
        r5 = r0.getString(r1);
        r0 = 0;
        r4 = r0;
    L_0x0079:
        r0 = r7.size();
        if (r4 >= r0) goto L_0x00bb;
    L_0x007f:
        r0 = r7.get(r4);
        r0 = r6.containsKey(r0);
        if (r0 == 0) goto L_0x00b7;
    L_0x0089:
        r0 = r7.get(r4);
        r0 = (java.lang.String) r0;
        r1 = r8.get(r4);
        r1 = (java.lang.String) r1;
        r2 = r9.get(r4);
        r2 = (java.lang.String) r2;
        r3 = r6.get(r0);
        r3 = (com.google.android.gms.ads.internal.purchase.zzf) r3;
        r10 = com.google.android.gms.ads.internal.zzp.zzbF();
        r10 = r10.zzao(r1);
        r11 = r3.zzCR;
        r10 = r11.equals(r10);
        if (r10 == 0) goto L_0x00b7;
    L_0x00b1:
        r12.zza(r3, r1, r2);
        r6.remove(r0);
    L_0x00b7:
        r0 = r4 + 1;
        r4 = r0;
        goto L_0x0079;
    L_0x00bb:
        if (r5 == 0) goto L_0x0035;
    L_0x00bd:
        r0 = r6.isEmpty();
        if (r0 != 0) goto L_0x0035;
    L_0x00c3:
        r0 = r5;
        goto L_0x0027;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.ads.internal.purchase.zzc.zzfm():void");
    }
}
