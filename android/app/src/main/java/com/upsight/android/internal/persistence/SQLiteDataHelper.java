package com.upsight.android.internal.persistence;

import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteOpenHelper;

class SQLiteDataHelper implements DataHelper {
    private static final String DATABASE_NAME = "upsight.db";
    private static final int DATABASE_VERSION = 1;
    private static final String TABLE_MODELS = "models";
    private SQLiteOpenHelper mOpenHelper;

    private static final class DatabaseHelper extends SQLiteOpenHelper {
        public DatabaseHelper(Context context) {
            super(context, SQLiteDataHelper.DATABASE_NAME, null, SQLiteDataHelper.DATABASE_VERSION);
        }

        public void onCreate(SQLiteDatabase sQLiteDatabase) {
            sQLiteDatabase.execSQL("CREATE TABLE models (_id TEXT PRIMARY KEY NOT NULL, type TEXT NOT NULL, data TEXT NOT NULL  );");
            sQLiteDatabase.execSQL("CREATE INDEX ID_INDEX ON models (_id);");
        }

        public void onUpgrade(SQLiteDatabase sQLiteDatabase, int i, int i2) {
            sQLiteDatabase.execSQL("DROP TABLE IF EXISTS models");
            onCreate(sQLiteDatabase);
        }
    }

    SQLiteDataHelper(Context context) {
        this.mOpenHelper = new DatabaseHelper(context);
    }

    public int delete(String str, String[] strArr) {
        return this.mOpenHelper.getWritableDatabase().delete(TABLE_MODELS, str, strArr);
    }

    public long insert(ContentValues contentValues) {
        return this.mOpenHelper.getWritableDatabase().insert(TABLE_MODELS, null, contentValues);
    }

    public Cursor query(String[] strArr, String str, String[] strArr2, String str2) {
        return this.mOpenHelper.getReadableDatabase().query(TABLE_MODELS, strArr, str, strArr2, null, null, str2);
    }

    public int update(ContentValues contentValues, String str, String[] strArr) {
        return this.mOpenHelper.getWritableDatabase().update(TABLE_MODELS, contentValues, str, strArr);
    }
}
