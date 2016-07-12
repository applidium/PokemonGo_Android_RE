package crittercism.android;

import com.voxelbusters.nativeplugins.defines.Keys;
import java.util.HashMap;
import java.util.Map;

public final class dl extends di {
    public Map f740a;
    private dw f741b;
    private au f742c;
    private boolean f743d;
    private boolean f744e;
    private boolean f745f;
    private boolean f746g;

    public dl(au auVar) {
        this.f740a = new HashMap();
        this.f743d = false;
        this.f744e = false;
        this.f745f = false;
        this.f746g = false;
        this.f742c = auVar;
        this.f741b = auVar.m345l();
    }

    private void m713a(String str, Object obj) {
        synchronized (this) {
            this.f740a.put(str, obj);
        }
    }

    public final void m714a() {
        boolean z = false;
        boolean b = this.f741b.m747b();
        if (this.f743d) {
            m713a("optOutStatus", Boolean.valueOf(b));
        }
        if (!b) {
            if (this.f744e) {
                m713a("crashedOnLastLoad", Boolean.valueOf(dq.f750a));
            }
            if (this.f745f) {
                m713a("userUUID", this.f742c.m336c());
            }
            if (this.f746g) {
                dt dtVar = az.m375A().f359A;
                if (dtVar != null) {
                    if (dtVar.f756a.getBoolean("rateMyAppEnabled", false) && !dtVar.f756a.getBoolean("hasRatedApp", false)) {
                        int a = dtVar.m733a();
                        int i = dtVar.f756a.getInt("rateAfterNumLoads", 5);
                        if (a >= i && (a - i) % dtVar.f756a.getInt("remindAfterNumLoads", 5) == 0) {
                            z = true;
                        }
                    }
                    m713a("shouldShowRateAppAlert", Boolean.valueOf(z));
                    m713a(Keys.MESSAGE, dtVar.m735b());
                    m713a(Keys.TITLE, dtVar.m736c());
                }
            }
        }
    }

    public final void m715b() {
        this.f743d = true;
    }

    public final void m716c() {
        this.f744e = true;
    }

    public final void m717d() {
        this.f745f = true;
    }

    public final void m718e() {
        this.f746g = true;
    }
}
