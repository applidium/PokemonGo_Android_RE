package com.google.android.gms.internal;

import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.Bitmap.Config;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.PorterDuff.Mode;
import android.graphics.PorterDuffXfermode;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.support.v4.view.ViewCompat;

public final class zzlt {
    public static Bitmap zza(Bitmap bitmap) {
        int i = 0;
        if (bitmap == null) {
            return null;
        }
        int width = bitmap.getWidth();
        int height = bitmap.getHeight();
        if (width >= height) {
            width = (height - width) / 2;
        } else {
            int i2 = (width - height) / 2;
            height = width;
            width = 0;
            i = i2;
        }
        Bitmap createBitmap = Bitmap.createBitmap(height, height, Config.ARGB_8888);
        Canvas canvas = new Canvas(createBitmap);
        Paint paint = new Paint(1);
        paint.setColor(ViewCompat.MEASURED_STATE_MASK);
        canvas.drawCircle((float) (height / 2), (float) (height / 2), (float) (height / 2), paint);
        paint.setXfermode(new PorterDuffXfermode(Mode.SRC_IN));
        canvas.drawBitmap(bitmap, (float) width, (float) i, paint);
        return createBitmap;
    }

    private static Bitmap zza(Drawable drawable) {
        if (drawable == null) {
            return null;
        }
        if (drawable instanceof BitmapDrawable) {
            return ((BitmapDrawable) drawable).getBitmap();
        }
        Bitmap createBitmap = Bitmap.createBitmap(drawable.getIntrinsicWidth(), drawable.getIntrinsicHeight(), Config.ARGB_8888);
        Canvas canvas = new Canvas(createBitmap);
        drawable.setBounds(0, 0, canvas.getWidth(), canvas.getHeight());
        drawable.draw(canvas);
        return createBitmap;
    }

    public static Drawable zza(Resources resources, Drawable drawable) {
        return new BitmapDrawable(resources, zza(zza(drawable)));
    }
}
