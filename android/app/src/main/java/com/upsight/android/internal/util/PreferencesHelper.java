package com.upsight.android.internal.util;

import android.content.Context;
import android.content.SharedPreferences.Editor;
import android.content.SharedPreferences.OnSharedPreferenceChangeListener;

public final class PreferencesHelper {
    public static final String INSTALL_TIMESTAMP_NAME = "install_ts";
    private static final String SHARED_PREFERENCES_NAME = "upsight";

    public static void clear(Context context, String str) {
        Editor edit = context.getSharedPreferences(SHARED_PREFERENCES_NAME, 0).edit();
        edit.remove(str);
        edit.apply();
    }

    public static boolean contains(Context context, String str) {
        return context.getSharedPreferences(SHARED_PREFERENCES_NAME, 0).contains(str);
    }

    public static boolean getBoolean(Context context, String str, boolean z) {
        return context.getSharedPreferences(SHARED_PREFERENCES_NAME, 0).getBoolean(str, z);
    }

    public static float getFloat(Context context, String str, float f) {
        return context.getSharedPreferences(SHARED_PREFERENCES_NAME, 0).getFloat(str, f);
    }

    public static int getInt(Context context, String str, int i) {
        return context.getSharedPreferences(SHARED_PREFERENCES_NAME, 0).getInt(str, i);
    }

    public static long getLong(Context context, String str, long j) {
        return context.getSharedPreferences(SHARED_PREFERENCES_NAME, 0).getLong(str, j);
    }

    public static String getString(Context context, String str, String str2) {
        return context.getSharedPreferences(SHARED_PREFERENCES_NAME, 0).getString(str, str2);
    }

    public static void putBoolean(Context context, String str, boolean z) {
        Editor edit = context.getSharedPreferences(SHARED_PREFERENCES_NAME, 0).edit();
        edit.putBoolean(str, z);
        edit.apply();
    }

    public static void putFloat(Context context, String str, float f) {
        Editor edit = context.getSharedPreferences(SHARED_PREFERENCES_NAME, 0).edit();
        edit.putFloat(str, f);
        edit.apply();
    }

    public static void putInt(Context context, String str, int i) {
        Editor edit = context.getSharedPreferences(SHARED_PREFERENCES_NAME, 0).edit();
        edit.putInt(str, i);
        edit.apply();
    }

    public static void putLong(Context context, String str, long j) {
        Editor edit = context.getSharedPreferences(SHARED_PREFERENCES_NAME, 0).edit();
        edit.putLong(str, j);
        edit.apply();
    }

    public static void putString(Context context, String str, String str2) {
        Editor edit = context.getSharedPreferences(SHARED_PREFERENCES_NAME, 0).edit();
        edit.putString(str, str2);
        edit.apply();
    }

    public static void registerListener(Context context, OnSharedPreferenceChangeListener onSharedPreferenceChangeListener) {
        context.getSharedPreferences(SHARED_PREFERENCES_NAME, 0).registerOnSharedPreferenceChangeListener(onSharedPreferenceChangeListener);
    }

    public static void unregisterListener(Context context, OnSharedPreferenceChangeListener onSharedPreferenceChangeListener) {
        context.getSharedPreferences(SHARED_PREFERENCES_NAME, 0).unregisterOnSharedPreferenceChangeListener(onSharedPreferenceChangeListener);
    }
}
