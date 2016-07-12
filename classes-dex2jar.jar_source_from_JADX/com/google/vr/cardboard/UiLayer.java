package com.google.vr.cardboard;

import android.app.Activity;
import android.content.Context;
import android.graphics.BitmapFactory;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.os.Build.VERSION;
import android.util.Base64;
import android.util.DisplayMetrics;
import android.view.Display;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup;
import android.view.WindowManager;
import android.widget.ImageView;
import android.widget.ImageView.ScaleType;
import android.widget.RelativeLayout;
import android.widget.RelativeLayout.LayoutParams;

public class UiLayer {
    private static final int ALIGNMENT_MARKER_LINE_COLOR = -13487566;
    private static final int ALIGNMENT_MARKER_LINE_WIDTH = 4;
    private static final int ICON_WIDTH_DP = 28;
    private static final String TAG;
    private static final float TOUCH_SLOP_FACTOR = 1.5f;
    private View alignmentMarker;
    private ImageView backButton;
    private volatile Runnable backButtonRunnable;
    private final Drawable backIconDrawable;
    private final Context context;
    private volatile boolean isAlignmentMarkerEnabled;
    private volatile boolean isSettingsButtonEnabled;
    private final DisplayMetrics metrics;
    private final RelativeLayout rootLayout;
    private ImageView settingsButton;
    private final Drawable settingsIconDrawable;

    /* renamed from: com.google.vr.cardboard.UiLayer.1 */
    class C07381 implements OnClickListener {
        C07381() {
        }

        public void onClick(View view) {
            UiUtils.launchOrInstallCardboard(view.getContext());
        }
    }

    /* renamed from: com.google.vr.cardboard.UiLayer.2 */
    class C07392 implements OnClickListener {
        C07392() {
        }

        public void onClick(View view) {
            Runnable access$000 = UiLayer.this.backButtonRunnable;
            if (access$000 != null) {
                access$000.run();
            }
        }
    }

    /* renamed from: com.google.vr.cardboard.UiLayer.3 */
    class C07403 implements Runnable {
        final /* synthetic */ ViewGroup val$parentView;

        C07403(ViewGroup viewGroup) {
            this.val$parentView = viewGroup;
        }

        public void run() {
            if (this.val$parentView == null) {
                ((Activity) UiLayer.this.context).addContentView(UiLayer.this.rootLayout, new LayoutParams(-1, -1));
            } else {
                this.val$parentView.addView(UiLayer.this.rootLayout);
            }
        }
    }

    /* renamed from: com.google.vr.cardboard.UiLayer.4 */
    class C07414 implements Runnable {
        final /* synthetic */ boolean val$enabled;

        C07414(boolean z) {
            this.val$enabled = z;
        }

        public void run() {
            UiLayer.this.rootLayout.setVisibility(this.val$enabled ? 0 : UiLayer.ALIGNMENT_MARKER_LINE_WIDTH);
        }
    }

    /* renamed from: com.google.vr.cardboard.UiLayer.5 */
    class C07425 implements Runnable {
        final /* synthetic */ boolean val$enabled;

        C07425(boolean z) {
            this.val$enabled = z;
        }

        public void run() {
            UiLayer.this.settingsButton.setVisibility(this.val$enabled ? 0 : UiLayer.ALIGNMENT_MARKER_LINE_WIDTH);
        }
    }

    /* renamed from: com.google.vr.cardboard.UiLayer.6 */
    class C07436 implements Runnable {
        final /* synthetic */ Runnable val$runnable;

        C07436(Runnable runnable) {
            this.val$runnable = runnable;
        }

        public void run() {
            UiLayer.this.backButton.setVisibility(this.val$runnable == null ? UiLayer.ALIGNMENT_MARKER_LINE_WIDTH : 0);
        }
    }

    /* renamed from: com.google.vr.cardboard.UiLayer.7 */
    class C07447 implements Runnable {
        final /* synthetic */ boolean val$enabled;

        C07447(boolean z) {
            this.val$enabled = z;
        }

        public void run() {
            UiLayer.this.alignmentMarker.setVisibility(this.val$enabled ? 0 : UiLayer.ALIGNMENT_MARKER_LINE_WIDTH);
        }
    }

    static {
        TAG = UiLayer.class.getSimpleName();
    }

