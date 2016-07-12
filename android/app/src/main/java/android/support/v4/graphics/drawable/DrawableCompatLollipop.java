package android.support.v4.graphics.drawable;

import android.content.res.ColorStateList;
import android.graphics.PorterDuff.Mode;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.DrawableContainer;
import android.graphics.drawable.GradientDrawable;

class DrawableCompatLollipop {
    DrawableCompatLollipop() {
    }

    public static void setHotspot(Drawable drawable, float f, float f2) {
        drawable.setHotspot(f, f2);
    }

    public static void setHotspotBounds(Drawable drawable, int i, int i2, int i3, int i4) {
        drawable.setHotspotBounds(i, i2, i3, i4);
    }

    public static void setTint(Drawable drawable, int i) {
        if (drawable instanceof DrawableWrapperLollipop) {
            DrawableCompatBase.setTint(drawable, i);
        } else {
            drawable.setTint(i);
        }
    }

    public static void setTintList(Drawable drawable, ColorStateList colorStateList) {
        if (drawable instanceof DrawableWrapperLollipop) {
            DrawableCompatBase.setTintList(drawable, colorStateList);
        } else {
            drawable.setTintList(colorStateList);
        }
    }

    public static void setTintMode(Drawable drawable, Mode mode) {
        if (drawable instanceof DrawableWrapperLollipop) {
            DrawableCompatBase.setTintMode(drawable, mode);
        } else {
            drawable.setTintMode(mode);
        }
    }

    public static Drawable wrapForTinting(Drawable drawable) {
        return ((drawable instanceof GradientDrawable) || (drawable instanceof DrawableContainer)) ? new DrawableWrapperLollipop(drawable) : drawable;
    }
}
