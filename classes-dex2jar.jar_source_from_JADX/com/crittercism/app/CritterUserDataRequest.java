package com.crittercism.app;

import crittercism.android.az;
import crittercism.android.dg;
import crittercism.android.dl;
import crittercism.android.dx;
import crittercism.android.dy;
import java.util.HashMap;
import java.util.Map;

public class CritterUserDataRequest {
    private final CritterCallback f10a;
    private az f11b;
    private Map f12c;
    private dl f13d;

    /* renamed from: com.crittercism.app.CritterUserDataRequest.1 */
    final class C01341 implements Runnable {
        final /* synthetic */ CritterUserDataRequest f9a;

        C01341(CritterUserDataRequest critterUserDataRequest) {
            this.f9a = critterUserDataRequest;
        }

        public final void run() {
            this.f9a.f13d.run();
            this.f9a.f12c = this.f9a.f13d.f740a;
            this.f9a.f10a.onCritterDataReceived(new CritterUserData(this.f9a.f12c, this.f9a.f11b.f373f.m747b()));
        }
    }

    public CritterUserDataRequest(CritterCallback critterCallback) {
        this.f10a = critterCallback;
        this.f11b = az.m375A();
        this.f12c = new HashMap();
        this.f13d = new dl(this.f11b);
    }

    public void makeRequest() {
        synchronized (this) {
            dg dgVar = this.f11b.f384q;
            if (dgVar == null) {
                dx.m751a("Must initialize Crittercism before calling " + getClass().getName() + ".makeRequest()", new IllegalStateException());
            } else {
                Runnable c01341 = new C01341(this);
                if (!dgVar.m708a(c01341)) {
                    new dy(c01341).start();
                }
            }
        }
    }

    public CritterUserDataRequest requestDidCrashOnLastLoad() {
        this.f13d.m716c();
        return this;
    }

    public CritterUserDataRequest requestOptOutStatus() {
        this.f13d.m715b();
        return this;
    }

    public CritterUserDataRequest requestRateMyAppInfo() {
        this.f13d.m718e();
        return this;
    }

    public CritterUserDataRequest requestUserUUID() {
        this.f13d.m717d();
        return this;
    }
}
