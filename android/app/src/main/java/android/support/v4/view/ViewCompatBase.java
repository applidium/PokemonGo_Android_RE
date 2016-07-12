package android.support.v4.view;

import android.content.res.ColorStateList;
import android.graphics.PorterDuff.Mode;
import android.view.View;
import java.lang.reflect.Field;

class ViewCompatBase {
    private static final String TAG = "ViewCompatBase";
    private static Field sMinHeightField;
    private static boolean sMinHeightFieldFetched;
    private static Field sMinWidthField;
    private static boolean sMinWidthFieldFetched;

    ViewCompatBase() {
    }

    static ColorStateList getBackgroundTintList(View view) {
        return view instanceof TintableBackgroundView ? ((TintableBackgroundView) view).getSupportBackgroundTintList() : null;
    }

    static Mode getBackgroundTintMode(View view) {
        return view instanceof TintableBackgroundView ? ((TintableBackgroundView) view).getSupportBackgroundTintMode() : null;
    }

    static int getMinimumHeight(View view) {
        if (!sMinHeightFieldFetched) {
            try {
                sMinHeightField = View.class.getDeclaredField("mMinHeight");
                sMinHeightField.setAccessible(true);
            } catch (NoSuchFieldException e) {
            }
            sMinHeightFieldFetched = true;
        }
        if (sMinHeightField != null) {
            try {
                return ((Integer) sMinHeightField.get(view)).intValue();
            } catch (Exception e2) {
            }
        }
        return 0;
    }

    static int getMinimumWidth(View view) {
        if (!sMinWidthFieldFetched) {
            try {
                sMinWidthField = View.class.getDeclaredField("mMinWidth");
                sMinWidthField.setAccessible(true);
            } catch (NoSuchFieldException e) {
            }
            sMinWidthFieldFetched = true;
        }
        if (sMinWidthField != null) {
            try {
                return ((Integer) sMinWidthField.get(view)).intValue();
            } catch (Exception e2) {
            }
        }
        return 0;
    }

    static boolean isAttachedToWindow(View view) {
        return view.getWindowToken() != null;
    }

    static boolean isLaidOut(View view) {
        return view.getWidth() > 0 && view.getHeight() > 0;
    }

    static void setBackgroundTintList(View view, ColorStateList colorStateList) {
        if (view instanceof TintableBackgroundView) {
            ((TintableBackgroundView) view).setSupportBackgroundTintList(colorStateList);
        }
    }

    static void setBackgroundTintMode(View view, Mode mode) {
        if (view instanceof TintableBackgroundView) {
            ((TintableBackgroundView) view).setSupportBackgroundTintMode(mode);
        }
    }
}
