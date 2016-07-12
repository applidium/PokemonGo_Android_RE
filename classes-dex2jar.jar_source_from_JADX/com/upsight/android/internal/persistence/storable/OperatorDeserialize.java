package com.upsight.android.internal.persistence.storable;

import com.upsight.android.internal.persistence.Storable;
import com.upsight.android.persistence.UpsightStorableSerializer;
import rx.Observable.Operator;
import rx.Subscriber;

class OperatorDeserialize<T> implements Operator<T, Storable> {
    private final StorableInfo<T> mStorableInfo;

    private static class DeserializeSubscriber<T> extends Subscriber<Storable> {
        private final Subscriber<? super T> mChildSubscriber;
        private final StorableInfo<T> mStorableInfo;

        public DeserializeSubscriber(StorableInfo<T> storableInfo, Subscriber<? super T> subscriber) {
            super(subscriber);
            this.mStorableInfo = storableInfo;
            this.mChildSubscriber = subscriber;
        }

        public void onCompleted() {
            this.mChildSubscriber.onCompleted();
        }

        public void onError(Throwable th) {
            this.mChildSubscriber.onError(th);
        }

        public void onNext(Storable storable) {
            UpsightStorableSerializer deserializer = this.mStorableInfo.getDeserializer();
            try {
                if (!this.mChildSubscriber.isUnsubscribed()) {
                    Object fromString = deserializer.fromString(storable.getValue());
                    this.mStorableInfo.getIdentifierAccessor().setId(fromString, storable.getID());
                    this.mChildSubscriber.onNext(fromString);
                }
            } catch (Throwable e) {
                this.mChildSubscriber.onError(e);
            }
        }
    }

    public OperatorDeserialize(StorableInfo<T> storableInfo) {
        if (storableInfo == null) {
            throw new IllegalArgumentException("StorableInfo can not be null.");
        }
        this.mStorableInfo = storableInfo;
    }

    public Subscriber<? super Storable> call(Subscriber<? super T> subscriber) {
        return new DeserializeSubscriber(this.mStorableInfo, subscriber);
    }
}
