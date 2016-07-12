package com.upsight.android.internal.persistence.subscription;

import com.upsight.android.persistence.annotation.Created;
import com.upsight.android.persistence.annotation.Removed;
import com.upsight.android.persistence.annotation.Updated;
import com.upsight.android.persistence.annotation.UpsightStorableType;
import java.lang.reflect.Method;
import java.lang.reflect.Modifier;

class ClassSubscriptionReader {
    private final Class<?> mClass;

    ClassSubscriptionReader(Class<?> cls) {
        this.mClass = cls;
    }

    private boolean isSubscriptionMethod(Method method) {
        if (!method.getReturnType().equals(Void.TYPE)) {
            return false;
        }
        Class[] parameterTypes = method.getParameterTypes();
        return parameterTypes.length == 1 && ((UpsightStorableType) parameterTypes[0].getAnnotation(UpsightStorableType.class)) != null && Modifier.isPublic(method.getModifiers());
    }

    public void accept(ClassSubscriptionVisitor classSubscriptionVisitor) {
        for (Method method : this.mClass.getMethods()) {
            if (isSubscriptionMethod(method)) {
                Class cls = method.getParameterTypes()[0];
                if (((Created) method.getAnnotation(Created.class)) != null) {
                    classSubscriptionVisitor.visitCreatedSubscription(method, cls);
                }
                if (((Updated) method.getAnnotation(Updated.class)) != null) {
                    classSubscriptionVisitor.visitUpdatedSubscription(method, cls);
                }
                if (((Removed) method.getAnnotation(Removed.class)) != null) {
                    classSubscriptionVisitor.visitRemovedSubscription(method, cls);
                }
            }
        }
    }
}
