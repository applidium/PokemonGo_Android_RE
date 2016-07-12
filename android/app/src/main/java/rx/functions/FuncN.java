package rx.functions;

public interface FuncN<R> extends Function {
    R call(Object... objArr);
}
