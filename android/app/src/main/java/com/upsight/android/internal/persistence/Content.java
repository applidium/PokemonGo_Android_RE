package com.upsight.android.internal.persistence;

import android.content.Context;
import android.net.Uri;
import android.provider.BaseColumns;

public final class Content {

    interface ModelColumns extends BaseColumns {
        public static final String DATA = "data";
        public static final String TYPE = "type";
    }

    static final class Models implements ModelColumns {
        public static final String CONTENT_DIRECTORY = "model";
        public static final String CONTENT_ITEM_TYPE = "vnd.android.cursor.item/vnd.com.upsight.model";
        public static final String CONTENT_TYPE = "vnd.android.cursor.dir/vnd.com.upsight.model";

        Models() {
        }
    }

    public static Uri getAuthoritytUri(Context context) {
        return Uri.parse("content://" + context.getPackageName() + ".upsight");
    }

    static Uri getContentTypeUri(Context context, String str) {
        return Uri.withAppendedPath(getContentUri(context), str);
    }

    static Uri getContentUri(Context context) {
        return Uri.withAppendedPath(getAuthoritytUri(context), Models.CONTENT_DIRECTORY);
    }
}
