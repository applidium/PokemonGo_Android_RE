package android.support.v4.view.animation;

import android.graphics.Path;
import android.os.Build.VERSION;
import android.view.animation.Interpolator;

public class PathInterpolatorCompat {
    private PathInterpolatorCompat() {
    }

    public static Interpolator create(float f, float f2) {
        return VERSION.SDK_INT >= 21 ? PathInterpolatorCompatApi21.create(f, f2) : PathInterpolatorCompatBase.create(f, f2);
    }

    public static Interpolator create(float f, float f2, float f3, float f4) {
        return VERSION.SDK_INT >= 21 ? PathInterpolatorCompatApi21.create(f, f2, f3, f4) : PathInterpolatorCompatBase.create(f, f2, f3, f4);
    }

    public static Interpolator create(Path path) {
        return VERSION.SDK_INT >= 21 ? PathInterpolatorCompatApi21.create(path) : PathInterpolatorCompatBase.create(path);
    }
}
