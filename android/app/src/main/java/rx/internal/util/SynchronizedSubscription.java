package rx.internal.util;

import rx.Subscription;

public class SynchronizedSubscription implements Subscription {
    private final Subscription f924s;

    public SynchronizedSubscription(Subscription subscription) {
        this.f924s = subscription;
    }

    public boolean isUnsubscribed() {
        boolean isUnsubscribed;
        synchronized (this) {
            isUnsubscribed = this.f924s.isUnsubscribed();
        }
        return isUnsubscribed;
    }

    public void unsubscribe() {
        synchronized (this) {
            this.f924s.unsubscribe();
        }
    }
}
