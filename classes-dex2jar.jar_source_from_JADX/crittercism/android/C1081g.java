package crittercism.android;

import android.os.ConditionVariable;
import android.util.Log;
import java.io.IOException;
import java.net.HttpURLConnection;
import java.net.URL;
import java.util.LinkedList;
import java.util.List;
import java.util.concurrent.TimeUnit;
import org.json.JSONObject;

/* renamed from: crittercism.android.g */
public final class C1081g implements C1017f, Runnable {
    private List f795a;
    private URL f796b;
    private long f797c;
    private ConditionVariable f798d;
    private au f799e;
    private ConditionVariable f800f;
    private volatile boolean f801g;
    private final Object f802h;
    private int f803i;
    private volatile long f804j;

    public C1081g(au auVar, URL url) {
        this(auVar, url, (byte) 0);
    }

    private C1081g(au auVar, URL url, byte b) {
        this.f795a = new LinkedList();
        this.f796b = null;
        this.f797c = System.currentTimeMillis();
        this.f798d = new ConditionVariable(false);
        this.f800f = new ConditionVariable(false);
        this.f801g = false;
        this.f802h = new Object();
        this.f803i = 50;
        this.f804j = 10000;
        this.f799e = auVar;
        this.f796b = url;
        this.f803i = 50;
        this.f804j = 10000;
    }

    private static boolean m773a(HttpURLConnection httpURLConnection, JSONObject jSONObject) {
        try {
            httpURLConnection.getOutputStream().write(jSONObject.toString().getBytes("UTF8"));
            int responseCode = httpURLConnection.getResponseCode();
            httpURLConnection.disconnect();
            return responseCode == 202;
        } catch (IOException e) {
            new StringBuilder("Request failed for ").append(httpURLConnection.getURL().toExternalForm());
            dx.m748a();
            return false;
        } catch (Exception e2) {
            new StringBuilder("Request failed for ").append(httpURLConnection.getURL().toExternalForm());
            dx.m748a();
            return false;
        }
    }

    /* JADX WARNING: inconsistent code. */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    private long m774b() {
        /*
        r8 = this;
        r0 = 0;
        r2 = r8.f804j;
        r4 = java.lang.System.currentTimeMillis();
        r6 = r8.f797c;
        r4 = r4 - r6;
        r6 = (r4 > r0 ? 1 : (r4 == r0 ? 0 : -1));
        if (r6 <= 0) goto L_0x0017;
    L_0x000f:
        r2 = r2 - r4;
        r4 = (r2 > r0 ? 1 : (r2 == r0 ? 0 : -1));
        if (r4 >= 0) goto L_0x0017;
    L_0x0014:
        r2 = r8.f804j;
        return r0;
    L_0x0017:
        r0 = r2;
        goto L_0x0014;
        */
        throw new UnsupportedOperationException("Method not decompiled: crittercism.android.g.b():long");
    }

