package android.support.v4.widget;

import android.graphics.drawable.Drawable;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.widget.TextView;

class TextViewCompatJbMr1 {
    TextViewCompatJbMr1() {
    }

    public static void setCompoundDrawablesRelative(@NonNull TextView textView, @Nullable Drawable drawable, @Nullable Drawable drawable2, @Nullable Drawable drawable3, @Nullable Drawable drawable4) {
        Object obj = textView.getLayoutDirection() == 1 ? 1 : null;
        Drawable drawable5 = obj != null ? drawable3 : drawable;
        if (obj != null) {
            drawable3 = drawable;
        }
        textView.setCompoundDrawables(drawable5, drawable2, drawable3, drawable4);
    }

    public static void setCompoundDrawablesRelativeWithIntrinsicBounds(@NonNull TextView textView, int i, int i2, int i3, int i4) {
        Object obj = textView.getLayoutDirection() == 1 ? 1 : null;
        int i5 = obj != null ? i3 : i;
        if (obj != null) {
            i3 = i;
        }
        textView.setCompoundDrawablesWithIntrinsicBounds(i5, i2, i3, i4);
    }

    public static void setCompoundDrawablesRelativeWithIntrinsicBounds(@NonNull TextView textView, @Nullable Drawable drawable, @Nullable Drawable drawable2, @Nullable Drawable drawable3, @Nullable Drawable drawable4) {
        Object obj = textView.getLayoutDirection() == 1 ? 1 : null;
        Drawable drawable5 = obj != null ? drawable3 : drawable;
        if (obj != null) {
            drawable3 = drawable;
        }
        textView.setCompoundDrawablesWithIntrinsicBounds(drawable5, drawable2, drawable3, drawable4);
    }
}
