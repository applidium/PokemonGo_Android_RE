package com.upsight.android.internal.persistence;

import android.content.Context;
import android.database.Cursor;
import android.text.TextUtils;
import com.upsight.android.UpsightException;
import com.voxelbusters.nativeplugins.defines.Keys;
import rx.Observable.OnSubscribe;
import rx.Subscriber;

class OnSubscribeFetchById implements OnSubscribe<Storable> {
    private final Context mContext;
    private final String[] mIds;
    private final String mType;

    OnSubscribeFetchById(Context context, String str, String... strArr) {
        if (context == null) {
            throw new IllegalArgumentException("Provided Context can not be null.");
        } else if (TextUtils.isEmpty(str)) {
            throw new IllegalArgumentException("Provided type can not be empty or null.");
        } else if (strArr == null || strArr.length == 0) {
            throw new IllegalArgumentException("Object identifiers can not be null or empty.");
        } else {
            this.mContext = context;
            this.mType = str;
            this.mIds = strArr;
        }
    }

    public void call(Subscriber<? super Storable> subscriber) {
        Throwable th;
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append("_id").append(" IN (");
        for (int i = 0; i < this.mIds.length; i++) {
            stringBuffer.append("?");
            if (i < this.mIds.length - 1) {
                stringBuffer.append(",");
            }
        }
        stringBuffer.append(")");
        Cursor query;
        try {
            query = this.mContext.getContentResolver().query(Content.getContentUri(this.mContext), null, stringBuffer.toString(), this.mIds, null);
            if (query == null) {
                try {
                    subscriber.onError(new UpsightException("Unable to retrieve stored objects.", new Object[0]));
                    if (query != null) {
                        query.close();
                    }
                } catch (Throwable th2) {
                    th = th2;
                }
            } else if (query.getCount() != this.mIds.length) {
                subscriber.onError(new UpsightException("Unable to retrieve stored objects. Some ID(s) were not found.", new Object[0]));
                if (query != null) {
                    query.close();
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
