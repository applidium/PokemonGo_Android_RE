package com.google.android.gms.internal;

import com.google.android.gms.ads.internal.util.client.VersionInfoParcel;
import org.json.JSONObject;

@zzgr
public final class zzax {
    private final String zzqS;
    private final JSONObject zzqT;
    private final String zzqU;
    private final String zzqV;
    private final boolean zzqW;

    public zzax(String str, VersionInfoParcel versionInfoParcel, String str2, JSONObject jSONObject, boolean z) {
        this.zzqV = versionInfoParcel.zzJu;
        this.zzqT = jSONObject;
        this.zzqU = str;
        this.zzqS = str2;
        this.zzqW = z;
    }

    public String zzbU() {
        return this.zzqS;
    }

    public String zzbV() {
        return this.zzqV;
    }

    public JSONObject zzbW() {
        return this.zzqT;
    }

    public String zzbX() {
        return this.zzqU;
    }

    public boolean zzbY() {
        return this.zzqW;
    }
}
