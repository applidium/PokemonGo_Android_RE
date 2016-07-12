package com.google.android.gms.internal;

import android.app.AlertDialog.Builder;
import android.content.Context;
import android.content.DialogInterface;
import android.content.DialogInterface.OnCancelListener;
import android.content.DialogInterface.OnClickListener;
import android.os.Message;
import android.view.View;
import android.webkit.ConsoleMessage;
import android.webkit.ConsoleMessage.MessageLevel;
import android.webkit.GeolocationPermissions.Callback;
import android.webkit.JsPromptResult;
import android.webkit.JsResult;
import android.webkit.WebChromeClient;
import android.webkit.WebChromeClient.CustomViewCallback;
import android.webkit.WebStorage.QuotaUpdater;
import android.webkit.WebView;
import android.webkit.WebView.WebViewTransport;
import android.widget.EditText;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.google.android.gms.ads.internal.overlay.zzd;
import com.google.android.gms.ads.internal.util.client.zzb;
import com.google.android.gms.ads.internal.zzp;
import com.google.android.gms.location.places.Place;
import com.nianticproject.holoholo.sfida.SfidaMessage;
import org.apache.commons.io.FileUtils;
import spacemadness.com.lunarconsole.C1401R;

@zzgr
public class zzjf extends WebChromeClient {
    private final zziz zzoM;

    /* renamed from: com.google.android.gms.internal.zzjf.1 */
    static final class C05961 implements OnCancelListener {
        final /* synthetic */ JsResult zzKD;

        C05961(JsResult jsResult) {
            this.zzKD = jsResult;
        }

        public void onCancel(DialogInterface dialogInterface) {
            this.zzKD.cancel();
        }
    }

    /* renamed from: com.google.android.gms.internal.zzjf.2 */
    static final class C05972 implements OnClickListener {
        final /* synthetic */ JsResult zzKD;

        C05972(JsResult jsResult) {
            this.zzKD = jsResult;
        }

        public void onClick(DialogInterface dialogInterface, int i) {
            this.zzKD.cancel();
        }
    }

    /* renamed from: com.google.android.gms.internal.zzjf.3 */
    static final class C05983 implements OnClickListener {
        final /* synthetic */ JsResult zzKD;

        C05983(JsResult jsResult) {
            this.zzKD = jsResult;
        }

        public void onClick(DialogInterface dialogInterface, int i) {
            this.zzKD.confirm();
        }
    }

    /* renamed from: com.google.android.gms.internal.zzjf.4 */
    static final class C05994 implements OnCancelListener {
        final /* synthetic */ JsPromptResult zzKE;

        C05994(JsPromptResult jsPromptResult) {
            this.zzKE = jsPromptResult;
        }

        public void onCancel(DialogInterface dialogInterface) {
            this.zzKE.cancel();
        }
    }

    /* renamed from: com.google.android.gms.internal.zzjf.5 */
    static final class C06005 implements OnClickListener {
        final /* synthetic */ JsPromptResult zzKE;

        C06005(JsPromptResult jsPromptResult) {
            this.zzKE = jsPromptResult;
        }

        public void onClick(DialogInterface dialogInterface, int i) {
            this.zzKE.cancel();
        }
    }

    /* renamed from: com.google.android.gms.internal.zzjf.6 */
    static final class C06016 implements OnClickListener {
        final /* synthetic */ JsPromptResult zzKE;
        final /* synthetic */ EditText zzKF;

        C06016(JsPromptResult jsPromptResult, EditText editText) {
            this.zzKE = jsPromptResult;
            this.zzKF = editText;
        }

        public void onClick(DialogInterface dialogInterface, int i) {
            this.zzKE.confirm(this.zzKF.getText().toString());
        }
    }

