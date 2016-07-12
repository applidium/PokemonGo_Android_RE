package dagger.internal;

public final class InstanceFactory<T> implements Factory<T> {
    private final T instance;

    private InstanceFactory(T t) {
        this.instance = t;
    }

    public static <T> Factory<T> create(T t) {
        if (t != null) {
            return new InstanceFactory(t);
        }
        throw new NullPointerException();
    }

    public T get() {
        return this.instance;
    }
}
