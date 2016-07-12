package crittercism.android;

import com.crittercism.app.CrittercismConfig;
import java.util.List;

public final class bb extends CrittercismConfig {
    private String f403b;
    private bn f404c;

    public bb(bn bnVar, CrittercismConfig crittercismConfig) {
        super(crittercismConfig);
        this.f403b = "524c99a04002057fcd000001";
        this.f404c = bnVar;
    }

    public final List m441a() {
        List a = super.m29a();
        a.add(this.f404c.m531b());
        return a;
    }

    public final String m442b() {
        return this.f404c.m530a();
    }

    public final String m443c() {
        return this.f404c.m531b();
    }

    public final String m444d() {
        return this.f404c.m533d();
    }

    public final String m445e() {
        return this.f404c.m532c();
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof bb)) {
            return false;
        }
        bb bbVar = (bb) obj;
        return super.equals(obj) && CrittercismConfig.m26a(this.f404c.m530a(), bbVar.f404c.m530a()) && CrittercismConfig.m26a(this.f404c.m531b(), bbVar.f404c.m531b()) && CrittercismConfig.m26a(this.f404c.m533d(), bbVar.f404c.m533d()) && CrittercismConfig.m26a(this.f404c.m532c(), bbVar.f404c.m532c()) && CrittercismConfig.m26a(this.f403b, bbVar.f403b);
    }

    public final String m446f() {
        return this.f403b;
    }

    public final String m447g() {
        return this.a;
    }

    public final int hashCode() {
        return (((((((((super.hashCode() * 31) + this.f404c.m530a().hashCode()) * 31) + this.f404c.m531b().hashCode()) * 31) + this.f404c.m533d().hashCode()) * 31) + this.f404c.m532c().hashCode()) * 31) + this.f403b.hashCode();
    }
}
