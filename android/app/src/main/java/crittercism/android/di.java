package crittercism.android;

public abstract class di implements Runnable {
    public abstract void m365a();

    public final void run() {
        try {
            m365a();
        } catch (ThreadDeath e) {
            throw e;
        } catch (Throwable th) {
            dx.m752a(th);
        }
    }
}
