package crittercism.android;

import com.crittercism.app.CrittercismConfig;
import java.io.OutputStream;
import java.util.HashMap;
import java.util.Map;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

public final class cu implements cw {
    public Map f696a;

    /* renamed from: crittercism.android.cu.a */
    public static final class C1067a implements cx {
        public final /* synthetic */ cw m685a(au auVar) {
            return new cu(auVar);
        }
    }

    public cu(au auVar) {
        this.f696a = new HashMap();
        this.f696a.put("app_id", auVar.m334a());
        this.f696a.put("hashed_device_id", auVar.m336c());
        this.f696a.put("library_version", CrittercismConfig.API_VERSION);
    }

    public final cu m686a(String str, String str2) {
        this.f696a.put(str, str2);
        return this;
    }

    public final cu m687a(String str, JSONArray jSONArray) {
        this.f696a.put(str, jSONArray);
        return this;
    }

    public final /* synthetic */ cw m688a(bs bsVar) {
        String str = bsVar.f529b;
        this.f696a.put(bsVar.f529b, new bo(bsVar).f507a);
        return this;
    }

    public final void m689a(OutputStream outputStream) {
        dx.m753b();
        outputStream.write(new JSONObject(this.f696a).toString().getBytes("UTF8"));
    }

    public final String toString() {
        String str = null;
        try {
            str = new JSONObject(this.f696a).toString(4);
        } catch (JSONException e) {
            dx.m748a();
        }
        return str;
    }
}
