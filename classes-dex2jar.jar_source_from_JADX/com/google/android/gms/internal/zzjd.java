package com.google.android.gms.internal;

import android.app.Activity;
import android.content.ActivityNotFoundException;
import android.content.Context;
import android.content.Intent;
import android.content.MutableContextWrapper;
import android.graphics.Canvas;
import android.net.Uri;
import android.os.Build.VERSION;
import android.support.v4.widget.ExploreByTouchHelper;
import android.util.DisplayMetrics;
import android.view.MotionEvent;
import android.view.View;
import android.view.View.MeasureSpec;
import android.view.ViewTreeObserver.OnGlobalLayoutListener;
import android.view.WindowManager;
import android.webkit.DownloadListener;
import android.webkit.ValueCallback;
import android.webkit.WebSettings;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import com.google.android.gms.ads.internal.client.AdSizeParcel;
import com.google.android.gms.ads.internal.client.zzl;
import com.google.android.gms.ads.internal.overlay.zzd;
import com.google.android.gms.ads.internal.util.client.VersionInfoParcel;
import com.google.android.gms.ads.internal.util.client.zzb;
import com.google.android.gms.ads.internal.zzp;
import java.util.HashMap;
import java.util.Map;
import org.json.JSONException;
import org.json.JSONObject;
import spacemadness.com.lunarconsole.BuildConfig;

@zzgr
class zzjd extends WebView implements OnGlobalLayoutListener, DownloadListener, zziz {
    private int zzAD;
    private int zzAE;
    private int zzAG;
    private int zzAH;
    private String zzBY;
    private Boolean zzHZ;
    private Map<String, zzdv> zzKA;
    private final zza zzKm;
    private zzja zzKn;
    private zzd zzKo;
    private boolean zzKp;
    private boolean zzKq;
    private boolean zzKr;
    private boolean zzKs;
    private int zzKt;
    private boolean zzKu;
    private zzce zzKv;
    private zzce zzKw;
    private zzce zzKx;
    private zzcf zzKy;
    private zzd zzKz;
    private final com.google.android.gms.ads.internal.zzd zzow;
    private final VersionInfoParcel zzpb;
    private final Object zzpd;
    private zzim zzqR;
    private final WindowManager zzri;
    private final zzan zzwL;
    private AdSizeParcel zzzm;

    /* renamed from: com.google.android.gms.internal.zzjd.1 */
    class C05951 implements Runnable {
        final /* synthetic */ zzjd zzKB;

        C05951(zzjd com_google_android_gms_internal_zzjd) {
            this.zzKB = com_google_android_gms_internal_zzjd;
        }

        public void run() {
            super.destroy();
        }
    }

    @zzgr
    public static class zza extends MutableContextWrapper {
        private Activity zzJn;
        private Context zzKC;
        private Context zzqZ;

        public zza(Context context) {
            super(context);
            setBaseContext(context);
        }

        public Object getSystemService(String str) {
            return this.zzKC.getSystemService(str);
        }

        public void setBaseContext(Context context) {
            this.zzqZ = context.getApplicationContext();
            this.zzJn = context instanceof Activity ? (Activity) context : null;
            this.zzKC = context;
            super.setBaseContext(this.zzqZ);
        }

        public void startActivity(Intent intent) {
            if (this.zzJn == null || zzmx.isAtLeastL()) {
                intent.setFlags(268435456);
                this.zzqZ.startActivity(intent);
                return;
            }
            this.zzJn.startActivity(intent);
        }

        public Activity zzgZ() {
            return this.zzJn;
        }

        public Context zzha() {
            return this.zzKC;
        }
    }

