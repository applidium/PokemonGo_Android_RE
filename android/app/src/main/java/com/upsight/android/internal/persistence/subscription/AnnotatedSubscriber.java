package com.upsight.android.internal.persistence.subscription;

import android.util.Log;
import com.upsight.android.Upsight;
import java.util.Set;
import rx.Subscriber;

class AnnotatedSubscriber extends Subscriber<DataStoreEvent> {
    private final Set<SubscriptionHandler> mHandlers;

    AnnotatedSubscriber(Set<SubscriptionHandler> set) {
        this.mHandlers = set;
    }

    public void onCompleted() {
    }

    public void onError(Throwable th) {
    }

    public void onNext(DataStoreEvent dataStoreEvent) {
        for (SubscriptionHandler subscriptionHandler : this.mHandlers) {
            if (subscriptionHandler.matches(dataStoreEvent.action, dataStoreEvent.sourceType)) {
                try {
                    subscriptionHandler.handle(dataStoreEvent);
                } catch (Throwable e) {
                    Log.e(Upsight.LOG_TAG, "Failed to handle subscription.", e);
                }
            }
        }
    }
}
