package crittercism.android;

import org.json.JSONException;
import org.json.JSONObject;

public final class ds {
    private boolean f754a;
    private boolean f755b;

    /* renamed from: crittercism.android.ds.a */
    public static final class C1075a {
        public static ds m731a(ax axVar) {
            JSONObject jSONObject = null;
            String a = axVar.m360a(cq.OPT_OUT_STATUS_SETTING.m668a(), cq.OPT_OUT_STATUS_SETTING.m669b());
            if (a != null) {
                try {
                    jSONObject = new JSONObject(a);
                } catch (JSONException e) {
                    dx.m753b();
                }
            }
            return new ds(jSONObject != null ? jSONObject.optBoolean("optOutStatusSet", false) : false ? jSONObject.optBoolean("optOutStatus", false) : axVar.m364c(cq.OLD_OPT_OUT_STATUS_SETTING.m668a(), cq.OLD_OPT_OUT_STATUS_SETTING.m669b()));
        }
    }

    public ds(boolean z) {
        this.f754a = z;
        this.f755b = true;
    }

    public final boolean m732a() {
        boolean z;
        synchronized (this) {
            z = this.f754a;
        }
        return z;
    }
}
