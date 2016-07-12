package com.upsight.android.managedvariables.type;

import com.upsight.android.UpsightException;
import com.upsight.android.managedvariables.internal.type.ManagedVariable;
import com.upsight.android.persistence.UpsightSubscription;

public abstract class UpsightManagedVariable<T> extends ManagedVariable<T> {

    public interface Listener<T> {
        void onFailure(UpsightException upsightException);

        void onSuccess(T t);
    }

    protected static class NoOpSubscription implements UpsightSubscription {
        protected NoOpSubscription() {
        }

        public boolean isSubscribed() {
            return false;
        }

        public void unsubscribe() {
        }
    }

    protected UpsightManagedVariable(String str, T t, T t2) {
        super(str, t, t2);
    }
}
