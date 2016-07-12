package com.google.android.gms.common.images;

import android.app.ActivityManager;
import android.content.ComponentCallbacks2;
import android.content.Context;
import android.content.Intent;
import android.content.res.Configuration;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.os.ParcelFileDescriptor;
import android.os.ResultReceiver;
import android.os.SystemClock;
import android.support.v4.view.accessibility.AccessibilityNodeInfoCompat;
import android.util.Log;
import android.widget.ImageView;
import com.google.android.gms.internal.zzlv;
import com.google.android.gms.internal.zzmg;
import com.google.android.gms.internal.zzmx;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Map;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;

public final class ImageManager {
    private static final Object zzadG;
    private static HashSet<Uri> zzadH;
    private static ImageManager zzadI;
    private static ImageManager zzadJ;
    private final Context mContext;
    private final Handler mHandler;
    private final ExecutorService zzadK;
    private final zzb zzadL;
    private final zzlv zzadM;
    private final Map<zza, ImageReceiver> zzadN;
    private final Map<Uri, ImageReceiver> zzadO;
    private final Map<Uri, Long> zzadP;

    private final class ImageReceiver extends ResultReceiver {
        private final Uri mUri;
        private final ArrayList<zza> zzadQ;
        final /* synthetic */ ImageManager zzadR;

        ImageReceiver(ImageManager imageManager, Uri uri) {
            this.zzadR = imageManager;
            super(new Handler(Looper.getMainLooper()));
            this.mUri = uri;
            this.zzadQ = new ArrayList();
        }

        public void onReceiveResult(int i, Bundle bundle) {
            this.zzadR.zzadK.execute(new zzc(this.zzadR, this.mUri, (ParcelFileDescriptor) bundle.getParcelable("com.google.android.gms.extra.fileDescriptor")));
        }

        public void zzb(zza com_google_android_gms_common_images_zza) {
            com.google.android.gms.common.internal.zzb.zzci("ImageReceiver.addImageRequest() must be called in the main thread");
            this.zzadQ.add(com_google_android_gms_common_images_zza);
        }

        public void zzc(zza com_google_android_gms_common_images_zza) {
            com.google.android.gms.common.internal.zzb.zzci("ImageReceiver.removeImageRequest() must be called in the main thread");
            this.zzadQ.remove(com_google_android_gms_common_images_zza);
        }

        public void zzoE() {
            Intent intent = new Intent("com.google.android.gms.common.images.LOAD_IMAGE");
            intent.putExtra("com.google.android.gms.extras.uri", this.mUri);
            intent.putExtra("com.google.android.gms.extras.resultReceiver", this);
            intent.putExtra("com.google.android.gms.extras.priority", 3);
            this.zzadR.mContext.sendBroadcast(intent);
        }
    }

    public interface OnImageLoadedListener {
        void onImageLoaded(Uri uri, Drawable drawable, boolean z);
    }

    private static final class zza {
        static int zza(ActivityManager activityManager) {
            return activityManager.getLargeMemoryClass();
        }
    }

    private static final class zzb extends zzmg<zza, Bitmap> {
        public zzb(Context context) {
            super(zzaj(context));
        }

        private static int zzaj(Context context) {
            ActivityManager activityManager = (ActivityManager) context.getSystemService("activity");
            int memoryClass = (((context.getApplicationInfo().flags & AccessibilityNodeInfoCompat.ACTION_DISMISS) != 0 ? 1 : null) == null || !zzmx.zzqu()) ? activityManager.getMemoryClass() : zza.zza(activityManager);
            return (int) (((float) (memoryClass * AccessibilityNodeInfoCompat.ACTION_DISMISS)) * 0.33f);
        }

        protected /* synthetic */ void entryRemoved(boolean z, Object obj, Object obj2, Object obj3) {
            zza(z, (zza) obj, (Bitmap) obj2, (Bitmap) obj3);
        }

        protected /* synthetic */ int sizeOf(Object obj, Object obj2) {
            return zza((zza) obj, (Bitmap) obj2);
        }

        protected int zza(zza com_google_android_gms_common_images_zza_zza, Bitmap bitmap) {
            return bitmap.getHeight() * bitmap.getRowBytes();
        }

        protected void zza(boolean z, zza com_google_android_gms_common_images_zza_zza, Bitmap bitmap, Bitmap bitmap2) {
            super.entryRemoved(z, com_google_android_gms_common_images_zza_zza, bitmap, bitmap2);
        }
    }

    private final class zzc implements Runnable {
        private final Uri mUri;
        final /* synthetic */ ImageManager zzadR;
        private final ParcelFileDescriptor zzadS;

        public zzc(ImageManager imageManager, Uri uri, ParcelFileDescriptor parcelFileDescriptor) {
            this.zzadR = imageManager;
            this.mUri = uri;
            this.zzadS = parcelFileDescriptor;
        }

