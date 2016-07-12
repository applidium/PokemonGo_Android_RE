package spacemadness.com.lunarconsole.ui;

import android.annotation.TargetApi;
import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.Button;

public class ToggleButton extends Button {
    private boolean on;
    private OnStateChangeListener stateChangeListener;

    public interface OnStateChangeListener {
        void onStateChanged(ToggleButton toggleButton);
    }

    /* renamed from: spacemadness.com.lunarconsole.ui.ToggleButton.1 */
    class C14271 implements OnClickListener {
        C14271() {
        }

        public void onClick(View view) {
            ToggleButton.this.setOn(!ToggleButton.this.on);
        }
    }

    public ToggleButton(Context context) {
        super(context);
        init();
    }

    public ToggleButton(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        init();
    }

    public ToggleButton(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        init();
    }

    @TargetApi(21)
    public ToggleButton(Context context, AttributeSet attributeSet, int i, int i2) {
        super(context, attributeSet, i, i2);
        init();
    }

    private void init() {
        setOnClickListener(new C14271());
    }

    private void notifyStateChanged() {
        if (this.stateChangeListener != null) {
            this.stateChangeListener.onStateChanged(this);
        }
    }

    public OnStateChangeListener getOnStateChangeListener() {
        return this.stateChangeListener;
    }

    public boolean isOn() {
        return this.on;
    }

    public void setOn(boolean z) {
        if (this.on != z) {
            this.on = z;
            notifyStateChanged();
        }
    }

    public void setOnStateChangeListener(OnStateChangeListener onStateChangeListener) {
        this.stateChangeListener = onStateChangeListener;
    }
}
