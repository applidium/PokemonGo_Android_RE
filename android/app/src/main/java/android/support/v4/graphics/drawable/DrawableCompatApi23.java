package android.support.v4.graphics.drawable;

import android.graphics.drawable.Drawable;

class DrawableCompatApi23 {
    DrawableCompatApi23() {
    }

    public static int getLayoutDirection(Drawable drawable) {
        return drawable.getLayoutDirection();
    }

    public static void setLayoutDirection(Drawable drawable, int i) {
        drawable.setLayoutDirection(i);
    }
}
