package crittercism.android;

import android.content.Context;
import java.io.File;
import java.io.IOException;
import org.json.JSONException;
import org.json.JSONObject;

/* renamed from: crittercism.android.h */
public final class C1082h {
    public boolean f805a;
    public boolean f806b;
    public boolean f807c;
    public int f808d;

    public C1082h(Context context) {
        this.f805a = false;
        this.f806b = false;
        this.f807c = false;
        this.f808d = 10;
        if (C1082h.m780a(context).exists()) {
            this.f807c = true;
        }
    }

    public C1082h(JSONObject jSONObject) {
        this.f805a = false;
        this.f806b = false;
        this.f807c = false;
        this.f808d = 10;
        if (jSONObject.has("net")) {
            try {
                JSONObject jSONObject2 = jSONObject.getJSONObject("net");
                this.f805a = jSONObject2.optBoolean("enabled", false);
                this.f806b = jSONObject2.optBoolean("persist", false);
                this.f807c = jSONObject2.optBoolean("kill", false);
                this.f808d = jSONObject2.optInt("interval", 10);
            } catch (JSONException e) {
            }
        }
    }

    public static File m780a(Context context) {
        return new File(context.getFilesDir().getAbsolutePath() + "/.crittercism.apm.disabled.");
    }

    public static void m781b(Context context) {
        try {
            C1082h.m780a(context).createNewFile();
        } catch (IOException e) {
            dx.m754b("Unable to kill APM: " + e.getMessage());
        }
    }

    public final boolean equals(Object obj) {
        if (this != obj) {
            if (obj == null || !(obj instanceof C1082h)) {
                return false;
            }
            C1082h c1082h = (C1082h) obj;
            if (this.f807c != c1082h.f807c || this.f805a != c1082h.f805a || this.f806b != c1082h.f806b) {
                return false;
            }
            if (this.f808d != c1082h.f808d) {
                return false;
            }
        }
        return true;
    }

    public final int hashCode() {
        int i = 1237;
        int i2 = this.f807c ? 1231 : 1237;
        int i3 = this.f805a ? 1231 : 1237;
        if (this.f806b) {
            i = 1231;
        }
        return ((((((i2 + 31) * 31) + i3) * 31) + i) * 31) + this.f808d;
    }

    public final String toString() {
        return "OptmzConfiguration [\nisSendTaskEnabled=" + this.f805a + "\n, shouldPersist=" + this.f806b + "\n, isKilled=" + this.f807c + "\n, statisticsSendInterval=" + this.f808d + "]";
    }
}
