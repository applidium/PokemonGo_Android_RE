package crittercism.android;

public final class cn {
    public int f659a;
    public int f660b;

    public cn(Throwable th) {
        this.f659a = co.Android.ordinal();
        this.f660b = cm.OK.ordinal();
        if (th != null) {
            this.f659a = co.m667a(th);
            if (this.f659a == co.Android.ordinal()) {
                this.f660b = cm.m664a(th).m666a();
            } else {
                this.f660b = Integer.parseInt(th.getMessage());
            }
        }
    }
}
