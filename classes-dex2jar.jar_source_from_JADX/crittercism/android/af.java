package crittercism.android;

import org.apache.http.util.CharArrayBuffer;

public abstract class af {
    al f303a;
    CharArrayBuffer f304b;
    protected int f305c;
    private int f306d;

    public af(af afVar) {
        m248a(afVar.f303a, afVar.f305c);
    }

    public af(al alVar) {
        m248a(alVar, 0);
    }

    private void m248a(al alVar, int i) {
        this.f303a = alVar;
        this.f306d = m259e();
        this.f304b = new CharArrayBuffer(m258d());
        this.f305c = i;
    }

    private void m249g() {
        this.f303a.m298a(as.f322d);
    }

    public final int m250a() {
        return this.f305c;
    }

    public final void m251a(byte[] bArr, int i, int i2) {
        int b = m254b(bArr, i, i2);
        while (b > 0 && b < i2) {
            int b2 = this.f303a.m296a().m254b(bArr, i + b, i2 - b);
            if (b2 > 0) {
                b += b2;
            } else {
                return;
            }
        }
    }

    public boolean m252a(int i) {
        if (i == -1) {
            m249g();
            return true;
        }
        af b;
        this.f305c++;
        char c = (char) i;
        if (c == '\n') {
            b = m253a(this.f304b) ? m255b() : as.f322d;
        } else if (this.f304b.length() < this.f306d) {
            this.f304b.append(c);
            b = this;
        } else {
            b = m257c();
        }
        if (b != this) {
            this.f303a.m298a(b);
        }
        return b != this;
    }

    public abstract boolean m253a(CharArrayBuffer charArrayBuffer);

    protected int m254b(byte[] bArr, int i, int i2) {
        boolean z = false;
        int i3 = -1;
        if (i2 == -1) {
            m249g();
        } else if (!(bArr == null || i2 == 0)) {
            i3 = 0;
            while (!z && i3 < i2) {
                z = m252a((char) bArr[i + i3]);
                i3++;
            }
        }
        return i3;
    }

    public abstract af m255b();

    public final void m256b(int i) {
        this.f305c = i;
    }

    public abstract af m257c();

    protected abstract int m258d();

    protected abstract int m259e();

    public void m260f() {
        if (this.f303a != null) {
            this.f303a.m298a(as.f322d);
        }
    }

    public final String toString() {
        return this.f304b.toString();
    }
}
