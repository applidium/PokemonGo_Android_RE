package crittercism.android;

import java.io.OutputStream;

/* renamed from: crittercism.android.w */
public final class C1102w extends OutputStream implements al {
    private ae f875a;
    private OutputStream f876b;
    private C1060c f877c;
    private af f878d;

    public C1102w(ae aeVar, OutputStream outputStream) {
        if (aeVar == null) {
            throw new NullPointerException("socket was null");
        } else if (outputStream == null) {
            throw new NullPointerException("output stream was null");
        } else {
            this.f875a = aeVar;
            this.f876b = outputStream;
            this.f878d = m830b();
            if (this.f878d == null) {
                throw new NullPointerException("parser was null");
            }
        }
    }

    private void m822a(byte[] bArr, int i, int i2) {
        try {
            this.f878d.m251a(bArr, i, i2);
        } catch (ThreadDeath e) {
            throw e;
        } catch (Throwable th) {
            dx.m752a(th);
            this.f878d = as.f322d;
        }
    }

    private C1060c m823d() {
        if (this.f877c == null) {
            this.f877c = this.f875a.m228a();
        }
        C1060c c1060c = this.f877c;
        return this.f877c;
    }

    public final af m824a() {
        return this.f878d;
    }

    public final void m825a(int i) {
    }

    public final void m826a(af afVar) {
        this.f878d = afVar;
    }

    public final void m827a(String str) {
        C1060c d = m823d();
        if (d != null) {
            d.m642b(str);
        }
    }

    public final void m828a(String str, String str2) {
        C1060c d = m823d();
        d.m640b();
        d.f585f = str;
        d.f588i = null;
        C1088k c1088k = d.f587h;
        if (str2 != null) {
            c1088k.f834c = str2;
        }
        this.f875a.m229a(d);
    }

    public final boolean m829a(OutputStream outputStream) {
        return this.f876b == outputStream;
    }

    public final af m830b() {
        return new an(this);
    }

    public final void m831b(int i) {
        C1060c c1060c = this.f877c;
        this.f877c = null;
        if (c1060c != null) {
            c1060c.m646d((long) i);
        }
    }

    public final String m832c() {
        C1060c d = m823d();
        return d != null ? d.f585f : null;
    }

    public final void close() {
        this.f876b.close();
    }

    public final void flush() {
        this.f876b.flush();
    }

    public final void write(int i) {
        this.f876b.write(i);
        try {
            this.f878d.m252a(i);
        } catch (ThreadDeath e) {
            throw e;
        } catch (Throwable th) {
            dx.m752a(th);
            this.f878d = as.f322d;
        }
    }

    public final void write(byte[] bArr) {
        this.f876b.write(bArr);
        if (bArr != null) {
            m822a(bArr, 0, bArr.length);
        }
    }

    public final void write(byte[] bArr, int i, int i2) {
        this.f876b.write(bArr, i, i2);
        if (bArr != null) {
            m822a(bArr, i, i2);
        }
    }
}
