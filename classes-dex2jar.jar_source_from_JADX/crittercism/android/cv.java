package crittercism.android;

public final class cv {
    private long f697a;
    private long f698b;

    public cv(long j) {
        this.f697a = 0;
        this.f698b = j;
    }

    public final boolean m690a() {
        boolean z;
        synchronized (this) {
            z = System.nanoTime() - this.f697a > this.f698b;
        }
        return z;
    }

    public final void m691b() {
        synchronized (this) {
            this.f697a = System.nanoTime();
        }
    }
}
