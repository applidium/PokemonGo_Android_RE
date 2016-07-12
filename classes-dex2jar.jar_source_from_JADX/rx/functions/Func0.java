package rx.functions;

import java.util.concurrent.Callable;

public interface Func0<R> extends Function, Callable<R> {
    R call();
}
