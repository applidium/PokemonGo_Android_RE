package com.google.android.gms.internal;

import android.content.Context;
import android.os.Build.VERSION;
import com.google.android.gms.ads.internal.zzp;
import java.util.LinkedHashMap;
import java.util.Map;

public class zzbz {
    private Context mContext;
    private String zzqV;
    private boolean zzvA;
    private String zzvB;
    private Map<String, String> zzvC;

    public zzbz(Context context, String str) {
        this.mContext = null;
        this.zzqV = null;
        this.mContext = context;
        this.zzqV = str;
        this.zzvA = ((Boolean) zzby.zzuQ.get()).booleanValue();
        this.zzvB = (String) zzby.zzuR.get();
        this.zzvC = new LinkedHashMap();
        this.zzvC.put("s", "gmob_sdk");
        this.zzvC.put("v", "3");
        this.zzvC.put("os", VERSION.RELEASE);
        this.zzvC.put("sdk", VERSION.SDK);
        this.zzvC.put("device", zzp.zzbv().zzgE());
        this.zzvC.put("app", context.getApplicationContext() != null ? context.getApplicationContext().getPackageName() : context.getPackageName());
        zzgy zzC = zzp.zzbB().zzC(this.mContext);
        this.zzvC.put("network_coarse", Integer.toString(zzC.zzGE));
        this.zzvC.put("network_fine", Integer.toString(zzC.zzGF));
    }

    Context getContext() {
        return this.mContext;
    }

    String zzbV() {
        return this.zzqV;
    }

    boolean zzdg() {
        return this.zzvA;
    }

    String zzdh() {
        return this.zzvB;
    }

    Map<String, String> zzdi() {
        return this.zzvC;
    }
}
