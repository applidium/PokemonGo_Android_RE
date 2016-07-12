package crittercism.android;

import crittercism.android.C1060c.C1059a;
import java.io.InputStream;

/* renamed from: crittercism.android.x */
public final class C1103x extends InputStream implements al {
    private ae f879a;
    private C1060c f880b;
    private InputStream f881c;
    private C1078e f882d;
    private af f883e;

    public C1103x(ae aeVar, InputStream inputStream, C1078e c1078e) {
        if (aeVar == null) {
            throw new NullPointerException("socket was null");
        } else if (inputStream == null) {
            throw new NullPointerException("delegate was null");
        } else if (c1078e == null) {
            throw new NullPointerException("dispatch was null");
        } else {
            this.f879a = aeVar;
            this.f881c = inputStream;
            this.f882d = c1078e;
            this.f883e = m842b();
            if (this.f883e == null) {
                throw new NullPointerException("parser was null");
            }
        }
    }

    private void m833a(Exception exception) {
        try {
            C1060c e = m835e();
            e.m638a((Throwable) exception);
            this.f882d.m761a(e, C1059a.PARSING_INPUT_STREAM_LOG_ERROR);
        } catch (ThreadDeath e2) {
            throw e2;
        } catch (IllegalStateException e3) {
        } catch (Throwable th) {
            dx.m752a(th);
        }
    }

    private void m834a(byte[] bArr, int i, int i2) {
        try {
            this.f883e.m251a(bArr, i, i2);
        } catch (ThreadDeath e) {
            throw e;
        } catch (IllegalStateException e2) {
            this.f883e = as.f322d;
        } catch (Throwable th) {
            this.f883e = as.f322d;
            dx.m752a(th);
        }
    }

    private C1060c m835e() {
        if (this.f880b == null) {
            this.f880b = this.f879a.m230b();
        }
        if (this.f880b != null) {
            return this.f880b;
        }
        throw new IllegalStateException("No statistics were queued up.");
    }

    public final af m836a() {
        return this.f883e;
    }

    public final void m837a(int i) {
        C1060c e = m835e();
        e.m643c();
        e.f584e = i;
    }

    public final void m838a(af afVar) {
        this.f883e = afVar;
    }

    public final void m839a(String str) {
    }

    public final void m840a(String str, String str2) {
    }

    public final boolean m841a(InputStream inputStream) {
        return this.f881c == inputStream;
    }

    public final int available() {
        return this.f881c.available();
    }

    public final af m842b() {
        return new ap(this);
    }

    public final void m843b(int i) {
        C1060c c1060c = null;
        C1060c c1060c2 = this.f880b;
        if (this.f880b != null) {
            int i2 = this.f880b.f584e;
            if (i2 >= 100 && i2 < 200) {
                c1060c = new C1060c(this.f880b.m631a());
                c1060c.m648e(this.f880b.f580a);
                c1060c.m646d(this.f880b.f583d);
                c1060c.f585f = this.f880b.f585f;
            }
            this.f880b.m641b((long) i);
            this.f882d.m761a(this.f880b, C1059a.INPUT_STREAM_FINISHED);
        }
        this.f880b = c1060c;
    }

    public final String m844c() {
        return m835e().f585f;
    }

    public final void close() {
        try {
            this.f883e.m260f();
        } catch (ThreadDeath e) {
            throw e;
        } catch (Throwable th) {
            dx.m752a(th);
        }
        this.f881c.close();
    }

    public final void m845d() {
        if (this.f880b != null) {
            cn cnVar = this.f880b.f586g;
            Object obj = (cnVar.f659a == co.Android.ordinal() && cnVar.f660b == cm.OK.m666a()) ? 1 : null;
            if (obj != null && this.f883e != null) {
                this.f883e.m260f();
            }
        }
    }

    public final void mark(int i) {
        this.f881c.mark(i);
    }

    public final boolean markSupported() {
        return this.f881c.markSupported();
    }

    public final int read() {
        try {
            int read = this.f881c.read();
            try {
                this.f883e.m252a(read);
            } catch (ThreadDeath e) {
                throw e;
            } catch (IllegalStateException e2) {
                this.f883e = as.f322d;
            } catch (Throwable th) {
                this.f883e = as.f322d;
                dx.m752a(th);
            }
            return read;
        } catch (Exception e3) {
            m833a(e3);
            throw e3;
        }
    }

    public final int read(byte[] bArr) {
        try {
            int read = this.f881c.read(bArr);
            m834a(bArr, 0, read);
            return read;
        } catch (Exception e) {
            m833a(e);
            throw e;
        }
    }

    public final int read(byte[] bArr, int i, int i2) {
        try {
            int read = this.f881c.read(bArr, i, i2);
            m834a(bArr, i, read);
            return read;
        } catch (Exception e) {
            m833a(e);
            throw e;
        }
    }

    public final void reset() {
        synchronized (this) {
            this.f881c.reset();
        }
    }

    public final long skip(long j) {
        return this.f881c.skip(j);
    }
}
