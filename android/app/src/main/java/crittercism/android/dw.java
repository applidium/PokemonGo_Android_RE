package crittercism.android;

import crittercism.android.ds.C1075a;

public final class dw {
    private ds f759a;
    private du f760b;

    public final du m745a() {
        du duVar;
        synchronized (this) {
            duVar = this.f760b;
        }
        return duVar;
    }

    public final void m746a(ax axVar) {
        synchronized (this) {
            this.f759a = C1075a.m731a(axVar);
            if (!this.f759a.m732a()) {
                int b = axVar.m363b(cq.SESSION_ID_SETTING.m668a(), cq.SESSION_ID_SETTING.m669b());
                if (b == 0) {
                    b = axVar.m363b(cq.OLD_SESSION_ID_SETTING.m668a(), cq.OLD_SESSION_ID_SETTING.m669b());
                }
                du duVar = new du(b);
                duVar.f757a++;
                this.f760b = duVar;
            }
        }
    }

    public final boolean m747b() {
        boolean z;
        synchronized (this) {
            z = true;
            if (this.f759a != null) {
                z = this.f759a.m732a();
            }
        }
        return z;
    }
}
