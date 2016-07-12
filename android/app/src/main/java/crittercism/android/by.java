package crittercism.android;

import com.voxelbusters.nativeplugins.defines.Keys.Twitter;
import java.util.HashMap;
import java.util.Map;
import org.json.JSONArray;
import org.json.JSONObject;

public final class by extends ci {
    private String f562a;
    private String f563b;
    private String f564c;
    private String f565d;

    public by(String str, String str2) {
        this.f562a = cg.f624a.m663a();
        this.f563b = ed.f792a.m771a();
        this.f564c = str;
        this.f565d = str2;
    }

    public final JSONArray m625a() {
        Map hashMap = new HashMap();
        hashMap.put(Twitter.NAME, this.f564c);
        hashMap.put("reason", this.f565d);
        return new JSONArray().put(this.f563b).put(6).put(new JSONObject(hashMap));
    }

    public final String m626e() {
        return this.f562a;
    }
}
