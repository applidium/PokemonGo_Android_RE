package android.support.v4.content;

import android.content.Context;
import android.content.res.ColorStateList;

class ContextCompatApi23 {
    ContextCompatApi23() {
    }

    public static int getColor(Context context, int i) {
        return context.getColor(i);
    }

    public static ColorStateList getColorStateList(Context context, int i) {
        return context.getColorStateList(i);
    }
}
