package com.google.android.gms.internal;

import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.Drawable.Callback;
import android.graphics.drawable.Drawable.ConstantState;
import android.support.v4.view.MotionEventCompat;

public final class zzls extends Drawable implements Callback {
    private int mFrom;
    private long zzNY;
    private boolean zzaea;
    private int zzaeh;
    private int zzaei;
    private int zzaej;
    private int zzaek;
    private int zzael;
    private boolean zzaem;
    private zzb zzaen;
    private Drawable zzaeo;
    private Drawable zzaep;
    private boolean zzaeq;
    private boolean zzaer;
    private boolean zzaes;
    private int zzaet;

    private static final class zza extends Drawable {
        private static final zza zzaeu;
        private static final zza zzaev;

        private static final class zza extends ConstantState {
            private zza() {
            }

            public int getChangingConfigurations() {
                return 0;
            }

            public Drawable newDrawable() {
                return zza.zzaeu;
            }
        }

        static {
            zzaeu = new zza();
            zzaev = new zza();
        }

        private zza() {
        }

        public void draw(Canvas canvas) {
        }

        public ConstantState getConstantState() {
            return zzaev;
        }

        public int getOpacity() {
            return -2;
        }

        public void setAlpha(int i) {
        }

        public void setColorFilter(ColorFilter colorFilter) {
        }
    }

    static final class zzb extends ConstantState {
        int zzaew;
        int zzaex;

        zzb(zzb com_google_android_gms_internal_zzls_zzb) {
            if (com_google_android_gms_internal_zzls_zzb != null) {
                this.zzaew = com_google_android_gms_internal_zzls_zzb.zzaew;
                this.zzaex = com_google_android_gms_internal_zzls_zzb.zzaex;
            }
        }

        public int getChangingConfigurations() {
            return this.zzaew;
        }

        public Drawable newDrawable() {
            return new zzls(this);
        }
    }

    public zzls(Drawable drawable, Drawable drawable2) {
        this(null);
        if (drawable == null) {
            drawable = zza.zzaeu;
        }
        this.zzaeo = drawable;
        drawable.setCallback(this);
        zzb com_google_android_gms_internal_zzls_zzb = this.zzaen;
        com_google_android_gms_internal_zzls_zzb.zzaex |= drawable.getChangingConfigurations();
        if (drawable2 == null) {
            drawable2 = zza.zzaeu;
        }
        this.zzaep = drawable2;
        drawable2.setCallback(this);
        com_google_android_gms_internal_zzls_zzb = this.zzaen;
        com_google_android_gms_internal_zzls_zzb.zzaex |= drawable2.getChangingConfigurations();
    }

    zzls(zzb com_google_android_gms_internal_zzls_zzb) {
        this.zzaeh = 0;
        this.zzaej = MotionEventCompat.ACTION_MASK;
        this.zzael = 0;
        this.zzaea = true;
        this.zzaen = new zzb(com_google_android_gms_internal_zzls_zzb);
    }

    public boolean canConstantState() {
        if (!this.zzaeq) {
            boolean z = (this.zzaeo.getConstantState() == null || this.zzaep.getConstantState() == null) ? false : true;
            this.zzaer = z;
            this.zzaeq = true;
        }
        return this.zzaer;
    }

