package com.google.android.gms.common.images;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.widget.ImageView;
import com.google.android.gms.common.images.ImageManager.OnImageLoadedListener;
import com.google.android.gms.common.internal.zzw;
import com.google.android.gms.internal.zzls;
import com.google.android.gms.internal.zzlt;
import com.google.android.gms.internal.zzlu;
import com.google.android.gms.internal.zzlv;
import java.lang.ref.WeakReference;

public abstract class zza {
    final zza zzadV;
    protected int zzadW;
    protected int zzadX;
    protected boolean zzadY;
    protected OnImageLoadedListener zzadZ;
    private boolean zzaea;
    private boolean zzaeb;
    private boolean zzaec;
    protected int zzaed;

    static final class zza {
        public final Uri uri;

        public zza(Uri uri) {
            this.uri = uri;
        }

        public boolean equals(Object obj) {
            return !(obj instanceof zza) ? false : this == obj ? true : zzw.equal(((zza) obj).uri, this.uri);
        }

        public int hashCode() {
            return zzw.hashCode(this.uri);
        }
    }

    public static final class zzb extends zza {
        private WeakReference<ImageView> zzaee;

        public zzb(ImageView imageView, int i) {
            super(null, i);
            com.google.android.gms.common.internal.zzb.zzs(imageView);
            this.zzaee = new WeakReference(imageView);
        }

        public zzb(ImageView imageView, Uri uri) {
            super(uri, 0);
            com.google.android.gms.common.internal.zzb.zzs(imageView);
            this.zzaee = new WeakReference(imageView);
        }

        private void zza(ImageView imageView, Drawable drawable, boolean z, boolean z2, boolean z3) {
            Object obj = (z2 || z3) ? null : 1;
            if (obj != null && (imageView instanceof zzlu)) {
                int zzoH = ((zzlu) imageView).zzoH();
                if (this.zzadX != 0 && zzoH == this.zzadX) {
                    return;
                }
            }
            boolean zzb = zzb(z, z2);
            Drawable newDrawable = (!this.zzadY || drawable == null) ? drawable : drawable.getConstantState().newDrawable();
            if (zzb) {
                newDrawable = zza(imageView.getDrawable(), newDrawable);
            }
            imageView.setImageDrawable(newDrawable);
            if (imageView instanceof zzlu) {
                zzlu com_google_android_gms_internal_zzlu = (zzlu) imageView;
                com_google_android_gms_internal_zzlu.zzj(z3 ? this.zzadV.uri : null);
                com_google_android_gms_internal_zzlu.zzbA(obj != null ? this.zzadX : 0);
            }
            if (zzb) {
                ((zzls) newDrawable).startTransition(250);
            }
        }

        public boolean equals(Object obj) {
            if (!(obj instanceof zzb)) {
                return false;
            }
            if (this == obj) {
                return true;
            }
            ImageView imageView = (ImageView) this.zzaee.get();
            ImageView imageView2 = (ImageView) ((zzb) obj).zzaee.get();
            return (imageView2 == null || imageView == null || !zzw.equal(imageView2, imageView)) ? false : true;
        }

        public int hashCode() {
            return 0;
        }

        protected void zza(Drawable drawable, boolean z, boolean z2, boolean z3) {
            ImageView imageView = (ImageView) this.zzaee.get();
            if (imageView != null) {
                zza(imageView, drawable, z, z2, z3);
            }
        }
    }

    public static final class zzc extends zza {
        private WeakReference<OnImageLoadedListener> zzaef;

        public zzc(OnImageLoadedListener onImageLoadedListener, Uri uri) {
            super(uri, 0);
            com.google.android.gms.common.internal.zzb.zzs(onImageLoadedListener);
            this.zzaef = new WeakReference(onImageLoadedListener);
        }

