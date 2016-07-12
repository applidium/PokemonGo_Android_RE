package com.upsight.android.persistence;

public interface UpsightSubscription {
    boolean isSubscribed();

    void unsubscribe();
}
