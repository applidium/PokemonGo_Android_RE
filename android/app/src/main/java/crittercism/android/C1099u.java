package crittercism.android;

import java.io.OutputStream;

/* renamed from: crittercism.android.u */
public final class C1099u extends OutputStream {
    private final OutputStream f864a;
    private final C1060c f865b;

    public C1099u(OutputStream outputStream, C1060c c1060c) {
        if (outputStream == null) {
            throw new NullPointerException("delegate was null");
        } else if (c1060c == null) {
            throw new NullPointerException("stats were null");
        } else {
            this.f864a = outputStream;
            this.f865b = c1060c;
        }
    }

    public final void close() {
        this.f864a.close();
    }

    public final void flush() {
        this.f864a.flush();
    }

    public final void write(int i) {
        try {
            if (this.f865b != null) {
                this.f865b.m640b();
                this.f865b.m644c(1);
            }
        } catch (ThreadDeath e) {
            throw e;
        } catch (Throwable th) {
            dx.m752a(th);
        }
        this.f864a.write(i);
    }

    public final void write(byte[] bArr) {
        if (this.f865b != null) {
            this.f865b.m640b();
            if (bArr != null) {
                this.f865b.m644c((long) bArr.length);
            }
        }
        this.f864a.write(bArr);
    }

    public final void write(byte[] bArr, int i, int i2) {
        if (this.f865b != null) {
            this.f865b.m640b();
            if (bArr != null) {
                this.f865b.m644c((long) i2);
            }
        }
        this.f864a.write(bArr, i, i2);
    }
}
