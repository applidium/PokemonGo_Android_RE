package android.support.v4.content.res;

import android.content.res.TypedArray;
import android.graphics.drawable.Drawable;
import android.support.annotation.AnyRes;
import android.support.annotation.StyleableRes;

public class TypedArrayUtils {
    public static boolean getBoolean(TypedArray typedArray, @StyleableRes int i, @StyleableRes int i2, boolean z) {
        return typedArray.getBoolean(i, typedArray.getBoolean(i2, z));
    }

    public static Drawable getDrawable(TypedArray typedArray, @StyleableRes int i, @StyleableRes int i2) {
        Drawable drawable = typedArray.getDrawable(i);
        return drawable == null ? typedArray.getDrawable(i2) : drawable;
    }

    public static int getInt(TypedArray typedArray, @StyleableRes int i, @StyleableRes int i2, int i3) {
        return typedArray.getInt(i, typedArray.getInt(i2, i3));
    }

    @AnyRes
    public static int getResourceId(TypedArray typedArray, @StyleableRes int i, @StyleableRes int i2, @AnyRes int i3) {
        return typedArray.getResourceId(i, typedArray.getResourceId(i2, i3));
    }

    public static String getString(TypedArray typedArray, @StyleableRes int i, @StyleableRes int i2) {
        String string = typedArray.getString(i);
        return string == null ? typedArray.getString(i2) : string;
    }

    public static CharSequence[] getTextArray(TypedArray typedArray, @StyleableRes int i, @StyleableRes int i2) {
        CharSequence[] textArray = typedArray.getTextArray(i);
        return textArray == null ? typedArray.getTextArray(i2) : textArray;
    }
}