        public boolean equals(Object obj) {
            if (!(obj instanceof zzc)) {
                return false;
            }
            if (this == obj) {
                return true;
            }
            zzc com_google_android_gms_common_images_zza_zzc = (zzc) obj;
            OnImageLoadedListener onImageLoadedListener = (OnImageLoadedListener) this.zzaef.get();
            OnImageLoadedListener onImageLoadedListener2 = (OnImageLoadedListener) com_google_android_gms_common_images_zza_zzc.zzaef.get();
            return onImageLoadedListener2 != null && onImageLoadedListener != null && zzw.equal(onImageLoadedListener2, onImageLoadedListener) && zzw.equal(com_google_android_gms_common_images_zza_zzc.zzadV, this.zzadV);
        }

        public int hashCode() {
            return zzw.hashCode(this.zzadV);
        }

        protected void zza(Drawable drawable, boolean z, boolean z2, boolean z3) {
            if (!z2) {
                OnImageLoadedListener onImageLoadedListener = (OnImageLoadedListener) this.zzaef.get();
                if (onImageLoadedListener != null) {
                    onImageLoadedListener.onImageLoaded(this.zzadV.uri, drawable, z3);
                }
            }
        }
    }

    public zza(Uri uri, int i) {
        this.zzadW = 0;
        this.zzadX = 0;
        this.zzadY = false;
        this.zzaea = true;
        this.zzaeb = false;
        this.zzaec = true;
        this.zzadV = new zza(uri);
        this.zzadX = i;
    }

    private Drawable zza(Context context, zzlv com_google_android_gms_internal_zzlv, int i) {
        Resources resources = context.getResources();
        if (this.zzaed <= 0) {
            return resources.getDrawable(i);
        }
        com.google.android.gms.internal.zzlv.zza com_google_android_gms_internal_zzlv_zza = new com.google.android.gms.internal.zzlv.zza(i, this.zzaed);
        Drawable drawable = (Drawable) com_google_android_gms_internal_zzlv.get(com_google_android_gms_internal_zzlv_zza);
        if (drawable != null) {
            return drawable;
        }
        drawable = resources.getDrawable(i);
        if ((this.zzaed & 1) != 0) {
            drawable = zza(resources, drawable);
        }
        com_google_android_gms_internal_zzlv.put(com_google_android_gms_internal_zzlv_zza, drawable);
        return drawable;
    }

    protected Drawable zza(Resources resources, Drawable drawable) {
        return zzlt.zza(resources, drawable);
    }

    protected zzls zza(Drawable drawable, Drawable drawable2) {
        if (drawable == null) {
            drawable = null;
        } else if (drawable instanceof zzls) {
            drawable = ((zzls) drawable).zzoF();
        }
        return new zzls(drawable, drawable2);
    }

    void zza(Context context, Bitmap bitmap, boolean z) {
        com.google.android.gms.common.internal.zzb.zzs(bitmap);
        if ((this.zzaed & 1) != 0) {
            bitmap = zzlt.zza(bitmap);
        }
        Drawable bitmapDrawable = new BitmapDrawable(context.getResources(), bitmap);
        if (this.zzadZ != null) {
            this.zzadZ.onImageLoaded(this.zzadV.uri, bitmapDrawable, true);
        }
        zza(bitmapDrawable, z, false, true);
    }

    void zza(Context context, zzlv com_google_android_gms_internal_zzlv) {
        if (this.zzaec) {
            Drawable drawable = null;
            if (this.zzadW != 0) {
                drawable = zza(context, com_google_android_gms_internal_zzlv, this.zzadW);
            }
            zza(drawable, false, true, false);
        }
    }

    void zza(Context context, zzlv com_google_android_gms_internal_zzlv, boolean z) {
        Drawable drawable = null;
        if (this.zzadX != 0) {
            drawable = zza(context, com_google_android_gms_internal_zzlv, this.zzadX);
        }
        if (this.zzadZ != null) {
            this.zzadZ.onImageLoaded(this.zzadV.uri, drawable, false);
        }
        zza(drawable, z, false, false);
    }

    protected abstract void zza(Drawable drawable, boolean z, boolean z2, boolean z3);

    protected boolean zzb(boolean z, boolean z2) {
        return this.zzaea && !z2 && (!z || this.zzaeb);
    }

    public void zzby(int i) {
        this.zzadX = i;
    }
}
