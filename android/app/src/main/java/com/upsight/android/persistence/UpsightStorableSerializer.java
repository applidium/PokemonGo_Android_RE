package com.upsight.android.persistence;

import com.upsight.android.UpsightException;

public interface UpsightStorableSerializer<T> {
    T fromString(String str) throws UpsightException;

    String toString(T t) throws UpsightException;
}
