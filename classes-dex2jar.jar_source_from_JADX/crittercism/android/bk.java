package crittercism.android;

import com.crittercism.integrations.PluginException;
import com.voxelbusters.nativeplugins.defines.Keys;
import com.voxelbusters.nativeplugins.defines.Keys.GameServices;
import com.voxelbusters.nativeplugins.defines.Keys.Twitter;
import crittercism.android.bx.C1032a;
import crittercism.android.bx.C1033b;
import crittercism.android.bx.C1034c;
import crittercism.android.bx.C1035d;
import crittercism.android.bx.C1036e;
import crittercism.android.bx.C1037f;
import crittercism.android.bx.C1039h;
import crittercism.android.bx.C1040i;
import crittercism.android.bx.C1041j;
import crittercism.android.bx.C1042k;
import crittercism.android.bx.C1043l;
import crittercism.android.bx.C1044m;
import crittercism.android.bx.C1045n;
import crittercism.android.bx.C1046o;
import crittercism.android.bx.C1047p;
import crittercism.android.bx.C1048q;
import crittercism.android.bx.C1049r;
import crittercism.android.bx.C1050s;
import crittercism.android.bx.C1051t;
import crittercism.android.bx.C1052u;
import crittercism.android.bx.C1053v;
import crittercism.android.bx.C1054w;
import crittercism.android.bx.C1055x;
import crittercism.android.bx.C1056y;
import crittercism.android.bx.C1057z;
import crittercism.android.bx.aa;
import java.io.OutputStream;
import java.util.Arrays;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
import spacemadness.com.lunarconsole.BuildConfig;

public final class bk implements ch {
    public long f477a;
    public JSONArray f478b;
    public String f479c;
    public String f480d;
    public JSONArray f481e;
    public String f482f;
    public JSONObject f483g;
    private JSONObject f484h;
    private JSONArray f485i;
    private JSONArray f486j;
    private String f487k;
    private JSONArray f488l;
    private String f489m;
    private int f490n;
    private boolean f491o;
    private String f492p;

    public bk(Throwable th, long j) {
        int i = 0;
        this.f480d = BuildConfig.FLAVOR;
        this.f490n = -1;
        this.f491o = false;
        this.f491o = th instanceof PluginException;
        this.f492p = cg.f624a.m663a();
        this.f482f = "uhe";
        bu buVar = new bu();
        buVar.m557a(new C1032a()).m557a(new C1034c()).m557a(new C1033b()).m557a(new C1035d()).m557a(new C1036e()).m557a(new C1037f()).m557a(new C1046o()).m557a(new C1047p()).m557a(new C1040i()).m557a(new C1041j()).m557a(new C1039h()).m557a(new C1057z()).m557a(new aa()).m557a(new C1042k()).m557a(new C1043l()).m557a(new C1045n()).m557a(new C1044m()).m557a(new C1048q()).m557a(new C1049r()).m557a(new C1050s()).m557a(new C1051t()).m557a(new C1052u()).m557a(new C1053v()).m557a(new C1054w()).m557a(new C1055x()).m557a(new C1056y());
        this.f483g = buVar.m558a();
        this.f484h = new JSONObject();
        this.f477a = j;
        this.f479c = m515a(th);
        if (th.getMessage() != null) {
            this.f480d = th.getMessage();
        }
        if (!this.f491o) {
            this.f490n = m517c(th);
        }
        this.f487k = "android";
        this.f489m = ed.f792a.m771a();
        this.f488l = new JSONArray();
        String[] b = m516b(th);
        int length = b.length;
        while (i < length) {
            this.f488l.put(b[i]);
            i++;
        }
    }

    private String m515a(Throwable th) {
        if (this.f491o) {
            return ((PluginException) th).getExceptionName();
        }
        while (true) {
            String name = th.getClass().getName();
            Throwable cause = th.getCause();
            if (cause == null) {
                return name;
            }
            if (cause == th) {
                return name;
            }
            th = cause;
        }
    }

