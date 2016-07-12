package rx;

public interface Subscription {
    boolean isUnsubscribed();

    void unsubscribe();
}
