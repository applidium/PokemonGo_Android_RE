package android.support.v4.graphics.drawable;

import android.content.res.ColorStateList;
import android.graphics.PorterDuff.Mode;
import android.graphics.drawable.Drawable;

public interface DrawableWrapper {
    Drawable getWrappedDrawable();

    void setTint(int i);

    void setTintList(ColorStateList colorStateList);

    void setTintMode(Mode mode);

    void setWrappedDrawable(Drawable drawable);
}
