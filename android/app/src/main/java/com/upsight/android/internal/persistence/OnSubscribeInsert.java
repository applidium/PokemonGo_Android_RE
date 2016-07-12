package com.upsight.android.internal.persistence;

import android.content.ContentValues;
import android.content.Context;
import android.net.Uri;
import com.voxelbusters.nativeplugins.defines.Keys;
import rx.Observable.OnSubscribe;
import rx.Subscriber;

class OnSubscribeInsert implements OnSubscribe<Storable> {
    private final Context mContext;
    private final Storable mStorable;

    OnSubscribeInsert(Context context, Storable storable) {
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
        contentValues.put(Keys.TYPE, this.mStorable.getType());
        contentValues.put(ModelColumns.DATA, this.mStorable.getValue());
        if (this.mContext.getContentResolver().insert(Uri.withAppendedPath(Content.getContentUri(this.mContext), this.mStorable.getType()), contentValues) == null) {
            throw new IllegalStateException("Unable to persist model!");
        }
        subscriber.onNext(this.mStorable);
        subscriber.onCompleted();
    }
}
