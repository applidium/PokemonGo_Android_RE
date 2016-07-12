package android.support.v4.content.res;

import android.content.res.Resources;
import android.content.res.Resources.NotFoundException;
import android.graphics.drawable.Drawable;

class ResourcesCompatIcsMr1 {
    ResourcesCompatIcsMr1() {
    }

    public static Drawable getDrawableForDensity(Resources resources, int i, int i2) throws NotFoundException {
        return resources.getDrawableForDensity(i, i2);
    }
}
