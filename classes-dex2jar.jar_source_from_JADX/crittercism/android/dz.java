package crittercism.android;

import java.util.concurrent.ThreadFactory;

public final class dz implements ThreadFactory {
    public final Thread newThread(Runnable runnable) {
        return new dy(runnable);
    }
}
