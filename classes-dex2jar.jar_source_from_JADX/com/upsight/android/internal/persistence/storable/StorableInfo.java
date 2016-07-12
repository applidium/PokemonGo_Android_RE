package com.upsight.android.internal.persistence.storable;

import com.upsight.android.persistence.UpsightStorableSerializer;

public final class StorableInfo<T> {
    private final StorableIdentifierAccessor mIdentifierAccessor;
    private final UpsightStorableSerializer<T> mSerializer;
    private final StorableTypeAccessor<T> mStorableType;

    StorableInfo(StorableTypeAccessor<T> storableTypeAccessor, UpsightStorableSerializer<T> upsightStorableSerializer, StorableIdentifierAccessor storableIdentifierAccessor) {
        if (storableTypeAccessor == null) {
            throw new IllegalArgumentException("StorableTypeAccessor type can not be null.");
        } else if (upsightStorableSerializer == null) {
            throw new IllegalArgumentException("UpsightStorableSerializer can not be null.");
        } else if (storableIdentifierAccessor == null) {
            throw new IllegalArgumentException("StorableIdentifierAccessor can not be null.");
        } else {
            this.mStorableType = storableTypeAccessor;
            this.mSerializer = upsightStorableSerializer;
            this.mIdentifierAccessor = storableIdentifierAccessor;
        }
    }

    public static final <T> StorableInfo<T> create(StorableTypeAccessor<T> storableTypeAccessor, UpsightStorableSerializer<T> upsightStorableSerializer, StorableIdentifierAccessor storableIdentifierAccessor) {
        return new StorableInfo(storableTypeAccessor, upsightStorableSerializer, storableIdentifierAccessor);
    }

    public UpsightStorableSerializer<T> getDeserializer() {
        return this.mSerializer;
    }

    public StorableIdentifierAccessor getIdentifierAccessor() {
        return this.mIdentifierAccessor;
    }

    public StorableTypeAccessor<T> getStorableTypeAccessor() {
        return this.mStorableType;
    }
}
