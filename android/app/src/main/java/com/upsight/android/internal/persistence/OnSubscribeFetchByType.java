package com.upsight.android.internal.persistence;

import android.content.Context;
import android.database.Cursor;
import android.text.TextUtils;
import com.upsight.android.UpsightException;
import com.voxelbusters.nativeplugins.defines.Keys;
import java.lang.ref.WeakReference;
import rx.Observable.OnSubscribe;
import rx.Subscriber;

class OnSubscribeFetchByType implements OnSubscribe<Storable> {
    private final WeakReference<Context> reference;
    private final String type;

    OnSubscribeFetchByType(Context context, String str) {
        if (context == null) {
            throw new IllegalArgumentException("Provided Context can not be null.");
        } else if (TextUtils.isEmpty(str)) {
            throw new IllegalArgumentException("Provided type can not be empty or null.");
        } else {
            this.reference = new WeakReference(context);
            this.type = str;
        }
    }

    public void call(Subscriber<? super Storable> subscriber) {
        Cursor query;
        Throwable th;
        Context context = (Context) this.reference.get();
        if (context == null) {
            subscriber.onError(new IllegalStateException("Context has been reclaimed by Android."));
            return;
        }
        try {
            query = context.getContentResolver().query(Content.getContentTypeUri(context, this.type), null, null, null, null);
            if (query == null) {
                try {
                    subscriber.onError(new UpsightException("Unable to retrieve stored objects.", new Object[0]));
                    if (query != null) {
                        query.close();
                    }
                } catch (Throwable th2) {
                    th = th2;
                }
            } else {
                while (query.moveToNext()) {
                    subscriber.onNext(Storable.create(query.getString(query.getColumnIndex("_id")), query.getString(query.getColumnIndex(Keys.TYPE)), query.getString(query.getColumnIndex(ModelColumns.DATA))));
                }
                subscriber.onCompleted();
                if (query != null) {
                    query.close();
                }
            }
        } catch (Throwable th3) {
            th = th3;
            query = null;
            if (query != null) {
                query.close();
            }
            throw th;
        }
    }
}
