package com.voxelbusters.nativeplugins.utilities;

import android.util.Log;
import android.widget.Toast;
import com.voxelbusters.nativeplugins.NativePluginHelper;

public class Debug {
    public static boolean ENABLED;

    /* renamed from: com.voxelbusters.nativeplugins.utilities.Debug.1 */
    class C10011 implements Runnable {
        private final /* synthetic */ String val$msg;

        C10011(String str) {
            this.val$msg = str;
        }

        public void run() {
            Toast.makeText(NativePluginHelper.getCurrentContext(), this.val$msg, 1).show();
        }
    }

    static {
        ENABLED = false;
    }

    public static void error(String str, String str2) {
        if (ENABLED) {
            Log.e(str, str2);
            toast("[" + str + "]" + str2);
        }
    }

    public static void log(String str, String str2) {
        log(str, str2, false);
    }

    public static void log(String str, String str2, boolean z) {
        if (ENABLED) {
            Log.d(str, str2);
        }
    }

    static void toast(String str) {
        NativePluginHelper.executeOnUIThread(new C10011(str));
    }

    public static void warning(String str, String str2) {
        if (ENABLED) {
            Log.w(str, str2);
        }
    }
}
