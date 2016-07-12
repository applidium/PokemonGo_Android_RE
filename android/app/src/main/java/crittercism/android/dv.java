package crittercism.android;

import android.content.Context;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import com.voxelbusters.nativeplugins.defines.Keys.Ui;
import java.util.Iterator;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

public final class dv {
    private SharedPreferences f758a;

    public dv(Context context, String str) {
        this.f758a = context.getSharedPreferences("com.crittercism." + str + ".usermetadata", 0);
        if (!this.f758a.contains(ModelColumns.DATA)) {
            JSONObject jSONObject = new JSONObject();
            try {
                jSONObject.putOpt(Ui.USER_NAME, "anonymous");
                m742a(jSONObject);
            } catch (JSONException e) {
            }
        }
    }

    private void m740b(JSONObject jSONObject) {
        Editor edit = this.f758a.edit();
        edit.putString(ModelColumns.DATA, jSONObject.toString());
        edit.commit();
    }

    public final JSONObject m741a() {
        try {
            return new JSONObject(this.f758a.getString(ModelColumns.DATA, "{}"));
        } catch (JSONException e) {
            return new JSONObject();
        }
    }

    public final void m742a(JSONObject jSONObject) {
        JSONObject a = m741a();
        if (a.length() != 0) {
            Iterator keys = jSONObject.keys();
            boolean z = false;
            while (keys.hasNext()) {
                String str = (String) keys.next();
                Object opt = jSONObject.opt(str);
                Object opt2 = a.opt(str);
                boolean z2 = opt2 == null;
                if (opt2 != null) {
                    if ((opt instanceof JSONObject) || (opt instanceof JSONArray)) {
                        z2 = !opt2.toString().equals(opt.toString());
                    } else {
                        z2 = !opt2.equals(opt);
                    }
                }
                if (z2) {
                    try {
                        a.put(str, opt);
                        z = true;
                    } catch (JSONException e) {
                    }
                }
            }
            if (z) {
                m740b(a);
                m743a(true);
            }
        } else if (jSONObject.length() > 0) {
            m740b(jSONObject);
            m743a(true);
        }
    }

    public final void m743a(boolean z) {
        this.f758a.edit().putBoolean("dirty", z).commit();
    }

    public final boolean m744b() {
        return this.f758a.getBoolean("dirty", false);
    }
}
