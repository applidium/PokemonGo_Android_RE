package crittercism.android;

import android.location.Location;
import crittercism.android.C1088k.C1087a;
import java.io.OutputStream;
import java.net.InetAddress;
import java.net.URL;
import java.util.Arrays;
import java.util.Date;
import org.apache.commons.io.IOUtils;
import org.json.JSONArray;
import spacemadness.com.lunarconsole.BuildConfig;

/* renamed from: crittercism.android.c */
public final class C1060c extends bp {
    public long f580a;
    public boolean f581b;
    C1059a f582c;
    public long f583d;
    public int f584e;
    public String f585f;
    public cn f586g;
    public C1088k f587h;
    public String f588i;
    public C1018b f589j;
    private long f590k;
    private boolean f591l;
    private boolean f592m;
    private String f593n;
    private long f594o;
    private boolean f595p;
    private boolean f596q;
    private double[] f597r;

    /* renamed from: crittercism.android.c.a */
    public enum C1059a {
        NOT_LOGGED_YET("Not logged"),
        INPUT_STREAM_READ("InputStream.read()"),
        INPUT_STREAM_CLOSE("InputStream.close()"),
        SOCKET_CLOSE("Socket.close()"),
        LEGACY_JAVANET("Legacy java.net"),
        HTTP_CONTENT_LENGTH_PARSER("parse()"),
        INPUT_STREAM_FINISHED("finishedMessage()"),
        PARSING_INPUT_STREAM_LOG_ERROR("logError()"),
        SOCKET_IMPL_CONNECT("MonitoredSocketImpl.connect()"),
        SSL_SOCKET_START_HANDSHAKE("MonitoredSSLSocket.startHandshake"),
        UNIT_TEST("Unit test"),
        LOG_ENDPOINT("logEndpoint");
        
        private String f579m;

        private C1059a(String str) {
            this.f579m = str;
        }

        public final String toString() {
            return this.f579m;
        }
    }

    public C1060c() {
        this.f580a = Long.MAX_VALUE;
        this.f590k = Long.MAX_VALUE;
        this.f591l = false;
        this.f592m = false;
        this.f581b = false;
        this.f582c = C1059a.NOT_LOGGED_YET;
        this.f594o = 0;
        this.f583d = 0;
        this.f595p = false;
        this.f596q = false;
        this.f584e = 0;
        this.f585f = BuildConfig.FLAVOR;
        this.f586g = new cn(null);
        this.f587h = new C1088k();
        this.f589j = C1018b.MOBILE;
        this.f593n = cg.f624a.m663a();
    }

    public C1060c(String str) {
        this.f580a = Long.MAX_VALUE;
        this.f590k = Long.MAX_VALUE;
        this.f591l = false;
        this.f592m = false;
        this.f581b = false;
        this.f582c = C1059a.NOT_LOGGED_YET;
        this.f594o = 0;
        this.f583d = 0;
        this.f595p = false;
        this.f596q = false;
        this.f584e = 0;
        this.f585f = BuildConfig.FLAVOR;
        this.f586g = new cn(null);
        this.f587h = new C1088k();
        this.f589j = C1018b.MOBILE;
        this.f593n = cg.f624a.m663a();
        if (str != null) {
            this.f588i = str;
        }
    }

    public C1060c(URL url) {
        this.f580a = Long.MAX_VALUE;
        this.f590k = Long.MAX_VALUE;
        this.f591l = false;
        this.f592m = false;
        this.f581b = false;
        this.f582c = C1059a.NOT_LOGGED_YET;
        this.f594o = 0;
        this.f583d = 0;
        this.f595p = false;
        this.f596q = false;
        this.f584e = 0;
        this.f585f = BuildConfig.FLAVOR;
        this.f586g = new cn(null);
        this.f587h = new C1088k();
        this.f589j = C1018b.MOBILE;
        this.f593n = cg.f624a.m663a();
        if (url != null) {
            this.f588i = url.toExternalForm();
        }
    }

    private long m630g() {
        return (this.f580a == Long.MAX_VALUE || this.f590k == Long.MAX_VALUE) ? Long.MAX_VALUE : this.f590k - this.f580a;
    }

    public final String m631a() {
        boolean z = true;
        String str = this.f588i;
        if (str == null) {
            C1088k c1088k = this.f587h;
            String hostName = c1088k.f833b != null ? c1088k.f833b : c1088k.f832a != null ? c1088k.f832a.getHostName() : "unknown-host";
            if (c1088k.f837f) {
                int i = c1088k.f836e;
                if (i > 0) {
                    str = new StringBuilder(UpsightEndpoint.SIGNED_MESSAGE_SEPARATOR).append(i).toString();
                    if (!hostName.endsWith(str)) {
                        str = hostName + str;
                    }
                }
                str = hostName;
            } else {
                str = c1088k.f834c;
                if (str == null || !(str.regionMatches(true, 0, "http:", 0, 5) || str.regionMatches(true, 0, "https:", 0, 6))) {
                    z = false;
                }
                if (!z) {
                    String str2 = c1088k.f835d != null ? BuildConfig.FLAVOR + c1088k.f835d.f830c + UpsightEndpoint.SIGNED_MESSAGE_SEPARATOR : BuildConfig.FLAVOR;
                    if (str.startsWith("//")) {
                        str = str2 + str;
                    } else {
                        String str3 = str2 + "//";
                        if (str.startsWith(hostName)) {
                            str = str3 + str;
                        } else {
                            str2 = BuildConfig.FLAVOR;
                            if (c1088k.f836e > 0 && (c1088k.f835d == null || c1088k.f835d.f831d != c1088k.f836e)) {
                                String stringBuilder = new StringBuilder(UpsightEndpoint.SIGNED_MESSAGE_SEPARATOR).append(c1088k.f836e).toString();
                                if (!hostName.endsWith(stringBuilder)) {
                                    str2 = stringBuilder;
                                }
                            }
                            str = str3 + hostName + str2 + str;
                        }
                    }
                }
            }
            this.f588i = str;
        }
        return str;
    }

