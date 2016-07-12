package crittercism.android;

import java.util.Locale;

public final class cg {
    public static final cg f624a;
    private volatile int f625b;
    private final long f626c;

    static {
        f624a = new cg();
    }

    private cg() {
        this.f625b = 1;
        this.f626c = System.currentTimeMillis();
    }

    private int m662b() {
        int i;
        synchronized (this) {
            i = this.f625b;
            this.f625b = i + 1;
        }
        return i;
    }

    public final String m663a() {
        return String.format(Locale.US, "%d.%d.%09d", new Object[]{Integer.valueOf(1), Long.valueOf(this.f626c), Integer.valueOf(m662b())});
    }
}
