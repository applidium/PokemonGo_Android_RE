package com.upsight.android.unity;

import android.app.Activity;
import android.content.Context;
import android.util.Log;
import android.widget.Toast;
import java.lang.reflect.Field;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import org.apache.commons.io.IOUtils;
import spacemadness.com.lunarconsole.BuildConfig;

public abstract class AbstractUpsightPlugin {
    protected static final String MANAGER_NAME = "UpsightManager";
    protected static final String TAG = "Upsight";
    private Field mUnityPlayerActivityField;
    private Class<?> mUnityPlayerClass;
    private Method mUnitySendMessageMethod;

    /* renamed from: com.upsight.android.unity.AbstractUpsightPlugin.1 */
    class C09821 implements Runnable {
        final /* synthetic */ String val$method;
        final /* synthetic */ String val$nonNullParameter;

        C09821(String str, String str2) {
            this.val$method = str;
            this.val$nonNullParameter = str2;
        }

        public void run() {
            Context activity = AbstractUpsightPlugin.this.getActivity();
            if (activity != null) {
                Toast.makeText(activity, "UnitySendMessage:\n" + this.val$method + IOUtils.LINE_SEPARATOR_UNIX + this.val$nonNullParameter, 1).show();
            }
        }
    }

    /* renamed from: com.upsight.android.unity.AbstractUpsightPlugin.2 */
    class C09832 implements Runnable {
        final /* synthetic */ Runnable val$r;

        C09832(Runnable runnable) {
            this.val$r = runnable;
        }

        public void run() {
            try {
                this.val$r.run();
            } catch (Exception e) {
                Log.e(AbstractUpsightPlugin.TAG, "Exception running command on UI thread: " + e.getMessage());
            }
        }
    }

    public AbstractUpsightPlugin() {
        try {
            this.mUnityPlayerClass = Class.forName("com.unity3d.player.UnityPlayer");
            this.mUnityPlayerActivityField = this.mUnityPlayerClass.getField("currentActivity");
            this.mUnitySendMessageMethod = this.mUnityPlayerClass.getMethod("UnitySendMessage", new Class[]{String.class, String.class, String.class});
        } catch (ClassNotFoundException e) {
            Log.i(TAG, "could not find UnityPlayer class: " + e.getMessage());
        } catch (NoSuchFieldException e2) {
            Log.i(TAG, "could not find currentActivity field: " + e2.getMessage());
        } catch (Exception e3) {
            Log.i(TAG, "unkown exception occurred locating getActivity(): " + e3.getMessage());
        }
    }

    public void UnitySendMessage(String str, String str2) {
        if (str2 == null) {
            str2 = BuildConfig.FLAVOR;
        }
        if (this.mUnitySendMessageMethod != null) {
            try {
                this.mUnitySendMessageMethod.invoke(null, new Object[]{MANAGER_NAME, str, str2});
                return;
            } catch (IllegalArgumentException e) {
                Log.i(TAG, "could not find UnitySendMessage method: " + e.getMessage());
                return;
            } catch (IllegalAccessException e2) {
                Log.i(TAG, "could not find UnitySendMessage method: " + e2.getMessage());
                return;
            } catch (InvocationTargetException e3) {
                Log.i(TAG, "could not find UnitySendMessage method: " + e3.getMessage());
                return;
            }
        }
        Log.i(TAG, "UnitySendMessage: UpsightManager, " + str + ", " + str2);
        runSafelyOnUiThread(new C09821(str, str2));
    }

    protected Activity getActivity() {
        if (this.mUnityPlayerActivityField != null) {
            try {
                Activity activity = (Activity) this.mUnityPlayerActivityField.get(this.mUnityPlayerClass);
                if (activity != null) {
                    return activity;
                }
                Log.e(TAG, "Something has gone terribly wrong. The Unity Activity does not exist. This could be due to a low memory situation");
                return activity;
            } catch (Exception e) {
                Log.i(TAG, "error getting currentActivity: " + e.getMessage());
            }
        }
        return null;
    }

    protected void runSafelyOnUiThread(Runnable runnable) {
        Activity activity = getActivity();
        if (activity != null) {
            activity.runOnUiThread(new C09832(runnable));
        }
    }
}
