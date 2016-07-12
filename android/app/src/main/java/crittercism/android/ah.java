package crittercism.android;

import org.apache.http.util.CharArrayBuffer;

public final class ah extends af {
    private ai f309d;
    private int f310e;
    private int f311f;

    public ah(ai aiVar, int i) {
        super((af) aiVar);
        this.f311f = 0;
        this.f309d = aiVar;
        this.f310e = i;
    }

    public final boolean m269a(int i) {
        if (this.f311f >= this.f310e + 2) {
            return false;
        }
        if (i == -1) {
            this.f303a.m302b(m250a());
            this.f303a.m298a(as.f322d);
            return true;
        }
        this.c++;
        char c = (char) i;
        this.f311f++;
        if (this.f311f <= this.f310e) {
            return false;
        }
        if (c == '\n') {
            this.f309d.m256b(m250a());
            this.f303a.m298a(this.f309d);
            return true;
        } else if (this.f311f != this.f310e + 2 || c == '\n') {
            return false;
        } else {
            this.f303a.m298a(as.f322d);
            return true;
        }
    }

    public final boolean m270a(CharArrayBuffer charArrayBuffer) {
        return true;
    }

    public final af m271b() {
        return this.f309d;
    }

    public final af m272c() {
        return null;
    }

    protected final int m273d() {
        return 0;
    }

    protected final int m274e() {
        return 0;
    }

    public final void m275f() {
        this.f303a.m302b(m250a());
        this.f303a.m298a(as.f322d);
    }
}