    protected zzjd(zza com_google_android_gms_internal_zzjd_zza, AdSizeParcel adSizeParcel, boolean z, boolean z2, zzan com_google_android_gms_internal_zzan, VersionInfoParcel versionInfoParcel, zzcg com_google_android_gms_internal_zzcg, com.google.android.gms.ads.internal.zzd com_google_android_gms_ads_internal_zzd) {
        super(com_google_android_gms_internal_zzjd_zza);
        this.zzpd = new Object();
        this.zzKu = true;
        this.zzBY = BuildConfig.FLAVOR;
        this.zzAE = -1;
        this.zzAD = -1;
        this.zzAG = -1;
        this.zzAH = -1;
        this.zzKm = com_google_android_gms_internal_zzjd_zza;
        this.zzzm = adSizeParcel;
        this.zzKr = z;
        this.zzKt = -1;
        this.zzwL = com_google_android_gms_internal_zzan;
        this.zzpb = versionInfoParcel;
        this.zzow = com_google_android_gms_ads_internal_zzd;
        this.zzri = (WindowManager) getContext().getSystemService("window");
        setBackgroundColor(0);
        WebSettings settings = getSettings();
        settings.setJavaScriptEnabled(true);
        settings.setSavePassword(false);
        settings.setSupportMultipleWindows(true);
        settings.setJavaScriptCanOpenWindowsAutomatically(true);
        if (VERSION.SDK_INT >= 21) {
            settings.setMixedContentMode(0);
        }
        zzp.zzbv().zza((Context) com_google_android_gms_internal_zzjd_zza, versionInfoParcel.zzJu, settings);
        zzp.zzbx().zza(getContext(), settings);
        setDownloadListener(this);
        zzhz();
        if (zzmx.zzqz()) {
            addJavascriptInterface(new zzje(this), "googleAdsJsInterface");
        }
        this.zzqR = new zzim(this.zzKm.zzgZ(), this, null);
        zzd(com_google_android_gms_internal_zzcg);
    }

    static zzjd zzb(Context context, AdSizeParcel adSizeParcel, boolean z, boolean z2, zzan com_google_android_gms_internal_zzan, VersionInfoParcel versionInfoParcel, zzcg com_google_android_gms_internal_zzcg, com.google.android.gms.ads.internal.zzd com_google_android_gms_ads_internal_zzd) {
        return new zzjd(new zza(context), adSizeParcel, z, z2, com_google_android_gms_internal_zzan, versionInfoParcel, com_google_android_gms_internal_zzcg, com_google_android_gms_ads_internal_zzd);
    }

    private void zzd(zzcg com_google_android_gms_internal_zzcg) {
        zzhD();
        this.zzKy = new zzcf(new zzcg(true, "make_wv", this.zzzm.zzte));
        this.zzKy.zzdm().zzc(com_google_android_gms_internal_zzcg);
        this.zzKw = zzcc.zzb(this.zzKy.zzdm());
        this.zzKy.zza("native:view_create", this.zzKw);
        this.zzKx = null;
        this.zzKv = null;
    }

    private void zzhA() {
        synchronized (this.zzpd) {
            if (!this.zzKs) {
                zzp.zzbx().zzm(this);
            }
            this.zzKs = true;
        }
    }

    private void zzhB() {
        synchronized (this.zzpd) {
            if (this.zzKs) {
                zzp.zzbx().zzl(this);
            }
            this.zzKs = false;
        }
    }

    private void zzhC() {
        synchronized (this.zzpd) {
            if (this.zzKA != null) {
                for (zzdv release : this.zzKA.values()) {
                    release.release();
                }
            }
        }
    }

    private void zzhD() {
        if (this.zzKy != null) {
            zzcg zzdm = this.zzKy.zzdm();
            if (zzdm != null && zzp.zzby().zzgo() != null) {
                zzp.zzby().zzgo().zza(zzdm);
            }
        }
    }

    private void zzhy() {
        synchronized (this.zzpd) {
            this.zzHZ = zzp.zzby().zzgs();
            if (this.zzHZ == null) {
                try {
                    evaluateJavascript("(function(){})()", null);
                    zzb(Boolean.valueOf(true));
                } catch (IllegalStateException e) {
                    zzb(Boolean.valueOf(false));
                }
            }
        }
    }

    private void zzhz() {
        synchronized (this.zzpd) {
            if (this.zzKr || this.zzzm.zztf) {
                if (VERSION.SDK_INT < 14) {
                    zzb.zzaF("Disabling hardware acceleration on an overlay.");
                    zzhA();
                } else {
                    zzb.zzaF("Enabling hardware acceleration on an overlay.");
                    zzhB();
                }
            } else if (VERSION.SDK_INT < 18) {
                zzb.zzaF("Disabling hardware acceleration on an AdView.");
                zzhA();
            } else {
                zzb.zzaF("Enabling hardware acceleration on an AdView.");
                zzhB();
            }
        }
    }

