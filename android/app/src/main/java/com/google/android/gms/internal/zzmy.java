package com.google.android.gms.internal;

import android.app.ActivityManager;
import android.app.ActivityManager.RunningAppProcessInfo;
import android.content.Context;
import android.os.Binder;
import com.fasterxml.jackson.core.util.MinimalPrettyPrinter;
import java.util.List;

public class zzmy {
    private static String zza(StackTraceElement[] stackTraceElementArr, int i) {
        if (i + 4 >= stackTraceElementArr.length) {
            return "<bottom of call stack>";
        }
        StackTraceElement stackTraceElement = stackTraceElementArr[i + 4];
        return stackTraceElement.getClassName() + "." + stackTraceElement.getMethodName() + UpsightEndpoint.SIGNED_MESSAGE_SEPARATOR + stackTraceElement.getLineNumber();
    }

    public static String zzaq(Context context) {
        return zzj(context, Binder.getCallingPid());
    }

    public static String zzj(Context context, int i) {
        List<RunningAppProcessInfo> runningAppProcesses = ((ActivityManager) context.getSystemService("activity")).getRunningAppProcesses();
        if (runningAppProcesses != null) {
            for (RunningAppProcessInfo runningAppProcessInfo : runningAppProcesses) {
                if (runningAppProcessInfo.pid == i) {
                    return runningAppProcessInfo.processName;
                }
            }
        }
        return null;
    }

    public static String zzl(int i, int i2) {
        StackTraceElement[] stackTrace = Thread.currentThread().getStackTrace();
        StringBuffer stringBuffer = new StringBuffer();
        for (int i3 = i; i3 < i2 + i; i3++) {
            stringBuffer.append(zza(stackTrace, i3)).append(MinimalPrettyPrinter.DEFAULT_ROOT_VALUE_SEPARATOR);
        }
        return stringBuffer.toString();
    }
}
