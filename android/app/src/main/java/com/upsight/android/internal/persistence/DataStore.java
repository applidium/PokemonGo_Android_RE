package com.upsight.android.internal.persistence;

import android.content.Context;
import android.text.TextUtils;
import com.squareup.otto.Bus;
import com.upsight.android.UpsightException;
import com.upsight.android.internal.persistence.storable.StorableIdFactory;
import com.upsight.android.internal.persistence.storable.StorableInfo;
import com.upsight.android.internal.persistence.storable.StorableInfoCache;
import com.upsight.android.internal.persistence.storable.Storables;
import com.upsight.android.internal.persistence.subscription.Subscriptions;
import com.upsight.android.internal.util.LoggingListener;
import com.upsight.android.persistence.UpsightDataStore;
import com.upsight.android.persistence.UpsightDataStoreListener;
import com.upsight.android.persistence.UpsightStorableSerializer;
import com.upsight.android.persistence.UpsightSubscription;
import com.upsight.android.persistence.annotation.UpsightStorableType;
import java.util.HashSet;
import java.util.List;
import java.util.Set;
import rx.Observable;
import rx.Scheduler;
import rx.functions.Action1;
import rx.functions.Func1;
import rx.functions.Func2;

class DataStore implements UpsightDataStore {
    private final Bus mBus;
    private final Context mContext;
    private final StorableIdFactory mIdFactory;
    private final StorableInfoCache mInfoCache;
    private final Scheduler mObserveOnScheduler;
    private final Scheduler mSubscribeOnScheduler;

    /* renamed from: com.upsight.android.internal.persistence.DataStore.10 */
    class AnonymousClass10 implements Action1<Throwable> {
        final /* synthetic */ UpsightDataStoreListener val$listener;

        AnonymousClass10(UpsightDataStoreListener upsightDataStoreListener) {
            this.val$listener = upsightDataStoreListener;
        }

        public void call(Throwable th) {
            this.val$listener.onFailure(new UpsightException(th));
        }
    }

    /* renamed from: com.upsight.android.internal.persistence.DataStore.12 */
    class AnonymousClass12 implements Func1<Storable, Observable<Storable>> {
        final /* synthetic */ boolean val$hasID;

        AnonymousClass12(boolean z) {
            this.val$hasID = z;
        }

        public Observable<Storable> call(Storable storable) {
            return this.val$hasID ? ContentObservables.update(DataStore.this.mContext, storable) : ContentObservables.insert(DataStore.this.mContext, storable);
        }
    }

    /* renamed from: com.upsight.android.internal.persistence.DataStore.1 */
    class C09231 implements Action1<List<T>> {
        final /* synthetic */ UpsightDataStoreListener val$listener;

        C09231(UpsightDataStoreListener upsightDataStoreListener) {
            this.val$listener = upsightDataStoreListener;
        }

        public void call(List<T> list) {
            this.val$listener.onSuccess(new HashSet(list));
        }
    }

    /* renamed from: com.upsight.android.internal.persistence.DataStore.2 */
    class C09242 implements Action1<Throwable> {
        final /* synthetic */ UpsightDataStoreListener val$listener;

        C09242(UpsightDataStoreListener upsightDataStoreListener) {
            this.val$listener = upsightDataStoreListener;
        }

        public void call(Throwable th) {
            this.val$listener.onFailure(new UpsightException(th));
        }
    }

    /* renamed from: com.upsight.android.internal.persistence.DataStore.3 */
    class C09253 implements Action1<List<T>> {
        final /* synthetic */ UpsightDataStoreListener val$listener;

        C09253(UpsightDataStoreListener upsightDataStoreListener) {
            this.val$listener = upsightDataStoreListener;
        }

        public void call(List<T> list) {
            this.val$listener.onSuccess(new HashSet(list));
        }
    }

    /* renamed from: com.upsight.android.internal.persistence.DataStore.4 */
    class C09264 implements Action1<Throwable> {
        final /* synthetic */ UpsightDataStoreListener val$listener;

        C09264(UpsightDataStoreListener upsightDataStoreListener) {
            this.val$listener = upsightDataStoreListener;
        }

        public void call(Throwable th) {
            this.val$listener.onFailure(new UpsightException(th));
        }
    }

    /* renamed from: com.upsight.android.internal.persistence.DataStore.5 */
    class C09275 implements Action1<List<T>> {
        final /* synthetic */ UpsightDataStoreListener val$listener;

        C09275(UpsightDataStoreListener upsightDataStoreListener) {
            this.val$listener = upsightDataStoreListener;
        }

        public void call(List<T> list) {
            this.val$listener.onSuccess(new HashSet(list));
        }
    }

    /* renamed from: com.upsight.android.internal.persistence.DataStore.6 */
    class C09286 implements Action1<Throwable> {
        final /* synthetic */ UpsightDataStoreListener val$listener;

        C09286(UpsightDataStoreListener upsightDataStoreListener) {
            this.val$listener = upsightDataStoreListener;
        }

