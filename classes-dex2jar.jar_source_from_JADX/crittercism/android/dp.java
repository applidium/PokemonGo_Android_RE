package crittercism.android;

import com.google.android.gms.common.GooglePlayServicesUtil;
import crittercism.android.C1074do.C1071a.C1070a;
import crittercism.android.C1074do.C1073b.C1072a;
import java.util.HashMap;
import java.util.Map;

public final class dp {
    private static Map f749a;

    static {
        Map hashMap = new HashMap();
        f749a = hashMap;
        hashMap.put("com.amazon.venezia", new C1070a());
        f749a.put(GooglePlayServicesUtil.GOOGLE_PLAY_STORE_PACKAGE, new C1072a());
    }

    public static dn m725a(String str) {
        return (str == null || !f749a.containsKey(str)) ? null : (dn) f749a.get(str);
    }
}
