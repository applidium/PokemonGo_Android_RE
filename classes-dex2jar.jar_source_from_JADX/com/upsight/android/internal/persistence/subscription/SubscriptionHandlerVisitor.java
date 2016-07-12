package com.upsight.android.internal.persistence.subscription;

import com.upsight.android.internal.persistence.subscription.DataStoreEvent.Action;
import com.upsight.android.persistence.annotation.UpsightStorableType;
import java.lang.reflect.Method;
import java.util.HashSet;
import java.util.Set;

class SubscriptionHandlerVisitor implements ClassSubscriptionVisitor {
    private final Set<SubscriptionHandler> mHandlers;
    private final Object mTarget;

    SubscriptionHandlerVisitor(Object obj) {
        this.mHandlers = new HashSet();
        this.mTarget = obj;
    }

    public Set<SubscriptionHandler> getHandlers() {
        return new HashSet(this.mHandlers);
    }

    public void visitCreatedSubscription(Method method, Class<?> cls) {
        UpsightStorableType upsightStorableType = (UpsightStorableType) cls.getAnnotation(UpsightStorableType.class);
        if (upsightStorableType != null) {
            this.mHandlers.add(new SubscriptionHandler(this.mTarget, method, Action.Created, upsightStorableType.value()));
        }
    }

    public void visitRemovedSubscription(Method method, Class<?> cls) {
        UpsightStorableType upsightStorableType = (UpsightStorableType) cls.getAnnotation(UpsightStorableType.class);
        if (upsightStorableType != null) {
            this.mHandlers.add(new SubscriptionHandler(this.mTarget, method, Action.Removed, upsightStorableType.value()));
        }
    }

    public void visitUpdatedSubscription(Method method, Class<?> cls) {
        UpsightStorableType upsightStorableType = (UpsightStorableType) cls.getAnnotation(UpsightStorableType.class);
        if (upsightStorableType != null) {
            this.mHandlers.add(new SubscriptionHandler(this.mTarget, method, Action.Updated, upsightStorableType.value()));
        }
    }
}
