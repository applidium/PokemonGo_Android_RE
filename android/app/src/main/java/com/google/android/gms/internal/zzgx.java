package com.google.android.gms.internal;

import com.voxelbusters.nativeplugins.defines.Keys;
import java.util.Arrays;
import java.util.List;
import java.util.Map;

@zzgr
class zzgx {
    private final String zzBY;
    private int zzDv;
    private String zzF;
    private final List<String> zzGl;
    private final List<String> zzGm;
    private final String zzGn;
    private final String zzGo;
    private final String zzGp;
    private final String zzGq;
    private final boolean zzGr;

    public zzgx(int i, Map<String, String> map) {
        this.zzF = (String) map.get(Keys.URL);
        this.zzGo = (String) map.get("base_uri");
        this.zzGp = (String) map.get("post_parameters");
        this.zzGr = parseBoolean((String) map.get("drt_include"));
        this.zzGn = (String) map.get("activation_overlay_url");
        this.zzGm = zzat((String) map.get("check_packages"));
        this.zzBY = (String) map.get("request_id");
        this.zzGq = (String) map.get(Keys.TYPE);
        this.zzGl = zzat((String) map.get("errors"));
        this.zzDv = i;
    }

    private static boolean parseBoolean(String str) {
        return str != null && (str.equals("1") || str.equals("true"));
    }

    private List<String> zzat(String str) {
        return str == null ? null : Arrays.asList(str.split(","));
    }

    public int getErrorCode() {
        return this.zzDv;
    }

    public String getRequestId() {
        return this.zzBY;
    }

    public String getType() {
        return this.zzGq;
    }

    public String getUrl() {
        return this.zzF;
    }

    public void setUrl(String str) {
        this.zzF = str;
    }

    public List<String> zzfU() {
        return this.zzGl;
    }

    public String zzfV() {
        return this.zzGp;
    }

    public boolean zzfW() {
        return this.zzGr;
    }
}
