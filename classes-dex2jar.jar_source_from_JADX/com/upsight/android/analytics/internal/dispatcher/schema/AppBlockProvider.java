package com.upsight.android.analytics.internal.dispatcher.schema;

import android.content.Context;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager.NameNotFoundException;
import com.upsight.android.UpsightContext;
import com.upsight.android.analytics.provider.UpsightDataProvider;
import com.upsight.android.logger.UpsightLogger;
import java.util.Arrays;
import java.util.HashSet;
import java.util.Set;

public class AppBlockProvider extends UpsightDataProvider {
    public static final String BUNDLEID_KEY = "app.bundleid";
    public static final String TOKEN_KEY = "app.token";
    public static final String VERSION_KEY = "app.version";
    private final UpsightLogger mLogger;

    AppBlockProvider(UpsightContext upsightContext) {
        put(TOKEN_KEY, upsightContext.getApplicationToken());
        this.mLogger = upsightContext.getLogger();
        PackageInfo packageInfo = getPackageInfo(upsightContext);
        if (packageInfo != null) {
            put(VERSION_KEY, packageInfo.versionName);
            put(BUNDLEID_KEY, packageInfo.packageName);
        }
    }

    private PackageInfo getPackageInfo(Context context) {
        PackageInfo packageInfo = null;
        try {
            packageInfo = context.getPackageManager().getPackageInfo(context.getPackageName(), 0);
        } catch (NameNotFoundException e) {
            this.mLogger.m199e("AppBlock", "Could not get package info", e);
        }
        return packageInfo;
    }

    public Set<String> availableKeys() {
        return new HashSet(Arrays.asList(new String[]{TOKEN_KEY, VERSION_KEY, BUNDLEID_KEY}));
    }
}
