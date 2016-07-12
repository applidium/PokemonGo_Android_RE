package crittercism.android;

import android.content.Context;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import android.provider.Settings.Secure;
import java.util.UUID;

public final class dr {
    private SharedPreferences f751a;
    private SharedPreferences f752b;
    private Context f753c;

    public dr(Context context) {
        if (context == null) {
            throw new NullPointerException("context was null");
        }
        this.f753c = context;
        this.f751a = context.getSharedPreferences("com.crittercism.usersettings", 0);
        this.f752b = context.getSharedPreferences("com.crittercism.prefs", 0);
        if (this.f751a == null) {
            throw new NullPointerException("prefs were null");
        } else if (this.f752b == null) {
            throw new NullPointerException("legacy prefs were null");
        }
    }

    private boolean m728a(String str) {
        Editor edit = this.f751a.edit();
        edit.putString("hashedDeviceID", str);
        return edit.commit();
    }

    private String m729b() {
        String string;
        try {
            string = Secure.getString(this.f753c.getContentResolver(), "android_id");
            if (!(string == null || string.length() <= 0 || string.equals("9774d56d682e549c"))) {
                UUID nameUUIDFromBytes = UUID.nameUUIDFromBytes(string.getBytes("utf8"));
                if (nameUUIDFromBytes != null) {
                    string = nameUUIDFromBytes.toString();
                    if (string == null || string.length() == 0) {
                        string = UUID.randomUUID().toString();
                    }
                    return string;
                }
            }
            string = null;
        } catch (ThreadDeath e) {
            throw e;
        } catch (Throwable th) {
            dx.m752a(th);
            string = null;
        }
        try {
            string = UUID.randomUUID().toString();
        } catch (ThreadDeath e2) {
            throw e2;
        } catch (Throwable th2) {
            dx.m752a(th2);
        }
        return string;
    }

    public final String m730a() {
        String string = this.f751a.getString("hashedDeviceID", null);
        if (string == null) {
            string = this.f752b.getString("com.crittercism.prefs.did", null);
            if (string != null && m728a(string)) {
                Editor edit = this.f752b.edit();
                edit.remove("com.crittercism.prefs.did");
                edit.commit();
            }
        }
        if (string != null) {
            return string;
        }
        string = m729b();
        m728a(string);
        return string;
    }
}
