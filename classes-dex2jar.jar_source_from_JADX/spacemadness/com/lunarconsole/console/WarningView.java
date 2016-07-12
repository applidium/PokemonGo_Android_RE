package spacemadness.com.lunarconsole.console;

import android.annotation.TargetApi;
import android.content.Context;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.View.OnTouchListener;
import android.widget.FrameLayout;
import android.widget.FrameLayout.LayoutParams;
import android.widget.TextView;
import spacemadness.com.lunarconsole.C1401R;
import spacemadness.com.lunarconsole.core.Destroyable;
import spacemadness.com.lunarconsole.debug.Log;
import spacemadness.com.lunarconsole.debug.Tags;

public class WarningView extends FrameLayout implements Destroyable {
    private Listener listener;
    private TextView messageText;

    public interface Listener {
        void onDetailsClick(WarningView warningView);

        void onDismissClick(WarningView warningView);
    }

    /* renamed from: spacemadness.com.lunarconsole.console.WarningView.1 */
    class C14241 implements OnTouchListener {
        C14241() {
        }

        public boolean onTouch(View view, MotionEvent motionEvent) {
            return true;
        }
    }

    /* renamed from: spacemadness.com.lunarconsole.console.WarningView.2 */
    class C14252 implements OnClickListener {
        C14252() {
        }

        public void onClick(View view) {
            WarningView.this.notifyDismiss();
        }
    }

    /* renamed from: spacemadness.com.lunarconsole.console.WarningView.3 */
    class C14263 implements OnClickListener {
        C14263() {
        }

        public void onClick(View view) {
            WarningView.this.notifyDetails();
        }
    }

    public WarningView(Context context) {
        super(context);
        init(context);
    }

    public WarningView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        init(context);
    }

    @TargetApi(11)
    public WarningView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        init(context);
    }

    @TargetApi(21)
    public WarningView(Context context, AttributeSet attributeSet, int i, int i2) {
        super(context, attributeSet, i, i2);
        init(context);
    }

    private void init(Context context) {
        View inflate = LayoutInflater.from(context).inflate(C1401R.layout.lunar_layout_warning, null, false);
        setupUI(inflate);
        addView(inflate, new LayoutParams(-1, -2, 81));
    }

    private void notifyDetails() {
        if (this.listener != null) {
            try {
                this.listener.onDetailsClick(this);
            } catch (Exception e) {
                Log.m861e("Error while notifying listener", new Object[0]);
            }
        }
    }

    private void notifyDismiss() {
        if (this.listener != null) {
            try {
                this.listener.onDismissClick(this);
            } catch (Exception e) {
                Log.m861e("Error while notifying listener", new Object[0]);
            }
        }
    }

    private void setOnClickListener(View view, int i, OnClickListener onClickListener) {
        view.findViewById(i).setOnClickListener(onClickListener);
    }

    private void setupUI(View view) {
        this.messageText = (TextView) view.findViewById(C1401R.id.lunar_console_text_warning_message);
        view.setOnTouchListener(new C14241());
        setOnClickListener(view, C1401R.id.lunar_console_button_dismiss, new C14252());
        setOnClickListener(view, C1401R.id.lunar_console_button_details, new C14263());
    }

    public void destroy() {
        Log.m860d(Tags.WARNING_VIEW, "Destroy warning", new Object[0]);
        this.listener = null;
    }

    public Listener getListener() {
        return this.listener;
    }

    public void setListener(Listener listener) {
        this.listener = listener;
    }

    public void setMessage(String str) {
        this.messageText.setText(str);
    }
}
