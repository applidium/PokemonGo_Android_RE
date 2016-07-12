package com.upsight.android.internal.persistence.storable;

import com.upsight.android.UpsightException;

public interface StorableTypeAccessor<T> {
    String getType() throws UpsightException;

    String getType(T t) throws UpsightException;

    boolean isDynamic();
}
