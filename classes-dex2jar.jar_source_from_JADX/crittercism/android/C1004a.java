package crittercism.android;

import com.crittercism.app.CrittercismConfig;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* renamed from: crittercism.android.a */
public final class C1004a {
    JSONObject f276a;

    private C1004a(au auVar, List list) {
        this.f276a = new JSONObject();
        list.size();
        JSONArray jSONArray = new JSONArray();
        JSONArray jSONArray2 = new JSONArray();
        jSONArray2.put(auVar.m334a());
        jSONArray2.put(auVar.m335b());
        jSONArray2.put(auVar.m336c());
        jSONArray2.put(CrittercismConfig.API_VERSION);
        jSONArray2.put(auVar.m338e());
        jSONArray.put(jSONArray2);
        jSONArray2 = new JSONArray();
        jSONArray2.put(ed.f792a.m771a());
        jSONArray2.put(auVar.m339f());
        jSONArray2.put(auVar.m343j());
        jSONArray2.put(auVar.m342i());
        jSONArray2.put(auVar.m344k());
        jSONArray2.put(auVar.m340g());
        jSONArray2.put(auVar.m341h());
        jSONArray.put(jSONArray2);
        JSONArray jSONArray3 = new JSONArray();
        for (C1060c d : list) {
            jSONArray3.put(d.m645d());
        }
        jSONArray.put(jSONArray3);
        this.f276a.put("d", jSONArray);
    }

    public static C1004a m227a(au auVar, List list) {
        try {
            return new C1004a(auVar, list);
        } catch (JSONException e) {
            dx.m754b("Unable to generate APM request's JSON: " + e);
            return null;
        }
    }
}
