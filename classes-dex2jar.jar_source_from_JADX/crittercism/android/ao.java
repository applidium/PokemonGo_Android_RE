package crittercism.android;

public final class ao extends ak {
    private int f318g;

    public ao(af afVar, int i) {
        super(afVar);
        this.f318g = i;
    }

    protected final af m310g() {
        Object obj = (this.f303a.m303c().equals("HEAD") || ((this.f318g >= 100 && this.f318g <= 199) || this.f318g == 204 || this.f318g == 304)) ? 1 : null;
        if (obj != null) {
            this.f303a.m302b(m250a());
            return this.f303a.m301b();
        } else if (this.f315f) {
            return new ai(this);
        } else {
            if (this.f313d) {
                if (this.f314e > 0) {
                    return new ag(this, this.f314e);
                }
                this.f303a.m302b(m250a());
                return this.f303a.m301b();
            } else if (!this.f303a.m303c().equals("CONNECT")) {
                return new aj(this);
            } else {
                this.f303a.m302b(m250a());
                return this.f303a.m301b();
            }
        }
    }
}
