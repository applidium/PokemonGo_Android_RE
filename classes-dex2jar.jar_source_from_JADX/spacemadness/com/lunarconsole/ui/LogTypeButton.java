package spacemadness.com.lunarconsole.ui;

import android.annotation.TargetApi;
import android.content.Context;
import android.os.Build.VERSION;
import android.util.AttributeSet;

public class LogTypeButton extends ToggleButton {
    private static final int MAX_COUNT = 999;
    private int count;
    private float offAlpha;

    public LogTypeButton(Context context) {
        super(context);
        init();
    }

    public LogTypeButton(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        init();
    }

    public LogTypeButton(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        init();
    }

    @TargetApi(21)
    public LogTypeButton(Context context, AttributeSet attributeSet, int i, int i2) {
        super(context, attributeSet, i, i2);
        init();
    }

    private void init() {
        this.count = Integer.MAX_VALUE;
        this.offAlpha = 0.25f;
    }

    public float getOffAlpha() {
        return this.offAlpha;
    }

    public void setCount(int i) {
        if (this.count != i) {
            if (i < MAX_COUNT) {
                setText(Integer.toString(i));
            } else if (this.count < MAX_COUNT) {
                setText("999+");
            }
            this.count = i;
        }
    }

    public void setOffAlpha(float f) {
        this.offAlpha = f;
    }

    public void setOn(boolean z) {
        super.setOn(z);
        if (VERSION.SDK_INT >= 11) {
            setAlpha(z ? 1.0f : this.offAlpha);
        }
    }
}
