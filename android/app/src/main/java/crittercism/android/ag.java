package crittercism.android;

import org.apache.http.util.CharArrayBuffer;

public final class ag extends af {
    private int f307d;
    private int f308e;

    public ag(af afVar, int i) {
        super(afVar);
        this.f308e = 0;
        this.f307d = i;
    }

    public final boolean m261a(int i) {
        if (i == -1) {
            this.f303a.m298a(as.f322d);
            return true;
        }
        this.f308e++;
        this.c++;
        if (this.f308e != this.f307d) {
            return false;
        }
        this.f303a.m302b(m250a());
        this.f303a.m298a(this.f303a.m301b());
        return true;
    }

    public final boolean m262a(CharArrayBuffer charArrayBuffer) {
        return true;
    }

    public final int m263b(byte[] bArr, int i, int i2) {
        if (i2 == -1) {
            this.f303a.m298a(as.f322d);
            return -1;
        } else if (this.f308e + i2 < this.f307d) {
            this.f308e += i2;
            this.c += i2;
            return i2;
        } else {
            i2 = this.f307d - this.f308e;
            this.c += i2;
            this.f303a.m302b(m250a());
            this.f303a.m298a(this.f303a.m301b());
            return i2;
        }
    }

    public final af m264b() {
        return as.f322d;
    }

    public final af m265c() {
        return as.f322d;
    }

    protected final int m266d() {
        return 0;
    }

    protected final int m267e() {
        return 0;
    }

    public final void m268f() {
        this.f303a.m302b(m250a());
        this.f303a.m298a(as.f322d);
    }
}
