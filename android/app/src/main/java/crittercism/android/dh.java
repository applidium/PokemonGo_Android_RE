package crittercism.android;

import java.net.URL;

final class dh extends di {
    private bs f727a;
    private bs f728b;
    private au f729c;
    private URL f730d;
    private cy f731e;
    private cx f732f;

    dh(bs bsVar, bs bsVar2, au auVar, URL url, cy cyVar, cx cxVar) {
        this.f728b = bsVar;
        this.f727a = bsVar2;
        this.f729c = auVar;
        this.f730d = url;
        this.f731e = cyVar;
        this.f732f = cxVar;
    }

    public final void m710a() {
        this.f727a.m550a(this.f728b);
        new dj(this.f732f.m673a(this.f729c).m675a(this.f728b), new dc(this.f730d), true, this.f731e).run();
    }
}
