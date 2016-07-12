package com.upsight.android.internal.persistence;

import android.content.Context;
import rx.Observable;

final class ContentObservables {
    private ContentObservables() {
    }

    public static Observable<Storable> fetch(Context context, String str) {
        return Observable.create(new OnSubscribeFetchByType(context, str)).onBackpressureBuffer();
    }

    public static Observable<Storable> fetch(Context context, String str, String[] strArr) {
        return Observable.create(new OnSubscribeFetchById(context, str, strArr)).onBackpressureBuffer();
    }

    public static Observable<Storable> insert(Context context, Storable storable) {
        return Observable.create(new OnSubscribeInsert(context, storable));
    }

    public static Observable<Storable> remove(Context context, Storable storable) {
        return Observable.create(new OnSubscribeRemove(context, storable));
    }

    public static Observable<Storable> update(Context context, Storable storable) {
        return Observable.create(new OnSubscribeUpdate(context, storable));
    }
}