    /* JADX WARNING: inconsistent code. */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    private java.net.HttpURLConnection m775c() {
        /*
        r8 = this;
        r4 = 0;
        r1 = r8.f796b;	 Catch:{ IOException -> 0x004d, GeneralSecurityException -> 0x0067 }
        r1 = r1.openConnection();	 Catch:{ IOException -> 0x004d, GeneralSecurityException -> 0x0067 }
        r1 = (java.net.HttpURLConnection) r1;	 Catch:{ IOException -> 0x004d, GeneralSecurityException -> 0x0067 }
        r2 = 2500; // 0x9c4 float:3.503E-42 double:1.235E-320;
        r1.setConnectTimeout(r2);	 Catch:{ IOException -> 0x0080, GeneralSecurityException -> 0x0067 }
        r2 = "User-Agent";
        r3 = "5.0.8";
        r1.setRequestProperty(r2, r3);	 Catch:{ IOException -> 0x0080, GeneralSecurityException -> 0x0067 }
        r2 = "Content-Type";
        r3 = "application/json";
        r1.setRequestProperty(r2, r3);	 Catch:{ IOException -> 0x0080, GeneralSecurityException -> 0x0067 }
        r2 = 1;
        r1.setDoOutput(r2);	 Catch:{ IOException -> 0x0080, GeneralSecurityException -> 0x0067 }
        r2 = "POST";
        r1.setRequestMethod(r2);	 Catch:{ IOException -> 0x0080, GeneralSecurityException -> 0x0067 }
        r2 = r1 instanceof javax.net.ssl.HttpsURLConnection;	 Catch:{ IOException -> 0x0080, GeneralSecurityException -> 0x0067 }
        if (r2 == 0) goto L_0x004c;
    L_0x0029:
        r0 = r1;
        r0 = (javax.net.ssl.HttpsURLConnection) r0;	 Catch:{ IOException -> 0x0080, GeneralSecurityException -> 0x0067 }
        r2 = r0;
        r3 = "TLS";
        r3 = javax.net.ssl.SSLContext.getInstance(r3);	 Catch:{ IOException -> 0x0080, GeneralSecurityException -> 0x0067 }
        r5 = 0;
        r6 = 0;
        r7 = 0;
        r3.init(r5, r6, r7);	 Catch:{ IOException -> 0x0080, GeneralSecurityException -> 0x0067 }
        r3 = r3.getSocketFactory();	 Catch:{ IOException -> 0x0080, GeneralSecurityException -> 0x0067 }
        if (r3 == 0) goto L_0x004c;
    L_0x003f:
        r5 = r3 instanceof crittercism.android.ab;	 Catch:{ IOException -> 0x0080, GeneralSecurityException -> 0x0067 }
        if (r5 == 0) goto L_0x0049;
    L_0x0043:
        r3 = (crittercism.android.ab) r3;	 Catch:{ IOException -> 0x0080, GeneralSecurityException -> 0x0067 }
        r3 = r3.m236a();	 Catch:{ IOException -> 0x0080, GeneralSecurityException -> 0x0067 }
    L_0x0049:
        r2.setSSLSocketFactory(r3);	 Catch:{ IOException -> 0x0080, GeneralSecurityException -> 0x0067 }
    L_0x004c:
        return r1;
    L_0x004d:
        r1 = move-exception;
        r2 = r1;
        r1 = r4;
    L_0x0050:
        r3 = new java.lang.StringBuilder;
        r4 = "Failed to instantiate URLConnection to APM server: ";
        r3.<init>(r4);
        r2 = r2.getMessage();
        r2 = r3.append(r2);
        r2 = r2.toString();
        crittercism.android.dx.m754b(r2);
        goto L_0x004c;
    L_0x0067:
        r1 = move-exception;
        r2 = new java.lang.StringBuilder;
        r3 = "Failed to instantiate URLConnection to APM server: ";
        r2.<init>(r3);
        r1 = r1.getMessage();
        r1 = r2.append(r1);
        r1 = r1.toString();
        crittercism.android.dx.m754b(r1);
        r1 = r4;
        goto L_0x004c;
    L_0x0080:
        r2 = move-exception;
        goto L_0x0050;
        */
        throw new UnsupportedOperationException("Method not decompiled: crittercism.android.g.c():java.net.HttpURLConnection");
    }

    private boolean m776d() {
        return !this.f801g && this.f795a.size() < this.f803i;
    }

    public final void m777a() {
        this.f800f.open();
    }

    public final void m778a(int i, TimeUnit timeUnit) {
        this.f804j = timeUnit.toMillis((long) i);
    }

    public final void m779a(C1060c c1060c) {
        Object obj = null;
        if (m776d()) {
            synchronized (this.f802h) {
                if (m776d()) {
                    this.f795a.add(c1060c);
                    if (!c1060c.m631a().contains(this.f796b.getHost())) {
                        String str = c1060c.f585f;
                        if (str == null || !str.toLowerCase().equals("connect")) {
                            obj = 1;
                        }
                    }
                    if (obj != null) {
                        this.f798d.open();
                    }
                    return;
                }
            }
        }
    }

    public final void run() {
        while (!this.f801g) {
            try {
                this.f800f.block();
                this.f798d.block();
                if (!this.f801g) {
                    try {
                        if (m774b() > 0) {
                            Thread.sleep(m774b());
                        }
                    } catch (InterruptedException e) {
                    }
                    this.f797c = System.currentTimeMillis();
                    HttpURLConnection c = m775c();
                    if (c == null) {
                        this.f801g = true;
                        dx.m754b("Disabling APM due to failure instantiating connection");
                        return;
                    }
                    List list;
                    synchronized (this.f802h) {
                        list = this.f795a;
                        this.f795a = new LinkedList();
                        this.f798d.close();
                    }
                    C1004a a = C1004a.m227a(this.f799e, list);
                    if (a == null) {
                        this.f801g = true;
                        dx.m754b("Disabling APM due to failure building request");
                        return;
                    }
                    C1081g.m773a(c, a.f276a);
                } else {
                    return;
                }
            } catch (Exception e2) {
                Log.e("Crittercism", "Exited APM send task due to: \n" + e2);
                return;
            }
        }
    }
}
