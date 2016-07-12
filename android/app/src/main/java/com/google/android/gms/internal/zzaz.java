package com.google.android.gms.internal;

import android.app.KeyguardManager;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.graphics.Rect;
import android.os.PowerManager;
import android.text.TextUtils;
import android.util.DisplayMetrics;
import android.view.View;
import android.view.ViewTreeObserver;
import android.view.ViewTreeObserver.OnGlobalLayoutListener;
import android.view.ViewTreeObserver.OnScrollChangedListener;
import android.view.WindowManager;
import com.google.android.gms.ads.internal.client.AdSizeParcel;
import com.google.android.gms.ads.internal.util.client.VersionInfoParcel;
import com.google.android.gms.ads.internal.util.client.zzb;
import com.google.android.gms.ads.internal.zzp;
import com.google.android.gms.internal.zzdz.zzd;
import com.google.android.gms.internal.zzis.zza;
import com.google.android.gms.internal.zzis.zzc;
import com.voxelbusters.nativeplugins.defines.Keys.GameServices;
import java.lang.ref.WeakReference;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Map;
import java.util.UUID;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

@zzgr
public class zzaz implements OnGlobalLayoutListener, OnScrollChangedListener {
    private boolean zzpJ;
    private final Object zzpd;
    private zzik zzqM;
    private final Context zzqZ;
    private final WeakReference<zzhs> zzrb;
    private WeakReference<ViewTreeObserver> zzrc;
    private final WeakReference<View> zzrd;
    private final zzax zzre;
    private final zzdz zzrf;
    private final zzd zzrg;
    private boolean zzrh;
    private final WindowManager zzri;
    private final PowerManager zzrj;
    private final KeyguardManager zzrk;
    private zzba zzrl;
    private boolean zzrm;
    private boolean zzrn;
    private boolean zzro;
    private boolean zzrp;
    private BroadcastReceiver zzrq;
    private final HashSet<zzaw> zzrr;
    private final zzdk zzrs;
    private final zzdk zzrt;
    private final zzdk zzru;

    /* renamed from: com.google.android.gms.internal.zzaz.1 */
    class C04641 implements zzc<zzbe> {
        final /* synthetic */ JSONObject zzrv;
        final /* synthetic */ zzaz zzrw;

        C04641(zzaz com_google_android_gms_internal_zzaz, JSONObject jSONObject) {
            this.zzrw = com_google_android_gms_internal_zzaz;
            this.zzrv = jSONObject;
        }

        public void zzb(zzbe com_google_android_gms_internal_zzbe) {
            this.zzrw.zza(this.zzrv);
        }

        public /* synthetic */ void zzc(Object obj) {
            zzb((zzbe) obj);
        }
    }

    /* renamed from: com.google.android.gms.internal.zzaz.2 */
    class C04652 implements zza {
        final /* synthetic */ zzaz zzrw;

        C04652(zzaz com_google_android_gms_internal_zzaz) {
            this.zzrw = com_google_android_gms_internal_zzaz;
        }

        public void run() {
        }
    }

    /* renamed from: com.google.android.gms.internal.zzaz.3 */
    class C04663 implements zzc<zzbe> {
        final /* synthetic */ zzaz zzrw;

        C04663(zzaz com_google_android_gms_internal_zzaz) {
            this.zzrw = com_google_android_gms_internal_zzaz;
        }

        public void zzb(zzbe com_google_android_gms_internal_zzbe) {
            this.zzrw.zzrh = true;
            this.zzrw.zza(com_google_android_gms_internal_zzbe);
            this.zzrw.zzbZ();
            this.zzrw.zzh(false);
        }

        public /* synthetic */ void zzc(Object obj) {
            zzb((zzbe) obj);
        }
    }

    /* renamed from: com.google.android.gms.internal.zzaz.4 */
    class C04674 implements zza {
        final /* synthetic */ zzaz zzrw;

        C04674(zzaz com_google_android_gms_internal_zzaz) {
            this.zzrw = com_google_android_gms_internal_zzaz;
        }

        public void run() {
            this.zzrw.destroy();
        }
    }

    /* renamed from: com.google.android.gms.internal.zzaz.5 */
    class C04685 extends BroadcastReceiver {
        final /* synthetic */ zzaz zzrw;

        C04685(zzaz com_google_android_gms_internal_zzaz) {
            this.zzrw = com_google_android_gms_internal_zzaz;
        }

        public void onReceive(Context context, Intent intent) {
            this.zzrw.zzh(false);
        }
    }

    /* renamed from: com.google.android.gms.internal.zzaz.6 */
    class C04696 implements zzdk {
        final /* synthetic */ zzaz zzrw;

