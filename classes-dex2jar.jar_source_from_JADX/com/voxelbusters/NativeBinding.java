package com.voxelbusters;

import android.util.Log;
import com.voxelbusters.nativeplugins.base.interfaces.IAppLifeCycleListener;
import com.voxelbusters.nativeplugins.utilities.Debug;
import com.voxelbusters.nativeplugins.utilities.StringUtility;
import java.util.ArrayList;
import java.util.Iterator;
import org.apache.commons.io.IOUtils;

public class NativeBinding {
    public static ArrayList<IAppLifeCycleListener> appLifeCycleListeners;
    public static boolean isAppForeground;

    static {
        appLifeCycleListeners = new ArrayList();
        isAppForeground = true;
    }

    public static void addAppLifeCycleListener(IAppLifeCycleListener iAppLifeCycleListener) {
        if (!appLifeCycleListeners.contains(iAppLifeCycleListener)) {
            appLifeCycleListeners.add(iAppLifeCycleListener);
        }
    }

    public static void enableDebug(boolean z) {
        Debug.ENABLED = z;
    }

    public static boolean isApplicationForeground() {
        return isAppForeground;
    }

    public static void logMessage(String str, String str2, String str3) {
        String str4 = StringUtility.getBase64DecodedString(str) + IOUtils.LINE_SEPARATOR_UNIX + StringUtility.getBase64DecodedString(str3);
        if (str2.equals("ERROR")) {
            Log.e("Unity", str4);
        } else if (str2.equals("WARNING")) {
            Log.w("Unity", str4);
        } else if (str2.equals("INFO")) {
            Log.i("Unity", str4);
        } else {
            Log.d("Unity", str4);
        }
    }

    public static void onApplicationPause() {
        isAppForeground = false;
        Iterator it = appLifeCycleListeners.iterator();
        while (it.hasNext()) {
            ((IAppLifeCycleListener) it.next()).onApplicationPause();
        }
    }

    public static void onApplicationQuit() {
        isAppForeground = false;
        Iterator it = appLifeCycleListeners.iterator();
        while (it.hasNext()) {
            ((IAppLifeCycleListener) it.next()).onApplicationQuit();
        }
    }

    public static void onApplicationResume() {
        isAppForeground = true;
        Iterator it = appLifeCycleListeners.iterator();
        while (it.hasNext()) {
            ((IAppLifeCycleListener) it.next()).onApplicationResume();
        }
    }

    public static void removeAppLifeCycleListener(IAppLifeCycleListener iAppLifeCycleListener) {
        appLifeCycleListeners.remove(iAppLifeCycleListener);
    }
}
