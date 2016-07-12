package com.crittercism.app;

import android.os.Build.VERSION;
import crittercism.android.dx;
import java.util.LinkedList;
import java.util.List;
import org.json.JSONObject;

public class CrittercismConfig {
    public static final String API_VERSION = "5.0.8";
    protected String f14a;
    private String f15b;
    private boolean f16c;
    private boolean f17d;
    private boolean f18e;
    private boolean f19f;
    private boolean f20g;
    private String f21h;
    private String f22i;
    private List f23j;
    private List f24k;

    public CrittercismConfig() {
        this.f15b = null;
        this.f16c = false;
        this.f17d = false;
        this.f18e = true;
        this.f19f = false;
        this.f20g = m28b();
        this.f14a = "com.crittercism/dumps";
        this.f21h = "Developer Reply";
        this.f22i = null;
        this.f23j = new LinkedList();
        this.f24k = new LinkedList();
    }

    public CrittercismConfig(CrittercismConfig crittercismConfig) {
        this.f15b = null;
        this.f16c = false;
        this.f17d = false;
        this.f18e = true;
        this.f19f = false;
        this.f20g = m28b();
        this.f14a = "com.crittercism/dumps";
        this.f21h = "Developer Reply";
        this.f22i = null;
        this.f23j = new LinkedList();
        this.f24k = new LinkedList();
        this.f15b = crittercismConfig.f15b;
        this.f16c = crittercismConfig.f16c;
        this.f17d = crittercismConfig.f17d;
        this.f18e = crittercismConfig.f18e;
        this.f19f = crittercismConfig.f19f;
        this.f20g = crittercismConfig.f20g;
        this.f14a = crittercismConfig.f14a;
        this.f21h = crittercismConfig.f21h;
        setURLBlacklistPatterns(crittercismConfig.f23j);
        setPreserveQueryStringPatterns(crittercismConfig.f24k);
        this.f22i = crittercismConfig.f22i;
    }

    @Deprecated
    public CrittercismConfig(JSONObject jSONObject) {
        this.f15b = null;
        this.f16c = false;
        this.f17d = false;
        this.f18e = true;
        this.f19f = false;
        this.f20g = m28b();
        this.f14a = "com.crittercism/dumps";
        this.f21h = "Developer Reply";
        this.f22i = null;
        this.f23j = new LinkedList();
        this.f24k = new LinkedList();
        this.f15b = m25a(jSONObject, "customVersionName", this.f15b);
        this.f17d = m27a(jSONObject, "includeVersionCode", this.f17d);
        this.f18e = m27a(jSONObject, "installNdk", this.f18e);
        this.f16c = m27a(jSONObject, "delaySendingAppLoad", this.f16c);
        this.f19f = m27a(jSONObject, "shouldCollectLogcat", this.f19f);
        this.f14a = m25a(jSONObject, "nativeDumpPath", this.f14a);
        this.f21h = m25a(jSONObject, "notificationTitle", this.f21h);
        this.f20g = m27a(jSONObject, "installApm", this.f20g);
    }

    private static int m24a(String str) {
        return str != null ? str.hashCode() : 0;
    }

    private static String m25a(JSONObject jSONObject, String str, String str2) {
        if (jSONObject.has(str)) {
            try {
                str2 = jSONObject.getString(str);
            } catch (Exception e) {
            }
        }
        return str2;
    }

    protected static boolean m26a(String str, String str2) {
        return str == null ? str2 == null : str.equals(str2);
    }

    private static boolean m27a(JSONObject jSONObject, String str, boolean z) {
        if (jSONObject.has(str)) {
            try {
                z = jSONObject.getBoolean(str);
            } catch (Exception e) {
            }
        }
        return z;
    }

    private static final boolean m28b() {
        return VERSION.SDK_INT >= 10 && VERSION.SDK_INT <= 21;
    }

    public List m29a() {
        return getURLBlacklistPatterns();
    }

