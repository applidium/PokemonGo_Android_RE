package crittercism.android;

import java.io.OutputStream;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Map.Entry;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

public final class cs implements cw {
    private Map f687a;

    /* renamed from: crittercism.android.cs.a */
    static final class C1064a {
        boolean f685a;
        int f686b;

        public C1064a() {
            this((byte) 0);
        }

        private C1064a(byte b) {
            this.f685a = false;
            this.f686b = 0;
            this.f685a = false;
            this.f686b = 0;
        }
    }

    /* renamed from: crittercism.android.cs.b */
    public static final class C1065b implements cx {
        public final /* synthetic */ cw m674a(au auVar) {
            return new cs();
        }
    }

    public cs() {
        this.f687a = new HashMap();
    }

    private JSONArray m677a() {
        JSONArray jSONArray = new JSONArray();
        for (Entry entry : this.f687a.entrySet()) {
            JSONObject jSONObject = new JSONObject((Map) entry.getKey());
            C1064a c1064a = (C1064a) entry.getValue();
            try {
                jSONArray.put(new JSONObject().put("appLoads", jSONObject).put("count", c1064a.f686b).put("current", c1064a.f685a));
            } catch (JSONException e) {
            }
        }
        return jSONArray;
    }

    public final /* synthetic */ cw m678a(bs bsVar) {
        Object obj = null;
        for (bq bqVar : bsVar.m555c()) {
            Object obj2;
            Object obj3;
            if (bqVar instanceof ca) {
                JSONObject jSONObject = (JSONObject) bqVar.m534a();
                if (jSONObject == null) {
                    obj2 = null;
                } else {
                    Map hashMap = new HashMap(jSONObject.length());
                    Iterator keys = jSONObject.keys();
                    while (keys.hasNext()) {
                        String str = (String) keys.next();
                        hashMap.put(str, jSONObject.opt(str));
                    }
                    Map map = hashMap;
                }
            } else {
                obj2 = null;
            }
            if (obj2 != null) {
                C1064a c1064a = (C1064a) this.f687a.get(obj2);
                if (c1064a == null) {
                    c1064a = new C1064a();
                    this.f687a.put(obj2, c1064a);
                }
                r0.f686b++;
                obj3 = obj2;
            } else {
                obj3 = obj;
            }
            obj = obj3;
        }
        if (obj != null) {
            ((C1064a) this.f687a.get(obj)).f685a = true;
        }
        return this;
    }

    public final void m679a(OutputStream outputStream) {
        outputStream.write(m677a().toString().getBytes("UTF8"));
    }

    public final String toString() {
        String str = null;
        try {
            str = m677a().toString(4);
        } catch (JSONException e) {
            dx.m748a();
        }
        return str;
    }
}
