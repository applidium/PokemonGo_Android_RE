package spacemadness.com.lunarconsole.ui;

import android.annotation.TargetApi;
import android.content.Context;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.ImageButton;

public class ToggleImageButton extends ImageButton {
    private Drawable offDrawable;
    private boolean on;
    private Drawable onDrawable;
    private OnStateChangeListener stateChangeListener;

    public interface OnStateChangeListener {
        void onStateChanged(ToggleImageButton toggleImageButton);
    }

    /* renamed from: spacemadness.com.lunarconsole.ui.ToggleImageButton.1 */
    class C14281 implements OnClickListener {
        C14281() {
        }

        public void onClick(View view) {
            ToggleImageButton.this.setOn(!ToggleImageButton.this.on);
        }
    }

    public ToggleImageButton(Context context) {
        super(context);
        init();
    }

    public ToggleImageButton(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        init();
    }

    public ToggleImageButton(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        init();
    }

    @TargetApi(21)
    public ToggleImageButton(Context context, AttributeSet attributeSet, int i, int i2) {
        super(context, attributeSet, i, i2);
        init();
    }

    private void init() {
        setOnClickListener(new C14281());
    }

    private void notifyStateChanged() {
        if (this.stateChangeListener != null) {
            this.stateChangeListener.onStateChanged(this);
        }
    }

    public Drawable getOffDrawable() {
        return this.offDrawable;
    }

    public Drawable getOnDrawable() {
        return this.onDrawable;
    }

    public OnStateChangeListener getOnStateChangeListener() {
        return this.stateChangeListener;
    }

    public boolean isOn() {
        return this.on;
    }

    public void setOffDrawable(Drawable drawable) {
        this.offDrawable = drawable;
    }

    public void setOn(boolean z) {
        boolean z2 = this.on;
        this.on = z;
        Drawable drawable = this.on ? this.onDrawable : this.offDrawable;
        if (drawable != null) {
            setImageDrawable(drawable);
        }
        if (z2 != z) {
            notifyStateChanged();
        }
    }

    public void setOnDrawable(Drawable drawable) {
        this.onDrawable = drawable;
    }

    public void setOnStateChangeListener(OnStateChangeListener onStateChangeListener) {
        this.stateChangeListener = onStateChangeListener;
    }
}
