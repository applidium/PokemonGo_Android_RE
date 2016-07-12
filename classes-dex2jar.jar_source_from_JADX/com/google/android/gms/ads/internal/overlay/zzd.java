package com.google.android.gms.ads.internal.overlay;

import android.app.Activity;
import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Color;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.support.v4.view.ViewCompat;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewGroup.LayoutParams;
import android.view.ViewParent;
import android.view.Window;
import android.webkit.WebChromeClient.CustomViewCallback;
import android.widget.FrameLayout;
import android.widget.RelativeLayout;
import com.google.android.gms.ads.internal.zzp;
import com.google.android.gms.internal.zzby;
import com.google.android.gms.internal.zzgr;
import com.google.android.gms.internal.zzhz;
import com.google.android.gms.internal.zzid;
import com.google.android.gms.internal.zzif;
import com.google.android.gms.internal.zziz;
import com.google.android.gms.location.places.Place;
import com.nianticproject.holoholo.sfida.SfidaMessage;
import com.voxelbusters.nativeplugins.defines.Keys.Mime;
import java.util.Collections;
import spacemadness.com.lunarconsole.C1401R;

@zzgr
public class zzd extends com.google.android.gms.internal.zzfk.zza implements zzo {
    static final int zzBh;
    private final Activity mActivity;
    RelativeLayout zzAn;
    AdOverlayInfoParcel zzBi;
    zzc zzBj;
    zzm zzBk;
    boolean zzBl;
    FrameLayout zzBm;
    CustomViewCallback zzBn;
    boolean zzBo;
    boolean zzBp;
    boolean zzBq;
    int zzBr;
    private boolean zzBs;
    private boolean zzBt;
    private boolean zzBu;
    zziz zzoM;

    /* renamed from: com.google.android.gms.ads.internal.overlay.zzd.1 */
    class C01891 implements com.google.android.gms.internal.zzja.zza {
        final /* synthetic */ zzd zzBv;

        C01891(zzd com_google_android_gms_ads_internal_overlay_zzd) {
            this.zzBv = com_google_android_gms_ads_internal_overlay_zzd;
        }

        public void zza(zziz com_google_android_gms_internal_zziz, boolean z) {
            com_google_android_gms_internal_zziz.zzeJ();
        }
    }

    @zzgr
    private static final class zza extends Exception {
        public zza(String str) {
            super(str);
        }
    }

    @zzgr
    static final class zzb extends RelativeLayout {
        zzif zzqQ;

        public zzb(Context context, String str) {
            super(context);
            this.zzqQ = new zzif(context, str);
        }

        public boolean onInterceptTouchEvent(MotionEvent motionEvent) {
            this.zzqQ.zze(motionEvent);
            return false;
        }
    }

    @zzgr
    public static class zzc {
        public final Context context;
        public final int index;
        public final LayoutParams zzBw;
        public final ViewGroup zzBx;

        public zzc(zziz com_google_android_gms_internal_zziz) throws zza {
            this.zzBw = com_google_android_gms_internal_zziz.getLayoutParams();
            ViewParent parent = com_google_android_gms_internal_zziz.getParent();
            this.context = com_google_android_gms_internal_zziz.zzha();
            if (parent == null || !(parent instanceof ViewGroup)) {
                throw new zza("Could not get the parent of the WebView for an overlay.");
            }
            this.zzBx = (ViewGroup) parent;
            this.index = this.zzBx.indexOfChild(com_google_android_gms_internal_zziz.getView());
            this.zzBx.removeView(com_google_android_gms_internal_zziz.getView());
            com_google_android_gms_internal_zziz.zzC(true);
        }
    }

    @zzgr
    private class zzd extends zzhz {
        final /* synthetic */ zzd zzBv;

        /* renamed from: com.google.android.gms.ads.internal.overlay.zzd.zzd.1 */
        class C01901 implements Runnable {
            final /* synthetic */ Drawable zzBy;
            final /* synthetic */ zzd zzBz;

