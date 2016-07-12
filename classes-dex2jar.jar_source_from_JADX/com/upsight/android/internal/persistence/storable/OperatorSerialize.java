package com.upsight.android.internal.persistence.storable;

import com.upsight.android.internal.persistence.Storable;
import com.upsight.android.persistence.UpsightStorableSerializer;
import rx.Observable.Operator;
import rx.Subscriber;

class OperatorSerialize<T> implements Operator<Storable, T> {
    private final StorableIdFactory mIDFactory;
    private final StorableInfo<T> mStorableInfo;

    private static class DeserializeSubscriber<T> extends Subscriber<T> {
        private final Subscriber<? super Storable> mChildSubscriber;
        private final StorableIdFactory mIdFactory;
        private final StorableInfo<T> mStorableInfo;

        public DeserializeSubscriber(StorableInfo<T> storableInfo, StorableIdFactory storableIdFactory, Subscriber<? super Storable> subscriber) {
            super(subscriber);
            this.mStorableInfo = storableInfo;
            this.mChildSubscriber = subscriber;
            this.mIdFactory = storableIdFactory;
        }

        public void onCompleted() {
            this.mChildSubscriber.onCompleted();
        }

        public void onError(Throwable th) {
            this.mChildSubscriber.onError(th);
        }

        public void onNext(T t) {
            UpsightStorableSerializer deserializer = this.mStorableInfo.getDeserializer();
            try {
                if (!this.mChildSubscriber.isUnsubscribed()) {
                    this.mChildSubscriber.onNext(Storable.create(this.mStorableInfo.getIdentifierAccessor().getId(t), this.mStorableInfo.getStorableTypeAccessor().getType(t), deserializer.toString(t)));
                }
            } catch (Throwable e) {
                this.mChildSubscriber.onError(e);
            }
        }
    }

    public OperatorSerialize(StorableInfo<T> storableInfo, StorableIdFactory storableIdFactory) {
        if (storableInfo == null) {
            throw new IllegalArgumentException("StorableInfo can not be null.");
        }
        this.mStorableInfo = storableInfo;
        this.mIDFactory = storableIdFactory;
    }

    public Subscriber<? super T> call(Subscriber<? super Storable> subscriber) {
        return new DeserializeSubscriber(this.mStorableInfo, this.mIDFactory, subscriber);
    }
}
