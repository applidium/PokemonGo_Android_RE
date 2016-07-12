package android.support.v4.view;

import android.graphics.Rect;
import android.view.WindowInsets;

class WindowInsetsCompatApi21 extends WindowInsetsCompat {
    private final WindowInsets mSource;

    WindowInsetsCompatApi21(WindowInsets windowInsets) {
        this.mSource = windowInsets;
    }

    public WindowInsetsCompat consumeStableInsets() {
        return new WindowInsetsCompatApi21(this.mSource.consumeStableInsets());
    }

    public WindowInsetsCompat consumeSystemWindowInsets() {
        return new WindowInsetsCompatApi21(this.mSource.consumeSystemWindowInsets());
    }

    public int getStableInsetBottom() {
        return this.mSource.getStableInsetBottom();
    }

    public int getStableInsetLeft() {
        return this.mSource.getStableInsetLeft();
    }

    public int getStableInsetRight() {
        return this.mSource.getStableInsetRight();
    }

    public int getStableInsetTop() {
        return this.mSource.getStableInsetTop();
    }

    public int getSystemWindowInsetBottom() {
        return this.mSource.getSystemWindowInsetBottom();
    }

    public int getSystemWindowInsetLeft() {
        return this.mSource.getSystemWindowInsetLeft();
    }

    public int getSystemWindowInsetRight() {
        return this.mSource.getSystemWindowInsetRight();
    }

    public int getSystemWindowInsetTop() {
        return this.mSource.getSystemWindowInsetTop();
    }

    public boolean hasInsets() {
        return this.mSource.hasInsets();
    }

    public boolean hasStableInsets() {
        return this.mSource.hasStableInsets();
    }

    public boolean hasSystemWindowInsets() {
        return this.mSource.hasSystemWindowInsets();
    }

    public boolean isConsumed() {
        return this.mSource.isConsumed();
    }

    public boolean isRound() {
        return this.mSource.isRound();
    }

    public WindowInsetsCompat replaceSystemWindowInsets(int i, int i2, int i3, int i4) {
        return new WindowInsetsCompatApi21(this.mSource.replaceSystemWindowInsets(i, i2, i3, i4));
    }

    public WindowInsetsCompat replaceSystemWindowInsets(Rect rect) {
        return new WindowInsetsCompatApi21(this.mSource.replaceSystemWindowInsets(rect));
    }

    WindowInsets unwrap() {
        return this.mSource;
    }
}
