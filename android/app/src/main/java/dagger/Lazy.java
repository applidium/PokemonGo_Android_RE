package dagger;

public interface Lazy<T> {
    T get();
}
