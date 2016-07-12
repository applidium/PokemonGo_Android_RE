package com.google.unity;

import android.annotation.TargetApi;
import android.app.Activity;
import android.content.Intent;
import android.content.pm.PackageManager.NameNotFoundException;
import android.content.res.Configuration;
import android.os.Build.VERSION;
import android.os.Bundle;
import android.os.Handler;
import android.support.v4.view.accessibility.AccessibilityNodeInfoCompat;
import android.util.Log;
import android.view.InputEvent;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import android.view.View.OnGenericMotionListener;
import android.view.View.OnKeyListener;
import android.view.View.OnSystemUiVisibilityChangeListener;
import android.view.View.OnTouchListener;
import android.widget.PopupWindow;
import com.google.android.gms.location.places.Place;
import com.unity3d.player.UnityPlayer;
import spacemadness.com.lunarconsole.C1401R;

public class GoogleUnityActivity extends Activity {
    private static final int NAVIGATION_BAR_TIMEOUT_MS = 2000;
    static final String TAG;
    protected AndroidInputListener mAndroidInputListener;
    protected AndroidLifecycleListener mAndroidLifecycleListener;
    private View mAndroidView;
    private PopupWindow mPopupWindow;
    protected UnityPlayer mUnityPlayer;
    private boolean shouldUseImmersiveMode;

    /* renamed from: com.google.unity.GoogleUnityActivity.1 */
    class C07311 implements OnTouchListener {
        C07311() {
        }

        public boolean onTouch(View view, MotionEvent motionEvent) {
            return GoogleUnityActivity.this.onTouchEvent(motionEvent);
        }
    }

    /* renamed from: com.google.unity.GoogleUnityActivity.2 */
    class C07322 implements OnGenericMotionListener {
        C07322() {
        }

        public boolean onGenericMotion(View view, MotionEvent motionEvent) {
            return GoogleUnityActivity.this.onGenericMotionEvent(motionEvent);
        }
    }

    /* renamed from: com.google.unity.GoogleUnityActivity.3 */
    class C07333 implements OnKeyListener {
        C07333() {
        }

        public boolean onKey(View view, int i, KeyEvent keyEvent) {
            switch (keyEvent.getAction()) {
                case C1401R.styleable.AdsAttrs_adSize /*0*/:
                    return GoogleUnityActivity.this.onKeyDown(i, keyEvent);
                case C1401R.styleable.LoadingImageView_imageAspectRatio /*1*/:
                    return GoogleUnityActivity.this.onKeyUp(i, keyEvent);
                default:
                    return GoogleUnityActivity.this.injectUnityEvent(keyEvent);
            }
        }
    }

    /* renamed from: com.google.unity.GoogleUnityActivity.4 */
    class C07344 implements Runnable {
        final /* synthetic */ int val$layoutResId;
        final /* synthetic */ Activity val$self;

        C07344(Activity activity, int i) {
            this.val$self = activity;
            this.val$layoutResId = i;
        }

        public void run() {
            if (GoogleUnityActivity.this.mPopupWindow != null) {
                GoogleUnityActivity.this.mPopupWindow.dismiss();
                GoogleUnityActivity.this.mPopupWindow = null;
            }
            GoogleUnityActivity.this.mPopupWindow = new PopupWindow(this.val$self);
            GoogleUnityActivity.this.mPopupWindow.setWindowLayoutMode(-1, -1);
            GoogleUnityActivity.this.mPopupWindow.setClippingEnabled(false);
            GoogleUnityActivity.this.mPopupWindow.setBackgroundDrawable(null);
            GoogleUnityActivity.this.mAndroidView = LayoutInflater.from(this.val$self).inflate(this.val$layoutResId, null);
            GoogleUnityActivity.this.mPopupWindow.setContentView(GoogleUnityActivity.this.mAndroidView);
            GoogleUnityActivity.this.mPopupWindow.setTouchable(false);
            GoogleUnityActivity.this.mPopupWindow.showAtLocation(this.val$self.getWindow().getDecorView(), 80, 0, 0);
        }
    }

    /* renamed from: com.google.unity.GoogleUnityActivity.5 */
    class C07365 implements OnSystemUiVisibilityChangeListener {
        final /* synthetic */ Handler val$handler;

        /* renamed from: com.google.unity.GoogleUnityActivity.5.1 */
        class C07351 implements Runnable {
            C07351() {
            }

            public void run() {
                GoogleUnityActivity.this.setImmersiveMode();
            }
        }

        C07365(Handler handler) {
            this.val$handler = handler;
        }

        public void onSystemUiVisibilityChange(int i) {
            if ((i & 2) == 0) {
                this.val$handler.postDelayed(new C07351(), 2000);
            }
            if (GoogleUnityActivity.this.mAndroidInputListener != null) {
                GoogleUnityActivity.this.mAndroidInputListener.onSystemUiVisibilityChange(i);
            }
        }
    }

    public interface AndroidInputListener {
        boolean onGenericMotionEvent(MotionEvent motionEvent);

        boolean onKeyDown(int i, KeyEvent keyEvent);

        boolean onKeyUp(int i, KeyEvent keyEvent);

        void onSystemUiVisibilityChange(int i);

        boolean onTouchEvent(MotionEvent motionEvent);
    }

    public interface AndroidLifecycleListener {
        void onActivityResult(int i, int i2, Intent intent);

        void onPause();

