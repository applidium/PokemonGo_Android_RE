package crittercism.android;

import android.content.Context;
import android.content.SharedPreferences;
import org.json.JSONException;
import org.json.JSONObject;

public final class bh {
    public boolean f454a;
    public int f455b;
    public int f456c;
    public JSONObject f457d;

    bh() {
        this.f454a = false;
        this.f455b = 10;
        this.f456c = 3600000;
        this.f457d = new JSONObject();
    }

    public bh(JSONObject jSONObject) {
        this.f454a = false;
        this.f455b = 10;
        this.f456c = 3600000;
        this.f457d = new JSONObject();
        this.f454a = jSONObject.optBoolean("enabled", false);
        this.f455b = jSONObject.optInt("interval", 10);
        this.f456c = jSONObject.optInt("defaultTimeout", 3600000);
        this.f457d = jSONObject.optJSONObject("transactions");
        if (this.f457d == null) {
            this.f457d = new JSONObject();
        }
    }

    public static bh m500a(Context context) {
        SharedPreferences sharedPreferences = context.getSharedPreferences("com.crittercism.txn.config", 0);
        bh bhVar = new bh();
        bhVar.f454a = sharedPreferences.getBoolean("enabled", false);
        bhVar.f455b = sharedPreferences.getInt("interval", 10);
        bhVar.f456c = sharedPreferences.getInt("defaultTimeout", 3600000);
        String string = sharedPreferences.getString("transactions", null);
        bhVar.f457d = new JSONObject();
        if (string != null) {
            try {
                bhVar.f457d = new JSONObject(string);
            } catch (JSONException e) {
            }
        }
        return bhVar;
    }

    public final long m501a(String str) {
        JSONObject optJSONObject = this.f457d.optJSONObject(str);
        return optJSONObject != null ? optJSONObject.optLong("timeout", (long) this.f456c) : (long) this.f456c;
    }
}
