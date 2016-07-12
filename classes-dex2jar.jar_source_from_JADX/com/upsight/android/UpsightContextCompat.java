package com.upsight.android;

import android.content.Context;
import com.upsight.android.logger.UpsightLogger;
import com.upsight.android.logger.UpsightLogger.Level;
import com.upsight.android.persistence.UpsightDataStore;
import com.upsight.android.persistence.UpsightDataStoreListener;
import com.upsight.android.persistence.UpsightStorableSerializer;
import com.upsight.android.persistence.UpsightSubscription;
import java.util.EnumSet;
import java.util.Set;
import rx.Observable;

class UpsightContextCompat extends UpsightContext {

    private static class NoOpDataStore implements UpsightDataStore {

        private static class NoOpSubscription implements UpsightSubscription {
            private NoOpSubscription() {
            }

            public boolean isSubscribed() {
                return false;
            }

            public void unsubscribe() {
            }
        }

        private NoOpDataStore() {
        }

        public <T> UpsightSubscription fetch(Class<T> cls, UpsightDataStoreListener<Set<T>> upsightDataStoreListener) {
            return new NoOpSubscription();
        }

        public <T> UpsightSubscription fetch(Class<T> cls, Set<String> set, UpsightDataStoreListener<Set<T>> upsightDataStoreListener) {
            return new NoOpSubscription();
        }

        public <T> Observable<T> fetchObservable(Class<T> cls) {
            return Observable.empty();
        }

        public <T> Observable<T> fetchObservable(Class<T> cls, String... strArr) {
            return Observable.empty();
        }

        public <T> UpsightSubscription remove(Class<T> cls, Set<String> set) {
            return new NoOpSubscription();
        }

        public <T> UpsightSubscription remove(Class<T> cls, Set<String> set, UpsightDataStoreListener<Set<T>> upsightDataStoreListener) {
            return new NoOpSubscription();
        }

        public <T> UpsightSubscription remove(T t) {
            return new NoOpSubscription();
        }

        public <T> UpsightSubscription remove(T t, UpsightDataStoreListener<T> upsightDataStoreListener) {
            return new NoOpSubscription();
        }

        public <T> Observable<T> removeObservable(Class<T> cls, String... strArr) {
            return Observable.empty();
        }

        public <T> Observable<T> removeObservable(T t) {
            return Observable.empty();
        }

        public <T> void setSerializer(Class<T> cls, UpsightStorableSerializer<T> upsightStorableSerializer) {
        }

        public <T> UpsightSubscription store(T t) {
            return new NoOpSubscription();
        }

        public <T> UpsightSubscription store(T t, UpsightDataStoreListener<T> upsightDataStoreListener) {
            return new NoOpSubscription();
        }

        public <T> Observable<T> storeObservable(T t) {
            return Observable.empty();
        }

        public UpsightSubscription subscribe(Object obj) {
            return new NoOpSubscription();
        }
    }

    private static class NoOpLogger implements UpsightLogger {
        private NoOpLogger() {
        }

        public void m207d(String str, String str2, Object... objArr) {
        }

        public void m208d(String str, Throwable th, String str2, Object... objArr) {
        }

        public void m209e(String str, String str2, Object... objArr) {
        }

        public void m210e(String str, Throwable th, String str2, Object... objArr) {
        }

        public void m211i(String str, String str2, Object... objArr) {
        }

        public void m212i(String str, Throwable th, String str2, Object... objArr) {
        }

        public void setLogLevel(String str, EnumSet<Level> enumSet) {
        }

        public void m213v(String str, String str2, Object... objArr) {
        }

        public void m214v(String str, Throwable th, String str2, Object... objArr) {
        }

        public void m215w(String str, String str2, Object... objArr) {
        }

        public void m216w(String str, Throwable th, String str2, Object... objArr) {
        }
    }

    UpsightContextCompat(Context context) {
        super(context, null, null, null, null, new NoOpDataStore(), new NoOpLogger());
    }

    public UpsightCoreComponent getCoreComponent() {
        return null;
    }

    public UpsightExtension<?, ?> getUpsightExtension(String str) {
        return null;
    }
}
