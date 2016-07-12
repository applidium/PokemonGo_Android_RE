package crittercism.android;

import android.content.Context;
import android.content.SharedPreferences.Editor;
import com.voxelbusters.nativeplugins.defines.Keys;
import crittercism.android.dx.C1076a;
import java.io.File;
import java.io.IOException;
import org.json.JSONException;
import org.json.JSONObject;

public final class ct extends da {
    private au f690a;
    private Context f691b;
    private String f692c;
    private JSONObject f693d;
    private JSONObject f694e;
    private boolean f695f;

    /* renamed from: crittercism.android.ct.a */
    public static final class C1066a implements cz {
        public final /* synthetic */ cy m681a(bs bsVar, bs bsVar2, String str, Context context, au auVar) {
            return new ct(bsVar, bsVar2, str, context, auVar);
        }
    }

    public ct(bs bsVar, bs bsVar2, String str, Context context, au auVar) {
        super(bsVar, bsVar2);
        this.f692c = str;
        this.f691b = context;
        this.f690a = auVar;
    }

    public final void m684a(boolean z, int i, JSONObject jSONObject) {
        super.m683a(z, i, jSONObject);
        if (jSONObject != null) {
            Editor edit;
            if (jSONObject.optBoolean("internalExceptionReporting", false)) {
                dx.f765a = C1076a.ON;
                C1085i.m786d();
            } else {
                dx.f765a = C1076a.OFF;
            }
            dt m = this.f690a.m346m();
            if (m != null) {
                JSONObject optJSONObject = jSONObject.optJSONObject("rateMyApp");
                if (optJSONObject == null) {
                    m.m734a(false);
                } else {
                    try {
                        int i2 = optJSONObject.getInt("rateAfterLoadNum");
                        if (i2 < 0) {
                            i2 = 0;
                        }
                        m.f756a.edit().putInt("rateAfterNumLoads", i2).commit();
                        i2 = optJSONObject.getInt("remindAfterLoadNum");
                        if (i2 <= 0) {
                            i2 = 1;
                        }
                        m.f756a.edit().putInt("remindAfterNumLoads", i2).commit();
                        m.f756a.edit().putString("rateAppMessage", optJSONObject.getString(Keys.MESSAGE)).commit();
                        m.f756a.edit().putString("rateAppTitle", optJSONObject.getString(Keys.TITLE)).commit();
                        m.m734a(true);
                    } catch (JSONException e) {
                        m.m734a(false);
                    }
                }
            }
            if (jSONObject.optInt("needPkg", 0) == 1) {
                try {
                    new dj(new cu(this.f690a).m686a("device_name", this.f690a.m342i()).m686a("pkg", this.f691b.getPackageName()), new dc(new db(this.f692c, "/android_v2/update_package_name").m695a()), null).run();
                } catch (IOException e2) {
                    new StringBuilder("IOException in handleResponse(): ").append(e2.getMessage());
                    dx.m753b();
                    dx.m756c();
                }
                this.f695f = true;
            }
            this.f693d = jSONObject.optJSONObject("apm");
            if (this.f693d != null) {
                C1082h c1082h = new C1082h(this.f693d);
                Context context = this.f691b;
                if (c1082h.f807c) {
                    C1082h.m781b(context);
                } else {
                    File a = C1082h.m780a(context);
                    if (!a.delete() && a.exists()) {
                        dx.m754b("Unable to reenable OPTMZ instrumentation");
                    }
                }
                edit = context.getSharedPreferences("com.crittercism.optmz.config", 0).edit();
                if (c1082h.f806b) {
                    edit.putBoolean("enabled", c1082h.f805a);
                    edit.putBoolean("kill", c1082h.f807c);
                    edit.putBoolean("persist", c1082h.f806b);
                    edit.putInt("interval", c1082h.f808d);
                } else {
                    edit.clear();
                }
                edit.commit();
                az.m375A().m390a(c1082h);
            }
            this.f694e = jSONObject.optJSONObject("txnConfig");
            if (this.f694e != null) {
                bh bhVar = new bh(this.f694e);
                edit = this.f691b.getSharedPreferences("com.crittercism.txn.config", 0).edit();
                edit.putBoolean("enabled", bhVar.f454a);
                edit.putInt("interval", bhVar.f455b);
                edit.putInt("defaultTimeout", bhVar.f456c);
                edit.putString("transactions", bhVar.f457d.toString());
                edit.commit();
                az.m375A().m387a(bhVar);
            }
        }
    }
}
