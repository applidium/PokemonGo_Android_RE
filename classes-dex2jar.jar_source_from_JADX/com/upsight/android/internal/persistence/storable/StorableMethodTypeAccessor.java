package com.upsight.android.internal.persistence.storable;

import com.upsight.android.UpsightException;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;

class StorableMethodTypeAccessor<T> implements StorableTypeAccessor<T> {
    private final Method mMethod;

    public StorableMethodTypeAccessor(Method method) {
        this.mMethod = method;
    }

    public String getType() throws UpsightException {
        return null;
    }

    public String getType(T t) throws UpsightException {
        Throwable e;
        try {
            return (String) this.mMethod.invoke(t, new Object[0]);
        } catch (IllegalAccessException e2) {
            e = e2;
            throw new UpsightException(e);
        } catch (InvocationTargetException e3) {
            e = e3;
            throw new UpsightException(e);
        }
    }

    public boolean isDynamic() {
        return true;
    }
}
