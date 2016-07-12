package com.google.vr.platform.unity;

import android.app.Activity;
import android.content.Context;
import android.os.SystemClock;
import android.support.v4.view.InputDeviceCompat;
import android.util.DisplayMetrics;
import android.view.Display;
import android.view.InputEvent;
import android.view.KeyEvent;
import android.view.MotionEvent;
import com.google.unity.GoogleUnityActivity;
import com.google.unity.GoogleUnityActivity.AndroidInputListener;
import com.google.vr.cardboard.NFCUtils;
import com.google.vr.cardboard.UiLayer;
import com.google.vr.cardboard.UiUtils;
import com.unity3d.player.UnityPlayer;

public class UnityVrActivityListener implements AndroidInputListener {
    private static final long NO_DOWNTIME = -1;
    private static final String TAG;
    private static final long TAP_TIME_MS = 50;
    private boolean alignmentMarkerEnabled;
    private final NFCUtils nfcUtils;
    private boolean settingsButtonEnabled;
    private boolean showVrBackButtonOnlyInVR;
    private boolean tapInProgress;
    private boolean tapIsTrigger;
    private int touchX;
    private int touchY;
    private UiLayer uiLayer;
    private final GoogleUnityActivity unityActivity;
    private boolean vrBackButtonEnabled;
    private Runnable vrBackButtonListener;
    private boolean vrModeEnabled;

    /* renamed from: com.google.vr.platform.unity.UnityVrActivityListener.1 */
    class C07471 implements Runnable {
        C07471() {
        }

        public void run() {
            UnityVrActivityListener.vrBackButtonPressed();
        }
    }

    /* renamed from: com.google.vr.platform.unity.UnityVrActivityListener.2 */
    class C07482 implements Runnable {
        final /* synthetic */ long val$time;
        final /* synthetic */ int val$x;
        final /* synthetic */ int val$y;

        C07482(int i, int i2, long j) {
            this.val$x = i;
            this.val$y = i2;
            this.val$time = j;
        }

        public void run() {
            UnityVrActivityListener.this.injectTouchUp(this.val$x, this.val$y, this.val$time);
            UnityVrActivityListener.this.tapInProgress = false;
            if (!UnityVrActivityListener.this.tapIsTrigger) {
                return;
            }
            if (this.val$x != UnityVrActivityListener.this.touchX || this.val$y != UnityVrActivityListener.this.touchY) {
                UnityVrActivityListener.this.injectMouseMove(UnityVrActivityListener.this.touchX, UnityVrActivityListener.this.touchY);
            }
        }
    }

    /* renamed from: com.google.vr.platform.unity.UnityVrActivityListener.3 */
    class C07493 implements Runnable {
        final /* synthetic */ int val$keyCode;

        C07493(int i) {
            this.val$keyCode = i;
        }

        public void run() {
            UnityVrActivityListener.this.injectKeyUp(this.val$keyCode);
        }
    }

    static {
        System.loadLibrary("vrunity");
        TAG = UnityVrActivityListener.class.getSimpleName();
    }

    public UnityVrActivityListener() {
        this.nfcUtils = new NFCUtils();
        this.showVrBackButtonOnlyInVR = true;
        this.vrModeEnabled = true;
        this.settingsButtonEnabled = true;
        this.alignmentMarkerEnabled = true;
        this.vrBackButtonEnabled = true;
        this.tapIsTrigger = false;
        this.tapInProgress = false;
        this.touchX = 0;
        this.touchY = 0;
        this.vrBackButtonListener = new C07471();
        this.unityActivity = (GoogleUnityActivity) UnityPlayer.currentActivity;
        this.unityActivity.attachInputListener(this);
        this.nfcUtils.onCreate(this.unityActivity);
        this.uiLayer = new UiLayer(this.unityActivity);
        this.uiLayer.attachUiLayer(null);
        this.uiLayer.setEnabled(true);
        setVRModeEnabled(this.vrModeEnabled);
        onPause(false);
    }

    public static float[] getDisplayMetrics() {
        Display defaultDisplay = UnityPlayer.currentActivity.getWindowManager().getDefaultDisplay();
        DisplayMetrics displayMetrics = new DisplayMetrics();
        try {
            defaultDisplay.getRealMetrics(displayMetrics);
        } catch (NoSuchMethodError e) {
            defaultDisplay.getMetrics(displayMetrics);
        }
        return new float[]{(float) displayMetrics.widthPixels, (float) displayMetrics.heightPixels, displayMetrics.xdpi, displayMetrics.ydpi};
    }

    private long injectMotionEventInternal(int i, int i2, int i3, int i4, long j) {
        long uptimeMillis = SystemClock.uptimeMillis();
        InputEvent obtain = MotionEvent.obtain(j == NO_DOWNTIME ? uptimeMillis : j, uptimeMillis, i, (float) i2, (float) i3, 0);
        obtain.setSource(i4);
        this.unityActivity.injectUnityEvent(obtain);
        obtain.recycle();
        return uptimeMillis;
    }