            C01901(zzd com_google_android_gms_ads_internal_overlay_zzd_zzd, Drawable drawable) {
                this.zzBz = com_google_android_gms_ads_internal_overlay_zzd_zzd;
                this.zzBy = drawable;
            }

            public void run() {
                this.zzBz.zzBv.mActivity.getWindow().setBackgroundDrawable(this.zzBy);
            }
        }

        private zzd(zzd com_google_android_gms_ads_internal_overlay_zzd) {
            this.zzBv = com_google_android_gms_ads_internal_overlay_zzd;
        }

        public void onStop() {
        }

        public void zzbn() {
            Bitmap zzg = zzp.zzbv().zzg(this.zzBv.mActivity, this.zzBv.zzBi.zzBM.zzpv);
            if (zzg != null) {
                zzid.zzIE.post(new C01901(this, zzp.zzbx().zza(this.zzBv.mActivity, zzg, this.zzBv.zzBi.zzBM.zzpw, this.zzBv.zzBi.zzBM.zzpx)));
            }
        }
    }

    static {
        zzBh = Color.argb(0, 0, 0, 0);
    }

    public zzd(Activity activity) {
        this.zzBl = false;
        this.zzBo = false;
        this.zzBp = false;
        this.zzBq = false;
        this.zzBr = 0;
        this.zzBt = false;
        this.zzBu = true;
        this.mActivity = activity;
    }

    public void close() {
        this.zzBr = 2;
        this.mActivity.finish();
    }

    public void onBackPressed() {
        this.zzBr = 0;
    }

    public void onCreate(Bundle bundle) {
        boolean z = false;
        if (bundle != null) {
            z = bundle.getBoolean("com.google.android.gms.ads.internal.overlay.hasResumed", false);
        }
        this.zzBo = z;
        try {
            this.zzBi = AdOverlayInfoParcel.zzb(this.mActivity.getIntent());
            if (this.zzBi == null) {
                throw new zza("Could not get info for ad overlay.");
            }
            if (this.zzBi.zzqj.zzJw > 7500000) {
                this.zzBr = 3;
            }
            if (this.mActivity.getIntent() != null) {
                this.zzBu = this.mActivity.getIntent().getBooleanExtra("shouldCallOnOverlayOpened", true);
            }
            if (this.zzBi.zzBM != null) {
                this.zzBp = this.zzBi.zzBM.zzpt;
            } else {
                this.zzBp = false;
            }
            if (((Boolean) zzby.zzvz.get()).booleanValue() && this.zzBp && this.zzBi.zzBM.zzpv != null) {
                new zzd().zzgz();
            }
            if (bundle == null) {
                if (this.zzBi.zzBC != null && this.zzBu) {
                    this.zzBi.zzBC.zzaW();
                }
                if (!(this.zzBi.zzBJ == 1 || this.zzBi.zzBB == null)) {
                    this.zzBi.zzBB.onAdClicked();
                }
            }
            this.zzAn = new zzb(this.mActivity, this.zzBi.zzBL);
            switch (this.zzBi.zzBJ) {
                case C1401R.styleable.LoadingImageView_imageAspectRatio /*1*/:
                    zzv(false);
                case C1401R.styleable.LoadingImageView_circleCrop /*2*/:
                    this.zzBj = new zzc(this.zzBi.zzBD);
                    zzv(false);
                case SfidaMessage.ACTIVITY_BYTE_LENGTH /*3*/:
                    zzv(true);
                case Place.TYPE_AQUARIUM /*4*/:
                    if (this.zzBo) {
                        this.zzBr = 3;
                        this.mActivity.finish();
                    } else if (!zzp.zzbs().zza(this.mActivity, this.zzBi.zzBA, this.zzBi.zzBI)) {
                        this.zzBr = 3;
                        this.mActivity.finish();
                    }
                default:
                    throw new zza("Could not determine ad overlay type.");
            }
        } catch (zza e) {
            com.google.android.gms.ads.internal.util.client.zzb.zzaH(e.getMessage());
            this.zzBr = 3;
            this.mActivity.finish();
        }
    }

