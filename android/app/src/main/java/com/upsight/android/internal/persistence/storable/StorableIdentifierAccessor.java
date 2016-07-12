package com.upsight.android.internal.persistence.storable;

import com.upsight.android.UpsightException;

public interface StorableIdentifierAccessor {
    String getId(Object obj) throws UpsightException;

    void setId(Object obj, String str) throws UpsightException;
}
