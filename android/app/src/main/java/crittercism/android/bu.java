package crittercism.android;

import java.util.HashMap;
import java.util.Map;
import org.json.JSONObject;

public final class bu implements bv {
    private Map f537a;

    public bu() {
        this.f537a = new HashMap();
    }

    public final bu m557a(bw bwVar) {
        if (bwVar.m556b() != null) {
            this.f537a.put(bwVar.m560a(), bwVar.m556b());
        }
        return this;
    }

    public final JSONObject m558a() {
        return new JSONObject(this.f537a);
    }

    public final /* synthetic */ Object m559b() {
        return m558a();
    }
}
