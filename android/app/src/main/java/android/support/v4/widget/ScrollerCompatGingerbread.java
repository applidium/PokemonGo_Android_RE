package android.support.v4.widget;

import android.content.Context;
import android.view.animation.Interpolator;
import android.widget.OverScroller;

class ScrollerCompatGingerbread {
    ScrollerCompatGingerbread() {
    }

    public static void abortAnimation(Object obj) {
        ((OverScroller) obj).abortAnimation();
    }

    public static boolean computeScrollOffset(Object obj) {
        return ((OverScroller) obj).computeScrollOffset();
    }

    public static Object createScroller(Context context, Interpolator interpolator) {
        return interpolator != null ? new OverScroller(context, interpolator) : new OverScroller(context);
    }

    public static void fling(Object obj, int i, int i2, int i3, int i4, int i5, int i6, int i7, int i8) {
        ((OverScroller) obj).fling(i, i2, i3, i4, i5, i6, i7, i8);
    }

    public static void fling(Object obj, int i, int i2, int i3, int i4, int i5, int i6, int i7, int i8, int i9, int i10) {
        ((OverScroller) obj).fling(i, i2, i3, i4, i5, i6, i7, i8, i9, i10);
    }

    public static int getCurrX(Object obj) {
        return ((OverScroller) obj).getCurrX();
    }

    public static int getCurrY(Object obj) {
        return ((OverScroller) obj).getCurrY();
    }

    public static int getFinalX(Object obj) {
        return ((OverScroller) obj).getFinalX();
    }

    public static int getFinalY(Object obj) {
        return ((OverScroller) obj).getFinalY();
    }

    public static boolean isFinished(Object obj) {
        return ((OverScroller) obj).isFinished();
    }

    public static boolean isOverScrolled(Object obj) {
        return ((OverScroller) obj).isOverScrolled();
    }

    public static void notifyHorizontalEdgeReached(Object obj, int i, int i2, int i3) {
        ((OverScroller) obj).notifyHorizontalEdgeReached(i, i2, i3);
    }

    public static void notifyVerticalEdgeReached(Object obj, int i, int i2, int i3) {
        ((OverScroller) obj).notifyVerticalEdgeReached(i, i2, i3);
    }

    public static void startScroll(Object obj, int i, int i2, int i3, int i4) {
        ((OverScroller) obj).startScroll(i, i2, i3, i4);
    }

    public static void startScroll(Object obj, int i, int i2, int i3, int i4, int i5) {
        ((OverScroller) obj).startScroll(i, i2, i3, i4, i5);
    }
}
