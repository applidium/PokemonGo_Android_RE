package android.support.v4.view;

import android.graphics.Paint;
import android.view.View;

class ViewCompatJellybeanMr1 {
    ViewCompatJellybeanMr1() {
    }

    public static int getLabelFor(View view) {
        return view.getLabelFor();
    }

    public static int getLayoutDirection(View view) {
        return view.getLayoutDirection();
    }

    public static int getPaddingEnd(View view) {
        return view.getPaddingEnd();
    }

    public static int getPaddingStart(View view) {
        return view.getPaddingStart();
    }

    public static int getWindowSystemUiVisibility(View view) {
        return view.getWindowSystemUiVisibility();
    }

    public static boolean isPaddingRelative(View view) {
        return view.isPaddingRelative();
    }

    public static void setLabelFor(View view, int i) {
        view.setLabelFor(i);
    }

    public static void setLayerPaint(View view, Paint paint) {
        view.setLayerPaint(paint);
    }

    public static void setLayoutDirection(View view, int i) {
        view.setLayoutDirection(i);
    }

    public static void setPaddingRelative(View view, int i, int i2, int i3, int i4) {
        view.setPaddingRelative(i, i2, i3, i4);
    }
}