    /* renamed from: com.google.android.gms.internal.zzjf.7 */
    static /* synthetic */ class C06027 {
        static final /* synthetic */ int[] zzKG;

        static {
            zzKG = new int[MessageLevel.values().length];
            try {
                zzKG[MessageLevel.ERROR.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                zzKG[MessageLevel.WARNING.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                zzKG[MessageLevel.LOG.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
            try {
                zzKG[MessageLevel.TIP.ordinal()] = 4;
            } catch (NoSuchFieldError e4) {
            }
            try {
                zzKG[MessageLevel.DEBUG.ordinal()] = 5;
            } catch (NoSuchFieldError e5) {
            }
        }
    }

    public zzjf(zziz com_google_android_gms_internal_zziz) {
        this.zzoM = com_google_android_gms_internal_zziz;
    }

    private static void zza(Builder builder, String str, JsResult jsResult) {
        builder.setMessage(str).setPositiveButton(17039370, new C05983(jsResult)).setNegativeButton(17039360, new C05972(jsResult)).setOnCancelListener(new C05961(jsResult)).create().show();
    }

    private static void zza(Context context, Builder builder, String str, String str2, JsPromptResult jsPromptResult) {
        View linearLayout = new LinearLayout(context);
        linearLayout.setOrientation(1);
        View textView = new TextView(context);
        textView.setText(str);
        View editText = new EditText(context);
        editText.setText(str2);
        linearLayout.addView(textView);
        linearLayout.addView(editText);
        builder.setView(linearLayout).setPositiveButton(17039370, new C06016(jsPromptResult, editText)).setNegativeButton(17039360, new C06005(jsPromptResult)).setOnCancelListener(new C05994(jsPromptResult)).create().show();
    }

    private final Context zzc(WebView webView) {
        if (!(webView instanceof zziz)) {
            return webView.getContext();
        }
        zziz com_google_android_gms_internal_zziz = (zziz) webView;
        Context zzgZ = com_google_android_gms_internal_zziz.zzgZ();
        return zzgZ == null ? com_google_android_gms_internal_zziz.getContext() : zzgZ;
    }

    private final boolean zzhE() {
        return zzp.zzbv().zza(this.zzoM.getContext().getPackageManager(), this.zzoM.getContext().getPackageName(), "android.permission.ACCESS_FINE_LOCATION") || zzp.zzbv().zza(this.zzoM.getContext().getPackageManager(), this.zzoM.getContext().getPackageName(), "android.permission.ACCESS_COARSE_LOCATION");
    }

    public final void onCloseWindow(WebView webView) {
        if (webView instanceof zziz) {
            zzd zzhc = ((zziz) webView).zzhc();
            if (zzhc == null) {
                zzb.zzaH("Tried to close an AdWebView not associated with an overlay.");
                return;
            } else {
                zzhc.close();
                return;
            }
        }
        zzb.zzaH("Tried to close a WebView that wasn't an AdWebView.");
    }

    public final boolean onConsoleMessage(ConsoleMessage consoleMessage) {
        String str = "JS: " + consoleMessage.message() + " (" + consoleMessage.sourceId() + UpsightEndpoint.SIGNED_MESSAGE_SEPARATOR + consoleMessage.lineNumber() + ")";
        if (str.contains("Application Cache")) {
            return super.onConsoleMessage(consoleMessage);
        }
        switch (C06027.zzKG[consoleMessage.messageLevel().ordinal()]) {
            case C1401R.styleable.LoadingImageView_imageAspectRatio /*1*/:
                zzb.m36e(str);
                break;
            case C1401R.styleable.LoadingImageView_circleCrop /*2*/:
                zzb.zzaH(str);
                break;
            case SfidaMessage.ACTIVITY_BYTE_LENGTH /*3*/:
            case Place.TYPE_AQUARIUM /*4*/:
                zzb.zzaG(str);
                break;
            case Place.TYPE_ART_GALLERY /*5*/:
                zzb.zzaF(str);
                break;
            default:
                zzb.zzaG(str);
                break;
        }
        return super.onConsoleMessage(consoleMessage);
    }

    public final boolean onCreateWindow(WebView webView, boolean z, boolean z2, Message message) {
        WebViewTransport webViewTransport = (WebViewTransport) message.obj;
        WebView webView2 = new WebView(webView.getContext());
        webView2.setWebViewClient(this.zzoM.zzhe());
        webViewTransport.setWebView(webView2);
        message.sendToTarget();
        return true;
    }

    public final void onExceededDatabaseQuota(String str, String str2, long j, long j2, long j3, QuotaUpdater quotaUpdater) {
        long j4 = 5242880 - j3;
        if (j4 <= 0) {
            quotaUpdater.updateQuota(j);
            return;
        }
        if (j != 0) {
            j2 = j2 == 0 ? Math.min(Math.min(131072, j4) + j, FileUtils.ONE_MB) : j2 <= Math.min(FileUtils.ONE_MB - j, j4) ? j2 + j : j;
        } else if (j2 > j4 || j2 > FileUtils.ONE_MB) {
            j2 = 0;
        }
        quotaUpdater.updateQuota(j2);
    }

    public final void onGeolocationPermissionsShowPrompt(String str, Callback callback) {
        if (callback != null) {
            callback.invoke(str, zzhE(), true);
        }
    }

    public final void onHideCustomView() {
        zzd zzhc = this.zzoM.zzhc();
        if (zzhc == null) {
            zzb.zzaH("Could not get ad overlay when hiding custom view.");
        } else {
            zzhc.zzeD();
        }
    }

    public final boolean onJsAlert(WebView webView, String str, String str2, JsResult jsResult) {
        return zza(zzc(webView), str, str2, null, jsResult, null, false);
    }

    public final boolean onJsBeforeUnload(WebView webView, String str, String str2, JsResult jsResult) {
        return zza(zzc(webView), str, str2, null, jsResult, null, false);
    }

    public final boolean onJsConfirm(WebView webView, String str, String str2, JsResult jsResult) {
        return zza(zzc(webView), str, str2, null, jsResult, null, false);
    }

    public final boolean onJsPrompt(WebView webView, String str, String str2, String str3, JsPromptResult jsPromptResult) {
        return zza(zzc(webView), str, str2, str3, null, jsPromptResult, true);
    }

    public final void onReachedMaxAppCacheSize(long j, long j2, QuotaUpdater quotaUpdater) {
        long j3 = 131072 + j;
        if (5242880 - j2 < j3) {
            quotaUpdater.updateQuota(0);
        } else {
            quotaUpdater.updateQuota(j3);
        }
    }

    public final void onShowCustomView(View view, CustomViewCallback customViewCallback) {
        zza(view, -1, customViewCallback);
    }

    protected final void zza(View view, int i, CustomViewCallback customViewCallback) {
        zzd zzhc = this.zzoM.zzhc();
        if (zzhc == null) {
            zzb.zzaH("Could not get ad overlay when showing custom view.");
            customViewCallback.onCustomViewHidden();
            return;
        }
        zzhc.zza(view, customViewCallback);
        zzhc.setRequestedOrientation(i);
    }

    protected boolean zza(Context context, String str, String str2, String str3, JsResult jsResult, JsPromptResult jsPromptResult, boolean z) {
        try {
            Builder builder = new Builder(context);
            builder.setTitle(str);
            if (z) {
                zza(context, builder, str2, str3, jsPromptResult);
            } else {
                zza(builder, str2, jsResult);
            }
        } catch (Throwable e) {
            zzb.zzd("Fail to display Dialog.", e);
        }
        return true;
    }
}
