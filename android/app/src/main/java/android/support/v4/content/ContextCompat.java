package android.support.v4.content;

import android.content.Context;
import android.content.Intent;
import android.content.res.ColorStateList;
import android.graphics.drawable.Drawable;
import android.os.Build.VERSION;
import android.os.Bundle;
import android.os.Environment;
import android.os.Process;
import android.support.annotation.NonNull;
import android.util.Log;
import java.io.File;

public class ContextCompat {
    private static final String DIR_ANDROID = "Android";
    private static final String DIR_CACHE = "cache";
    private static final String DIR_DATA = "data";
    private static final String DIR_FILES = "files";
    private static final String DIR_OBB = "obb";
    private static final String TAG = "ContextCompat";

    private static File buildPath(File file, String... strArr) {
        int length = strArr.length;
        int i = 0;
        File file2 = file;
        while (i < length) {
            String str = strArr[i];
            File file3 = file2 == null ? new File(str) : str != null ? new File(file2, str) : file2;
            i++;
            file2 = file3;
        }
        return file2;
    }

    public static int checkSelfPermission(@NonNull Context context, @NonNull String str) {
        if (str != null) {
            return context.checkPermission(str, Process.myPid(), Process.myUid());
        }
        throw new IllegalArgumentException("permission is null");
    }

    private static File createFilesDir(File file) {
        synchronized (ContextCompat.class) {
            try {
                if (!(file.exists() || file.mkdirs() || file.exists())) {
                    Log.w(TAG, "Unable to create files subdir " + file.getPath());
                    file = null;
                }
            } catch (Throwable th) {
                Class cls = ContextCompat.class;
            }
        }
        return file;
    }

    public static final int getColor(Context context, int i) {
        return VERSION.SDK_INT >= 23 ? ContextCompatApi23.getColor(context, i) : context.getResources().getColor(i);
    }

    public static final ColorStateList getColorStateList(Context context, int i) {
        return VERSION.SDK_INT >= 23 ? ContextCompatApi23.getColorStateList(context, i) : context.getResources().getColorStateList(i);
    }

    public static final Drawable getDrawable(Context context, int i) {
        return VERSION.SDK_INT >= 21 ? ContextCompatApi21.getDrawable(context, i) : context.getResources().getDrawable(i);
    }

    public static File[] getExternalCacheDirs(Context context) {
        int i = VERSION.SDK_INT;
        if (i >= 19) {
            return ContextCompatKitKat.getExternalCacheDirs(context);
        }
        File externalCacheDir;
        if (i >= 8) {
            externalCacheDir = ContextCompatFroyo.getExternalCacheDir(context);
        } else {
            externalCacheDir = buildPath(Environment.getExternalStorageDirectory(), DIR_ANDROID, DIR_DATA, context.getPackageName(), DIR_CACHE);
        }
        return new File[]{externalCacheDir};
    }

    public static File[] getExternalFilesDirs(Context context, String str) {
        int i = VERSION.SDK_INT;
        if (i >= 19) {
            return ContextCompatKitKat.getExternalFilesDirs(context, str);
        }
        File externalFilesDir;
        if (i >= 8) {
            externalFilesDir = ContextCompatFroyo.getExternalFilesDir(context, str);
        } else {
            externalFilesDir = buildPath(Environment.getExternalStorageDirectory(), DIR_ANDROID, DIR_DATA, context.getPackageName(), DIR_FILES, str);
        }
        return new File[]{externalFilesDir};
    }

    public static File[] getObbDirs(Context context) {
        int i = VERSION.SDK_INT;
        if (i >= 19) {
            return ContextCompatKitKat.getObbDirs(context);
        }
        File obbDir;
        if (i >= 11) {
            obbDir = ContextCompatHoneycomb.getObbDir(context);
        } else {
            obbDir = buildPath(Environment.getExternalStorageDirectory(), DIR_ANDROID, DIR_OBB, context.getPackageName());
        }
        return new File[]{obbDir};
    }

    public static boolean startActivities(Context context, Intent[] intentArr) {
        return startActivities(context, intentArr, null);
    }

    public static boolean startActivities(Context context, Intent[] intentArr, Bundle bundle) {
        int i = VERSION.SDK_INT;
        if (i >= 16) {
            ContextCompatJellybean.startActivities(context, intentArr, bundle);
            return true;
        } else if (i < 11) {
            return false;
        } else {
            ContextCompatHoneycomb.startActivities(context, intentArr);
            return true;
        }
    }

    public final File getCodeCacheDir(Context context) {
        return VERSION.SDK_INT >= 21 ? ContextCompatApi21.getCodeCacheDir(context) : createFilesDir(new File(context.getApplicationInfo().dataDir, "code_cache"));
    }

    public final File getNoBackupFilesDir(Context context) {
        return VERSION.SDK_INT >= 21 ? ContextCompatApi21.getNoBackupFilesDir(context) : createFilesDir(new File(context.getApplicationInfo().dataDir, "no_backup"));
    }
}
