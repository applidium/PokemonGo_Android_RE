package crittercism.android;

import org.apache.http.util.CharArrayBuffer;

public final class ar extends af {
    private af f321d;

    public ar(af afVar) {
        super(afVar);
        this.f321d = afVar;
    }

    public final boolean m321a(int i) {
        if (i == -1) {
            this.f303a.m298a(as.f322d);
            return true;
        }
        this.c++;
        if (((char) i) != '\n') {
            return false;
        }
        this.f321d.m256b(m250a());
        this.f303a.m298a(this.f321d);
        return true;
    }

    public final boolean m322a(CharArrayBuffer charArrayBuffer) {
        return true;
    }

    public final af m323b() {
        return this;
    }

    public final af m324c() {
        return this;
    }

    protected final int m325d() {
        return 0;
    }

    protected final int m326e() {
        return 0;
    }
}
