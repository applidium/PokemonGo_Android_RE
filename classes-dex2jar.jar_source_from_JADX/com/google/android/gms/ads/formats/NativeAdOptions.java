package com.google.android.gms.ads.formats;

public final class NativeAdOptions {
    public static final int ORIENTATION_ANY = 0;
    public static final int ORIENTATION_LANDSCAPE = 2;
    public static final int ORIENTATION_PORTRAIT = 1;
    private final boolean zznW;
    private final int zznX;
    private final boolean zznY;

    public static final class Builder {
        private boolean zznW;
        private int zznX;
        private boolean zznY;

        public Builder() {
            this.zznW = false;
            this.zznX = NativeAdOptions.ORIENTATION_ANY;
            this.zznY = false;
        }

        public NativeAdOptions build() {
            return new NativeAdOptions();
        }

        public Builder setImageOrientation(int i) {
            this.zznX = i;
            return this;
        }

        public Builder setRequestMultipleImages(boolean z) {
            this.zznY = z;
            return this;
        }

        public Builder setReturnUrlsForImageAssets(boolean z) {
            this.zznW = z;
            return this;
        }
    }

    private NativeAdOptions(Builder builder) {
        this.zznW = builder.zznW;
        this.zznX = builder.zznX;
        this.zznY = builder.zznY;
    }

    public int getImageOrientation() {
        return this.zznX;
    }

    public boolean shouldRequestMultipleImages() {
        return this.zznY;
    }

    public boolean shouldReturnUrlsForImageAssets() {
        return this.zznW;
    }
}