    public void destroy() {
        synchronized (this.zzpd) {
            zzhD();
            this.zzqR.zzgP();
            if (this.zzKo != null) {
                this.zzKo.close();
                this.zzKo.onDestroy();
                this.zzKo = null;
            }
            this.zzKn.reset();
            if (this.zzKq) {
                return;
            }
            zzp.zzbI().zza((zziz) this);
            zzhC();
            this.zzKq = true;
            zzb.m37v("Initiating WebView self destruct sequence in 3...");
            this.zzKn.zzhs();
        }
    }

    public void evaluateJavascript(String str, ValueCallback<String> valueCallback) {
        synchronized (this.zzpd) {
            if (isDestroyed()) {
                zzb.zzaH("The webview is destroyed. Ignoring action.");
                if (valueCallback != null) {
                    valueCallback.onReceiveValue(null);
                }
                return;
            }
            super.evaluateJavascript(str, valueCallback);
        }
    }

    public String getRequestId() {
        String str;
        synchronized (this.zzpd) {
            str = this.zzBY;
        }
        return str;
    }

    public int getRequestedOrientation() {
        int i;
        synchronized (this.zzpd) {
            i = this.zzKt;
        }
        return i;
    }

    public View getView() {
        return this;
    }

    public WebView getWebView() {
        return this;
    }

    public boolean isDestroyed() {
        boolean z;
        synchronized (this.zzpd) {
            z = this.zzKq;
        }
        return z;
    }

    public void loadData(String str, String str2, String str3) {
        synchronized (this.zzpd) {
            if (isDestroyed()) {
                zzb.zzaH("The webview is destroyed. Ignoring action.");
            } else {
                super.loadData(str, str2, str3);
            }
        }
    }

    public void loadDataWithBaseURL(String str, String str2, String str3, String str4, String str5) {
        synchronized (this.zzpd) {
            if (isDestroyed()) {
                zzb.zzaH("The webview is destroyed. Ignoring action.");
            } else {
                super.loadDataWithBaseURL(str, str2, str3, str4, str5);
            }
        }
    }

    public void loadUrl(String str) {
        synchronized (this.zzpd) {
            if (isDestroyed()) {
                zzb.zzaH("The webview is destroyed. Ignoring action.");
            } else {
                try {
                    super.loadUrl(str);
                } catch (Throwable th) {
                    zzb.zzaH("Could not call loadUrl. " + th);
                }
            }
        }
    }

    protected void onAttachedToWindow() {
        synchronized (this.zzpd) {
            super.onAttachedToWindow();
            if (!isDestroyed()) {
                this.zzqR.onAttachedToWindow();
            }
        }
    }

    protected void onDetachedFromWindow() {
        synchronized (this.zzpd) {
            if (!isDestroyed()) {
                this.zzqR.onDetachedFromWindow();
            }
            super.onDetachedFromWindow();
        }
    }

    public void onDownloadStart(String str, String str2, String str3, String str4, long j) {
        try {
            Intent intent = new Intent("android.intent.action.VIEW");
            intent.setDataAndType(Uri.parse(str), str4);
            zzp.zzbv().zzb(getContext(), intent);
        } catch (ActivityNotFoundException e) {
            zzb.zzaF("Couldn't find an Activity to view url/mimetype: " + str + " / " + str4);
        }
    }

    protected void onDraw(Canvas canvas) {
        if (!isDestroyed()) {
            if (VERSION.SDK_INT != 21 || !canvas.isHardwareAccelerated() || isAttachedToWindow()) {
                super.onDraw(canvas);
            }
        }
    }

    public void onGlobalLayout() {
        boolean zzhx = zzhx();
        zzd zzhc = zzhc();
        if (zzhc != null && zzhx) {
            zzhc.zzeI();
        }
    }

