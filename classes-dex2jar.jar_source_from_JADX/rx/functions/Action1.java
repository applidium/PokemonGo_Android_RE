package rx.functions;

public interface Action1<T> extends Action {
    void call(T t);
}
