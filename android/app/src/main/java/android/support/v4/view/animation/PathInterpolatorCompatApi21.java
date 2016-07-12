package android.support.v4.view.animation;

import android.graphics.Path;
import android.view.animation.Interpolator;
import android.view.animation.PathInterpolator;

class PathInterpolatorCompatApi21 {
    private PathInterpolatorCompatApi21() {
    }

    public static Interpolator create(float f, float f2) {
        return new PathInterpolator(f, f2);
    }

    public static Interpolator create(float f, float f2, float f3, float f4) {
        return new PathInterpolator(f, f2, f3, f4);
    }

    public static Interpolator create(Path path) {
        return new PathInterpolator(path);
    }
}