    protected void onMeasure(int i, int i2) {
        int i3 = Integer.MAX_VALUE;
        synchronized (this.zzpd) {
            if (isDestroyed()) {
                setMeasuredDimension(0, 0);
            } else if (isInEditMode() || this.zzKr || this.zzzm.zzth || this.zzzm.zzti) {
                super.onMeasure(i, i2);
            } else if (this.zzzm.zztf) {
                DisplayMetrics displayMetrics = new DisplayMetrics();
                this.zzri.getDefaultDisplay().getMetrics(displayMetrics);
                setMeasuredDimension(displayMetrics.widthPixels, displayMetrics.heightPixels);
            } else {
                int mode = MeasureSpec.getMode(i);
                int size = MeasureSpec.getSize(i);
                int mode2 = MeasureSpec.getMode(i2);
                int size2 = MeasureSpec.getSize(i2);
                mode = (mode == ExploreByTouchHelper.INVALID_ID || mode == 1073741824) ? size : Integer.MAX_VALUE;
                if (mode2 == ExploreByTouchHelper.INVALID_ID || mode2 == 1073741824) {
                    i3 = size2;
                }
                if (this.zzzm.widthPixels > mode || this.zzzm.heightPixels > r0) {
                    float f = this.zzKm.getResources().getDisplayMetrics().density;
                    zzb.zzaH("Not enough space to show ad. Needs " + ((int) (((float) this.zzzm.widthPixels) / f)) + "x" + ((int) (((float) this.zzzm.heightPixels) / f)) + " dp, but only has " + ((int) (((float) size) / f)) + "x" + ((int) (((float) size2) / f)) + " dp.");
                    if (getVisibility() != 8) {
                        setVisibility(4);
                    }
                    setMeasuredDimension(0, 0);
                } else {
                    if (getVisibility() != 8) {
                        setVisibility(0);
                    }
                    setMeasuredDimension(this.zzzm.widthPixels, this.zzzm.heightPixels);
                }
            }
        }
    }

    public void onPause() {
        if (!isDestroyed()) {
            try {
                if (zzmx.zzqu()) {
                    super.onPause();
                }
            } catch (Throwable e) {
                zzb.zzb("Could not pause webview.", e);
            }
        }
    }

    public void onResume() {
        if (!isDestroyed()) {
            try {
                if (zzmx.zzqu()) {
                    super.onResume();
                }
            } catch (Throwable e) {
                zzb.zzb("Could not resume webview.", e);
            }
        }
    }

    public boolean onTouchEvent(MotionEvent motionEvent) {
        if (this.zzwL != null) {
            this.zzwL.zza(motionEvent);
        }
        return isDestroyed() ? false : super.onTouchEvent(motionEvent);
    }

    public void setContext(Context context) {
        this.zzKm.setBaseContext(context);
        this.zzqR.zzk(this.zzKm.zzgZ());
    }

    public void setRequestedOrientation(int i) {
        synchronized (this.zzpd) {
            this.zzKt = i;
            if (this.zzKo != null) {
                this.zzKo.setRequestedOrientation(this.zzKt);
            }
        }
    }

    public void setWebViewClient(WebViewClient webViewClient) {
        super.setWebViewClient(webViewClient);
        if (webViewClient instanceof zzja) {
            this.zzKn = (zzja) webViewClient;
        }
    }

    public void stopLoading() {
        if (!isDestroyed()) {
            try {
                super.stopLoading();
            } catch (Throwable e) {
                zzb.zzb("Could not stop loading webview.", e);
            }
        }
    }

    public void zzC(boolean z) {
        synchronized (this.zzpd) {
            this.zzKr = z;
            zzhz();
        }
    }

    public void zzD(boolean z) {
        synchronized (this.zzpd) {
            if (this.zzKo != null) {
                this.zzKo.zza(this.zzKn.zzbY(), z);
            } else {
                this.zzKp = z;
            }
        }
    }

    public void zzE(boolean z) {
        synchronized (this.zzpd) {
            this.zzKu = z;
        }
    }

    public void zza(Context context, AdSizeParcel adSizeParcel, zzcg com_google_android_gms_internal_zzcg) {
        synchronized (this.zzpd) {
            this.zzqR.zzgP();
            setContext(context);
            this.zzKo = null;
            this.zzzm = adSizeParcel;
            this.zzKr = false;
            this.zzKp = false;
            this.zzBY = BuildConfig.FLAVOR;
            this.zzKt = -1;
            zzp.zzbx().zzb(this);
            loadUrl("about:blank");
            this.zzKn.reset();
            setOnTouchListener(null);
            setOnClickListener(null);
            this.zzKu = true;
            zzd(com_google_android_gms_internal_zzcg);
        }
    }

