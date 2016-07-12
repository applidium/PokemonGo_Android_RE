package com.google.android.gms.internal;

import android.app.Activity;
import android.app.ActivityManager;
import android.app.ActivityManager.RunningAppProcessInfo;
import android.app.KeyguardManager;
import android.content.Context;
import android.os.PowerManager;
import android.os.Process;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import android.webkit.ValueCallback;
import android.webkit.WebView;
import android.widget.EditText;
import android.widget.TextView;
import com.google.android.gms.ads.internal.util.client.zzb;
import java.util.List;
import org.apache.commons.io.IOUtils;
import org.json.JSONException;
import org.json.JSONObject;
import spacemadness.com.lunarconsole.BuildConfig;

@zzgr
public class zzbk extends Thread {
    private boolean mStarted;
    private boolean zzam;
    private final Object zzpd;
    private final int zzrN;
    private final int zzrP;
    private boolean zzrZ;
    private final zzbj zzsa;
    private final zzbi zzsb;
    private final zzgq zzsc;
    private final int zzsd;
    private final int zzse;
    private final int zzsf;

    /* renamed from: com.google.android.gms.internal.zzbk.1 */
    class C04811 implements Runnable {
        final /* synthetic */ View zzsg;
        final /* synthetic */ zzbk zzsh;

        C04811(zzbk com_google_android_gms_internal_zzbk, View view) {
            this.zzsh = com_google_android_gms_internal_zzbk;
            this.zzsg = view;
        }

        public void run() {
            this.zzsh.zzg(this.zzsg);
        }
    }

    /* renamed from: com.google.android.gms.internal.zzbk.2 */
    class C04832 implements Runnable {
        final /* synthetic */ zzbk zzsh;
        ValueCallback<String> zzsi;
        final /* synthetic */ zzbh zzsj;
        final /* synthetic */ WebView zzsk;

        /* renamed from: com.google.android.gms.internal.zzbk.2.1 */
        class C04821 implements ValueCallback<String> {
            final /* synthetic */ C04832 zzsl;

            C04821(C04832 c04832) {
                this.zzsl = c04832;
            }

            public /* synthetic */ void onReceiveValue(Object obj) {
                zzy((String) obj);
            }

            public void zzy(String str) {
                this.zzsl.zzsh.zza(this.zzsl.zzsj, this.zzsl.zzsk, str);
            }
        }

        C04832(zzbk com_google_android_gms_internal_zzbk, zzbh com_google_android_gms_internal_zzbh, WebView webView) {
            this.zzsh = com_google_android_gms_internal_zzbk;
            this.zzsj = com_google_android_gms_internal_zzbh;
            this.zzsk = webView;
            this.zzsi = new C04821(this);
        }

        public void run() {
            if (this.zzsk.getSettings().getJavaScriptEnabled()) {
                try {
                    this.zzsk.evaluateJavascript("(function() { return  {text:document.body.innerText}})();", this.zzsi);
                } catch (Throwable th) {
                    this.zzsi.onReceiveValue(BuildConfig.FLAVOR);
                }
            }
        }
    }

    @zzgr
    class zza {
        final /* synthetic */ zzbk zzsh;
        final int zzsm;
        final int zzsn;

        zza(zzbk com_google_android_gms_internal_zzbk, int i, int i2) {
            this.zzsh = com_google_android_gms_internal_zzbk;
            this.zzsm = i;
            this.zzsn = i2;
        }
    }

    public zzbk(zzbj com_google_android_gms_internal_zzbj, zzbi com_google_android_gms_internal_zzbi, zzgq com_google_android_gms_internal_zzgq) {
        this.mStarted = false;
        this.zzrZ = false;
        this.zzam = false;
        this.zzsa = com_google_android_gms_internal_zzbj;
        this.zzsb = com_google_android_gms_internal_zzbi;
        this.zzsc = com_google_android_gms_internal_zzgq;
        this.zzpd = new Object();
        this.zzrN = ((Integer) zzby.zzuU.get()).intValue();
        this.zzse = ((Integer) zzby.zzuV.get()).intValue();
        this.zzrP = ((Integer) zzby.zzuW.get()).intValue();
        this.zzsf = ((Integer) zzby.zzuX.get()).intValue();
        this.zzsd = ((Integer) zzby.zzuY.get()).intValue();
        setName("ContentFetchTask");
    }

