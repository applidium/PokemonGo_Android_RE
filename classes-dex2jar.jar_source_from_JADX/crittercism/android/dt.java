package crittercism.android;

import android.content.Context;
import android.content.SharedPreferences;

public final class dt {
    public SharedPreferences f756a;

    protected dt() {
    }

    public dt(Context context) {
        this.f756a = context.getSharedPreferences("com.crittercism.ratemyapp", 0);
    }

    public final int m733a() {
        return this.f756a.getInt("numAppLoads", 0);
    }

    public final void m734a(boolean z) {
        this.f756a.edit().putBoolean("rateMyAppEnabled", z).commit();
    }

    public final String m735b() {
        return this.f756a.getString("rateAppMessage", "Would you mind taking a second to rate my app?  I would really appreciate it!");
    }

    public final String m736c() {
        return this.f756a.getString("rateAppTitle", "Rate My App");
    }

    public final void m737d() {
        this.f756a.edit().putBoolean("hasRatedApp", true).commit();
    }
}
