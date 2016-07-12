package crittercism.android;

import com.crittercism.app.CrittercismConfig;
import com.voxelbusters.nativeplugins.defines.Keys.Mime;
import java.net.HttpURLConnection;
import java.net.URL;
import java.security.GeneralSecurityException;
import java.util.Arrays;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;
import javax.net.ssl.HttpsURLConnection;
import javax.net.ssl.SSLContext;
import javax.net.ssl.SSLSocketFactory;

public final class dc {
    private static SSLSocketFactory f702a;
    private URL f703b;
    private Map f704c;
    private int f705d;
    private boolean f706e;
    private boolean f707f;
    private String f708g;
    private boolean f709h;
    private int f710i;

    static {
        f702a = null;
        try {
            SSLContext instance = SSLContext.getInstance("TLS");
            instance.init(null, null, null);
            SSLSocketFactory socketFactory = instance.getSocketFactory();
            if (socketFactory == null) {
                return;
            }
            if (socketFactory instanceof ab) {
                f702a = ((ab) socketFactory).m236a();
            } else {
                f702a = socketFactory;
            }
        } catch (GeneralSecurityException e) {
            f702a = null;
        }
    }

    public dc(URL url) {
        this.f704c = new HashMap();
        this.f705d = 0;
        this.f706e = true;
        this.f707f = true;
        this.f708g = "POST";
        this.f709h = false;
        this.f710i = 2500;
        this.f703b = url;
        this.f704c.put("User-Agent", Arrays.asList(new String[]{CrittercismConfig.API_VERSION}));
        this.f704c.put("Content-Type", Arrays.asList(new String[]{"application/json"}));
        this.f704c.put("Accept", Arrays.asList(new String[]{Mime.PLAIN_TEXT, "application/json"}));
    }

    public final HttpURLConnection m696a() {
        HttpURLConnection httpURLConnection = (HttpURLConnection) this.f703b.openConnection();
        for (Entry entry : this.f704c.entrySet()) {
            for (String addRequestProperty : (List) entry.getValue()) {
                httpURLConnection.addRequestProperty((String) entry.getKey(), addRequestProperty);
            }
        }
        httpURLConnection.setConnectTimeout(this.f710i);
        httpURLConnection.setReadTimeout(this.f710i);
        httpURLConnection.setDoInput(this.f706e);
        httpURLConnection.setDoOutput(this.f707f);
        if (this.f709h) {
            httpURLConnection.setChunkedStreamingMode(this.f705d);
        }
        httpURLConnection.setRequestMethod(this.f708g);
        if (httpURLConnection instanceof HttpsURLConnection) {
            HttpsURLConnection httpsURLConnection = (HttpsURLConnection) httpURLConnection;
            if (f702a != null) {
                httpsURLConnection.setSSLSocketFactory(f702a);
            } else {
                throw new GeneralSecurityException();
            }
        }
        return httpURLConnection;
    }
}
