package com.upsight.android.internal.persistence.subscription;

import com.upsight.android.UpsightException;
import com.upsight.android.internal.persistence.subscription.DataStoreEvent.Action;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;

class SubscriptionHandler {
    private final Action mAction;
    private final Method mMethod;
    private final Object mTarget;
    private final String mType;

    SubscriptionHandler(Object obj, Method method, Action action, String str) {
        this.mTarget = obj;
        this.mMethod = method;
        this.mAction = action;
        this.mType = str;
    }

    public void handle(DataStoreEvent dataStoreEvent) throws UpsightException {
        Throwable e;
        try {
            this.mMethod.invoke(this.mTarget, new Object[]{dataStoreEvent.source});
        } catch (InvocationTargetException e2) {
            e = e2;
            throw new UpsightException(e, "Failed to invoke subscription method %s.%s: ", this.mTarget.getClass(), this.mMethod.getName());
        } catch (IllegalAccessException e3) {
            e = e3;
            throw new UpsightException(e, "Failed to invoke subscription method %s.%s: ", this.mTarget.getClass(), this.mMethod.getName());
        }
    }

    public boolean matches(Action action, String str) {
        return this.mAction.equals(action) && this.mType.equals(str);
    }
}