    /* JADX WARNING: inconsistent code. */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    private static java.lang.String[] m516b(java.lang.Throwable r3) {
        /*
        r1 = new java.io.StringWriter;
        r1.<init>();
        r2 = new java.io.PrintWriter;
        r2.<init>(r1);
    L_0x000a:
        r3.printStackTrace(r2);
        r0 = r3.getCause();
        if (r0 == 0) goto L_0x0015;
    L_0x0013:
        if (r0 != r3) goto L_0x0020;
    L_0x0015:
        r0 = r1.toString();
        r1 = "\n";
        r0 = r0.split(r1);
        return r0;
    L_0x0020:
        r3 = r0;
        goto L_0x000a;
        */
        throw new UnsupportedOperationException("Method not decompiled: crittercism.android.bk.b(java.lang.Throwable):java.lang.String[]");
    }

    private static int m517c(Throwable th) {
        StackTraceElement[] stackTrace = th.getStackTrace();
        int i = 0;
        while (i < stackTrace.length) {
            try {
                Object obj;
                Class cls = Class.forName(stackTrace[i].getClassName());
                for (ClassLoader systemClassLoader = ClassLoader.getSystemClassLoader(); systemClassLoader != null; systemClassLoader = systemClassLoader.getParent()) {
                    if (cls.getClassLoader() == systemClassLoader) {
                        obj = 1;
                        break;
                    }
                }
                obj = null;
                if (obj == null) {
                    return i + 1;
                }
                i++;
            } catch (ClassNotFoundException e) {
            }
        }
        return -1;
    }

    public final void m518a() {
        this.f481e = new JSONArray();
        for (Entry entry : Thread.getAllStackTraces().entrySet()) {
            Map hashMap = new HashMap();
            Thread thread = (Thread) entry.getKey();
            if (thread.getId() != this.f477a) {
                hashMap.put(Twitter.NAME, thread.getName());
                hashMap.put(TriggerIfContentAvailable.ID, Long.valueOf(thread.getId()));
                hashMap.put(GameServices.STATE, thread.getState().name());
                hashMap.put("stacktrace", new JSONArray(Arrays.asList((Object[]) entry.getValue())));
                this.f481e.put(new JSONObject(hashMap));
            }
        }
    }

    public final void m519a(bs bsVar) {
        this.f485i = new bo(bsVar).f507a;
    }

    public final void m520a(OutputStream outputStream) {
        outputStream.write(m523b().toString().getBytes());
    }

    public final void m521a(String str, bs bsVar) {
        try {
            this.f484h.put(str, new bo(bsVar).f507a);
        } catch (JSONException e) {
        }
    }

    public final void m522a(List list) {
        this.f486j = new JSONArray();
        for (bg j : list) {
            try {
                this.f486j.put(j.m498j());
            } catch (Throwable e) {
                dx.m752a(e);
            }
        }
    }

    public final JSONObject m523b() {
        Map hashMap = new HashMap();
        hashMap.put("app_state", this.f483g);
        hashMap.put("breadcrumbs", this.f484h);
        hashMap.put("current_thread_id", Long.valueOf(this.f477a));
        if (this.f485i != null) {
            hashMap.put("endpoints", this.f485i);
        }
        if (this.f478b != null) {
            hashMap.put("systemBreadcrumbs", this.f478b);
        }
        if (this.f486j != null && this.f486j.length() > 0) {
            hashMap.put("transactions", this.f486j);
        }
        hashMap.put("exception_name", this.f479c);
        hashMap.put("exception_reason", this.f480d);
        hashMap.put("platform", this.f487k);
        if (this.f481e != null) {
            hashMap.put("threads", this.f481e);
        }
        hashMap.put("ts", this.f489m);
        Object obj = this.f482f;
        if (this.f477a != 1) {
            obj = obj + "-bg";
        }
        hashMap.put(Keys.TYPE, obj);
        hashMap.put("unsymbolized_stacktrace", this.f488l);
        if (!this.f491o) {
            hashMap.put("suspect_line_index", Integer.valueOf(this.f490n));
        }
        return new JSONObject(hashMap);
    }

    public final String m524e() {
        return this.f492p;
    }
}
