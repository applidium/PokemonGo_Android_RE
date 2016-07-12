package crittercism.android;

import java.util.Comparator;
import java.util.Map;
import java.util.TreeMap;

/* renamed from: crittercism.android.p */
public final class C1094p extends C1091n {

    /* renamed from: crittercism.android.p.1 */
    final class C10931 implements Comparator {
        final /* synthetic */ C1094p f847a;

        C10931(C1094p c1094p) {
            this.f847a = c1094p;
        }

        public final /* bridge */ /* synthetic */ int compare(Object obj, Object obj2) {
            String str = (String) obj;
            String str2 = (String) obj2;
            return str == str2 ? 0 : str == null ? -1 : str2 == null ? 1 : String.CASE_INSENSITIVE_ORDER.compare(str, str2);
        }
    }

    public C1094p(Map map) {
        super(map);
        Map treeMap = new TreeMap(new C10931(this));
        treeMap.putAll(map);
        this.f845a = treeMap;
    }
}