        C04696(zzaz com_google_android_gms_internal_zzaz) {
            this.zzrw = com_google_android_gms_internal_zzaz;
        }

        public void zza(zziz com_google_android_gms_internal_zziz, Map<String, String> map) {
            if (this.zzrw.zzb((Map) map)) {
                this.zzrw.zza(com_google_android_gms_internal_zziz.getView(), (Map) map);
            }
        }
    }

    /* renamed from: com.google.android.gms.internal.zzaz.7 */
    class C04707 implements zzdk {
        final /* synthetic */ zzaz zzrw;

        C04707(zzaz com_google_android_gms_internal_zzaz) {
            this.zzrw = com_google_android_gms_internal_zzaz;
        }

        public void zza(zziz com_google_android_gms_internal_zziz, Map<String, String> map) {
            if (this.zzrw.zzb((Map) map)) {
                zzb.zzaF("Received request to untrack: " + this.zzrw.zzre.zzbX());
                this.zzrw.destroy();
            }
        }
    }

    /* renamed from: com.google.android.gms.internal.zzaz.8 */
    class C04718 implements zzdk {
        final /* synthetic */ zzaz zzrw;

        C04718(zzaz com_google_android_gms_internal_zzaz) {
            this.zzrw = com_google_android_gms_internal_zzaz;
        }

        public void zza(zziz com_google_android_gms_internal_zziz, Map<String, String> map) {
            if (this.zzrw.zzb((Map) map) && map.containsKey("isVisible")) {
                boolean z = "1".equals(map.get("isVisible")) || "true".equals(map.get("isVisible"));
                this.zzrw.zzg(Boolean.valueOf(z).booleanValue());
            }
        }
    }

    /* renamed from: com.google.android.gms.internal.zzaz.9 */
    class C04729 implements zzc<zzbe> {
        final /* synthetic */ zzaz zzrw;
        final /* synthetic */ JSONObject zzrx;

        C04729(zzaz com_google_android_gms_internal_zzaz, JSONObject jSONObject) {
            this.zzrw = com_google_android_gms_internal_zzaz;
            this.zzrx = jSONObject;
        }

        public void zzb(zzbe com_google_android_gms_internal_zzbe) {
            com_google_android_gms_internal_zzbe.zza("AFMA_updateActiveView", this.zzrx);
        }

        public /* synthetic */ void zzc(Object obj) {
            zzb((zzbe) obj);
        }
    }

    public zzaz(AdSizeParcel adSizeParcel, zzhs com_google_android_gms_internal_zzhs, VersionInfoParcel versionInfoParcel, View view, zzdz com_google_android_gms_internal_zzdz) {
        this.zzpd = new Object();
        this.zzpJ = false;
        this.zzrn = false;
        this.zzrr = new HashSet();
        this.zzrs = new C04696(this);
        this.zzrt = new C04707(this);
        this.zzru = new C04718(this);
        this.zzrf = com_google_android_gms_internal_zzdz;
        this.zzrb = new WeakReference(com_google_android_gms_internal_zzhs);
        this.zzrd = new WeakReference(view);
        this.zzrc = new WeakReference(null);
        this.zzro = true;
        this.zzqM = new zzik(200);
        this.zzre = new zzax(UUID.randomUUID().toString(), versionInfoParcel, adSizeParcel.zzte, com_google_android_gms_internal_zzhs.zzHw, com_google_android_gms_internal_zzhs.zzbY());
        this.zzrg = this.zzrf.zzdO();
        this.zzri = (WindowManager) view.getContext().getSystemService("window");
        this.zzrj = (PowerManager) view.getContext().getApplicationContext().getSystemService("power");
        this.zzrk = (KeyguardManager) view.getContext().getSystemService("keyguard");
        this.zzqZ = view.getContext().getApplicationContext();
        try {
            this.zzrg.zza(new C04641(this, zzd(view)), new C04652(this));
        } catch (JSONException e) {
        } catch (Throwable e2) {
            zzb.zzb("Failure while processing active view data.", e2);
        }
        this.zzrg.zza(new C04663(this), new C04674(this));
        zzb.zzaF("Tracking ad unit: " + this.zzre.zzbX());
    }

    protected void destroy() {
        synchronized (this.zzpd) {
            zzcf();
            zzca();
            this.zzro = false;
            zzcc();
            this.zzrg.release();
        }
    }

    boolean isScreenOn() {
        return this.zzrj.isScreenOn();
    }

    public void onGlobalLayout() {
        zzh(false);
    }

    public void onScrollChanged() {
        zzh(true);
    }