    public final void m632a(int i) {
        C1088k c1088k = this.f587h;
        if (i > 0) {
            c1088k.f836e = i;
        }
    }

    public final void m633a(long j) {
        if (!this.f595p) {
            this.f594o += j;
        }
    }

    public final void m634a(Location location) {
        this.f597r = new double[]{location.getLatitude(), location.getLongitude()};
    }

    public final void m635a(C1087a c1087a) {
        this.f587h.f835d = c1087a;
    }

    public final void m636a(OutputStream outputStream) {
        outputStream.write(m645d().toString().getBytes());
    }

    public final void m637a(String str) {
        if (str == null) {
            throw new NullPointerException();
        }
        this.f588i = str;
    }

    public final void m638a(Throwable th) {
        this.f586g = new cn(th);
    }

    public final void m639a(InetAddress inetAddress) {
        this.f588i = null;
        this.f587h.f832a = inetAddress;
    }

    public final void m640b() {
        if (!this.f591l && this.f580a == Long.MAX_VALUE) {
            this.f580a = System.currentTimeMillis();
        }
    }

    public final void m641b(long j) {
        this.f595p = true;
        this.f594o = j;
    }

    public final void m642b(String str) {
        this.f588i = null;
        this.f587h.f833b = str;
    }

    public final void m643c() {
        if (!this.f592m && this.f590k == Long.MAX_VALUE) {
            this.f590k = System.currentTimeMillis();
        }
    }

    public final void m644c(long j) {
        if (!this.f596q) {
            this.f583d += j;
        }
    }

    public final JSONArray m645d() {
        JSONArray jSONArray = new JSONArray();
        try {
            jSONArray.put(this.f585f);
            jSONArray.put(m631a());
            jSONArray.put(ed.f792a.m772a(new Date(this.f580a)));
            jSONArray.put(m630g());
            jSONArray.put(this.f589j.m427a());
            jSONArray.put(this.f594o);
            jSONArray.put(this.f583d);
            jSONArray.put(this.f584e);
            jSONArray.put(this.f586g.f659a);
            jSONArray.put(this.f586g.f660b);
            if (this.f597r == null) {
                return jSONArray;
            }
            JSONArray jSONArray2 = new JSONArray();
            jSONArray2.put(this.f597r[0]);
            jSONArray2.put(this.f597r[1]);
            jSONArray.put(jSONArray2);
            return jSONArray;
        } catch (Exception e) {
            Exception exception = e;
            System.out.println("Failed to create statsArray");
            exception.printStackTrace();
            return null;
        }
    }

    public final void m646d(long j) {
        this.f596q = true;
        this.f583d = j;
    }

    public final String m647e() {
        return this.f593n;
    }

    public final void m648e(long j) {
        this.f580a = j;
        this.f591l = true;
    }

    public final void m649f() {
        this.f587h.f837f = true;
    }

    public final void m650f(long j) {
        this.f590k = j;
        this.f592m = true;
    }

    public final String toString() {
        String str = (((((((((((((((BuildConfig.FLAVOR + "URI            : " + this.f588i + IOUtils.LINE_SEPARATOR_UNIX) + "URI Builder    : " + this.f587h.toString() + IOUtils.LINE_SEPARATOR_UNIX) + IOUtils.LINE_SEPARATOR_UNIX) + "Logged by      : " + this.f582c.toString() + IOUtils.LINE_SEPARATOR_UNIX) + "Error type:         : " + this.f586g.f659a + IOUtils.LINE_SEPARATOR_UNIX) + "Error code:         : " + this.f586g.f660b + IOUtils.LINE_SEPARATOR_UNIX) + IOUtils.LINE_SEPARATOR_UNIX) + "Response time  : " + m630g() + IOUtils.LINE_SEPARATOR_UNIX) + "Start time     : " + this.f580a + IOUtils.LINE_SEPARATOR_UNIX) + "End time       : " + this.f590k + IOUtils.LINE_SEPARATOR_UNIX) + IOUtils.LINE_SEPARATOR_UNIX) + "Bytes out    : " + this.f583d + IOUtils.LINE_SEPARATOR_UNIX) + "Bytes in     : " + this.f594o + IOUtils.LINE_SEPARATOR_UNIX) + IOUtils.LINE_SEPARATOR_UNIX) + "Response code  : " + this.f584e + IOUtils.LINE_SEPARATOR_UNIX) + "Request method : " + this.f585f + IOUtils.LINE_SEPARATOR_UNIX;
        return this.f597r != null ? str + "Location       : " + Arrays.toString(this.f597r) + IOUtils.LINE_SEPARATOR_UNIX : str;
    }
}