    public void zza(AdSizeParcel adSizeParcel) {
        synchronized (this.zzpd) {
            this.zzzm = adSizeParcel;
            requestLayout();
        }
    }

    public void zza(zzaz com_google_android_gms_internal_zzaz, boolean z) {
        Map hashMap = new HashMap();
        hashMap.put("isVisible", z ? "1" : "0");
        zzb("onAdVisibilityChanged", hashMap);
    }

    protected void zza(String str, ValueCallback<String> valueCallback) {
        synchronized (this.zzpd) {
            if (isDestroyed()) {
                zzb.zzaH("The webview is destroyed. Ignoring action.");
                if (valueCallback != null) {
                    valueCallback.onReceiveValue(null);
                }
            } else {
                evaluateJavascript(str, valueCallback);
            }
        }
    }

    public void zza(String str, String str2) {
        zzaM(str + "(" + str2 + ");");
    }

    public void zza(String str, JSONObject jSONObject) {
        if (jSONObject == null) {
            jSONObject = new JSONObject();
        }
        zza(str, jSONObject.toString());
    }

    public void zzaI(String str) {
        synchronized (this.zzpd) {
            try {
                super.loadUrl(str);
            } catch (Throwable th) {
                zzb.zzaH("Could not call loadUrl. " + th);
            }
        }
    }

    public void zzaJ(String str) {
        synchronized (this.zzpd) {
            if (str == null) {
                str = BuildConfig.FLAVOR;
            }
            this.zzBY = str;
        }
    }

    protected void zzaL(String str) {
        synchronized (this.zzpd) {
            if (isDestroyed()) {
                zzb.zzaH("The webview is destroyed. Ignoring action.");
            } else {
                loadUrl(str);
            }
        }
    }

    protected void zzaM(String str) {
        if (zzmx.zzqB()) {
            if (zzgs() == null) {
                zzhy();
            }
            if (zzgs().booleanValue()) {
                zza(str, null);
                return;
            } else {
                zzaL("javascript:" + str);
                return;
            }
        }
        zzaL("javascript:" + str);
    }

    public AdSizeParcel zzaN() {
        AdSizeParcel adSizeParcel;
        synchronized (this.zzpd) {
            adSizeParcel = this.zzzm;
        }
        return adSizeParcel;
    }

    public void zzb(zzd com_google_android_gms_ads_internal_overlay_zzd) {
        synchronized (this.zzpd) {
            this.zzKo = com_google_android_gms_ads_internal_overlay_zzd;
        }
    }

    void zzb(Boolean bool) {
        this.zzHZ = bool;
        zzp.zzby().zzb(bool);
    }

    public void zzb(String str, Map<String, ?> map) {
        try {
            zzb(str, zzp.zzbv().zzz(map));
        } catch (JSONException e) {
            zzb.zzaH("Could not convert parameters to JSON.");
        }
    }

    public void zzb(String str, JSONObject jSONObject) {
        if (jSONObject == null) {
            jSONObject = new JSONObject();
        }
        String jSONObject2 = jSONObject.toString();
        StringBuilder stringBuilder = new StringBuilder();
        stringBuilder.append("AFMA_ReceiveMessage('");
        stringBuilder.append(str);
        stringBuilder.append("'");
        stringBuilder.append(",");
        stringBuilder.append(jSONObject2);
        stringBuilder.append(");");
        zzb.m37v("Dispatching AFMA event: " + stringBuilder.toString());
        zzaM(stringBuilder.toString());
    }

    public void zzc(zzd com_google_android_gms_ads_internal_overlay_zzd) {
        synchronized (this.zzpd) {
            this.zzKz = com_google_android_gms_ads_internal_overlay_zzd;
        }
    }

