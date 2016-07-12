package crittercism.android;

import crittercism.android.bs.C1031a;
import crittercism.android.bz.C1058a;
import crittercism.android.ca.C1061a;

public enum br {
    APP_LOADS("app_loads_2", 10, Integer.MAX_VALUE, new C1031a(0), new C1061a(), null),
    HAND_EXCS("exceptions", 5, 50, new C1031a(0), new C1061a(), "exceptions"),
    INTERNAL_EXCS("internal_excs", 3, 3, new C1031a(0), new C1061a(), "exceptions"),
    NDK_CRASHES("ndk_crashes", 5, Integer.MAX_VALUE, new C1031a(0), new C1061a(), "crashes"),
    SDK_CRASHES("sdk_crashes", 5, Integer.MAX_VALUE, new C1031a(0), new C1061a(), "crashes"),
    CURR_BCS("current_bcs", 50, Integer.MAX_VALUE, new C1031a(1), new C1058a(), null),
    NW_BCS("network_bcs", 10, Integer.MAX_VALUE, new C1031a(0), new C1058a(), null),
    PREV_BCS("previous_bcs", 50, Integer.MAX_VALUE, new C1031a(0), new C1058a(), null),
    STARTED_TXNS("started_txns", 50, Integer.MAX_VALUE, new C1031a(0), new C1058a(), null),
    FINISHED_TXNS("finished_txns", Integer.MAX_VALUE, Integer.MAX_VALUE, new C1031a(0), new C1058a(), null),
    SYSTEM_BCS("system_bcs", 100, Integer.MAX_VALUE, new C1031a(0), new C1058a(), null);
    
    private String f521l;
    private int f522m;
    private int f523n;
    private C1031a f524o;
    private cj f525p;
    private String f526q;

    private br(String str, int i, int i2, C1031a c1031a, cj cjVar, String str2) {
        this.f521l = str;
        this.f522m = i;
        this.f523n = i2;
        this.f524o = c1031a;
        this.f525p = cjVar;
        this.f526q = str2;
    }

    public final String m535a() {
        return this.f521l;
    }

    public final int m536b() {
        return this.f522m;
    }

    public final C1031a m537c() {
        return this.f524o;
    }

    public final cj m538d() {
        return this.f525p;
    }

    public final int m539e() {
        return this.f523n;
    }

    public final String m540f() {
        return this.f526q;
    }
}
