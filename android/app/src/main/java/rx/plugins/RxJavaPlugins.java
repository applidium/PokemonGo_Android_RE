package rx.plugins;

import java.util.concurrent.atomic.AtomicReference;

public class RxJavaPlugins {
    static final RxJavaErrorHandler DEFAULT_ERROR_HANDLER;
    private static final RxJavaPlugins INSTANCE;
    private final AtomicReference<RxJavaErrorHandler> errorHandler;
    private final AtomicReference<RxJavaObservableExecutionHook> observableExecutionHook;
    private final AtomicReference<RxJavaSchedulersHook> schedulersHook;

    /* renamed from: rx.plugins.RxJavaPlugins.1 */
    static final class C13761 extends RxJavaErrorHandler {
        C13761() {
        }
    }

    static {
        INSTANCE = new RxJavaPlugins();
        DEFAULT_ERROR_HANDLER = new C13761();
    }

    RxJavaPlugins() {
        this.errorHandler = new AtomicReference();
        this.observableExecutionHook = new AtomicReference();
        this.schedulersHook = new AtomicReference();
    }

    public static RxJavaPlugins getInstance() {
        return INSTANCE;
    }

    private static Object getPluginImplementationViaProperty(Class<?> cls) {
        String simpleName = cls.getSimpleName();
        String property = System.getProperty("rxjava.plugin." + simpleName + ".implementation");
        if (property == null) {
            return null;
        }
        try {
            return Class.forName(property).asSubclass(cls).newInstance();
        } catch (ClassCastException e) {
            throw new RuntimeException(simpleName + " implementation is not an instance of " + simpleName + ": " + property);
        } catch (Throwable e2) {
            throw new RuntimeException(simpleName + " implementation class not found: " + property, e2);
        } catch (Throwable e22) {
            throw new RuntimeException(simpleName + " implementation not able to be instantiated: " + property, e22);
        } catch (Throwable e222) {
            throw new RuntimeException(simpleName + " implementation not able to be accessed: " + property, e222);
        }
    }

    public RxJavaErrorHandler getErrorHandler() {
        if (this.errorHandler.get() == null) {
            Object pluginImplementationViaProperty = getPluginImplementationViaProperty(RxJavaErrorHandler.class);
            if (pluginImplementationViaProperty == null) {
                this.errorHandler.compareAndSet(null, DEFAULT_ERROR_HANDLER);
            } else {
                this.errorHandler.compareAndSet(null, (RxJavaErrorHandler) pluginImplementationViaProperty);
            }
        }
        return (RxJavaErrorHandler) this.errorHandler.get();
    }

    public RxJavaObservableExecutionHook getObservableExecutionHook() {
        if (this.observableExecutionHook.get() == null) {
            Object pluginImplementationViaProperty = getPluginImplementationViaProperty(RxJavaObservableExecutionHook.class);
            if (pluginImplementationViaProperty == null) {
                this.observableExecutionHook.compareAndSet(null, RxJavaObservableExecutionHookDefault.getInstance());
            } else {
                this.observableExecutionHook.compareAndSet(null, (RxJavaObservableExecutionHook) pluginImplementationViaProperty);
            }
        }
        return (RxJavaObservableExecutionHook) this.observableExecutionHook.get();
    }

    public RxJavaSchedulersHook getSchedulersHook() {
        if (this.schedulersHook.get() == null) {
            Object pluginImplementationViaProperty = getPluginImplementationViaProperty(RxJavaSchedulersHook.class);
            if (pluginImplementationViaProperty == null) {
                this.schedulersHook.compareAndSet(null, RxJavaSchedulersHook.getDefaultInstance());
            } else {
                this.schedulersHook.compareAndSet(null, (RxJavaSchedulersHook) pluginImplementationViaProperty);
            }
        }
        return (RxJavaSchedulersHook) this.schedulersHook.get();
    }

    public void registerErrorHandler(RxJavaErrorHandler rxJavaErrorHandler) {
        if (!this.errorHandler.compareAndSet(null, rxJavaErrorHandler)) {
            throw new IllegalStateException("Another strategy was already registered: " + this.errorHandler.get());
        }
    }

    public void registerObservableExecutionHook(RxJavaObservableExecutionHook rxJavaObservableExecutionHook) {
        if (!this.observableExecutionHook.compareAndSet(null, rxJavaObservableExecutionHook)) {
            throw new IllegalStateException("Another strategy was already registered: " + this.observableExecutionHook.get());
        }
    }

    public void registerSchedulersHook(RxJavaSchedulersHook rxJavaSchedulersHook) {
        if (!this.schedulersHook.compareAndSet(null, rxJavaSchedulersHook)) {
            throw new IllegalStateException("Another strategy was already registered: " + this.schedulersHook.get());
        }
    }

    void reset() {
        INSTANCE.errorHandler.set(null);
        INSTANCE.observableExecutionHook.set(null);
        INSTANCE.schedulersHook.set(null);
    }
}
