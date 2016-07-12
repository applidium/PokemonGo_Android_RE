package crittercism.android;

import android.util.SparseArray;

/* renamed from: crittercism.android.b */
public enum C1018b {
    MOBILE(0),
    WIFI(1),
    UNKNOWN(2),
    NOT_CONNECTED(3);
    
    private static SparseArray f398e;
    private int f400f;

    static {
        SparseArray sparseArray = new SparseArray();
        f398e = sparseArray;
        sparseArray.put(0, MOBILE);
        f398e.put(1, WIFI);
    }

    private C1018b(int i) {
        this.f400f = i;
    }

    public static C1018b m426a(int i) {
        C1018b c1018b = (C1018b) f398e.get(i);
        return c1018b == null ? UNKNOWN : c1018b;
    }

    public final int m427a() {
        return this.f400f;
    }
}
