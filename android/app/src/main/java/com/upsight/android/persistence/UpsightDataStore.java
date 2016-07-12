package com.upsight.android.persistence;

import java.util.Set;
import rx.Observable;

public interface UpsightDataStore {
    <T> UpsightSubscription fetch(Class<T> cls, UpsightDataStoreListener<Set<T>> upsightDataStoreListener);

    <T> UpsightSubscription fetch(Class<T> cls, Set<String> set, UpsightDataStoreListener<Set<T>> upsightDataStoreListener);

    <T> Observable<T> fetchObservable(Class<T> cls);

    <T> Observable<T> fetchObservable(Class<T> cls, String... strArr);

    <T> UpsightSubscription remove(Class<T> cls, Set<String> set);

    <T> UpsightSubscription remove(Class<T> cls, Set<String> set, UpsightDataStoreListener<Set<T>> upsightDataStoreListener);

    <T> UpsightSubscription remove(T t);

    <T> UpsightSubscription remove(T t, UpsightDataStoreListener<T> upsightDataStoreListener);

    <T> Observable<T> removeObservable(Class<T> cls, String... strArr);

    <T> Observable<T> removeObservable(T t);

    <T> void setSerializer(Class<T> cls, UpsightStorableSerializer<T> upsightStorableSerializer);

    <T> UpsightSubscription store(T t);

    <T> UpsightSubscription store(T t, UpsightDataStoreListener<T> upsightDataStoreListener);

    <T> Observable<T> storeObservable(T t);

    UpsightSubscription subscribe(Object obj);
}
