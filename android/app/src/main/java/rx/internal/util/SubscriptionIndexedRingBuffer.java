package rx.internal.util;

import java.util.concurrent.atomic.AtomicIntegerFieldUpdater;
import rx.Subscription;
import rx.functions.Func1;

public final class SubscriptionIndexedRingBuffer<T extends Subscription> implements Subscription {
    private static final Func1<Subscription, Boolean> UNSUBSCRIBE;
    private static final AtomicIntegerFieldUpdater<SubscriptionIndexedRingBuffer> UNSUBSCRIBED;
    private volatile IndexedRingBuffer<T> subscriptions;
    private volatile int unsubscribed;

    /* renamed from: rx.internal.util.SubscriptionIndexedRingBuffer.1 */
    static final class C13571 implements Func1<Subscription, Boolean> {
        C13571() {
        }

        public Boolean call(Subscription subscription) {
            subscription.unsubscribe();
            return Boolean.TRUE;
        }
    }

    static {
        UNSUBSCRIBED = AtomicIntegerFieldUpdater.newUpdater(SubscriptionIndexedRingBuffer.class, "unsubscribed");
        UNSUBSCRIBE = new C13571();
    }

    public SubscriptionIndexedRingBuffer() {
        this.subscriptions = IndexedRingBuffer.getInstance();
        this.unsubscribed = 0;
    }

    private static void unsubscribeFromAll(IndexedRingBuffer<? extends Subscription> indexedRingBuffer) {
        if (indexedRingBuffer != null) {
            indexedRingBuffer.forEach(UNSUBSCRIBE);
        }
    }

    public int add(T t) {
        int i;
        synchronized (this) {
            if (this.unsubscribed == 1 || this.subscriptions == null) {
                t.unsubscribe();
                i = -1;
            } else {
                i = this.subscriptions.add(t);
                if (this.unsubscribed == 1) {
                    t.unsubscribe();
                }
            }
        }
        return i;
    }

    public int forEach(Func1<T, Boolean> func1) {
        return forEach(func1, 0);
    }

    public int forEach(Func1<T, Boolean> func1, int i) {
        int forEach;
        synchronized (this) {
            forEach = (this.unsubscribed == 1 || this.subscriptions == null) ? 0 : this.subscriptions.forEach(func1, i);
        }
        return forEach;
    }

    public boolean isUnsubscribed() {
        return this.unsubscribed == 1;
    }

    public void remove(int i) {
        if (this.unsubscribed != 1 && this.subscriptions != null && i >= 0) {
            Subscription subscription = (Subscription) this.subscriptions.remove(i);
            if (subscription != null && subscription != null) {
                subscription.unsubscribe();
            }
        }
    }

    public void removeSilently(int i) {
        if (this.unsubscribed != 1 && this.subscriptions != null && i >= 0) {
            this.subscriptions.remove(i);
        }
    }

    public void unsubscribe() {
        if (UNSUBSCRIBED.compareAndSet(this, 0, 1) && this.subscriptions != null) {
            unsubscribeFromAll(this.subscriptions);
            IndexedRingBuffer indexedRingBuffer = this.subscriptions;
            this.subscriptions = null;
            indexedRingBuffer.unsubscribe();
        }
    }
}
