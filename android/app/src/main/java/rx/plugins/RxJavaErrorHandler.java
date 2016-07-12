package rx.plugins;

import rx.annotations.Experimental;
import rx.exceptions.Exceptions;

public abstract class RxJavaErrorHandler {
    protected static final String ERROR_IN_RENDERING_SUFFIX = ".errorRendering";

    public void handleError(Throwable th) {
    }

    @Experimental
    public final String handleOnNextValueRendering(Object obj) {
        try {
            return render(obj);
        } catch (InterruptedException e) {
            Thread.currentThread().interrupt();
            return obj.getClass().getName() + ERROR_IN_RENDERING_SUFFIX;
        } catch (Throwable th) {
            Exceptions.throwIfFatal(th);
            return obj.getClass().getName() + ERROR_IN_RENDERING_SUFFIX;
        }
    }

    @Experimental
    protected String render(Object obj) throws InterruptedException {
        return null;
    }
}