        public void run() {
            Bitmap bitmap = null;
            boolean z = false;
            com.google.android.gms.common.internal.zzb.zzcj("LoadBitmapFromDiskRunnable can't be executed in the main thread");
            if (this.zzadS != null) {
                try {
                    bitmap = BitmapFactory.decodeFileDescriptor(this.zzadS.getFileDescriptor());
                } catch (Throwable e) {
                    Log.e("ImageManager", "OOM while loading bitmap for uri: " + this.mUri, e);
                    z = true;
                }
                try {
                    this.zzadS.close();
                } catch (Throwable e2) {
                    Log.e("ImageManager", "closed failed", e2);
                }
            }
            CountDownLatch countDownLatch = new CountDownLatch(1);
            this.zzadR.mHandler.post(new zzf(this.zzadR, this.mUri, bitmap, z, countDownLatch));
            try {
                countDownLatch.await();
            } catch (InterruptedException e3) {
                Log.w("ImageManager", "Latch interrupted while posting " + this.mUri);
            }
        }
    }

    private final class zzd implements Runnable {
        final /* synthetic */ ImageManager zzadR;
        private final zza zzadT;

        public zzd(ImageManager imageManager, zza com_google_android_gms_common_images_zza) {
            this.zzadR = imageManager;
            this.zzadT = com_google_android_gms_common_images_zza;
        }

        public void run() {
            com.google.android.gms.common.internal.zzb.zzci("LoadImageRunnable must be executed on the main thread");
            ImageReceiver imageReceiver = (ImageReceiver) this.zzadR.zzadN.get(this.zzadT);
            if (imageReceiver != null) {
                this.zzadR.zzadN.remove(this.zzadT);
                imageReceiver.zzc(this.zzadT);
            }
            zza com_google_android_gms_common_images_zza_zza = this.zzadT.zzadV;
            if (com_google_android_gms_common_images_zza_zza.uri == null) {
                this.zzadT.zza(this.zzadR.mContext, this.zzadR.zzadM, true);
                return;
            }
            Bitmap zza = this.zzadR.zza(com_google_android_gms_common_images_zza_zza);
            if (zza != null) {
                this.zzadT.zza(this.zzadR.mContext, zza, true);
                return;
            }
            Long l = (Long) this.zzadR.zzadP.get(com_google_android_gms_common_images_zza_zza.uri);
            if (l != null) {
                if (SystemClock.elapsedRealtime() - l.longValue() < 3600000) {
                    this.zzadT.zza(this.zzadR.mContext, this.zzadR.zzadM, true);
                    return;
                }
                this.zzadR.zzadP.remove(com_google_android_gms_common_images_zza_zza.uri);
            }
            this.zzadT.zza(this.zzadR.mContext, this.zzadR.zzadM);
            imageReceiver = (ImageReceiver) this.zzadR.zzadO.get(com_google_android_gms_common_images_zza_zza.uri);
            if (imageReceiver == null) {
                imageReceiver = new ImageReceiver(this.zzadR, com_google_android_gms_common_images_zza_zza.uri);
                this.zzadR.zzadO.put(com_google_android_gms_common_images_zza_zza.uri, imageReceiver);
            }
            imageReceiver.zzb(this.zzadT);
            if (!(this.zzadT instanceof com.google.android.gms.common.images.zza.zzc)) {
                this.zzadR.zzadN.put(this.zzadT, imageReceiver);
            }
            synchronized (ImageManager.zzadG) {
                if (!ImageManager.zzadH.contains(com_google_android_gms_common_images_zza_zza.uri)) {
                    ImageManager.zzadH.add(com_google_android_gms_common_images_zza_zza.uri);
                    imageReceiver.zzoE();
                }
            }
        }
    }

    private static final class zze implements ComponentCallbacks2 {
        private final zzb zzadL;

        public zze(zzb com_google_android_gms_common_images_ImageManager_zzb) {
            this.zzadL = com_google_android_gms_common_images_ImageManager_zzb;
        }

        public void onConfigurationChanged(Configuration configuration) {
        }

        public void onLowMemory() {
            this.zzadL.evictAll();
        }

        public void onTrimMemory(int i) {
            if (i >= 60) {
                this.zzadL.evictAll();
            } else if (i >= 20) {
                this.zzadL.trimToSize(this.zzadL.size() / 2);
            }
        }
    }

    private final class zzf implements Runnable {
        private final Bitmap mBitmap;
        private final Uri mUri;
        final /* synthetic */ ImageManager zzadR;
        private boolean zzadU;
        private final CountDownLatch zzoS;

