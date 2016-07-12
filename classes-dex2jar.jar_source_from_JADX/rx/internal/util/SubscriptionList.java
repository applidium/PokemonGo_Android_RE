package rx.internal.util;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.LinkedList;
import java.util.List;
import rx.Subscription;
import rx.exceptions.Exceptions;

public final class SubscriptionList implements Subscription {
    private LinkedList<Subscription> subscriptions;
    private volatile boolean unsubscribed;

    public SubscriptionList(Subscription subscription) {
        this.subscriptions = new LinkedList();
        this.subscriptions.add(subscription);
    }

    public SubscriptionList(Subscription... subscriptionArr) {
        this.subscriptions = new LinkedList(Arrays.asList(subscriptionArr));
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
                        LinkedList linkedList = this.subscriptions;
                        if (linkedList == null) {
                            linkedList = new LinkedList();
                            this.subscriptions = linkedList;
                        }
                        linkedList.add(subscription);
                        return;
                    }
                }
            }
            subscription.unsubscribe();
        }
    }

    public void clear() {
        if (!this.unsubscribed) {
            Collection collection;
            synchronized (this) {
                collection = this.subscriptions;
                this.subscriptions = null;
            }
            unsubscribeFromAll(collection);
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
                LinkedList linkedList = this.subscriptions;
                if (this.unsubscribed || linkedList == null) {
                    return;
                }
                boolean remove = linkedList.remove(subscription);
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
