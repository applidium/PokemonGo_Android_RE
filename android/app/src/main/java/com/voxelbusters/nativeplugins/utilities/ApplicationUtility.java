package com.voxelbusters.nativeplugins.utilities;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager.NameNotFoundException;
import android.os.Environment;
import android.support.v4.view.accessibility.AccessibilityNodeInfoCompat;
import com.google.android.gms.common.GooglePlayServicesUtil;
import com.voxelbusters.nativeplugins.defines.CommonDefines;
import java.io.File;

public class ApplicationUtility {
    static final int PLAY_SERVICES_RESOLUTION_REQUEST = 100000;

    public static Class<?> GetMainLauncherActivity(Context context) {
        try {
            return Class.forName(context.getPackageManager().getLaunchIntentForPackage(context.getPackageName()).getComponent().getClassName());
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
            return null;
        }
    }

    public static Context getApplicationContext(Context context) {
        return context.getApplicationContext();
    }

    public static ApplicationInfo getApplicationInfo(Context context) {
        ApplicationInfo applicationInfo = null;
        try {
            applicationInfo = context.getPackageManager().getApplicationInfo(getPackageName(context), 0);
        } catch (NameNotFoundException e) {
            e.printStackTrace();
            Debug.error(CommonDefines.APPLICATION_UTILITY_TAG, "Package name not found!");
        }
        return applicationInfo;
    }

    public static String getApplicationName(Context context) {
        return context.getPackageManager().getApplicationLabel(getApplicationInfo(context)).toString();
    }

    public static File getExternalTempDirectoryIfExists(Context context, String str) {
        return hasExternalStorageWritable(context) ? getSaveDirectory(context, str, context.getApplicationContext().getExternalCacheDir()) : getLocalSaveDirectory(context, str);
    }

    public static String getFileProviderAuthoityName(Context context) {
        return getPackageName(context) + ".fileprovider";
    }

    public static File getLocalSaveDirectory(Context context, String str) {
        return getSaveDirectory(context, str, context.getApplicationContext().getFilesDir());
    }

    public static String getPackageName(Context context) {
        return context.getPackageName();
    }

    public static int getResourceId(Context context, String str, String str2) {
        return context.getResources().getIdentifier(StringUtility.getFileNameWithoutExtension(str), str2, getPackageName(context));
    }

    static File getSaveDirectory(Context context, String str, File file) {
        if (StringUtility.isNullOrEmpty(str)) {
            str = getApplicationName(context);
        }
        File file2 = new File(file, str);
        file2.mkdirs();
        return file2;
    }

    public static String getString(Context context, int i) {
        return context.getResources().getString(i);
    }

    public static Object getSystemService(Context context, String str) {
        return context.getSystemService(str);
    }

    public static boolean hasExternalStorageWritable(Context context) {
        return Environment.getExternalStorageState().equals("mounted");
    }

    public static boolean hasPermission(Context context, String str) {
        return context.getPackageManager().checkPermission(str, getPackageName(context)) == 0;
    }

    public static boolean isGooglePlayServicesAvailable(Context context) {
        int isGooglePlayServicesAvailable = GooglePlayServicesUtil.isGooglePlayServicesAvailable(context);
        if (isGooglePlayServicesAvailable == 0) {
            return true;
        }
        if (GooglePlayServicesUtil.isUserRecoverableError(isGooglePlayServicesAvailable)) {
            GooglePlayServicesUtil.getErrorDialog(isGooglePlayServicesAvailable, (Activity) context, PLAY_SERVICES_RESOLUTION_REQUEST).show();
        } else {
            Debug.error(CommonDefines.APPLICATION_UTILITY_TAG, "This device does not support Google Play Services.");
        }
        return false;
    }

    public static boolean isIntentAvailable(Context context, Intent intent) {
        return context.getPackageManager().queryIntentActivities(intent, AccessibilityNodeInfoCompat.ACTION_CUT).size() > 0;
    }

    public static boolean isIntentAvailable(Context context, String str, String str2, String str3) {
        Intent intent = new Intent(str);
        intent.setType(str2);
        if (str3 != null) {
            intent.setPackage(str3);
        }
        return isIntentAvailable(context, intent);
    }
}
