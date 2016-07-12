package android.support.v4.app;

import android.app.AppOpsManager;
import android.content.Context;

public class AppOpsManagerCompat23 {
    public static int noteOp(Context context, String str, int i, String str2) {
        return ((AppOpsManager) context.getSystemService(AppOpsManager.class)).noteOp(str, i, str2);
    }

    public static int noteProxyOp(Context context, String str, String str2) {
        return ((AppOpsManager) context.getSystemService(AppOpsManager.class)).noteProxyOp(str, str2);
    }

    public static String permissionToOp(String str) {
        return AppOpsManager.permissionToOp(str);
    }
}
