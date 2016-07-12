package com.google.android.gms.internal;

import android.graphics.Bitmap;
import android.graphics.Bitmap.Config;
import android.graphics.Canvas;
import android.os.AsyncTask;
import android.os.Handler;
import android.os.Looper;
import android.text.TextUtils;
import android.view.View.MeasureSpec;
import android.webkit.WebView;
import com.google.android.gms.ads.internal.request.AdResponseParcel;
import com.google.android.gms.ads.internal.util.client.zzb;
import com.google.android.gms.ads.internal.zzp;
import com.voxelbusters.nativeplugins.defines.Keys.Mime;

@zzgr
public class zzgd implements Runnable {
    private final Handler zzDk;
    private final long zzDl;
    private long zzDm;
    private com.google.android.gms.internal.zzja.zza zzDn;
    protected boolean zzDo;
    protected boolean zzDp;
    private final int zznQ;
    private final int zznR;
    protected final zziz zzoM;

    protected final class zza extends AsyncTask<Void, Void, Boolean> {
        private final WebView zzDq;
        private Bitmap zzDr;
        final /* synthetic */ zzgd zzDs;

        public zza(zzgd com_google_android_gms_internal_zzgd, WebView webView) {
            this.zzDs = com_google_android_gms_internal_zzgd;
            this.zzDq = webView;
        }

        protected /* synthetic */ Object doInBackground(Object[] objArr) {
            return zza((Void[]) objArr);
        }

        protected /* synthetic */ void onPostExecute(Object obj) {
            zza((Boolean) obj);
        }

        protected void onPreExecute() {
            synchronized (this) {
                this.zzDr = Bitmap.createBitmap(this.zzDs.zznQ, this.zzDs.zznR, Config.ARGB_8888);
                this.zzDq.setVisibility(0);
                this.zzDq.measure(MeasureSpec.makeMeasureSpec(this.zzDs.zznQ, 0), MeasureSpec.makeMeasureSpec(this.zzDs.zznR, 0));
                this.zzDq.layout(0, 0, this.zzDs.zznQ, this.zzDs.zznR);
                this.zzDq.draw(new Canvas(this.zzDr));
                this.zzDq.invalidate();
            }
        }

        protected Boolean zza(Void... voidArr) {
            Boolean valueOf;
            synchronized (this) {
                int width = this.zzDr.getWidth();
                int height = this.zzDr.getHeight();
                if (width == 0 || height == 0) {
                    valueOf = Boolean.valueOf(false);
                } else {
                    int i = 0;
                    for (int i2 = 0; i2 < width; i2 += 10) {
                        for (int i3 = 0; i3 < height; i3 += 10) {
                            if (this.zzDr.getPixel(i2, i3) != 0) {
                                i++;
                            }
                        }
                    }
                    valueOf = Boolean.valueOf(((double) i) / (((double) (width * height)) / 100.0d) > 0.1d);
                }
            }
            return valueOf;
        }

        protected void zza(Boolean bool) {
            zzgd.zzc(this.zzDs);
            if (bool.booleanValue() || this.zzDs.zzfx() || this.zzDs.zzDm <= 0) {
                this.zzDs.zzDp = bool.booleanValue();
                this.zzDs.zzDn.zza(this.zzDs.zzoM, true);
            } else if (this.zzDs.zzDm > 0) {
                if (zzb.zzN(2)) {
                    zzb.zzaF("Ad not detected, scheduling another run.");
                }
                this.zzDs.zzDk.postDelayed(this.zzDs, this.zzDs.zzDl);
            }
        }
    }

    public zzgd(com.google.android.gms.internal.zzja.zza com_google_android_gms_internal_zzja_zza, zziz com_google_android_gms_internal_zziz, int i, int i2) {
        this(com_google_android_gms_internal_zzja_zza, com_google_android_gms_internal_zziz, i, i2, 200, 50);
    }

    public zzgd(com.google.android.gms.internal.zzja.zza com_google_android_gms_internal_zzja_zza, zziz com_google_android_gms_internal_zziz, int i, int i2, long j, long j2) {
        this.zzDl = j;
        this.zzDm = j2;
        this.zzDk = new Handler(Looper.getMainLooper());
        this.zzoM = com_google_android_gms_internal_zziz;
        this.zzDn = com_google_android_gms_internal_zzja_zza;
        this.zzDo = false;
        this.zzDp = false;
        this.zznR = i2;
        this.zznQ = i;
    }

    static /* synthetic */ long zzc(zzgd com_google_android_gms_internal_zzgd) {
        long j = com_google_android_gms_internal_zzgd.zzDm - 1;
        com_google_android_gms_internal_zzgd.zzDm = j;
        return j;
    }

    public void run() {
        if (this.zzoM == null || zzfx()) {
            this.zzDn.zza(this.zzoM, true);
        } else {
            new zza(this, this.zzoM.getWebView()).execute(new Void[0]);
        }
    }

    public void zza(AdResponseParcel adResponseParcel) {
        zza(adResponseParcel, new zzji(this, this.zzoM, adResponseParcel.zzER));
    }

    public void zza(AdResponseParcel adResponseParcel, zzji com_google_android_gms_internal_zzji) {
        this.zzoM.setWebViewClient(com_google_android_gms_internal_zzji);
        this.zzoM.loadDataWithBaseURL(TextUtils.isEmpty(adResponseParcel.zzBF) ? null : zzp.zzbv().zzaz(adResponseParcel.zzBF), adResponseParcel.body, Mime.HTML_TEXT, "UTF-8", null);
    }

    public void zzfv() {
        this.zzDk.postDelayed(this, this.zzDl);
    }

    public void zzfw() {
        synchronized (this) {
            this.zzDo = true;
        }
    }

    public boolean zzfx() {
        boolean z;
        synchronized (this) {
            z = this.zzDo;
        }
        return z;
    }

    public boolean zzfy() {
        return this.zzDp;
    }
}