    public void pause() {
        synchronized (this.zzpd) {
            this.zzpJ = true;
            zzh(false);
        }
    }

    public void resume() {
        synchronized (this.zzpd) {
            this.zzpJ = false;
            zzh(false);
        }
    }

    public void stop() {
        synchronized (this.zzpd) {
            this.zzrn = true;
            zzh(false);
        }
    }

    protected int zza(int i, DisplayMetrics displayMetrics) {
        return (int) (((float) i) / displayMetrics.density);
    }

    protected void zza(View view, Map<String, String> map) {
        zzh(false);
    }

    public void zza(zzaw com_google_android_gms_internal_zzaw) {
        this.zzrr.add(com_google_android_gms_internal_zzaw);
    }

    public void zza(zzba com_google_android_gms_internal_zzba) {
        synchronized (this.zzpd) {
            this.zzrl = com_google_android_gms_internal_zzba;
        }
    }

    protected void zza(zzbe com_google_android_gms_internal_zzbe) {
        com_google_android_gms_internal_zzbe.zza("/updateActiveView", this.zzrs);
        com_google_android_gms_internal_zzbe.zza("/untrackActiveViewUnit", this.zzrt);
        com_google_android_gms_internal_zzbe.zza("/visibilityChanged", this.zzru);
    }

    protected void zza(JSONObject jSONObject) {
        try {
            JSONArray jSONArray = new JSONArray();
            JSONObject jSONObject2 = new JSONObject();
            jSONArray.put(jSONObject);
            jSONObject2.put("units", jSONArray);
            this.zzrg.zza(new C04729(this, jSONObject2), new zzis.zzb());
        } catch (Throwable th) {
            zzb.zzb("Skipping active view message.", th);
        }
    }

    protected boolean zzb(Map<String, String> map) {
        if (map == null) {
            return false;
        }
        String str = (String) map.get("hashCode");
        return !TextUtils.isEmpty(str) && str.equals(this.zzre.zzbX());
    }

    protected void zzbZ() {
        synchronized (this.zzpd) {
            if (this.zzrq != null) {
                return;
            }
            IntentFilter intentFilter = new IntentFilter();
            intentFilter.addAction("android.intent.action.SCREEN_ON");
            intentFilter.addAction("android.intent.action.SCREEN_OFF");
            this.zzrq = new C04685(this);
            this.zzqZ.registerReceiver(this.zzrq, intentFilter);
        }
    }

    protected void zzca() {
        synchronized (this.zzpd) {
            if (this.zzrq != null) {
                this.zzqZ.unregisterReceiver(this.zzrq);
                this.zzrq = null;
            }
        }
    }

    public void zzcb() {
        synchronized (this.zzpd) {
            if (this.zzro) {
                this.zzrp = true;
                try {
                    zza(zzch());
                } catch (Throwable e) {
                    zzb.zzb("JSON failure while processing active view data.", e);
                } catch (Throwable e2) {
                    zzb.zzb("Failure while processing active view data.", e2);
                }
                zzb.zzaF("Untracking ad unit: " + this.zzre.zzbX());
            }
        }
    }

    protected void zzcc() {
        if (this.zzrl != null) {
            this.zzrl.zza(this);
        }
    }

    public boolean zzcd() {
        boolean z;
        synchronized (this.zzpd) {
            z = this.zzro;
        }
        return z;
    }

    protected void zzce() {
        View view = (View) this.zzrd.get();
        if (view != null) {
            ViewTreeObserver viewTreeObserver = (ViewTreeObserver) this.zzrc.get();
            ViewTreeObserver viewTreeObserver2 = view.getViewTreeObserver();
            if (viewTreeObserver2 != viewTreeObserver) {
                zzcf();
                if (!this.zzrm || (viewTreeObserver != null && viewTreeObserver.isAlive())) {
                    this.zzrm = true;
                    viewTreeObserver2.addOnScrollChangedListener(this);
                    viewTreeObserver2.addOnGlobalLayoutListener(this);
                }
                this.zzrc = new WeakReference(viewTreeObserver2);
            }
        }
    }

    protected void zzcf() {
        ViewTreeObserver viewTreeObserver = (ViewTreeObserver) this.zzrc.get();
        if (viewTreeObserver != null && viewTreeObserver.isAlive()) {
            viewTreeObserver.removeOnScrollChangedListener(this);
            viewTreeObserver.removeGlobalOnLayoutListener(this);
        }
    }

    protected JSONObject zzcg() throws JSONException {
        JSONObject jSONObject = new JSONObject();
        jSONObject.put("afmaVersion", this.zzre.zzbV()).put("activeViewJSON", this.zzre.zzbW()).put(GameServices.USER_TIME_STAMP, zzp.zzbz().elapsedRealtime()).put("adFormat", this.zzre.zzbU()).put("hashCode", this.zzre.zzbX()).put("isMraid", this.zzre.zzbY());
        return jSONObject;
    }

