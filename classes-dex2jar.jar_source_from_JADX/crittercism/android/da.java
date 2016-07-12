package crittercism.android;

import android.content.Context;
import org.json.JSONObject;

public class da implements cy {
    private bs f688a;
    private bs f689b;

    /* renamed from: crittercism.android.da.a */
    public static final class C1069a implements cz {
        public final /* synthetic */ cy m694a(bs bsVar, bs bsVar2, String str, Context context, au auVar) {
            return new da(bsVar, bsVar2);
        }
    }

    public da(bs bsVar, bs bsVar2) {
        this.f688a = bsVar;
        this.f689b = bsVar2;
    }

    public void m683a(boolean z, int i, JSONObject jSONObject) {
        Object obj = (z || (i >= 200 && i < 300)) ? 1 : null;
        if (obj != null) {
            this.f688a.m549a();
        } else {
            this.f688a.m550a(this.f689b);
        }
    }
}
