package com.google.android.gms.common.images;

public final class Size {
    private final int zznQ;
    private final int zznR;

    public Size(int i, int i2) {
        this.zznQ = i;
        this.zznR = i2;
    }

    public static Size parseSize(String str) throws NumberFormatException {
        if (str == null) {
            throw new IllegalArgumentException("string must not be null");
        }
        int indexOf = str.indexOf(42);
        if (indexOf < 0) {
            indexOf = str.indexOf(120);
        }
        if (indexOf < 0) {
            throw zzch(str);
        }
        try {
            return new Size(Integer.parseInt(str.substring(0, indexOf)), Integer.parseInt(str.substring(indexOf + 1)));
        } catch (NumberFormatException e) {
            throw zzch(str);
        }
    }

    private static NumberFormatException zzch(String str) {
        throw new NumberFormatException("Invalid Size: \"" + str + "\"");
    }

    public boolean equals(Object obj) {
        if (obj != null) {
            if (this == obj) {
                return true;
            }
            if (obj instanceof Size) {
                Size size = (Size) obj;
                return this.zznQ == size.zznQ && this.zznR == size.zznR;
            }
        }
        return false;
    }

    public int getHeight() {
        return this.zznR;
    }

    public int getWidth() {
        return this.zznQ;
    }

    public int hashCode() {
        return this.zznR ^ ((this.zznQ << 16) | (this.zznQ >>> 16));
    }

    public String toString() {
        return this.zznQ + "x" + this.zznR;
    }
}
