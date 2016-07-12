package dagger;

public interface MembersInjector<T> {
    void injectMembers(T t);
}
