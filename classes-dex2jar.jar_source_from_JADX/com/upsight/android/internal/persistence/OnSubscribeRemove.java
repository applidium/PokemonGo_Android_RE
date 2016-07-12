package com.upsight.android.internal.persistence;

import android.content.Context;
import android.net.Uri;
import rx.Observable.OnSubscribe;
import rx.Subscriber;

class OnSubscribeRemove implements OnSubscribe<Storable> {
    private final Context mContext;
    private final Storable mStorable;

    OnSubscribeRemove(Context context, Storable storable) {
        if (context == null) {
            throw new IllegalArgumentException("Provided Context can not be null.");
        } else if (storable == null) {
            throw new IllegalArgumentException("Provided UpsightStorable can not be null.");
        } else {
            this.mContext = context;
            this.mStorable = storable;
        }
    }

    public void call(Subscriber<? super Storable> subscriber) {
        if (this.mContext.getContentResolver().delete(Uri.withAppendedPath(Content.getContentTypeUri(this.mContext, this.mStorable.getType()), this.mStorable.getID()), null, null) > 0) {
            subscriber.onNext(this.mStorable);
            subscriber.onCompleted();
            return;
        }
        subscriber.onError(new IllegalStateException("Object could not be removed. Already removed?"));
    }
}
