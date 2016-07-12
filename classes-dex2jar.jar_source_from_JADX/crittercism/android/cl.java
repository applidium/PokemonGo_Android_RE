package crittercism.android;

public final class cl extends Exception {
    private static final long serialVersionUID = 4511293437269420307L;

    public cl(String str) {
        this(str, null);
    }

    public cl(String str, Throwable th) {
        super(str, th);
    }
}
