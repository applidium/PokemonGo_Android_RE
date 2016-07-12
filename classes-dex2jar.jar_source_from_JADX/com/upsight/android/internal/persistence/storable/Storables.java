package com.upsight.android.internal.persistence.storable;

import com.upsight.android.internal.persistence.Storable;
import rx.Observable.Operator;

public final class Storables {
    private Storables() {
    }

    public static <T> Operator<T, Storable> deserialize(StorableInfo<T> storableInfo) {
        return new OperatorDeserialize(storableInfo);
    }

    public static <T> Operator<Storable, T> serialize(StorableInfo<T> storableInfo, StorableIdFactory storableIdFactory) {
        return new OperatorSerialize(storableInfo, storableIdFactory);
    }
}