    public void onDestroy() {
        if (this.zzoM != null) {
            this.zzAn.removeView(this.zzoM.getView());
        }
        zzeH();
    }

    public void onPause() {
        zzeD();
        if (this.zzoM != null && (!this.mActivity.isFinishing() || this.zzBj == null)) {
            zzp.zzbx().zza(this.zzoM.getWebView());
        }
        zzeH();
    }

    public void onRestart() {
    }

    public void onResume() {
        if (this.zzBi != null && this.zzBi.zzBJ == 4) {
            if (this.zzBo) {
                this.zzBr = 3;
                this.mActivity.finish();
            } else {
                this.zzBo = true;
            }
        }
        if (this.zzoM == null || this.zzoM.isDestroyed()) {
            com.google.android.gms.ads.internal.util.client.zzb.zzaH("The webview does not exit. Ignoring action.");
        } else {
            zzp.zzbx().zzb(this.zzoM.getWebView());
        }
    }

    public void onSaveInstanceState(Bundle bundle) {
        bundle.putBoolean("com.google.android.gms.ads.internal.overlay.hasResumed", this.zzBo);
    }

    public void onStart() {
    }

    public void onStop() {
        zzeH();
    }

    public void setRequestedOrientation(int i) {
        this.mActivity.setRequestedOrientation(i);
    }

    public void zza(View view, CustomViewCallback customViewCallback) {
        this.zzBm = new FrameLayout(this.mActivity);
        this.zzBm.setBackgroundColor(ViewCompat.MEASURED_STATE_MASK);
        this.zzBm.addView(view, -1, -1);
        this.mActivity.setContentView(this.zzBm);
        zzaE();
        this.zzBn = customViewCallback;
        this.zzBl = true;
    }

    public void zza(boolean z, boolean z2) {
        if (this.zzBk != null) {
            this.zzBk.zza(z, z2);
        }
    }

    public void zzaE() {
        this.zzBs = true;
    }

    public void zzeD() {
        if (this.zzBi != null && this.zzBl) {
            setRequestedOrientation(this.zzBi.orientation);
        }
        if (this.zzBm != null) {
            this.mActivity.setContentView(this.zzAn);
            zzaE();
            this.zzBm.removeAllViews();
            this.zzBm = null;
        }
        if (this.zzBn != null) {
            this.zzBn.onCustomViewHidden();
            this.zzBn = null;
        }
        this.zzBl = false;
    }

    public void zzeE() {
        this.zzBr = 1;
        this.mActivity.finish();
    }

    public boolean zzeF() {
        this.zzBr = 0;
        if (this.zzoM == null) {
            return true;
        }
        boolean zzhk = this.zzoM.zzhk();
        if (zzhk) {
            return zzhk;
        }
        this.zzoM.zzb("onbackblocked", Collections.emptyMap());
        return zzhk;
    }

    public void zzeG() {
        this.zzAn.removeView(this.zzBk);
        zzu(true);
    }

    protected void zzeH() {
        if (this.mActivity.isFinishing() && !this.zzBt) {
            this.zzBt = true;
            if (this.zzoM != null) {
                zzv(this.zzBr);
                this.zzAn.removeView(this.zzoM.getView());
                if (this.zzBj != null) {
                    this.zzoM.setContext(this.zzBj.context);
                    this.zzoM.zzC(false);
                    this.zzBj.zzBx.addView(this.zzoM.getView(), this.zzBj.index, this.zzBj.zzBw);
                    this.zzBj = null;
                }
                this.zzoM = null;
            }
            if (this.zzBi != null && this.zzBi.zzBC != null) {
                this.zzBi.zzBC.zzaV();
            }
        }
    }

    public void zzeI() {
        if (this.zzBq) {
            this.zzBq = false;
            zzeJ();
        }
    }

