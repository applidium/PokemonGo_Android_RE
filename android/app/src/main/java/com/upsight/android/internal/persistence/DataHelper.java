package com.upsight.android.internal.persistence;

import android.content.ContentValues;
import android.database.Cursor;

interface DataHelper {
    int delete(String str, String[] strArr);

    long insert(ContentValues contentValues);

    Cursor query(String[] strArr, String str, String[] strArr2, String str2);

    int update(ContentValues contentValues, String str, String[] strArr);
}
