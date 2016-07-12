package android.support.v4.view;

import android.animation.ValueAnimator;
import android.animation.ValueAnimator.AnimatorUpdateListener;
import android.view.View;

class ViewPropertyAnimatorCompatKK {

    /* renamed from: android.support.v4.view.ViewPropertyAnimatorCompatKK.1 */
    static final class C00961 implements AnimatorUpdateListener {
        final /* synthetic */ ViewPropertyAnimatorUpdateListener val$listener;
        final /* synthetic */ View val$view;

        C00961(ViewPropertyAnimatorUpdateListener viewPropertyAnimatorUpdateListener, View view) {
            this.val$listener = viewPropertyAnimatorUpdateListener;
            this.val$view = view;
        }

        public void onAnimationUpdate(ValueAnimator valueAnimator) {
            this.val$listener.onAnimationUpdate(this.val$view);
        }
    }

    ViewPropertyAnimatorCompatKK() {
    }

    public static void setUpdateListener(View view, ViewPropertyAnimatorUpdateListener viewPropertyAnimatorUpdateListener) {
        view.animate().setUpdateListener(new C00961(viewPropertyAnimatorUpdateListener, view));
    }
}
