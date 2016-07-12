package crittercism.android;

import java.io.OutputStream;
import org.json.JSONArray;

public final class cf extends bp {
    public static final cf f619a;
    private String f620b;
    private String f621c;
    private String f622d;
    private C1063a f623e;

    /* renamed from: crittercism.android.cf.a */
    public enum C1063a {
        NORMAL,
        URGENT
    }

    static {
        f619a = new cf("session_start", C1063a.NORMAL);
    }

    public cf(String str, C1063a c1063a) {
        this(str, ed.f792a.m771a(), c1063a);
    }

    private cf(String str, String str2, C1063a c1063a) {
        this.f622d = cg.f624a.m663a();
        if (str.length() > 140) {
            str = str.substring(0, 140);
        }
        this.f620b = str;
        this.f621c = str2;
        this.f623e = c1063a;
    }

    public final void m660a(OutputStream outputStream) {
        JSONArray jSONArray = new JSONArray();
        jSONArray.put(this.f620b);
        jSONArray.put(this.f621c);
        String jSONArray2 = jSONArray.toString();
        new StringBuilder("BREADCRUMB WRITING ").append(jSONArray2);
        dx.m753b();
        outputStream.write(jSONArray2.getBytes());
    }

    public final String m661e() {
        return this.f622d;
    }
}