    protected void zzeJ() {
        this.zzoM.zzeJ();
    }

    public void zzu(boolean z) {
        this.zzBk = new zzm(this.mActivity, z ? 50 : 32, this);
        LayoutParams layoutParams = new RelativeLayout.LayoutParams(-2, -2);
        layoutParams.addRule(10);
        layoutParams.addRule(z ? 11 : 9);
        this.zzBk.zza(z, this.zzBi.zzBG);
        this.zzAn.addView(this.zzBk, layoutParams);
    }

    protected void zzv(int i) {
        this.zzoM.zzv(i);
    }

    protected void zzv(boolean z) throws zza {
        if (!this.zzBs) {
            this.mActivity.requestWindowFeature(1);
        }
        Window window = this.mActivity.getWindow();
        if (window == null) {
            throw new zza("Invalid activity, no window available.");
        }
        if (!this.zzBp || (this.zzBi.zzBM != null && this.zzBi.zzBM.zzpu)) {
            window.setFlags(Place.TYPE_SUBLOCALITY_LEVEL_2, Place.TYPE_SUBLOCALITY_LEVEL_2);
        }
        boolean zzbY = this.zzBi.zzBD.zzhe().zzbY();
        this.zzBq = false;
        if (zzbY) {
            if (this.zzBi.orientation == zzp.zzbx().zzgG()) {
                this.zzBq = this.mActivity.getResources().getConfiguration().orientation == 1;
            } else if (this.zzBi.orientation == zzp.zzbx().zzgH()) {
                this.zzBq = this.mActivity.getResources().getConfiguration().orientation == 2;
            }
        }
        com.google.android.gms.ads.internal.util.client.zzb.zzaF("Delay onShow to next orientation change: " + this.zzBq);
        setRequestedOrientation(this.zzBi.orientation);
        if (zzp.zzbx().zza(window)) {
            com.google.android.gms.ads.internal.util.client.zzb.zzaF("Hardware acceleration on the AdActivity window enabled.");
        }
        if (this.zzBp) {
            this.zzAn.setBackgroundColor(zzBh);
        } else {
            this.zzAn.setBackgroundColor(ViewCompat.MEASURED_STATE_MASK);
        }
        this.mActivity.setContentView(this.zzAn);
        zzaE();
        if (z) {
            this.zzoM = zzp.zzbw().zza(this.mActivity, this.zzBi.zzBD.zzaN(), true, zzbY, null, this.zzBi.zzqj);
            this.zzoM.zzhe().zzb(null, null, this.zzBi.zzBE, this.zzBi.zzBI, true, this.zzBi.zzBK, null, this.zzBi.zzBD.zzhe().zzhq(), null);
            this.zzoM.zzhe().zza(new C01891(this));
            if (this.zzBi.url != null) {
                this.zzoM.loadUrl(this.zzBi.url);
            } else if (this.zzBi.zzBH != null) {
                this.zzoM.loadDataWithBaseURL(this.zzBi.zzBF, this.zzBi.zzBH, Mime.HTML_TEXT, "UTF-8", null);
            } else {
                throw new zza("No URL or HTML to display in ad overlay.");
            }
            if (this.zzBi.zzBD != null) {
                this.zzBi.zzBD.zzc(this);
            }
        } else {
            this.zzoM = this.zzBi.zzBD;
            this.zzoM.setContext(this.mActivity);
        }
        this.zzoM.zzb(this);
        ViewParent parent = this.zzoM.getParent();
        if (parent != null && (parent instanceof ViewGroup)) {
            ((ViewGroup) parent).removeView(this.zzoM.getView());
        }
        if (this.zzBp) {
            this.zzoM.setBackgroundColor(zzBh);
        }
        this.zzAn.addView(this.zzoM.getView(), -1, -1);
        if (!(z || this.zzBq)) {
            zzeJ();
        }
        zzu(zzbY);
        if (this.zzoM.zzhf()) {
            zza(zzbY, true);
        }
    }
}
