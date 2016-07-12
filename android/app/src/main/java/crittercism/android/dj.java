package crittercism.android;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.UnsupportedEncodingException;
import java.net.SocketTimeoutException;
import java.net.URLConnection;
import java.security.GeneralSecurityException;
import org.json.JSONException;
import org.json.JSONObject;

public final class dj extends di {
    private cw f733a;
    private dc f734b;
    private boolean f735c;
    private cy f736d;

    public dj(cw cwVar, dc dcVar, cy cyVar) {
        this(cwVar, dcVar, false, cyVar);
    }

    public dj(cw cwVar, dc dcVar, boolean z, cy cyVar) {
        this.f733a = cwVar;
        this.f734b = dcVar;
        this.f735c = z;
        this.f736d = cyVar;
    }

    public final void m711a() {
        JSONObject jSONObject;
        int i;
        boolean z;
        UnsupportedEncodingException e;
        SocketTimeoutException e2;
        IOException e3;
        JSONException e4;
        try {
            URLConnection a = this.f734b.m696a();
            if (a != null) {
                int responseCode;
                try {
                    this.f733a.m676a(a.getOutputStream());
                    responseCode = a.getResponseCode();
                    try {
                        if (this.f735c) {
                            StringBuilder stringBuilder = new StringBuilder();
                            BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(a.getInputStream()));
                            while (true) {
                                int read = bufferedReader.read();
                                if (read == -1) {
                                    break;
                                }
                                stringBuilder.append((char) read);
                            }
                            bufferedReader.close();
                            jSONObject = new JSONObject(stringBuilder.toString());
                        } else {
                            jSONObject = null;
                        }
                        i = responseCode;
                        z = false;
                    } catch (UnsupportedEncodingException e5) {
                        e = e5;
                        new StringBuilder("UnsupportedEncodingException in proceed(): ").append(e.getMessage());
                        dx.m753b();
                        dx.m756c();
                        jSONObject = null;
                        i = responseCode;
                        z = false;
                        a.disconnect();
                        if (this.f736d != null) {
                            this.f736d.m682a(z, i, jSONObject);
                        }
                    } catch (SocketTimeoutException e6) {
                        e2 = e6;
                        new StringBuilder("SocketTimeoutException in proceed(): ").append(e2.getMessage());
                        dx.m753b();
                        i = responseCode;
                        z = true;
                        jSONObject = null;
                        a.disconnect();
                        if (this.f736d != null) {
                            this.f736d.m682a(z, i, jSONObject);
                        }
                    } catch (IOException e7) {
                        e3 = e7;
                        new StringBuilder("IOException in proceed(): ").append(e3.getMessage());
                        dx.m753b();
                        dx.m756c();
                        jSONObject = null;
                        i = responseCode;
                        z = false;
                        a.disconnect();
                        if (this.f736d != null) {
                            this.f736d.m682a(z, i, jSONObject);
                        }
                    } catch (JSONException e8) {
                        e4 = e8;
                        new StringBuilder("JSONException in proceed(): ").append(e4.getMessage());
                        dx.m753b();
                        dx.m756c();
                        jSONObject = null;
                        i = responseCode;
                        z = false;
                        a.disconnect();
                        if (this.f736d != null) {
                            this.f736d.m682a(z, i, jSONObject);
                        }
                    }
                } catch (UnsupportedEncodingException e9) {
                    e = e9;
                    responseCode = -1;
                    new StringBuilder("UnsupportedEncodingException in proceed(): ").append(e.getMessage());
                    dx.m753b();
                    dx.m756c();
                    jSONObject = null;
                    i = responseCode;
                    z = false;
                    a.disconnect();
                    if (this.f736d != null) {
                        this.f736d.m682a(z, i, jSONObject);
                    }
                } catch (SocketTimeoutException e10) {
                    e2 = e10;
                    responseCode = -1;
                    new StringBuilder("SocketTimeoutException in proceed(): ").append(e2.getMessage());
                    dx.m753b();
                    i = responseCode;
                    z = true;
                    jSONObject = null;
                    a.disconnect();
                    if (this.f736d != null) {
                        this.f736d.m682a(z, i, jSONObject);
                    }
                } catch (IOException e11) {
                    e3 = e11;
                    responseCode = -1;
                    new StringBuilder("IOException in proceed(): ").append(e3.getMessage());
                    dx.m753b();
                    dx.m756c();
                    jSONObject = null;
                    i = responseCode;
                    z = false;
                    a.disconnect();
                    if (this.f736d != null) {
                        this.f736d.m682a(z, i, jSONObject);
                    }
                } catch (JSONException e12) {
                    e4 = e12;
                    responseCode = -1;
                    new StringBuilder("JSONException in proceed(): ").append(e4.getMessage());
                    dx.m753b();
                    dx.m756c();
                    jSONObject = null;
                    i = responseCode;
                    z = false;
                    a.disconnect();
                    if (this.f736d != null) {
                        this.f736d.m682a(z, i, jSONObject);
                    }
                }
                a.disconnect();
                if (this.f736d != null) {
                    this.f736d.m682a(z, i, jSONObject);
                }
            }
        } catch (IOException e13) {
        } catch (GeneralSecurityException e14) {
        }
    }
}
