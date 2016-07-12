package dagger.internal;

import dagger.Lazy;
import javax.inject.Provider;

public final class DoubleCheckLazy<T> implements Lazy<T> {
    static final /* synthetic */ boolean $assertionsDisabled;
    private static final Object UNINITIALIZED;
    private volatile Object instance;
    private final Provider<T> provider;

    static {
        $assertionsDisabled = !DoubleCheckLazy.class.desiredAssertionStatus();
        UNINITIALIZED = new Object();
    }

    private DoubleCheckLazy(Provider<T> provider) {
        this.instance = UNINITIALIZED;
        if ($assertionsDisabled || provider != null) {
            this.provider = provider;
            return;
        }
        throw new AssertionError();
    }

    public static <T> Lazy<T> create(Provider<T> provider) {
        if (provider != null) {
            return new DoubleCheckLazy(provider);
        }
        throw new NullPointerException();
    }

    public T get() {
        T t = this.instance;
        if (t == UNINITIALIZED) {
            synchronized (this) {
                t = this.instance;
                if (t == UNINITIALIZED) {
                    t = this.provider.get();
                    this.instance = t;
                }
            }
        }
        return t;
    }
}
