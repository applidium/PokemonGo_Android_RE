package crittercism.android;

import android.content.Context;
import android.os.ConditionVariable;
import crittercism.android.bg.C1027a;
import crittercism.android.bx.C1042k;
import java.io.IOException;
import java.io.OutputStream;
import java.net.HttpURLConnection;
import java.net.URL;
import java.util.concurrent.TimeUnit;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

public final class bi extends di implements bt {
    private long f458a;
    private volatile long f459b;
    private ConditionVariable f460c;
    private ConditionVariable f461d;
    private au f462e;
    private bs f463f;
    private bs f464g;
    private bs f465h;
    private bs f466i;
    private URL f467j;
    private Context f468k;
    private volatile boolean f469l;

    public bi(Context context, au auVar, bs bsVar, bs bsVar2, bs bsVar3, bs bsVar4, URL url) {
        this.f458a = System.currentTimeMillis();
        this.f459b = 10000;
        this.f460c = new ConditionVariable(false);
        this.f461d = new ConditionVariable(false);
        this.f469l = false;
        this.f468k = context;
        this.f463f = bsVar;
        this.f464g = bsVar2;
        this.f465h = bsVar3;
        this.f466i = bsVar4;
        this.f462e = auVar;
        this.f467j = url;
        bs bsVar5 = this.f463f;
        if (this != null) {
            synchronized (bsVar5.f530c) {
                bsVar5.f530c.add(this);
            }
        }
    }

    private JSONObject m504a(JSONArray jSONArray) {
        JSONObject jSONObject = new JSONObject();
        try {
            JSONObject jSONObject2 = new JSONObject();
            jSONObject2.put("appID", this.f462e.m334a());
            jSONObject2.put("deviceID", this.f462e.m336c());
            jSONObject2.put("crPlatform", "android");
            jSONObject2.put("crVersion", this.f462e.m337d());
            jSONObject2.put("deviceModel", this.f462e.m343j());
            jSONObject2.put("osName", "android");
            jSONObject2.put("osVersion", this.f462e.m344k());
            jSONObject2.put("carrier", this.f462e.m339f());
            jSONObject2.put("mobileCountryCode", this.f462e.m340g());
            jSONObject2.put("mobileNetworkCode", this.f462e.m341h());
            jSONObject2.put("appVersion", this.f462e.m335b());
            jSONObject2.put("locale", new C1042k().f548a);
            jSONObject.put("appState", jSONObject2);
            jSONObject.put("transactions", jSONArray);
            if (!m505b(jSONArray)) {
                return jSONObject;
            }
            jSONObject.put("breadcrumbs", new bo(this.f464g).f507a);
            jSONObject.put("endpoints", new bo(this.f465h).f507a);
            jSONObject.put("systemBreadcrumbs", new bo(this.f466i).f507a);
            return jSONObject;
        } catch (JSONException e) {
            return null;
        }
    }

    private static boolean m505b(JSONArray jSONArray) {
        for (int i = 0; i < jSONArray.length(); i++) {
            JSONArray optJSONArray = jSONArray.optJSONArray(i);
            if (optJSONArray != null) {
                try {
                    C1027a k = new bg(optJSONArray).m499k();
                    if (!(k == C1027a.SUCCESS || k == C1027a.INTERRUPTED || k == C1027a.ABORTED)) {
                        return true;
                    }
                } catch (Throwable e) {
                    dx.m752a(e);
                } catch (Throwable e2) {
                    dx.m752a(e2);
                }
            }
        }
        return false;
    }

    public final void m506a() {
        while (!this.f469l) {
            this.f460c.block();
            this.f461d.block();
            if (!this.f469l) {
                long currentTimeMillis = this.f459b - (System.currentTimeMillis() - this.f458a);
                if (currentTimeMillis > 0) {
                    try {
                        Thread.sleep(currentTimeMillis);
                    } catch (InterruptedException e) {
                    }
                }
                this.f458a = System.currentTimeMillis();
                bs a = this.f463f.m548a(this.f468k);
                this.f463f.m550a(a);
                JSONArray jSONArray = new bo(a).f507a;
                eb.m765a(a.f528a);
                if (jSONArray.length() > 0 && m504a(jSONArray) != null) {
                    JSONObject a2 = m504a(jSONArray);
                    try {
                        HttpURLConnection a3 = new dc(this.f467j).m696a();
                        OutputStream outputStream = a3.getOutputStream();
                        outputStream.write(a2.toString().getBytes("UTF8"));
                        outputStream.close();
                        a3.getResponseCode();
                        a3.disconnect();
                    } catch (IOException e2) {
                        new StringBuilder("Request failed for ").append(this.f467j);
                        dx.m748a();
                    } catch (Throwable e3) {
                        new StringBuilder("Request failed for ").append(this.f467j);
                        dx.m748a();
                        dx.m752a(e3);
                    }
                }
            } else {
                return;
            }
        }
    }

    public final void m507a(int i, TimeUnit timeUnit) {
        this.f459b = timeUnit.toMillis((long) i);
    }

    public final void m508b() {
        this.f460c.open();
    }

    public final void m509c() {
        bs bsVar = this.f463f;
        this.f461d.open();
    }

    public final void m510d() {
        bs bsVar = this.f463f;
        this.f461d.close();
    }
}
