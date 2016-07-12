package com.upsight.android.internal;

import android.content.Context;
import android.content.pm.PackageManager.NameNotFoundException;
import android.os.Bundle;
import android.support.v4.view.accessibility.AccessibilityNodeInfoCompat;
import android.text.TextUtils;
import com.upsight.android.Upsight;
import com.upsight.android.logger.UpsightLogger;
import dagger.Module;
import dagger.Provides;
import javax.inject.Named;
import javax.inject.Singleton;
import spacemadness.com.lunarconsole.BuildConfig;

@Module
public final class PropertiesModule {
    public static final String KEY_APP_TOKEN = "com.upsight.app_token";
    public static final String KEY_PUBLIC_KEY = "com.upsight.public_key";
    public static final String KEY_SDK_PLUGIN = "com.upsight.sdk_plugin";

    @Singleton
    @Provides
    @Named("com.upsight.app_token")
    String provideApplicationToken(Context context, UpsightLogger upsightLogger) {
        Object obj = null;
        try {
            Bundle bundle = context.getPackageManager().getApplicationInfo(context.getPackageName(), AccessibilityNodeInfoCompat.ACTION_CLEAR_ACCESSIBILITY_FOCUS).metaData;
            if (bundle != null) {
                obj = bundle.getString(KEY_APP_TOKEN);
            }
        } catch (NameNotFoundException e) {
            upsightLogger.m199e(Upsight.LOG_TAG, "Unexpected error: Package name missing", e);
        }
        if (!TextUtils.isEmpty(obj)) {
            return obj;
        }
        throw new IllegalStateException("App token must be set in the Android Manifest with <meta-data android:name=\"com.upsight.app_token\" android:value=\"UPSIGHT_APPLICATION_TOKEN\" />");
    }

    @Singleton
    @Provides
    @Named("com.upsight.public_key")
    String providePublicKey(Context context, UpsightLogger upsightLogger) {
        Object obj = null;
        try {
            Bundle bundle = context.getPackageManager().getApplicationInfo(context.getPackageName(), AccessibilityNodeInfoCompat.ACTION_CLEAR_ACCESSIBILITY_FOCUS).metaData;
            if (bundle != null) {
                obj = bundle.getString(KEY_PUBLIC_KEY);
            }
        } catch (NameNotFoundException e) {
            upsightLogger.m199e(Upsight.LOG_TAG, "Unexpected error: Package name missing", e);
        }
        if (!TextUtils.isEmpty(obj)) {
            return obj;
        }
        throw new IllegalStateException("Public key must be set in the Android Manifest with <meta-data android:name=\"com.upsight.public_key\" android:value=\"UPSIGHT_PUBLIC_KEY\" />");
    }

    @Singleton
    @Provides
    @Named("com.upsight.sdk_plugin")
    String provideSdkPlugin(Context context, UpsightLogger upsightLogger) {
        String str = BuildConfig.FLAVOR;
        try {
            Bundle bundle = context.getPackageManager().getApplicationInfo(context.getPackageName(), AccessibilityNodeInfoCompat.ACTION_CLEAR_ACCESSIBILITY_FOCUS).metaData;
            if (bundle != null) {
                str = bundle.getString(KEY_SDK_PLUGIN, BuildConfig.FLAVOR);
            }
        } catch (NameNotFoundException e) {
            upsightLogger.m199e(Upsight.LOG_TAG, "Unexpected error: Package name missing", e);
        }
        return str;
    }
}
