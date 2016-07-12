package com.upsight.android.internal.persistence.storable;

import com.upsight.android.UpsightException;

class StorableIdentifierNoopAccessor implements StorableIdentifierAccessor {
    StorableIdentifierNoopAccessor() {
    }

    public String getId(Object obj) throws UpsightException {
        return null;
    }

    public void setId(Object obj, String str) throws UpsightException {
    }
}