        public void call(Throwable th) {
            this.val$listener.onFailure(new UpsightException(th));
        }
    }

    /* renamed from: com.upsight.android.internal.persistence.DataStore.7 */
    class C09297 implements Action1<T> {
        final /* synthetic */ UpsightDataStoreListener val$listener;

        C09297(UpsightDataStoreListener upsightDataStoreListener) {
            this.val$listener = upsightDataStoreListener;
        }

        public void call(T t) {
            this.val$listener.onSuccess(t);
        }
    }

    /* renamed from: com.upsight.android.internal.persistence.DataStore.8 */
    class C09308 implements Action1<Throwable> {
        final /* synthetic */ UpsightDataStoreListener val$listener;

        C09308(UpsightDataStoreListener upsightDataStoreListener) {
            this.val$listener = upsightDataStoreListener;
        }

        public void call(Throwable th) {
            this.val$listener.onFailure(new UpsightException(th));
        }
    }

    /* renamed from: com.upsight.android.internal.persistence.DataStore.9 */
    class C09319 implements Action1<T> {
        final /* synthetic */ UpsightDataStoreListener val$listener;

        C09319(UpsightDataStoreListener upsightDataStoreListener) {
            this.val$listener = upsightDataStoreListener;
        }

        public void call(T t) {
            this.val$listener.onSuccess(t);
        }
    }

    DataStore(Context context, StorableInfoCache storableInfoCache, StorableIdFactory storableIdFactory, Scheduler scheduler, Scheduler scheduler2, Bus bus) {
        this.mContext = context;
        this.mInfoCache = storableInfoCache;
        this.mIdFactory = storableIdFactory;
        this.mSubscribeOnScheduler = scheduler;
        this.mObserveOnScheduler = scheduler2;
        this.mBus = bus;
    }

    public <T> UpsightSubscription fetch(Class<T> cls, UpsightDataStoreListener<Set<T>> upsightDataStoreListener) {
        if (cls == null) {
            throw new IllegalArgumentException("A non null class must be specified for fetch(..)");
        } else if (upsightDataStoreListener != null) {
            return Subscriptions.from(fetchObservable(cls).toList().subscribeOn(this.mSubscribeOnScheduler).observeOn(this.mObserveOnScheduler).subscribe(new C09231(upsightDataStoreListener), new C09242(upsightDataStoreListener)));
        } else {
            throw new IllegalArgumentException("A non null listener must be specified for fetch(..)");
        }
    }

    public <T> UpsightSubscription fetch(Class<T> cls, Set<String> set, UpsightDataStoreListener<Set<T>> upsightDataStoreListener) {
        return Subscriptions.from(fetchObservable(cls, (String[]) set.toArray(new String[set.size()])).toList().subscribeOn(this.mSubscribeOnScheduler).observeOn(this.mObserveOnScheduler).subscribe(new C09253(upsightDataStoreListener), new C09264(upsightDataStoreListener)));
    }

    public <T> Observable<T> fetchObservable(Class<T> cls) {
        try {
            StorableInfo storableInfo = this.mInfoCache.get(cls);
            if (storableInfo == null) {
                throw new IllegalArgumentException(String.format("Class %s must be annotated with @%s", new Object[]{cls.getName(), Storable.class.getSimpleName()}));
            }
            Object type = storableInfo.getStorableTypeAccessor().getType();
            if (!TextUtils.isEmpty(type)) {
                return ContentObservables.fetch(this.mContext, type).lift(Storables.deserialize(storableInfo));
            }
            throw new IllegalArgumentException(String.format("Class %s must be annotated with @%s", new Object[]{cls.getSimpleName(), UpsightStorableType.class.getSimpleName()}));
        } catch (Throwable e) {
            return Observable.error(e);
        }
    }

    public <T> Observable<T> fetchObservable(Class<T> cls, String... strArr) {
        try {
            StorableInfo storableInfo = this.mInfoCache.get(cls);
            if (storableInfo == null) {
                throw new IllegalArgumentException(String.format("Class %s must be annotated with @%s", new Object[]{cls.getName(), Storable.class.getSimpleName()}));
            }
            return ContentObservables.fetch(this.mContext, storableInfo.getStorableTypeAccessor().getType(), strArr).lift(Storables.deserialize(storableInfo));
        } catch (Throwable e) {
            return Observable.error(e);
        }
    }

    public <T> UpsightSubscription remove(Class<T> cls, Set<String> set) {
        return remove(cls, set, new LoggingListener());
    }

    public <T> UpsightSubscription remove(Class<T> cls, Set<String> set, UpsightDataStoreListener<Set<T>> upsightDataStoreListener) {
        return Subscriptions.from(removeObservable(cls, (String[]) set.toArray(new String[set.size()])).toList().subscribeOn(this.mSubscribeOnScheduler).observeOn(this.mObserveOnScheduler).subscribe(new C09275(upsightDataStoreListener), new C09286(upsightDataStoreListener)));
    }

    public <T> UpsightSubscription remove(T t) {
        return remove((Object) t, new LoggingListener());
    }

