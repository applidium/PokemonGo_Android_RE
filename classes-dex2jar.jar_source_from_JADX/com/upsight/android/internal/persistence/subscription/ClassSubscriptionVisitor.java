package com.upsight.android.internal.persistence.subscription;

import java.lang.reflect.Method;

interface ClassSubscriptionVisitor {
    void visitCreatedSubscription(Method method, Class<?> cls);

    void visitRemovedSubscription(Method method, Class<?> cls);

    void visitUpdatedSubscription(Method method, Class<?> cls);
}
