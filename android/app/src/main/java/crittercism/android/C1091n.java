package crittercism.android;

import java.util.List;
import java.util.Map;

/* renamed from: crittercism.android.n */
public abstract class C1091n {
    Map f845a;

    public C1091n(Map map) {
        this.f845a = map;
    }

    private String m803c(String str) {
        List list = (List) this.f845a.get(str);
        return list != null ? (String) list.get(list.size() - 1) : null;
    }

    public final long m804a(String str) {
        long j = Long.MAX_VALUE;
        String c = m803c(str);
        if (c != null) {
            try {
                j = Long.parseLong(c);
            } catch (NumberFormatException e) {
            }
        }
        return j;
    }

    public final int m805b(String str) {
        int i = -1;
        String c = m803c(str);
        if (c != null) {
            try {
                i = Integer.parseInt(c);
            } catch (NumberFormatException e) {
            }
        }
        return i;
    }

    public final String toString() {
        return this.f845a.toString();
    }
}