        void onResume();
    }

    static {
        TAG = GoogleUnityActivity.class.getSimpleName();
    }

    @TargetApi(19)
    private void setImmersiveMode() {
        getWindow().getDecorView().setSystemUiVisibility(5894);
    }

    private void startImmersiveMode() {
        getWindow().getDecorView().setOnSystemUiVisibilityChangeListener(new C07365(new Handler()));
    }

    public void attachInputListener(AndroidInputListener androidInputListener) {
        this.mAndroidInputListener = androidInputListener;
    }

    public void attachLifecycleListener(AndroidLifecycleListener androidLifecycleListener) {
        this.mAndroidLifecycleListener = androidLifecycleListener;
    }

    public boolean dispatchKeyEvent(KeyEvent keyEvent) {
        return keyEvent.getAction() == 2 ? injectUnityEvent(keyEvent) : super.dispatchKeyEvent(keyEvent);
    }

    public View getAndroidViewLayer() {
        return this.mAndroidView;
    }

    public UnityPlayer getUnityPlayer() {
        return this.mUnityPlayer;
    }

    public boolean injectUnityEvent(InputEvent inputEvent) {
        return this.mUnityPlayer.injectEvent(inputEvent);
    }

    public void launchIntent(String str, String str2, String[] strArr, int i) {
        Intent intent = new Intent();
        intent.setClassName(str, str2);
        if (strArr != null) {
            for (String split : strArr) {
                String[] split2 = split.split(UpsightEndpoint.SIGNED_MESSAGE_SEPARATOR);
                if (split2.length == 2) {
                    intent.putExtra(split2[0], split2[1]);
                }
            }
        }
        startActivityForResult(intent, i);
    }

    public void logAndroidErrorMessage(String str) {
        Log.e(getPackageName(), str);
    }

    public void onActivityResult(int i, int i2, Intent intent) {
        super.onActivityResult(i, i2, intent);
        if (this.mAndroidLifecycleListener != null) {
            this.mAndroidLifecycleListener.onActivityResult(i, i2, intent);
        }
    }

    public void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        this.mUnityPlayer.configurationChanged(configuration);
    }

    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        requestWindowFeature(1);
        getWindow().takeSurface(null);
        getWindow().setFormat(4);
        this.mUnityPlayer = new UnityPlayer(this);
        if (this.mUnityPlayer.getSettings().getBoolean("hide_status_bar", true)) {
            getWindow().setFlags(Place.TYPE_SUBLOCALITY_LEVEL_2, Place.TYPE_SUBLOCALITY_LEVEL_2);
        }
        this.mUnityPlayer.setOnTouchListener(new C07311());
        this.mUnityPlayer.setOnGenericMotionListener(new C07322());
        this.mUnityPlayer.setOnKeyListener(new C07333());
        setContentView(this.mUnityPlayer);
        this.mUnityPlayer.requestFocus();
        this.shouldUseImmersiveMode = false;
        try {
            this.shouldUseImmersiveMode = getPackageManager().getApplicationInfo(getPackageName(), AccessibilityNodeInfoCompat.ACTION_CLEAR_ACCESSIBILITY_FOCUS).metaData.getBoolean("IMMERSIVE_MODE");
        } catch (NameNotFoundException e) {
        } catch (NullPointerException e2) {
            Log.e(TAG, "Failed to load meta-data, NullPointer: " + e2.getMessage());
        }
        if (this.shouldUseImmersiveMode && VERSION.SDK_INT < 19) {
            startImmersiveMode();
        }
    }

    protected void onDestroy() {
        this.mUnityPlayer.quit();
        super.onDestroy();
    }

    public boolean onGenericMotionEvent(MotionEvent motionEvent) {
        return (this.mAndroidInputListener == null || !this.mAndroidInputListener.onGenericMotionEvent(motionEvent)) ? injectUnityEvent(motionEvent) : true;
    }

    public boolean onKeyDown(int i, KeyEvent keyEvent) {
        return (this.mAndroidInputListener == null || !this.mAndroidInputListener.onKeyDown(i, keyEvent)) ? injectUnityEvent(keyEvent) : true;
    }

    public boolean onKeyUp(int i, KeyEvent keyEvent) {
        return (this.mAndroidInputListener == null || !this.mAndroidInputListener.onKeyUp(i, keyEvent)) ? injectUnityEvent(keyEvent) : true;
    }

    protected void onPause() {
        super.onPause();
        if (this.mAndroidLifecycleListener != null) {
            this.mAndroidLifecycleListener.onPause();
        }
        this.mUnityPlayer.pause();
    }

    protected void onResume() {
        super.onResume();
        if (this.mAndroidLifecycleListener != null) {
            this.mAndroidLifecycleListener.onResume();
        }
        this.mUnityPlayer.resume();
    }

    public boolean onTouchEvent(MotionEvent motionEvent) {
        return (this.mAndroidInputListener == null || !this.mAndroidInputListener.onTouchEvent(motionEvent)) ? injectUnityEvent(motionEvent) : true;
    }

    public void onWindowFocusChanged(boolean z) {
        super.onWindowFocusChanged(z);
        this.mUnityPlayer.windowFocusChanged(z);
        if (z && this.shouldUseImmersiveMode) {
            setImmersiveMode();
        }
    }

    public void showAndroidViewLayer(int i) {
        runOnUiThread(new C07344(this, i));
    }
}
