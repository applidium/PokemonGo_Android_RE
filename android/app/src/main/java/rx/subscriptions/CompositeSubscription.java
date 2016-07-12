package rx.subscriptions;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.HashSet;
import java.util.List;
import java.util.Set;
import rx.Subscription;
import rx.exceptions.Exceptions;

public final class CompositeSubscription implements Subscription {
    private Set<Subscription> subscriptions;
    private volatile boolean unsubscribed;

    public CompositeSubscription(Subscription... subscriptionArr) {
        this.subscriptions = new HashSet(Arrays.asList(subscriptionArr));
    }

    private static void unsubscribeFromAll(Collection<Subscription> collection) {
        if (collection != null) {
            List list = null;
            for (Subscription unsubscribe : collection) {
                try {
                    unsubscribe.unsubscribe();
                } catch (Throwable th) {
                    List arrayList = list == null ? new ArrayList() : list;
                    arrayList.add(th);
                    list = arrayList;
                }
            }
            Exceptions.throwIfAny(list);
        }
    }

    public void add(Subscription subscription) {
        if (!subscription.isUnsubscribed()) {
            if (!this.unsubscribed) {
                synchronized (this) {
                    if (this.unsubscribed) {
                    } else {
                        if (this.subscriptions == null) {
                            this.subscriptions = new HashSet(4);
                        }
                        this.subscriptions.add(subscription);
                        return;
                    }
                }
            }
            subscription.unsubscribe();
        }
    }

    public void clear() {
        if (!this.unsubscribed) {
            synchronized (this) {
                if (this.unsubscribed || this.subscriptions == null) {
                    return;
                }
                Collection collection = this.subscriptions;
                this.subscriptions = null;
                unsubscribeFromAll(collection);
            }
        }
    }

    public boolean hasSubscriptions() {
        boolean z = false;
        if (!this.unsubscribed) {
            synchronized (this) {
                if (!(this.unsubscribed || this.subscriptions == null || this.subscriptions.isEmpty())) {
                    z = true;
                }
            }
        }
        return z;
    }

    public boolean isUnsubscribed() {
        return this.unsubscribed;
    }

    public void remove(Subscription subscription) {
        if (!this.unsubscribed) {
            synchronized (this) {
                if (this.unsubscribed || this.subscriptions == null) {
                    return;
                }
                boolean remove = this.subscriptions.remove(subscription);
                if (remove) {
                    subscription.unsubscribe();
                }
            }
        }
    }

    public void unsubscribe() {
        if (!this.unsubscribed) {
            synchronized (this) {
                if (this.unsubscribed) {
                    return;
                }
                this.unsubscribed = true;
                Collection collection = this.subscriptions;
                this.subscriptions = null;
                unsubscribeFromAll(collection);
            }
        }
    }
}
