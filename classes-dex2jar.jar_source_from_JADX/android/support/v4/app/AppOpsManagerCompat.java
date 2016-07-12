package android.support.v4.app;

import android.content.Context;
import android.os.Build.VERSION;
import android.support.annotation.NonNull;

public class AppOpsManagerCompat {
    private static final AppOpsManagerImpl IMPL;
    public static final int MODE_ALLOWED = 0;
    public static final int MODE_DEFAULT = 3;
    public static final int MODE_IGNORED = 1;

    private static class AppOpsManagerImpl {
        private AppOpsManagerImpl() {
        }

        public int noteOp(Context context, String str, int i, String str2) {
            return AppOpsManagerCompat.MODE_IGNORED;
        }

        public int noteProxyOp(Context context, String str, String str2) {
            return AppOpsManagerCompat.MODE_IGNORED;
        }

        public String permissionToOp(String str) {
            return null;
        }
    }

    private static class AppOpsManager23 extends AppOpsManagerImpl {
        private AppOpsManager23() {
            super();
        }

        public int noteOp(Context context, String str, int i, String str2) {
            return AppOpsManagerCompat23.noteOp(context, str, i, str2);
        }

        public int noteProxyOp(Context context, String str, String str2) {
            return AppOpsManagerCompat23.noteProxyOp(context, str, str2);
        }

        public String permissionToOp(String str) {
            return AppOpsManagerCompat23.permissionToOp(str);
        }
    }

    static {
        if (VERSION.SDK_INT >= 23) {
            IMPL = new AppOpsManager23();
        } else {
            IMPL = new AppOpsManagerImpl();
        }
    }

    public static int noteOp(@NonNull Context context, @NonNull String str, int i, @NonNull String str2) {
        return IMPL.noteOp(context, str, i, str2);
    }

    public static int noteProxyOp(@NonNull Context context, @NonNull String str, @NonNull String str2) {
        return IMPL.noteProxyOp(context, str, str2);
    }

    public static String permissionToOp(@NonNull String str) {
        return IMPL.permissionToOp(str);
    }
}
