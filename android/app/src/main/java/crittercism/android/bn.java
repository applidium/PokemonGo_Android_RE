package crittercism.android;

import java.util.HashMap;
import java.util.Map;

public final class bn {
    private static final Map f502a;
    private String f503b;
    private String f504c;
    private String f505d;
    private String f506e;

    /* renamed from: crittercism.android.bn.a */
    public static final class C1030a extends Exception {
        public C1030a(String str) {
            super(str);
        }
    }

    static {
        Map hashMap = new HashMap();
        f502a = hashMap;
        hashMap.put("00555300", "crittercism.com");
        f502a.put("00555304", "crit-ci.com");
        f502a.put("00555305", "crit-staging.com");
        f502a.put("00444503", "eu.crittercism.com");
    }

    public bn(String str) {
        if (str == null) {
            throw new C1030a("Given null appId");
        } else if (!str.matches("[0-9a-fA-F]+")) {
            throw new C1030a("Invalid appId: '" + str + "'. AppId must be hexadecimal characters");
        } else if (str.length() == 24 || str.length() == 40) {
            Object obj = null;
            if (str.length() == 24) {
                obj = "00555300";
            } else if (str.length() == 40) {
                obj = str.substring(str.length() - 8);
            }
            String str2 = (String) f502a.get(obj);
            if (str2 == null) {
                throw new C1030a("Invalid appId: '" + str + "'. Invalid app locator code");
            }
            this.f503b = System.getProperty("com.crittercism.apmUrl", "https://apm." + str2);
            this.f504c = System.getProperty("com.crittercism.apiUrl", "https://api." + str2);
            this.f505d = System.getProperty("com.crittercism.txnUrl", "https://txn.ingest." + str2);
            this.f506e = System.getProperty("com.crittercism.appLoadUrl", "https://appload.ingest." + str2);
        } else {
            throw new C1030a("Invalid appId: '" + str + "'. AppId must be either 24 or 40 characters");
        }
    }

    public final String m530a() {
        return this.f504c;
    }

    public final String m531b() {
        return this.f503b;
    }

    public final String m532c() {
        return this.f506e;
    }

    public final String m533d() {
        return this.f505d;
    }
}
