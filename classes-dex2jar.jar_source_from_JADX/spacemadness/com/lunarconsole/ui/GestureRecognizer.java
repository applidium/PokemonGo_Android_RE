package spacemadness.com.lunarconsole.ui;

import android.view.MotionEvent;
import spacemadness.com.lunarconsole.debug.Log;

public abstract class GestureRecognizer<T extends GestureRecognizer> {
    private OnGestureListener<T> listener;

    public interface OnGestureListener<T extends GestureRecognizer> {
        void onGesture(T t);
    }

    public OnGestureListener<T> getListener() {
        return this.listener;
    }

    protected void notifyGestureRecognizer() {
        if (this.listener != null) {
            try {
                this.listener.onGesture(this);
            } catch (Throwable e) {
                Log.m862e(e, "Error while notifying gesture listener", new Object[0]);
            }
        }
    }

    public abstract boolean onTouchEvent(MotionEvent motionEvent);

    public void setListener(OnGestureListener<T> onGestureListener) {
        this.listener = onGestureListener;
    }
}
