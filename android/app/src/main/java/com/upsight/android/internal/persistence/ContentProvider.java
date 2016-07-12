package com.upsight.android.internal.persistence;

import android.content.ContentValues;
import android.content.Context;
import android.content.UriMatcher;
import android.database.Cursor;
import android.net.Uri;
import android.text.TextUtils;
import com.voxelbusters.nativeplugins.defines.Keys;
import java.util.List;

public final class ContentProvider extends android.content.ContentProvider {
    private static final int MODEL = 2;
    private static final int MODEL_ALL = 3;
    private static final int MODEL_ITEM = 1;
    private static final String TYPE_SELECTION = "type = ?";
    private static UriMatcher sMatcher;
    private DataHelper mDataHelper;

    private static String updatedSelection(String str, String str2) {
        String str3 = "_id = '" + str2 + "'";
        return str != null ? str3 + " AND " + str : str3;
    }

    public int delete(Uri uri, String str, String[] strArr) {
        switch (sMatcher.match(uri)) {
            case MODEL_ITEM /*1*/:
                int delete = this.mDataHelper.delete(updatedSelection(str, uri.getLastPathSegment()), strArr);
                if (delete > 0) {
                    getContext().getContentResolver().notifyChange(uri, null);
                }
                return delete;
            default:
                throw new IllegalArgumentException("Uri not supported by insert:" + uri);
        }
    }

    public String getType(Uri uri) {
        String str;
        switch (sMatcher.match(uri)) {
            case MODEL_ITEM /*1*/:
                str = Models.CONTENT_ITEM_TYPE;
                List pathSegments = uri.getPathSegments();
                if (pathSegments.size() >= MODEL_ALL) {
                    return !TextUtils.isEmpty((String) pathSegments.get(MODEL_ITEM)) ? Models.CONTENT_ITEM_TYPE + "." + ((String) pathSegments.get(MODEL_ITEM)) : str;
                } else {
                    throw new IllegalArgumentException("Unexpected content uri: " + uri);
                }
            case MODEL /*2*/:
                String str2 = Models.CONTENT_TYPE;
                str = uri.getLastPathSegment();
                return !Models.CONTENT_DIRECTORY.equals(str) ? Models.CONTENT_TYPE + "." + str : str2;
            default:
                return null;
        }
    }

    public Uri insert(Uri uri, ContentValues contentValues) {
        switch (sMatcher.match(uri)) {
            case MODEL /*2*/:
                if (TextUtils.isEmpty(contentValues.getAsString(Keys.TYPE))) {
                    throw new IllegalArgumentException("ContentValues must have a model type");
                } else if (0 > this.mDataHelper.insert(contentValues)) {
                    throw new IllegalArgumentException("Failed to insert model for uri: " + uri);
                } else {
                    Uri withAppendedPath = Uri.withAppendedPath(uri, contentValues.getAsString("_id"));
                    getContext().getContentResolver().notifyChange(withAppendedPath, null);
                    return withAppendedPath;
                }
            default:
                throw new IllegalArgumentException("Uri not supported by insert:" + uri);
        }
    }

    public boolean onCreate() {
        return onCreate(getContext());
    }

    public boolean onCreate(Context context) {
        return onCreate(context, new SQLiteDataHelper(context));
    }

    public boolean onCreate(Context context, DataHelper dataHelper) {
        this.mDataHelper = dataHelper;
        if (sMatcher == null) {
            sMatcher = new UriMatcher(-1);
            String authority = Content.getAuthoritytUri(context).getAuthority();
            sMatcher.addURI(authority, "model/*/*", MODEL_ITEM);
            sMatcher.addURI(authority, "model/*", MODEL);
            sMatcher.addURI(authority, Models.CONTENT_DIRECTORY, MODEL_ALL);
        }
        return true;
    }

    public Cursor query(Uri uri, String[] strArr, String str, String[] strArr2, String str2) {
        switch (sMatcher.match(uri)) {
            case MODEL_ITEM /*1*/:
                return this.mDataHelper.query(strArr, updatedSelection(str, uri.getLastPathSegment()), strArr2, str2);
            case MODEL /*2*/:
                String lastPathSegment = uri.getLastPathSegment();
                DataHelper dataHelper = this.mDataHelper;
                String str3 = TYPE_SELECTION;
                String[] strArr3 = new String[MODEL_ITEM];
                strArr3[0] = lastPathSegment;
                return dataHelper.query(strArr, str3, strArr3, str2);
            case MODEL_ALL /*3*/:
                return this.mDataHelper.query(strArr, str, strArr2, str2);
            default:
                throw new IllegalArgumentException("Uri not supported by query: " + uri);
        }
    }

    public int update(Uri uri, ContentValues contentValues, String str, String[] strArr) {
        switch (sMatcher.match(uri)) {
            case MODEL_ITEM /*1*/:
                int update = this.mDataHelper.update(contentValues, updatedSelection(str, uri.getLastPathSegment()), strArr);
                if (update > 0) {
                    getContext().getContentResolver().notifyChange(uri, null);
                }
                return update;
            default:
                throw new IllegalArgumentException("Uri not supported by update:" + uri);
        }
    }
}
