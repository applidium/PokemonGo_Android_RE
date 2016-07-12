package crittercism.android;

import android.content.Context;
import android.content.SharedPreferences.Editor;
import org.json.JSONException;
import org.json.JSONObject;

public final class dk extends di {
    private ax f737a;
    private final boolean f738b;
    private Context f739c;

    public dk(Context context, ax axVar, boolean z) {
        this.f737a = axVar;
        this.f738b = z;
        this.f739c = context;
    }

    public final void m712a() {
        new StringBuilder("Setting opt out status to ").append(this.f738b).append(".  This will take effect in the next user session.");
        dx.m753b();
        boolean z = this.f738b;
        ax axVar = this.f737a;
        String a = cq.OPT_OUT_STATUS_SETTING.m668a();
        String b = cq.OPT_OUT_STATUS_SETTING.m669b();
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("optOutStatus", z).put("optOutStatusSet", true);
        } catch (JSONException e) {
        }
        axVar.m362a(a, b, jSONObject.toString());
        if (this.f738b) {
            Editor edit = this.f739c.getSharedPreferences("com.crittercism.optmz.config", 0).edit();
            edit.clear();
            edit.commit();
            C1082h.m781b(this.f739c);
        }
    }
}