    protected JSONObject zzch() throws JSONException {
        JSONObject zzcg = zzcg();
        zzcg.put("doneReasonCode", "u");
        return zzcg;
    }

    protected JSONObject zzd(View view) throws JSONException {
        boolean isAttachedToWindow = zzp.zzbx().isAttachedToWindow(view);
        int[] iArr = new int[2];
        int[] iArr2 = new int[2];
        try {
            view.getLocationOnScreen(iArr);
            view.getLocationInWindow(iArr2);
        } catch (Throwable e) {
            zzb.zzb("Failure getting view location.", e);
        }
        DisplayMetrics displayMetrics = view.getContext().getResources().getDisplayMetrics();
        Rect rect = new Rect();
        rect.left = iArr[0];
        rect.top = iArr[1];
        rect.right = rect.left + view.getWidth();
        rect.bottom = rect.top + view.getHeight();
        Rect rect2 = new Rect();
        rect2.right = this.zzri.getDefaultDisplay().getWidth();
        rect2.bottom = this.zzri.getDefaultDisplay().getHeight();
        Rect rect3 = new Rect();
        boolean globalVisibleRect = view.getGlobalVisibleRect(rect3, null);
        Rect rect4 = new Rect();
        boolean localVisibleRect = view.getLocalVisibleRect(rect4);
        Rect rect5 = new Rect();
        view.getHitRect(rect5);
        JSONObject zzcg = zzcg();
        zzcg.put("windowVisibility", view.getWindowVisibility()).put("isStopped", this.zzrn).put("isPaused", this.zzpJ).put("isScreenOn", isScreenOn()).put("isAttachedToWindow", isAttachedToWindow).put("viewBox", new JSONObject().put("top", zza(rect2.top, displayMetrics)).put("bottom", zza(rect2.bottom, displayMetrics)).put("left", zza(rect2.left, displayMetrics)).put("right", zza(rect2.right, displayMetrics))).put("adBox", new JSONObject().put("top", zza(rect.top, displayMetrics)).put("bottom", zza(rect.bottom, displayMetrics)).put("left", zza(rect.left, displayMetrics)).put("right", zza(rect.right, displayMetrics))).put("globalVisibleBox", new JSONObject().put("top", zza(rect3.top, displayMetrics)).put("bottom", zza(rect3.bottom, displayMetrics)).put("left", zza(rect3.left, displayMetrics)).put("right", zza(rect3.right, displayMetrics))).put("globalVisibleBoxVisible", globalVisibleRect).put("localVisibleBox", new JSONObject().put("top", zza(rect4.top, displayMetrics)).put("bottom", zza(rect4.bottom, displayMetrics)).put("left", zza(rect4.left, displayMetrics)).put("right", zza(rect4.right, displayMetrics))).put("localVisibleBoxVisible", localVisibleRect).put("hitBox", new JSONObject().put("top", zza(rect5.top, displayMetrics)).put("bottom", zza(rect5.bottom, displayMetrics)).put("left", zza(rect5.left, displayMetrics)).put("right", zza(rect5.right, displayMetrics))).put("screenDensity", (double) displayMetrics.density).put("isVisible", zze(view));
        return zzcg;
    }

    protected boolean zze(View view) {
        return view.getVisibility() == 0 && view.isShown() && isScreenOn() && (!this.zzrk.inKeyguardRestrictedInputMode() || zzp.zzbv().zzgB());
    }

    protected void zzg(boolean z) {
        Iterator it = this.zzrr.iterator();
        while (it.hasNext()) {
            ((zzaw) it.next()).zza(this, z);
        }
    }

    protected void zzh(boolean z) {
        Throwable e;
        synchronized (this.zzpd) {
            if (!this.zzrh || !this.zzro) {
            } else if (!z || this.zzqM.tryAcquire()) {
                View view = (View) this.zzrd.get();
                Object obj = (view == null || ((zzhs) this.zzrb.get()) == null) ? 1 : null;
                if (obj != null) {
                    zzcb();
                    return;
                }
                try {
                    zza(zzd(view));
                } catch (JSONException e2) {
                    e = e2;
                    zzb.zza("Active view update failed.", e);
                    zzce();
                    zzcc();
                } catch (RuntimeException e3) {
                    e = e3;
                    zzb.zza("Active view update failed.", e);
                    zzce();
                    zzcc();
                }
                zzce();
                zzcc();
            }
        }
    }
}