    /* JADX WARNING: inconsistent code. */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public void draw(android.graphics.Canvas r8) {
        /*
        r7 = this;
        r1 = 1;
        r6 = 1065353216; // 0x3f800000 float:1.0 double:5.263544247E-315;
        r0 = 0;
        r2 = r7.zzaeh;
        switch(r2) {
            case 1: goto L_0x0028;
            case 2: goto L_0x0032;
            default: goto L_0x0009;
        };
    L_0x0009:
        r0 = r1;
    L_0x000a:
        r1 = r7.zzael;
        r2 = r7.zzaea;
        r3 = r7.zzaeo;
        r4 = r7.zzaep;
        if (r0 == 0) goto L_0x0064;
    L_0x0014:
        if (r2 == 0) goto L_0x0018;
    L_0x0016:
        if (r1 != 0) goto L_0x001b;
    L_0x0018:
        r3.draw(r8);
    L_0x001b:
        r0 = r7.zzaej;
        if (r1 != r0) goto L_0x0027;
    L_0x001f:
        r0 = r7.zzaej;
        r4.setAlpha(r0);
        r4.draw(r8);
    L_0x0027:
        return;
    L_0x0028:
        r2 = android.os.SystemClock.uptimeMillis();
        r7.zzNY = r2;
        r1 = 2;
        r7.zzaeh = r1;
        goto L_0x000a;
    L_0x0032:
        r2 = r7.zzNY;
        r4 = 0;
        r2 = (r2 > r4 ? 1 : (r2 == r4 ? 0 : -1));
        if (r2 < 0) goto L_0x0009;
    L_0x003a:
        r2 = android.os.SystemClock.uptimeMillis();
        r4 = r7.zzNY;
        r2 = r2 - r4;
        r2 = (float) r2;
        r3 = r7.zzaek;
        r3 = (float) r3;
        r2 = r2 / r3;
        r3 = (r2 > r6 ? 1 : (r2 == r6 ? 0 : -1));
        if (r3 < 0) goto L_0x0062;
    L_0x004a:
        if (r1 == 0) goto L_0x004e;
    L_0x004c:
        r7.zzaeh = r0;
    L_0x004e:
        r0 = java.lang.Math.min(r2, r6);
        r2 = r7.mFrom;
        r2 = (float) r2;
        r3 = r7.zzaei;
        r4 = r7.mFrom;
        r3 = r3 - r4;
        r3 = (float) r3;
        r0 = r0 * r3;
        r0 = r0 + r2;
        r0 = (int) r0;
        r7.zzael = r0;
        r0 = r1;
        goto L_0x000a;
    L_0x0062:
        r1 = r0;
        goto L_0x004a;
    L_0x0064:
        if (r2 == 0) goto L_0x006c;
    L_0x0066:
        r0 = r7.zzaej;
        r0 = r0 - r1;
        r3.setAlpha(r0);
    L_0x006c:
        r3.draw(r8);
        if (r2 == 0) goto L_0x0076;
    L_0x0071:
        r0 = r7.zzaej;
        r3.setAlpha(r0);
    L_0x0076:
        if (r1 <= 0) goto L_0x0083;
    L_0x0078:
        r4.setAlpha(r1);
        r4.draw(r8);
        r0 = r7.zzaej;
        r4.setAlpha(r0);
    L_0x0083:
        r7.invalidateSelf();
        goto L_0x0027;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.zzls.draw(android.graphics.Canvas):void");
    }

    public int getChangingConfigurations() {
        return (super.getChangingConfigurations() | this.zzaen.zzaew) | this.zzaen.zzaex;
    }

    public ConstantState getConstantState() {
        if (!canConstantState()) {
            return null;
        }
        this.zzaen.zzaew = getChangingConfigurations();
        return this.zzaen;
    }

    public int getIntrinsicHeight() {
        return Math.max(this.zzaeo.getIntrinsicHeight(), this.zzaep.getIntrinsicHeight());
    }

    public int getIntrinsicWidth() {
        return Math.max(this.zzaeo.getIntrinsicWidth(), this.zzaep.getIntrinsicWidth());
    }

    public int getOpacity() {
        if (!this.zzaes) {
            this.zzaet = Drawable.resolveOpacity(this.zzaeo.getOpacity(), this.zzaep.getOpacity());
            this.zzaes = true;
        }
        return this.zzaet;
    }

    public void invalidateDrawable(Drawable drawable) {
        if (zzmx.zzqu()) {
            Callback callback = getCallback();
            if (callback != null) {
                callback.invalidateDrawable(this);
            }
        }
    }

    public Drawable mutate() {
        if (!this.zzaem && super.mutate() == this) {
            if (canConstantState()) {
                this.zzaeo.mutate();
                this.zzaep.mutate();
                this.zzaem = true;
            } else {
                throw new IllegalStateException("One or more children of this LayerDrawable does not have constant state; this drawable cannot be mutated.");
            }
        }
        return this;
    }

    protected void onBoundsChange(Rect rect) {
        this.zzaeo.setBounds(rect);
        this.zzaep.setBounds(rect);
    }

    public void scheduleDrawable(Drawable drawable, Runnable runnable, long j) {
        if (zzmx.zzqu()) {
            Callback callback = getCallback();
            if (callback != null) {
                callback.scheduleDrawable(this, runnable, j);
            }
        }
    }

    public void setAlpha(int i) {
        if (this.zzael == this.zzaej) {
            this.zzael = i;
        }
        this.zzaej = i;
        invalidateSelf();
    }

    public void setColorFilter(ColorFilter colorFilter) {
        this.zzaeo.setColorFilter(colorFilter);
        this.zzaep.setColorFilter(colorFilter);
    }

    public void startTransition(int i) {
        this.mFrom = 0;
        this.zzaei = this.zzaej;
        this.zzael = 0;
        this.zzaek = i;
        this.zzaeh = 1;
        invalidateSelf();
    }

    public void unscheduleDrawable(Drawable drawable, Runnable runnable) {
        if (zzmx.zzqu()) {
            Callback callback = getCallback();
            if (callback != null) {
                callback.unscheduleDrawable(this, runnable);
            }
        }
    }

    public Drawable zzoF() {
        return this.zzaep;
    }
}