    public <T> UpsightSubscription remove(T t, UpsightDataStoreListener<T> upsightDataStoreListener) {
        if (upsightDataStoreListener != null) {
            return Subscriptions.from(removeObservable(t).subscribeOn(this.mSubscribeOnScheduler).observeOn(this.mObserveOnScheduler).subscribe(new C09319(upsightDataStoreListener), new AnonymousClass10(upsightDataStoreListener)));
        }
        throw new IllegalArgumentException("Listener can not be null.");
    }

    public <T> Observable<T> removeObservable(Class<T> cls, String... strArr) {
        try {
            StorableInfo storableInfo = this.mInfoCache.get(cls);
            if (storableInfo == null) {
                throw new IllegalArgumentException(String.format("Class %s must be annotated with @%s", new Object[]{cls.getName(), Storable.class.getSimpleName()}));
            }
            return ContentObservables.fetch(this.mContext, storableInfo.getStorableTypeAccessor().getType(), strArr).lift(Storables.deserialize(storableInfo)).flatMap(new Func1<T, Observable<T>>() {
                public Observable<T> call(T t) {
                    return DataStore.this.removeObservable(t);
                }
            });
        } catch (Throwable e) {
            return Observable.error(e);
        }
    }

    public <T> Observable<T> removeObservable(T t) {
        Object obj = null;
        if (t == null) {
            throw new IllegalArgumentException("Object can not be null.");
        }
        try {
            StorableInfo storableInfo = this.mInfoCache.get(t.getClass());
            if (storableInfo != null) {
                if (!TextUtils.isEmpty(storableInfo.getIdentifierAccessor().getId(t))) {
                    obj = 1;
                }
                if (obj == null) {
                    return Observable.error(new UpsightException("Object must be stored before removal.", new Object[0]));
                }
                String type = storableInfo.getStorableTypeAccessor().getType(t);
                Observable just = Observable.just(t);
                return just.lift(Storables.serialize(storableInfo, this.mIdFactory)).flatMap(new Func1<Storable, Observable<Storable>>() {
                    public Observable<Storable> call(Storable storable) {
                        return ContentObservables.remove(DataStore.this.mContext, storable);
                    }
                }).zipWith(just, new Func2<Storable, T, T>() {
                    public T call(Storable storable, T t) {
                        return t;
                    }
                }).doOnNext(Subscriptions.publishRemoved(this.mBus, type));
            }
            return Observable.error(new UpsightException("Class %s must be annotated with @%s", r2.getName(), Storable.class.getSimpleName()));
        } catch (Throwable e) {
            return Observable.error(e);
        }
    }

    public <T> void setSerializer(Class<T> cls, UpsightStorableSerializer<T> upsightStorableSerializer) {
        if (cls == null) {
            throw new IllegalArgumentException("Class can not be null.");
        } else if (upsightStorableSerializer == null) {
            throw new IllegalArgumentException("UpsightStorableSerializer can not be null.");
        } else {
            this.mInfoCache.setSerializer(cls, upsightStorableSerializer);
        }
    }

    public <T> UpsightSubscription store(T t) {
        return store(t, new LoggingListener());
    }

    public <T> UpsightSubscription store(T t, UpsightDataStoreListener<T> upsightDataStoreListener) {
        return Subscriptions.from(storeObservable(t).subscribeOn(this.mSubscribeOnScheduler).observeOn(this.mObserveOnScheduler).subscribe(new C09297(upsightDataStoreListener), new C09308(upsightDataStoreListener)));
    }

    public <T> Observable<T> storeObservable(T t) {
        boolean z = false;
        if (t == null) {
            throw new IllegalArgumentException("Attempting to store null object.");
        }
        try {
            StorableInfo storableInfo = this.mInfoCache.get(t.getClass());
            if (storableInfo == null) {
                throw new IllegalArgumentException(String.format("Class %s must be annotated with @%s", new Object[]{r2.getName(), Storable.class.getSimpleName()}));
            }
            if (!TextUtils.isEmpty(storableInfo.getIdentifierAccessor().getId(t))) {
                z = true;
            }
            if (!z) {
                storableInfo.getIdentifierAccessor().setId(t, this.mIdFactory.createObjectID());
            }
            Observable just = Observable.just(t);
            just = just.lift(Storables.serialize(storableInfo, this.mIdFactory)).flatMap(new AnonymousClass12(z)).zipWith(just, new Func2<Storable, T, T>() {
                public T call(Storable storable, T t) {
                    return t;
                }
            });
            String type = storableInfo.getStorableTypeAccessor().getType(t);
            return z ? just.doOnNext(Subscriptions.publishUpdated(this.mBus, type)) : just.doOnNext(Subscriptions.publishCreated(this.mBus, type));
        } catch (Throwable e) {
            return Observable.error(e);
        }
    }

    public UpsightSubscription subscribe(Object obj) {
        return Subscriptions.from(Subscriptions.toObservable(this.mBus).observeOn(this.mObserveOnScheduler).subscribe(Subscriptions.create(obj)));
    }
}
