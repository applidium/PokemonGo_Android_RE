package com.google.android.gms.internal;

import android.graphics.Canvas;
import android.graphics.Path;
import android.net.Uri;
import android.widget.ImageView;
import spacemadness.com.lunarconsole.C1401R;

public final class zzlu extends ImageView {
    private int zzaeA;
    private zza zzaeB;
    private int zzaeC;
    private float zzaeD;
    private Uri zzaey;
    private int zzaez;

    public interface zza {
        Path zzk(int i, int i2);
    }

    protected void onDraw(Canvas canvas) {
        if (this.zzaeB != null) {
            canvas.clipPath(this.zzaeB.zzk(getWidth(), getHeight()));
        }
        super.onDraw(canvas);
        if (this.zzaeA != 0) {
            canvas.drawColor(this.zzaeA);
        }
    }

    protected void onMeasure(int i, int i2) {
        int measuredHeight;
        int i3;
        super.onMeasure(i, i2);
        switch (this.zzaeC) {
            case C1401R.styleable.LoadingImageView_imageAspectRatio /*1*/:
                measuredHeight = getMeasuredHeight();
                i3 = (int) (((float) measuredHeight) * this.zzaeD);
                break;
            case C1401R.styleable.LoadingImageView_circleCrop /*2*/:
                i3 = getMeasuredWidth();
                measuredHeight = (int) (((float) i3) / this.zzaeD);
                break;
            default:
                return;
        }
        setMeasuredDimension(i3, measuredHeight);
    }

    public void zzbA(int i) {
        this.zzaez = i;
    }

    public void zzj(Uri uri) {
        this.zzaey = uri;
    }

    public int zzoH() {
        return this.zzaez;
    }
}
