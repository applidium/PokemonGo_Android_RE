package crittercism.android;

import java.util.HashMap;
import java.util.Map;
import org.json.JSONArray;
import org.json.JSONObject;

public final class bl extends ci {
    private String f497a;
    private String f498b;
    private C1029a f499c;

    /* renamed from: crittercism.android.bl.a */
    public enum C1029a {
        FOREGROUND("foregrounded"),
        BACKGROUND("backgrounded");
        
        private String f496c;

        private C1029a(String str) {
            this.f496c = str;
        }

        public final String m525a() {
            return this.f496c;
        }
    }

    public bl(C1029a c1029a) {
        this.f497a = cg.f624a.m663a();
        this.f498b = ed.f792a.m771a();
        this.f499c = c1029a;
    }

    public final JSONArray m526a() {
        Map hashMap = new HashMap();
        hashMap.put(SendEvent.EVENT, this.f499c.m525a());
        return new JSONArray().put(this.f498b).put(3).put(new JSONObject(hashMap));
    }

    public final String m527e() {
        return this.f497a;
    }
}
