package com.google.android.gms.ads.internal.purchase;

import android.content.Context;
import android.os.Build.VERSION;
import android.os.SystemClock;
import com.google.android.gms.ads.internal.util.client.zzb;
import com.google.android.gms.ads.internal.zzp;
import com.google.android.gms.internal.zzfr.zza;
import com.google.android.gms.internal.zzgr;
import com.voxelbusters.nativeplugins.defines.Keys.GameServices;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import spacemadness.com.lunarconsole.BuildConfig;

@zzgr
public class zzd extends zza {
    private Context mContext;
    private String zzCJ;
    private ArrayList<String> zzCK;
    private String zzqV;

    public zzd(String str, ArrayList<String> arrayList, Context context, String str2) {
        this.zzCJ = str;
        this.zzCK = arrayList;
        this.zzqV = str2;
        this.mContext = context;
    }

    public String getProductId() {
        return this.zzCJ;
    }

    public void recordPlayBillingResolution(int i) {
        if (i == 0) {
            zzfn();
        }
        HashMap hashMap = new HashMap();
        hashMap.put("google_play_status", String.valueOf(i));
        hashMap.put("sku", this.zzCJ);
        hashMap.put(NotificationCompatApi21.CATEGORY_STATUS, String.valueOf(zzy(i)));
        List linkedList = new LinkedList();
        Iterator it = this.zzCK.iterator();
        while (it.hasNext()) {
            linkedList.add(zza((String) it.next(), hashMap));
        }
        zzp.zzbv().zza(this.mContext, this.zzqV, linkedList);
    }

    public void recordResolution(int i) {
        if (i == 1) {
            zzfn();
        }
        HashMap hashMap = new HashMap();
        hashMap.put(NotificationCompatApi21.CATEGORY_STATUS, String.valueOf(i));
        hashMap.put("sku", this.zzCJ);
        List linkedList = new LinkedList();
        Iterator it = this.zzCK.iterator();
        while (it.hasNext()) {
            linkedList.add(zza((String) it.next(), hashMap));
        }
        zzp.zzbv().zza(this.mContext, this.zzqV, linkedList);
    }

    protected String zza(String str, HashMap<String, String> hashMap) {
        Object obj;
        try {
            obj = this.mContext.getPackageManager().getPackageInfo(this.mContext.getPackageName(), 0).versionName;
        } catch (Throwable e) {
            zzb.zzd("Error to retrieve app version", e);
            String str2 = BuildConfig.FLAVOR;
        }
        long zzgx = zzp.zzby().zzgn().zzgx();
        long elapsedRealtime = SystemClock.elapsedRealtime();
        for (String str3 : hashMap.keySet()) {
            str = str.replaceAll(String.format("(?<!@)((?:@@)*)@%s(?<!@)((?:@@)*)@", new Object[]{str3}), String.format("$1%s$2", new Object[]{hashMap.get(str3)}));
        }
        return str.replaceAll(String.format("(?<!@)((?:@@)*)@%s(?<!@)((?:@@)*)@", new Object[]{"sessionid"}), String.format("$1%s$2", new Object[]{zzp.zzby().getSessionId()})).replaceAll(String.format("(?<!@)((?:@@)*)@%s(?<!@)((?:@@)*)@", new Object[]{"appid"}), String.format("$1%s$2", new Object[]{r2})).replaceAll(String.format("(?<!@)((?:@@)*)@%s(?<!@)((?:@@)*)@", new Object[]{"osversion"}), String.format("$1%s$2", new Object[]{String.valueOf(VERSION.SDK_INT)})).replaceAll(String.format("(?<!@)((?:@@)*)@%s(?<!@)((?:@@)*)@", new Object[]{"sdkversion"}), String.format("$1%s$2", new Object[]{this.zzqV})).replaceAll(String.format("(?<!@)((?:@@)*)@%s(?<!@)((?:@@)*)@", new Object[]{"appversion"}), String.format("$1%s$2", new Object[]{obj})).replaceAll(String.format("(?<!@)((?:@@)*)@%s(?<!@)((?:@@)*)@", new Object[]{GameServices.USER_TIME_STAMP}), String.format("$1%s$2", new Object[]{String.valueOf(elapsedRealtime - zzgx)})).replaceAll(String.format("(?<!@)((?:@@)*)@%s(?<!@)((?:@@)*)@", new Object[]{"[^@]+"}), String.format("$1%s$2", new Object[]{BuildConfig.FLAVOR})).replaceAll("@@", "@");
    }

    void zzfn() {
        try {
            this.mContext.getClassLoader().loadClass("com.google.ads.conversiontracking.IAPConversionReporter").getDeclaredMethod("reportWithProductId", new Class[]{Context.class, String.class, String.class, Boolean.TYPE}).invoke(null, new Object[]{this.mContext, this.zzCJ, BuildConfig.FLAVOR, Boolean.valueOf(true)});
        } catch (ClassNotFoundException e) {
            zzb.zzaH("Google Conversion Tracking SDK 1.2.0 or above is required to report a conversion.");
        } catch (NoSuchMethodException e2) {
            zzb.zzaH("Google Conversion Tracking SDK 1.2.0 or above is required to report a conversion.");
        } catch (Throwable e3) {
            zzb.zzd("Fail to report a conversion.", e3);
        }
    }

    protected int zzy(int i) {
        return i == 0 ? 1 : i == 1 ? 2 : i == 4 ? 3 : 0;
    }
}
