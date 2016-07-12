package crittercism.android;

public final class ck extends RuntimeException {
    public ck(String str) {
        this(str, null);
    }

    public ck(String str, Throwable th) {
        super(str, th);
    }

    public ck(Throwable th) {
        super(th);
    }
}
