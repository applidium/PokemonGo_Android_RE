package com.google.android.gms.ads.formats;

import android.graphics.drawable.Drawable;
import android.net.Uri;

public abstract class NativeAd {

    public static abstract class Image {
        public abstract Drawable getDrawable();

        public abstract double getScale();

        public abstract Uri getUri();
    }

    protected abstract Object zzaH();
}
