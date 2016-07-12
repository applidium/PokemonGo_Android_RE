package com.upsight.android.internal.persistence.subscription;

import com.upsight.android.persistence.UpsightSubscription;
import rx.Subscription;

class SubscriptionAdapter implements UpsightSubscription {
    private final Subscription mRxSubscription;

    SubscriptionAdapter(Subscription subscription) {
        this.mRxSubscription = subscription;
    }

    public boolean isSubscribed() {
        return !this.mRxSubscription.isUnsubscribed();
    }

    public void unsubscribe() {
        this.mRxSubscription.unsubscribe();
    }
}