    private static native void setApplicationState(ClassLoader classLoader, Context context);

    public static void setUnityApplicationState() {
        Activity activity = UnityPlayer.currentActivity;
        setApplicationState(activity.getClass().getClassLoader(), activity.getApplicationContext());
    }

    private static native void vrBackButtonPressed();

    public void injectKeyDown(int i) {
        this.unityActivity.injectUnityEvent(new KeyEvent(0, i));
    }

    public void injectKeyPress(int i) {
        injectKeyDown(i);
        this.unityActivity.getUnityPlayer().postDelayed(new C07493(i), TAP_TIME_MS);
    }

    public void injectKeyUp(int i) {
        this.unityActivity.injectUnityEvent(new KeyEvent(1, i));
    }

    public void injectMouseMove(int i, int i2) {
        injectMotionEventInternal(7, i, i2, InputDeviceCompat.SOURCE_MOUSE, NO_DOWNTIME);
    }

    public void injectSingleTap() {
        if (!this.tapInProgress) {
            this.tapInProgress = true;
            int i = this.touchX;
            int i2 = this.touchY;
            this.unityActivity.getUnityPlayer().postDelayed(new C07482(i, i2, injectTouchDown(i, i2)), TAP_TIME_MS);
        }
    }

    public long injectTouchDown(int i, int i2) {
        return injectMotionEventInternal(0, i, i2, InputDeviceCompat.SOURCE_TOUCHSCREEN, NO_DOWNTIME);
    }

    public void injectTouchUp(int i, int i2, long j) {
        injectMotionEventInternal(1, i, i2, InputDeviceCompat.SOURCE_TOUCHSCREEN, j);
    }

    public void launchConfigureActivity() {
        UiUtils.launchOrInstallCardboard(this.unityActivity, false);
    }

    public boolean onGenericMotionEvent(MotionEvent motionEvent) {
        return false;
    }

    public boolean onKeyDown(int i, KeyEvent keyEvent) {
        return (i == 24 || i == 25) && this.vrModeEnabled;
    }

    public boolean onKeyUp(int i, KeyEvent keyEvent) {
        return (i == 24 || i == 25) && this.vrModeEnabled;
    }

    public void onPause(boolean z) {
        if (z) {
            this.nfcUtils.onPause(this.unityActivity);
        } else {
            this.nfcUtils.onResume(this.unityActivity);
        }
    }

    public void onSystemUiVisibilityChange(int i) {
        if (this.tapIsTrigger && this.vrModeEnabled) {
            injectSingleTap();
        }
    }

    public boolean onTouchEvent(MotionEvent motionEvent) {
        if (!this.tapIsTrigger || !this.vrModeEnabled) {
            return false;
        }
        if (motionEvent.getAction() == 0) {
            injectSingleTap();
        }
        return true;
    }

    public void setAlignmentMarkerEnabled(boolean z) {
        this.alignmentMarkerEnabled = z;
        UiLayer uiLayer = this.uiLayer;
        boolean z2 = this.alignmentMarkerEnabled && this.vrModeEnabled;
        uiLayer.setAlignmentMarkerEnabled(z2);
    }

    public void setSettingsButtonEnabled(boolean z) {
        this.settingsButtonEnabled = z;
        UiLayer uiLayer = this.uiLayer;
        boolean z2 = this.settingsButtonEnabled && this.vrModeEnabled;
        uiLayer.setSettingsButtonEnabled(z2);
    }

    public void setShowVrBackButtonOnlyInVR(boolean z) {
        this.showVrBackButtonOnlyInVR = z;
        setVRBackButtonEnabled(this.vrBackButtonEnabled);
    }

    public void setTapIsTrigger(boolean z) {
        this.tapIsTrigger = z;
    }

    public void setTouchCoordinates(int i, int i2) {
        this.touchX = i;
        this.touchY = i2;
        if (this.tapIsTrigger && !this.tapInProgress) {
            injectMouseMove(i, i2);
        }
    }

    public void setVRBackButtonEnabled(boolean z) {
        this.vrBackButtonEnabled = z;
        Runnable runnable = null;
        if (this.vrBackButtonEnabled && (this.vrModeEnabled || !this.showVrBackButtonOnlyInVR)) {
            runnable = this.vrBackButtonListener;
        }
        this.uiLayer.setBackButtonListener(runnable);
    }

    public void setVRModeEnabled(boolean z) {
        this.vrModeEnabled = z;
        setSettingsButtonEnabled(this.settingsButtonEnabled);
        setAlignmentMarkerEnabled(this.alignmentMarkerEnabled);
        setVRBackButtonEnabled(this.vrBackButtonEnabled);
    }
}
