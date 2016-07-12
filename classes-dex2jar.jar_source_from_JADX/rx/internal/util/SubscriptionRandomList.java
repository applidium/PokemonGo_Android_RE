package rx.internal.util;

import java.util.ArrayList;
import java.util.Collection;
import java.util.HashSet;
import java.util.List;
import java.util.Set;
import rx.Subscription;
import rx.exceptions.Exceptions;
import rx.functions.Action1;

public final class SubscriptionRandomList<T extends Subscription> implements Subscription {
    private Set<T> subscriptions;
    private boolean unsubscribed;

    public SubscriptionRandomList() {
        this.unsubscribed = false;
    }

    private static <T extends Subscription> void unsubscribeFromAll(Collection<T> collection) {
        if (collection != null) {
            List list = null;
            for (T unsubscribe : collection) {
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

    public void add(T t) {
        synchronized (this) {
            if (!this.unsubscribed) {
                if (this.subscriptions == null) {
                    this.subscriptions = new HashSet(4);
                }
                this.subscriptions.add(t);
                Subscription subscription = null;
            }
        }
        if (subscription != null) {
            subscription.unsubscribe();
        }
    }

    public void clear() {
        synchronized (this) {
            if (this.unsubscribed || this.subscriptions == null) {
                return;
            }
            Collection collection = this.subscriptions;
            this.subscriptions = null;
            unsubscribeFromAll(collection);
        }
    }

    public void forEach(Action1<T> action1) {
        synchronized (this) {
            if (this.unsubscribed || this.subscriptions == null) {
                return;
            }
            for (Object call : (Subscription[]) this.subscriptions.toArray(null)) {
                action1.call(call);
            }
        }
    }

    public boolean isUnsubscribed() {
        boolean z;
        synchronized (this) {
            z = this.unsubscribed;
        }
        return z;
    }

    public void remove(Subscription subscription) {
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

    public void unsubscribe() {
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