    public void zzeJ() {
        if (this.zzKv != null) {
            zzcc.zza(this.zzKy.zzdm(), this.zzKx, "aes");
            this.zzKv = zzcc.zzb(this.zzKy.zzdm());
            this.zzKy.zza("native:view_show", this.zzKx);
        }
        Map hashMap = new HashMap(1);
        hashMap.put("version", this.zzpb.zzJu);
        zzb("onshow", hashMap);
    }

    public void zzgY() {
        Map hashMap = new HashMap(1);
        hashMap.put("version", this.zzpb.zzJu);
        zzb("onhide", hashMap);
    }

    public Activity zzgZ() {
        return this.zzKm.zzgZ();
    }

    Boolean zzgs() {
        Boolean bool;
        synchronized (this.zzpd) {
            bool = this.zzHZ;
        }
        return bool;
    }

    public Context zzha() {
        return this.zzKm.zzha();
    }

    public com.google.android.gms.ads.internal.zzd zzhb() {
        return this.zzow;
    }

    public zzd zzhc() {
        zzd com_google_android_gms_ads_internal_overlay_zzd;
        synchronized (this.zzpd) {
            com_google_android_gms_ads_internal_overlay_zzd = this.zzKo;
        }
        return com_google_android_gms_ads_internal_overlay_zzd;
    }

    public zzd zzhd() {
        zzd com_google_android_gms_ads_internal_overlay_zzd;
        synchronized (this.zzpd) {
            com_google_android_gms_ads_internal_overlay_zzd = this.zzKz;
        }
        return com_google_android_gms_ads_internal_overlay_zzd;
    }

    public zzja zzhe() {
        return this.zzKn;
    }

    public boolean zzhf() {
        return this.zzKp;
    }

    public zzan zzhg() {
        return this.zzwL;
    }

    public VersionInfoParcel zzhh() {
        return this.zzpb;
    }

    public boolean zzhi() {
        boolean z;
        synchronized (this.zzpd) {
            z = this.zzKr;
        }
        return z;
    }

    public void zzhj() {
        synchronized (this.zzpd) {
            zzb.m37v("Destroying WebView!");
            zzid.zzIE.post(new C05951(this));
        }
    }

    public boolean zzhk() {
        boolean z;
        synchronized (this.zzpd) {
            z = this.zzKu;
        }
        return z;
    }

    public zziy zzhl() {
        return null;
    }

    public zzce zzhm() {
        return this.zzKx;
    }

    public zzcf zzhn() {
        return this.zzKy;
    }

    public void zzho() {
        this.zzqR.zzgO();
    }

    public void zzhp() {
        if (this.zzKx == null && !"about:blank".equals(getUrl())) {
            this.zzKx = zzcc.zzb(this.zzKy.zzdm());
            this.zzKy.zza("native:view_load", this.zzKx);
        }
    }

    public boolean zzhx() {
        boolean z = true;
        if (!zzhe().zzbY()) {
            return false;
        }
        int i;
        int i2;
        DisplayMetrics zza = zzp.zzbv().zza(this.zzri);
        int zzb = zzl.zzcF().zzb(zza, zza.widthPixels);
        int zzb2 = zzl.zzcF().zzb(zza, zza.heightPixels);
        Activity zzgZ = zzgZ();
        if (zzgZ == null || zzgZ.getWindow() == null) {
            i = zzb;
            i2 = zzb2;
        } else {
            int[] zzg = zzp.zzbv().zzg(zzgZ);
            i = zzl.zzcF().zzb(zza, zzg[0]);
            i2 = zzl.zzcF().zzb(zza, zzg[1]);
        }
        if (this.zzAD == zzb && this.zzAE == zzb2 && this.zzAG == i && this.zzAH == i2) {
            return false;
        }
        if (this.zzAD == zzb && this.zzAE == zzb2) {
            z = false;
        }
        this.zzAD = zzb;
        this.zzAE = zzb2;
        this.zzAG = i;
        this.zzAH = i2;
        new zzfh(this).zza(zzb, zzb2, i, i2, zza.density, this.zzri.getDefaultDisplay().getRotation());
        return z;
    }

    public void zzv(int i) {
        Map hashMap = new HashMap(2);
        hashMap.put("closetype", String.valueOf(i));
        hashMap.put("version", this.zzpb.zzJu);
        zzb("onhide", hashMap);
    }
}