    public final boolean delaySendingAppLoad() {
        return this.f16c;
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof CrittercismConfig)) {
            return false;
        }
        CrittercismConfig crittercismConfig = (CrittercismConfig) obj;
        return this.f16c == crittercismConfig.f16c && this.f19f == crittercismConfig.f19f && isNdkCrashReportingEnabled() == crittercismConfig.isNdkCrashReportingEnabled() && isOptmzEnabled() == crittercismConfig.isOptmzEnabled() && isVersionCodeToBeIncludedInVersionString() == crittercismConfig.isVersionCodeToBeIncludedInVersionString() && m26a(this.f15b, crittercismConfig.f15b) && m26a(this.f21h, crittercismConfig.f21h) && m26a(this.f14a, crittercismConfig.f14a) && this.f23j.equals(crittercismConfig.f23j) && this.f24k.equals(crittercismConfig.f24k) && m26a(this.f22i, crittercismConfig.f22i);
    }

    public final String getCustomVersionName() {
        return this.f15b;
    }

    public List getPreserveQueryStringPatterns() {
        return new LinkedList(this.f24k);
    }

    public final String getRateMyAppTestTarget() {
        return this.f22i;
    }

    public List getURLBlacklistPatterns() {
        return new LinkedList(this.f23j);
    }

    public int hashCode() {
        int i = 0;
        int a = m24a(this.f15b);
        int a2 = m24a(this.f21h);
        int a3 = m24a(this.f14a);
        int a4 = m24a(this.f22i);
        int hashCode = this.f23j.hashCode();
        int hashCode2 = this.f24k.hashCode();
        int i2 = this.f16c ? 1 : 0;
        int i3 = this.f19f ? 1 : 0;
        int i4 = isNdkCrashReportingEnabled() ? 1 : 0;
        int i5 = isOptmzEnabled() ? 1 : 0;
        if (isVersionCodeToBeIncludedInVersionString()) {
            i = 1;
        }
        return Integer.valueOf(((((((((i2 + 0) << 1) + i3) << 1) + i4) << 1) + i5) << 1) + i).hashCode() + ((((((((((((a + 0) * 31) + a2) * 31) + a3) * 31) + a4) * 31) + hashCode) * 31) + hashCode2) * 31);
    }

    public final boolean isLogcatReportingEnabled() {
        return this.f19f;
    }

    public final boolean isNdkCrashReportingEnabled() {
        return this.f18e;
    }

    @Deprecated
    public final boolean isOptmzEnabled() {
        return this.f20g;
    }

    public final boolean isServiceMonitoringEnabled() {
        return isOptmzEnabled();
    }

    public final boolean isVersionCodeToBeIncludedInVersionString() {
        return this.f17d;
    }

    public final void setCustomVersionName(String str) {
        this.f15b = str;
    }

    public final void setDelaySendingAppLoad(boolean z) {
        this.f16c = z;
    }

    public final void setLogcatReportingEnabled(boolean z) {
        this.f19f = z;
    }

    public final void setNdkCrashReportingEnabled(boolean z) {
        this.f18e = z;
    }

    @Deprecated
    public final void setOptmzEnabled(boolean z) {
        if (m28b() || !z) {
            this.f20g = z;
        } else {
            dx.m750a("OPTMZ is currently only allowed for api levels 10 to 21.  APM will not be installed");
        }
    }

    public void setPreserveQueryStringPatterns(List list) {
        this.f24k.clear();
        if (list != null) {
            this.f24k.addAll(list);
        }
    }

    public final void setRateMyAppTestTarget(String str) {
        this.f22i = str;
    }

    public final void setServiceMonitoringEnabled(boolean z) {
        setOptmzEnabled(z);
    }

    public void setURLBlacklistPatterns(List list) {
        this.f23j.clear();
        if (list != null) {
            this.f23j.addAll(list);
        }
    }

    public final void setVersionCodeToBeIncludedInVersionString(boolean z) {
        this.f17d = z;
    }
}
