package com.google.android.gms.ads.internal.client;

import android.location.Location;
import android.os.Bundle;
import com.google.android.gms.internal.zzgr;
import java.util.ArrayList;
import java.util.List;

@zzgr
public final class zzf {
    private Bundle mExtras;
    private Location zzaX;
    private boolean zzoN;
    private long zzsQ;
    private int zzsR;
    private List<String> zzsS;
    private boolean zzsT;
    private int zzsU;
    private String zzsV;
    private SearchAdRequestParcel zzsW;
    private String zzsX;
    private Bundle zzsY;
    private Bundle zzsZ;
    private List<String> zzta;
    private String zztb;
    private String zztc;

    public zzf() {
        this.zzsQ = -1;
        this.mExtras = new Bundle();
        this.zzsR = -1;
        this.zzsS = new ArrayList();
        this.zzsT = false;
        this.zzsU = -1;
        this.zzoN = false;
        this.zzsV = null;
        this.zzsW = null;
        this.zzaX = null;
        this.zzsX = null;
        this.zzsY = new Bundle();
        this.zzsZ = new Bundle();
        this.zzta = new ArrayList();
        this.zztb = null;
        this.zztc = null;
    }

    public zzf(AdRequestParcel adRequestParcel) {
        this.zzsQ = adRequestParcel.zzsB;
        this.mExtras = adRequestParcel.extras;
        this.zzsR = adRequestParcel.zzsC;
        this.zzsS = adRequestParcel.zzsD;
        this.zzsT = adRequestParcel.zzsE;
        this.zzsU = adRequestParcel.zzsF;
        this.zzoN = adRequestParcel.zzsG;
        this.zzsV = adRequestParcel.zzsH;
        this.zzsW = adRequestParcel.zzsI;
        this.zzaX = adRequestParcel.zzsJ;
        this.zzsX = adRequestParcel.zzsK;
        this.zzsY = adRequestParcel.zzsL;
        this.zzsZ = adRequestParcel.zzsM;
        this.zzta = adRequestParcel.zzsN;
        this.zztb = adRequestParcel.zzsO;
        this.zztc = adRequestParcel.zzsP;
    }

    public zzf zza(Location location) {
        this.zzaX = location;
        return this;
    }

    public AdRequestParcel zzcA() {
        return new AdRequestParcel(6, this.zzsQ, this.mExtras, this.zzsR, this.zzsS, this.zzsT, this.zzsU, this.zzoN, this.zzsV, this.zzsW, this.zzaX, this.zzsX, this.zzsY, this.zzsZ, this.zzta, this.zztb, this.zztc);
    }
}
