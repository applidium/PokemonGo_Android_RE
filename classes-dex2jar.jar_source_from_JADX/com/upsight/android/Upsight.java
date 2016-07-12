package com.upsight.android;

import android.content.Context;
import android.os.Build.VERSION;
import android.os.Bundle;
import android.support.v4.view.accessibility.AccessibilityNodeInfoCompat;
import android.text.TextUtils;
import android.util.Log;
import android.util.Pair;
import com.upsight.android.UpsightCoreComponent.Factory;
import java.util.HashMap;
import java.util.Map;
import java.util.Map.Entry;

public final class Upsight {
    private static final String CORE_COMPONENT_FACTORY = "com.upsight.core";
    private static final String EXTENSION_PREFIX = "com.upsight.extension.";
    public static final String LOG_TAG = "Upsight";
    private static final int MIN_ANDROID_API_LEVEL = 14;
    private static UpsightContext sUpsight;

    static UpsightContext create(Context context) {
        if (VERSION.SDK_INT < MIN_ANDROID_API_LEVEL) {
            return new UpsightContextCompat(context);
        }
        UpsightCoreComponent loadCoreComponent = loadCoreComponent(context);
        Map loadExtensions = loadExtensions(context);
        UpsightContext upsightContext = loadCoreComponent.upsightContext();
        upsightContext.onCreate(loadCoreComponent, loadExtensions);
        return upsightContext;
    }

    public static UpsightContext createContext(Context context) {
        synchronized (Upsight.class) {
            try {
            } finally {
                Object obj = Upsight.class;
            }
        }
        if (sUpsight == null) {
            sUpsight = create(context);
        }
        UpsightContext upsightContext = sUpsight;
        return upsightContext;
    }

    private static UpsightCoreComponent loadCoreComponent(Context context) {
        Pair loadMetadataByName = loadMetadataByName(context, CORE_COMPONENT_FACTORY);
        if (loadMetadataByName == null) {
            return null;
        }
        try {
            Class cls = Class.forName((String) loadMetadataByName.second);
            if (Factory.class.isAssignableFrom(cls)) {
                return ((Factory) cls.newInstance()).create(context);
            }
            throw new IllegalStateException(String.format("Class %s must implement %s", new Object[]{cls.getName(), Factory.class.getName()}));
        } catch (Throwable e) {
            throw new IllegalStateException(e.getMessage(), e);
        } catch (Throwable e2) {
            throw new IllegalStateException(e2.getMessage(), e2);
        } catch (Throwable e22) {
            throw new IllegalStateException(e22.getMessage(), e22);
        }
    }

    private static Map<String, UpsightExtension> loadExtensions(Context context) throws IllegalStateException {
        Map<String, UpsightExtension> hashMap = new HashMap();
        for (Entry entry : loadMetadataByPrefix(context, EXTENSION_PREFIX).entrySet()) {
            try {
                Class cls = Class.forName((String) entry.getValue());
                if (UpsightExtension.class.isAssignableFrom(cls)) {
                    hashMap.put(entry.getKey(), (UpsightExtension) cls.newInstance());
                } else {
                    throw new IllegalStateException(String.format("Class %s must implement %s", new Object[]{cls.getName(), UpsightExtension.class.getName()}));
                }
            } catch (Throwable e) {
                throw new IllegalStateException("Unable to load extension: " + ((String) entry.getKey()), e);
            } catch (Throwable e2) {
                throw new IllegalStateException("Unable to load extension: " + ((String) entry.getKey()), e2);
            } catch (Throwable e22) {
                throw new IllegalStateException("Unable to load extension: " + ((String) entry.getKey()), e22);
            }
        }
        return hashMap;
    }

    private static Pair<String, String> loadMetadataByName(Context context, String str) {
        try {
            Bundle bundle = context.getPackageManager().getApplicationInfo(context.getPackageName(), AccessibilityNodeInfoCompat.ACTION_CLEAR_ACCESSIBILITY_FOCUS).metaData;
            if (bundle != null) {
                for (String str2 : bundle.keySet()) {
                    if (!TextUtils.isEmpty(str2) && str2.equals(str)) {
                        CharSequence string = bundle.getString(str2);
                        if (!TextUtils.isEmpty(string)) {
                            return new Pair(str2, string);
                        }
                    }
                }
            }
            return null;
        } catch (Throwable e) {
            Log.e(LOG_TAG, "Unexpected error: Package name missing", e);
            return null;
        }
    }

    private static Map<String, String> loadMetadataByPrefix(Context context, String str) {
        Map<String, String> hashMap = new HashMap();
        try {
            Bundle bundle = context.getPackageManager().getApplicationInfo(context.getPackageName(), AccessibilityNodeInfoCompat.ACTION_CLEAR_ACCESSIBILITY_FOCUS).metaData;
            if (bundle != null) {
                for (String str2 : bundle.keySet()) {
                    if (!TextUtils.isEmpty(str2) && str2.startsWith(str)) {
                        CharSequence string = bundle.getString(str2);
                        if (!TextUtils.isEmpty(string)) {
                            hashMap.put(str2, string);
                        }
                    }
                }
            }
        } catch (Throwable e) {
            Log.e(LOG_TAG, "Unexpected error: Package name missing", e);
        }
        return hashMap;
    }
}
