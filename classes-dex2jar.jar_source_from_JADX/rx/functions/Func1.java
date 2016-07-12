package rx.functions;

public interface Func1<T, R> extends Function {
    R call(T t);
}
