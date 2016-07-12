package com.upsight.android.persistence;

import com.upsight.android.UpsightException;

public interface UpsightDataStoreListener<T> {
    void onFailure(UpsightException upsightException);

    void onSuccess(T t);
}
