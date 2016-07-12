package rx.android.plugins;

import java.util.concurrent.atomic.AtomicReference;
import rx.annotations.Beta;

public final class RxAndroidPlugins {
    private static final RxAndroidPlugins INSTANCE;
    private final AtomicReference<RxAndroidSchedulersHook> schedulersHook;

    static {
        INSTANCE = new RxAndroidPlugins();
    }

    RxAndroidPlugins() {
        this.schedulersHook = new AtomicReference();
    }

    public static RxAndroidPlugins getInstance() {
        return INSTANCE;
    }

    public RxAndroidSchedulersHook getSchedulersHook() {
        if (this.schedulersHook.get() == null) {
            this.schedulersHook.compareAndSet(null, RxAndroidSchedulersHook.getDefaultInstance());
        }
        return (RxAndroidSchedulersHook) this.schedulersHook.get();
    }

    public void registerSchedulersHook(RxAndroidSchedulersHook rxAndroidSchedulersHook) {
        if (!this.schedulersHook.compareAndSet(null, rxAndroidSchedulersHook)) {
            throw new IllegalStateException("Another strategy was already registered: " + this.schedulersHook.get());
        }
    }

    @Beta
    public void reset() {
        this.schedulersHook.set(null);
    }
}
