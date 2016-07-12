package com.upsight.android.analytics.internal.dispatcher.schema;

import android.content.Context;
import android.provider.Settings.Secure;
import android.provider.Settings.System;
import android.text.TextUtils;
import com.upsight.android.analytics.provider.UpsightDataProvider;
import java.util.Arrays;
import java.util.HashSet;
import java.util.Set;

public class AndroidIDBlockProvider extends UpsightDataProvider {
    public static final String ANDROID_ID_KEY = "ids.android_id";
    private static final String ANDROID_ID_NON_UNIQUE = "9774d56d682e549c";

    AndroidIDBlockProvider(Context context) {
        put(ANDROID_ID_KEY, getAndroidID(context));
    }

    private String getAndroidID(Context context) {
        String str = ANDROID_ID_NON_UNIQUE;
        Object string = Secure.getString(context.getContentResolver(), "android_id");
        if (!TextUtils.isEmpty(string) && !ANDROID_ID_NON_UNIQUE.equals(string)) {
            return string;
        }
        string = System.getString(context.getContentResolver(), "android_id");
        return TextUtils.isEmpty(string) ? str : string;
    }

    public Set<String> availableKeys() {
        return new HashSet(Arrays.asList(new String[]{ANDROID_ID_KEY}));
    }
}
