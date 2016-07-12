package crittercism.android;

import org.json.JSONArray;

public final class bo {
    public JSONArray f507a;

    public bo(bs bsVar) {
        this.f507a = new JSONArray();
        for (bq a : bsVar.m555c()) {
            Object a2 = a.m534a();
            if (a2 != null) {
                this.f507a.put(a2);
            }
        }
    }
}
