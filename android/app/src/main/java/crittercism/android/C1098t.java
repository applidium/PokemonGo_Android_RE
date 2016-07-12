package crittercism.android;

import java.io.InputStream;

/* renamed from: crittercism.android.t */
public final class C1098t extends InputStream {
    private final InputStream f861a;
    private final C1078e f862b;
    private final C1060c f863c;

    public C1098t(InputStream inputStream, C1078e c1078e, C1060c c1060c) {
        if (inputStream == null) {
            throw new NullPointerException("delegate was null");
        } else if (c1078e == null) {
            throw new NullPointerException("dispatch was null");
        } else if (c1060c == null) {
            throw new NullPointerException("stats were null");
        } else {
            this.f861a = inputStream;
            this.f862b = c1078e;
            this.f863c = c1060c;
        }
    }

    private void m814a(int i, int i2) {
        try {
            if (this.f863c == null) {
                return;
            }
            if (i == -1) {
                this.f862b.m760a(this.f863c);
            } else {
                this.f863c.m633a((long) i2);
            }
        } catch (ThreadDeath e) {
            throw e;
        } catch (Throwable th) {
            dx.m752a(th);
        }
    }

    private void m815a(Exception exception) {
        try {
            this.f863c.m638a((Throwable) exception);
            this.f862b.m760a(this.f863c);
        } catch (ThreadDeath e) {
            throw e;
        } catch (Throwable th) {
            dx.m752a(th);
        }
    }

    public final int available() {
        return this.f861a.available();
    }

    public final void close() {
        this.f861a.close();
    }

    public final void mark(int i) {
        this.f861a.mark(i);
    }

    public final boolean markSupported() {
        return this.f861a.markSupported();
    }

    public final int read() {
        try {
            int read = this.f861a.read();
            m814a(read, 1);
            return read;
        } catch (Exception e) {
            m815a(e);
            throw e;
        }
    }

    public final int read(byte[] bArr) {
        try {
            int read = this.f861a.read(bArr);
            m814a(read, read);
            return read;
        } catch (Exception e) {
            m815a(e);
            throw e;
        }
    }

    public final int read(byte[] bArr, int i, int i2) {
        try {
            int read = this.f861a.read(bArr, i, i2);
            m814a(read, read);
            return read;
        } catch (Exception e) {
            m815a(e);
            throw e;
        }
    }

    public final void reset() {
        synchronized (this) {
            this.f861a.reset();
        }
    }

    public final long skip(long j) {
        long skip = this.f861a.skip(j);
        try {
            if (this.f863c != null) {
                this.f863c.m633a(skip);
            }
        } catch (ThreadDeath e) {
            throw e;
        } catch (Throwable th) {
            dx.m752a(th);
        }
        return skip;
    }
}