    public UiLayer(Context context) {
        this.isSettingsButtonEnabled = true;
        this.isAlignmentMarkerEnabled = false;
        this.backButtonRunnable = null;
        if (context instanceof Activity) {
            this.context = context;
            this.settingsIconDrawable = decodeBitmapFromString(Base64Resources.SETTINGS_BUTTON_PNG_STRING);
            this.backIconDrawable = decodeBitmapFromString(Base64Resources.BACK_BUTTON_PNG_STRING);
            Display defaultDisplay = ((WindowManager) context.getSystemService("window")).getDefaultDisplay();
            this.metrics = new DisplayMetrics();
            if (VERSION.SDK_INT >= 17) {
                defaultDisplay.getRealMetrics(this.metrics);
            } else {
                defaultDisplay.getMetrics(this.metrics);
            }
            this.rootLayout = new RelativeLayout(context);
            initializeViews();
            return;
        }
        throw new RuntimeException("Context is not an instance of activity: Aborting.");
    }

    private ImageView createButton(Drawable drawable, boolean z, int... iArr) {
        int i = 0;
        int i2 = (int) (28.0f * this.metrics.density);
        int i3 = (int) (((float) i2) * TOUCH_SLOP_FACTOR);
        i2 = (i3 - i2) / 2;
        ImageView imageView = new ImageView(this.context);
        imageView.setPadding(i2, i2, i2, i2);
        imageView.setImageDrawable(drawable);
        imageView.setScaleType(ScaleType.FIT_CENTER);
        ViewGroup.LayoutParams layoutParams = new LayoutParams(i3, i3);
        for (int addRule : iArr) {
            layoutParams.addRule(addRule);
        }
        imageView.setLayoutParams(layoutParams);
        if (!z) {
            i = ALIGNMENT_MARKER_LINE_WIDTH;
        }
        imageView.setVisibility(i);
        return imageView;
    }

    private Drawable decodeBitmapFromString(String str) {
        byte[] decode = Base64.decode(str, 0);
        return new BitmapDrawable(this.context.getResources(), BitmapFactory.decodeByteArray(decode, 0, decode.length));
    }

    private void initializeViews() {
        int i = 0;
        int i2 = (int) (((float) ((int) (28.0f * this.metrics.density))) * TOUCH_SLOP_FACTOR);
        this.settingsButton = createButton(this.settingsIconDrawable, this.isSettingsButtonEnabled, 12, 13);
        this.settingsButton.setOnClickListener(new C07381());
        this.rootLayout.addView(this.settingsButton);
        this.backButton = createButton(this.backIconDrawable, getBackButtonEnabled(), 10, 9);
        this.backButton.setOnClickListener(new C07392());
        this.rootLayout.addView(this.backButton);
        this.alignmentMarker = new View(this.context);
        this.alignmentMarker.setBackground(new ColorDrawable(ALIGNMENT_MARKER_LINE_COLOR));
        ViewGroup.LayoutParams layoutParams = new LayoutParams((int) (4.0f * this.metrics.density), -1);
        layoutParams.addRule(13);
        layoutParams.setMargins(0, i2, 0, i2);
        this.alignmentMarker.setLayoutParams(layoutParams);
        View view = this.alignmentMarker;
        if (!this.isAlignmentMarkerEnabled) {
            i = 8;
        }
        view.setVisibility(i);
        this.rootLayout.addView(this.alignmentMarker);
    }

    public void attachUiLayer(ViewGroup viewGroup) {
        ((Activity) this.context).runOnUiThread(new C07403(viewGroup));
    }

    public boolean getAlignmentMarkerEnabled() {
        return this.isAlignmentMarkerEnabled;
    }

    public boolean getBackButtonEnabled() {
        return this.backButtonRunnable != null;
    }

    public boolean getSettingsButtonEnabled() {
        return this.isSettingsButtonEnabled;
    }

    public void setAlignmentMarkerEnabled(boolean z) {
        this.isAlignmentMarkerEnabled = z;
        ((Activity) this.context).runOnUiThread(new C07447(z));
    }

    public void setBackButtonListener(Runnable runnable) {
        this.backButtonRunnable = runnable;
        ((Activity) this.context).runOnUiThread(new C07436(runnable));
    }

    public void setEnabled(boolean z) {
        ((Activity) this.context).runOnUiThread(new C07414(z));
    }

    public void setSettingsButtonEnabled(boolean z) {
        this.isSettingsButtonEnabled = z;
        ((Activity) this.context).runOnUiThread(new C07425(z));
    }
}
