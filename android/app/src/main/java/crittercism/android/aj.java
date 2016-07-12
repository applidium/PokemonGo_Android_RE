package crittercism.android;

import org.apache.http.util.CharArrayBuffer;

public final class aj extends af {
    public aj(af afVar) {
        super(afVar);
    }

    public final boolean m282a(int i) {
        if (i == -1) {
            this.f303a.m302b(m250a());
            this.f303a.m298a(as.f322d);
            return true;
        }
        this.c++;
        return false;
    }

    public final boolean m283a(CharArrayBuffer charArrayBuffer) {
        return true;
    }

    public final int m284b(byte[] bArr, int i, int i2) {
        if (i2 == -1) {
            this.f303a.m302b(m250a());
            this.f303a.m298a(as.f322d);
            return -1;
        }
        this.c += i2;
        return i2;
    }

    public final af m285b() {
        return as.f322d;
    }

    public final af m286c() {
        return as.f322d;
    }

    protected final int m287d() {
        return 0;
    }

    protected final int m288e() {
        return Integer.MAX_VALUE;
    }

    public final void m289f() {
        this.f303a.m302b(m250a());
        this.f303a.m298a(as.f322d);
    }
}