    /* JADX WARNING: inconsistent code. */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public void run() {
        /*
        r3 = this;
    L_0x0000:
        r0 = r3.zzam;
        if (r0 != 0) goto L_0x0052;
    L_0x0004:
        r0 = r3.zzcu();	 Catch:{ Throwable -> 0x0018 }
        if (r0 == 0) goto L_0x0044;
    L_0x000a:
        r0 = r3.zzsa;	 Catch:{ Throwable -> 0x0018 }
        r0 = r0.getActivity();	 Catch:{ Throwable -> 0x0018 }
        if (r0 != 0) goto L_0x0038;
    L_0x0012:
        r0 = "ContentFetchThread: no activity";
        com.google.android.gms.ads.internal.util.client.zzb.zzaF(r0);	 Catch:{ Throwable -> 0x0018 }
        goto L_0x0000;
    L_0x0018:
        r0 = move-exception;
        r1 = "Error in ContentFetchTask";
        com.google.android.gms.ads.internal.util.client.zzb.zzb(r1, r0);
        r1 = r3.zzsc;
        r2 = 1;
        r1.zza(r0, r2);
    L_0x0024:
        r1 = r3.zzpd;
        monitor-enter(r1);
    L_0x0027:
        r0 = r3.zzrZ;	 Catch:{ all -> 0x004f }
        if (r0 == 0) goto L_0x004d;
    L_0x002b:
        r0 = "ContentFetchTask: waiting";
        com.google.android.gms.ads.internal.util.client.zzb.zzaF(r0);	 Catch:{ InterruptedException -> 0x0036 }
        r0 = r3.zzpd;	 Catch:{ InterruptedException -> 0x0036 }
        r0.wait();	 Catch:{ InterruptedException -> 0x0036 }
        goto L_0x0027;
    L_0x0036:
        r0 = move-exception;
        goto L_0x0027;
    L_0x0038:
        r3.zza(r0);	 Catch:{ Throwable -> 0x0018 }
    L_0x003b:
        r0 = r3.zzsd;	 Catch:{ Throwable -> 0x0018 }
        r0 = r0 * 1000;
        r0 = (long) r0;	 Catch:{ Throwable -> 0x0018 }
        java.lang.Thread.sleep(r0);	 Catch:{ Throwable -> 0x0018 }
        goto L_0x0024;
    L_0x0044:
        r0 = "ContentFetchTask: sleeping";
        com.google.android.gms.ads.internal.util.client.zzb.zzaF(r0);	 Catch:{ Throwable -> 0x0018 }
        r3.zzcw();	 Catch:{ Throwable -> 0x0018 }
        goto L_0x003b;
    L_0x004d:
        monitor-exit(r1);	 Catch:{ all -> 0x004f }
        goto L_0x0000;
    L_0x004f:
        r0 = move-exception;
        monitor-exit(r1);	 Catch:{ all -> 0x004f }
        throw r0;
    L_0x0052:
        return;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.zzbk.run():void");
    }

    public void wakeup() {
        synchronized (this.zzpd) {
            this.zzrZ = false;
            this.zzpd.notifyAll();
            zzb.zzaF("ContentFetchThread: wakeup");
        }
    }

    zza zza(View view, zzbh com_google_android_gms_internal_zzbh) {
        int i = 0;
        if (view == null) {
            return new zza(this, 0, 0);
        }
        if ((view instanceof TextView) && !(view instanceof EditText)) {
            CharSequence text = ((TextView) view).getText();
            if (TextUtils.isEmpty(text)) {
                return new zza(this, 0, 0);
            }
            com_google_android_gms_internal_zzbh.zzw(text.toString());
            return new zza(this, 1, 0);
        } else if ((view instanceof WebView) && !(view instanceof zziz)) {
            com_google_android_gms_internal_zzbh.zzcp();
            return zza((WebView) view, com_google_android_gms_internal_zzbh) ? new zza(this, 0, 1) : new zza(this, 0, 0);
        } else if (!(view instanceof ViewGroup)) {
            return new zza(this, 0, 0);
        } else {
            ViewGroup viewGroup = (ViewGroup) view;
            int i2 = 0;
            int i3 = 0;
            while (i2 < viewGroup.getChildCount()) {
                zza zza = zza(viewGroup.getChildAt(i2), com_google_android_gms_internal_zzbh);
                i3 += zza.zzsn;
                i2++;
                i = zza.zzsm + i;
            }
            return new zza(this, i, i3);
        }
    }

    void zza(Activity activity) {
        if (activity != null) {
            View view = null;
            if (!(activity.getWindow() == null || activity.getWindow().getDecorView() == null)) {
                view = activity.getWindow().getDecorView().findViewById(16908290);
            }
            if (view != null) {
                zzf(view);
            }
        }
    }

    void zza(zzbh com_google_android_gms_internal_zzbh, WebView webView, String str) {
        com_google_android_gms_internal_zzbh.zzco();
        try {
            if (!TextUtils.isEmpty(str)) {
                String optString = new JSONObject(str).optString("text");
                if (TextUtils.isEmpty(webView.getTitle())) {
                    com_google_android_gms_internal_zzbh.zzv(optString);
                } else {
                    com_google_android_gms_internal_zzbh.zzv(webView.getTitle() + IOUtils.LINE_SEPARATOR_UNIX + optString);
                }
            }
            if (com_google_android_gms_internal_zzbh.zzcl()) {
                this.zzsb.zzb(com_google_android_gms_internal_zzbh);
            }
        } catch (JSONException e) {
            zzb.zzaF("Json string may be malformed.");
        } catch (Throwable th) {
            zzb.zza("Failed to get webview content.", th);
            this.zzsc.zza(th, true);
        }
    }

    boolean zza(RunningAppProcessInfo runningAppProcessInfo) {
        return runningAppProcessInfo.importance == 100;
    }

    boolean zza(WebView webView, zzbh com_google_android_gms_internal_zzbh) {
        if (!zzmx.zzqB()) {
            return false;
        }
        com_google_android_gms_internal_zzbh.zzcp();
        webView.post(new C04832(this, com_google_android_gms_internal_zzbh, webView));
        return true;
    }

    public void zzct() {
        synchronized (this.zzpd) {
            if (this.mStarted) {
                zzb.zzaF("Content hash thread already started, quiting...");
                return;
            }
            this.mStarted = true;
            start();
        }
    }

    boolean zzcu() {
        try {
            Context context = this.zzsa.getContext();
            if (context == null) {
                return false;
            }
            ActivityManager activityManager = (ActivityManager) context.getSystemService("activity");
            KeyguardManager keyguardManager = (KeyguardManager) context.getSystemService("keyguard");
            if (activityManager == null || keyguardManager == null) {
                return false;
            }
            List<RunningAppProcessInfo> runningAppProcesses = activityManager.getRunningAppProcesses();
            if (runningAppProcesses == null) {
                return false;
            }
            for (RunningAppProcessInfo runningAppProcessInfo : runningAppProcesses) {
                if (Process.myPid() == runningAppProcessInfo.pid) {
                    if (zza(runningAppProcessInfo) && !keyguardManager.inKeyguardRestrictedInputMode() && zzr(context)) {
                        return true;
                    }
                    return false;
                }
            }
            return false;
        } catch (Throwable th) {
            return false;
        }
    }

    public zzbh zzcv() {
        return this.zzsb.zzcs();
    }

    public void zzcw() {
        synchronized (this.zzpd) {
            this.zzrZ = true;
            zzb.zzaF("ContentFetchThread: paused, mPause = " + this.zzrZ);
        }
    }

    public boolean zzcx() {
        return this.zzrZ;
    }

    boolean zzf(View view) {
        if (view == null) {
            return false;
        }
        view.post(new C04811(this, view));
        return true;
    }

    void zzg(View view) {
        try {
            zzbh com_google_android_gms_internal_zzbh = new zzbh(this.zzrN, this.zzse, this.zzrP, this.zzsf);
            zza zza = zza(view, com_google_android_gms_internal_zzbh);
            com_google_android_gms_internal_zzbh.zzcq();
            if (zza.zzsm != 0 || zza.zzsn != 0) {
                if (zza.zzsn != 0 || com_google_android_gms_internal_zzbh.zzcr() != 0) {
                    if (zza.zzsn != 0 || !this.zzsb.zza(com_google_android_gms_internal_zzbh)) {
                        this.zzsb.zzc(com_google_android_gms_internal_zzbh);
                    }
                }
            }
        } catch (Throwable e) {
            zzb.zzb("Exception in fetchContentOnUIThread", e);
            this.zzsc.zza(e, true);
        }
    }

    boolean zzr(Context context) {
        PowerManager powerManager = (PowerManager) context.getSystemService("power");
        return powerManager == null ? false : powerManager.isScreenOn();
    }
}
