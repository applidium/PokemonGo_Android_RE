package rx;

import rx.internal.util.SubscriptionList;

public abstract class Subscriber<T> implements Observer<T>, Subscription {
    private static final Long NOT_SET;
    private Producer producer;
    private long requested;
    private final Subscriber<?> subscriber;
    private final SubscriptionList subscriptions;

    static {
        NOT_SET = Long.valueOf(Long.MIN_VALUE);
    }

    protected Subscriber() {
        this(null, false);
    }

    protected Subscriber(Subscriber<?> subscriber) {
        this(subscriber, true);
    }

    protected Subscriber(Subscriber<?> subscriber, boolean z) {
        this.requested = NOT_SET.longValue();
        this.subscriber = subscriber;
        SubscriptionList subscriptionList = (!z || subscriber == null) ? new SubscriptionList() : subscriber.subscriptions;
        this.subscriptions = subscriptionList;
    }

    private void addToRequested(long j) {
        if (this.requested == NOT_SET.longValue()) {
            this.requested = j;
            return;
        }
        long j2 = this.requested + j;
        if (j2 < 0) {
            this.requested = Long.MAX_VALUE;
        } else {
            this.requested = j2;
        }
    }

    public final void add(Subscription subscription) {
        this.subscriptions.add(subscription);
    }

    public final boolean isUnsubscribed() {
        return this.subscriptions.isUnsubscribed();
    }

    public void onStart() {
    }

    protected final void request(long j) {
        if (j < 0) {
            throw new IllegalArgumentException("number requested cannot be negative: " + j);
        }
        synchronized (this) {
            if (this.producer != null) {
                Producer producer = this.producer;
                producer.request(j);
                return;
            }
            addToRequested(j);
        }
    }

    public void setProducer(Producer producer) {
        Object obj = null;
        synchronized (this) {
            long j = this.requested;
            this.producer = producer;
            if (this.subscriber != null && j == NOT_SET.longValue()) {
                obj = 1;
            }
        }
        if (obj != null) {
            this.subscriber.setProducer(this.producer);
        } else if (j == NOT_SET.longValue()) {
            this.producer.request(Long.MAX_VALUE);
        } else {
            this.producer.request(j);
        }
    }

    public final void unsubscribe() {
        this.subscriptions.unsubscribe();
    }
}
