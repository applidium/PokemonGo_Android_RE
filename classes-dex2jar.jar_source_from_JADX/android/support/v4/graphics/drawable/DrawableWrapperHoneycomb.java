package android.support.v4.graphics.drawable;

import android.graphics.drawable.Drawable;

class DrawableWrapperHoneycomb extends DrawableWrapperDonut {
    DrawableWrapperHoneycomb(Drawable drawable) {
        super(drawable);
    }

    public void jumpToCurrentState() {
        this.mDrawable.jumpToCurrentState();
    }
}
