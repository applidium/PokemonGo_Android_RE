package com.upsight.android.internal.persistence;

import android.content.ContentValues;
import android.content.Context;
import android.net.Uri;
import com.upsight.android.UpsightException;
import rx.Observable.OnSubscribe;
import rx.Subscriber;

class OnSubscribeUpdate implements OnSubscribe<Storable> {
    private final Context mContext;
    private final Storable mStorable;

    OnSubscribeUpdate(Context context, Storable storable) {
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
        ContentValues contentValues = new ContentValues();
        contentValues.put("_id", this.mStorable.getID());
        contentValues.put(ModelColumns.DATA, this.mStorable.getValue());
        if (this.mContext.getContentResolver().update(Uri.withAppendedPath(Content.getContentTypeUri(this.mContext, this.mStorable.getType()), this.mStorable.getID()), contentValues, null, null) > 0) {
            subscriber.onNext(this.mStorable);
            subscriber.onCompleted();
            return;
        }
        subscriber.onError(new UpsightException("Update failed. Storable exists?", new Object[0]));
    }
}
