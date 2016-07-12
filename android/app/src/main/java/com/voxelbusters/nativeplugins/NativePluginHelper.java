package com.voxelbusters.nativeplugins;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import com.fasterxml.jackson.core.util.MinimalPrettyPrinter;
import com.google.gson.Gson;
import com.unity3d.player.UnityPlayer;
import com.voxelbusters.nativeplugins.defines.UnityDefines;
import com.voxelbusters.nativeplugins.utilities.Debug;
import com.voxelbusters.nativeplugins.utilities.StringUtility;
import java.util.ArrayList;
import java.util.HashMap;
import spacemadness.com.lunarconsole.BuildConfig;

public class NativePluginHelper {

    /* renamed from: com.voxelbusters.nativeplugins.NativePluginHelper.1 */
    class C09901 implements Runnable {
        private final /* synthetic */ Intent val$intent;

        C09901(Intent intent) {
            this.val$intent = intent;
        }

        public void run() {
            NativePluginHelper.getCurrentContext().startActivity(this.val$intent);
        }
    }

    public static void executeOnUIThread(Runnable runnable) {
        Activity activity = (Activity) getCurrentContext();
        if (activity != null) {
            activity.runOnUiThread(runnable);
        }
    }

    public static Activity getCurrentActivity() {
        return (Activity) getCurrentContext();
    }

    public static Context getCurrentContext() {
        return UnityPlayer.currentActivity;
    }

    public static boolean isApplicationRunning() {
        return getCurrentContext() != null;
    }

    public static void sendMessage(String str) {
        sendMessage(str, BuildConfig.FLAVOR);
    }

    public static void sendMessage(String str, String str2) {
        if (!StringUtility.isNullOrEmpty(str)) {
            Debug.log("UnitySendMessage", "Method Name : " + str + MinimalPrettyPrinter.DEFAULT_ROOT_VALUE_SEPARATOR + "Message : " + str2);
            if (getCurrentContext() != null) {
                UnityPlayer.UnitySendMessage(UnityDefines.NATIVE_BINDING_EVENT_LISTENER, str, str2);
            }
        }
    }

    public static void sendMessage(String str, ArrayList arrayList) {
        String str2 = BuildConfig.FLAVOR;
        if (arrayList != null) {
            str2 = new Gson().toJson((Object) arrayList);
        }
        sendMessage(str, str2);
    }

    public static void sendMessage(String str, HashMap hashMap) {
        String str2 = BuildConfig.FLAVOR;
        if (hashMap != null) {
            str2 = new Gson().toJson((Object) hashMap);
        }
        sendMessage(str, str2);
    }

    public static void startActivityOnUiThread(Intent intent) {
        executeOnUIThread(new C09901(intent));
    }
}