        public zzf(ImageManager imageManager, Uri uri, Bitmap bitmap, boolean z, CountDownLatch countDownLatch) {
            this.zzadR = imageManager;
            this.mUri = uri;
            this.mBitmap = bitmap;
            this.zzadU = z;
            this.zzoS = countDownLatch;
        }

        private void zza(ImageReceiver imageReceiver, boolean z) {
            ArrayList zza = imageReceiver.zzadQ;
            int size = zza.size();
            for (int i = 0; i < size; i++) {
                zza com_google_android_gms_common_images_zza = (zza) zza.get(i);
                if (z) {
                    com_google_android_gms_common_images_zza.zza(this.zzadR.mContext, this.mBitmap, false);
                } else {
                    this.zzadR.zzadP.put(this.mUri, Long.valueOf(SystemClock.elapsedRealtime()));
                    com_google_android_gms_common_images_zza.zza(this.zzadR.mContext, this.zzadR.zzadM, false);
                }
                if (!(com_google_android_gms_common_images_zza instanceof com.google.android.gms.common.images.zza.zzc)) {
                    this.zzadR.zzadN.remove(com_google_android_gms_common_images_zza);
                }
            }
        }

        public void run() {
            com.google.android.gms.common.internal.zzb.zzci("OnBitmapLoadedRunnable must be executed in the main thread");
            boolean z = this.mBitmap != null;
            if (this.zzadR.zzadL != null) {
                if (this.zzadU) {
                    this.zzadR.zzadL.evictAll();
                    System.gc();
                    this.zzadU = false;
                    this.zzadR.mHandler.post(this);
                    return;
                } else if (z) {
                    this.zzadR.zzadL.put(new zza(this.mUri), this.mBitmap);
                }
            }
            ImageReceiver imageReceiver = (ImageReceiver) this.zzadR.zzadO.remove(this.mUri);
            if (imageReceiver != null) {
                zza(imageReceiver, z);
            }
            this.zzoS.countDown();
            synchronized (ImageManager.zzadG) {
                ImageManager.zzadH.remove(this.mUri);
            }
        }
    }

    static {
        zzadG = new Object();
        zzadH = new HashSet();
    }

    private ImageManager(Context context, boolean z) {
        this.mContext = context.getApplicationContext();
        this.mHandler = new Handler(Looper.getMainLooper());
        this.zzadK = Executors.newFixedThreadPool(4);
        if (z) {
            this.zzadL = new zzb(this.mContext);
            if (zzmx.zzqx()) {
                zzoB();
            }
        } else {
            this.zzadL = null;
        }
        this.zzadM = new zzlv();
        this.zzadN = new HashMap();
        this.zzadO = new HashMap();
        this.zzadP = new HashMap();
    }

    public static ImageManager create(Context context) {
        return zzb(context, false);
    }

    private Bitmap zza(zza com_google_android_gms_common_images_zza_zza) {
        return this.zzadL == null ? null : (Bitmap) this.zzadL.get(com_google_android_gms_common_images_zza_zza);
    }

    public static ImageManager zzb(Context context, boolean z) {
        if (z) {
            if (zzadJ == null) {
                zzadJ = new ImageManager(context, true);
            }
            return zzadJ;
        }
        if (zzadI == null) {
            zzadI = new ImageManager(context, false);
        }
        return zzadI;
    }

    private void zzoB() {
        this.mContext.registerComponentCallbacks(new zze(this.zzadL));
    }

    public void loadImage(ImageView imageView, int i) {
        zza(new com.google.android.gms.common.images.zza.zzb(imageView, i));
    }

    public void loadImage(ImageView imageView, Uri uri) {
        zza(new com.google.android.gms.common.images.zza.zzb(imageView, uri));
    }

    public void loadImage(ImageView imageView, Uri uri, int i) {
        zza com_google_android_gms_common_images_zza_zzb = new com.google.android.gms.common.images.zza.zzb(imageView, uri);
        com_google_android_gms_common_images_zza_zzb.zzby(i);
        zza(com_google_android_gms_common_images_zza_zzb);
    }

    public void loadImage(OnImageLoadedListener onImageLoadedListener, Uri uri) {
        zza(new com.google.android.gms.common.images.zza.zzc(onImageLoadedListener, uri));
    }

    public void loadImage(OnImageLoadedListener onImageLoadedListener, Uri uri, int i) {
        zza com_google_android_gms_common_images_zza_zzc = new com.google.android.gms.common.images.zza.zzc(onImageLoadedListener, uri);
        com_google_android_gms_common_images_zza_zzc.zzby(i);
        zza(com_google_android_gms_common_images_zza_zzc);
    }

    public void zza(zza com_google_android_gms_common_images_zza) {
        com.google.android.gms.common.internal.zzb.zzci("ImageManager.loadImage() must be called in the main thread");
        new zzd(this, com_google_android_gms_common_images_zza).run();
    }
}
