package com.google.android.gms.ads.internal.formats;

import android.content.Context;
import android.graphics.Rect;
import android.text.TextUtils;
import android.view.MotionEvent;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.FrameLayout.LayoutParams;
import com.google.android.gms.ads.internal.client.AdSizeParcel;
import com.google.android.gms.ads.internal.util.client.VersionInfoParcel;
import com.google.android.gms.ads.internal.util.client.zzb;
import com.google.android.gms.ads.internal.zzn;
import com.google.android.gms.ads.internal.zzp;
import com.google.android.gms.common.internal.zzx;
import com.google.android.gms.internal.zzan;
import com.google.android.gms.internal.zzbb;
import com.google.android.gms.internal.zzdk;
import com.google.android.gms.internal.zzgr;
import com.google.android.gms.internal.zziz;
import com.voxelbusters.nativeplugins.defines.Keys.Mime;
import java.lang.ref.WeakReference;
import java.util.Map;
import java.util.Map.Entry;
import org.json.JSONObject;

@zzgr
public class zzh {
    private final Context mContext;
    private zziz zzoM;
    private final VersionInfoParcel zzpb;
    private final Object zzpd;
    private final zzn zzwF;
    private final JSONObject zzwI;
    private final zzbb zzwJ;
    private final zza zzwK;
    private final zzan zzwL;
    private boolean zzwM;
    private String zzwN;

    public interface zza {
        String getCustomTemplateId();

        void zza(zzh com_google_android_gms_ads_internal_formats_zzh);

        String zzdy();

        zza zzdz();
    }

    /* renamed from: com.google.android.gms.ads.internal.formats.zzh.1 */
    class C01761 implements zzdk {
        final /* synthetic */ zzh zzwO;

        /* renamed from: com.google.android.gms.ads.internal.formats.zzh.1.1 */
        class C01751 implements com.google.android.gms.internal.zzja.zza {
            final /* synthetic */ Map zzwP;
            final /* synthetic */ C01761 zzwQ;

            C01751(C01761 c01761, Map map) {
                this.zzwQ = c01761;
                this.zzwP = map;
            }

            public void zza(zziz com_google_android_gms_internal_zziz, boolean z) {
                this.zzwQ.zzwO.zzwN = (String) this.zzwP.get(TriggerIfContentAvailable.ID);
                JSONObject jSONObject = new JSONObject();
                try {
                    jSONObject.put("messageType", "htmlLoaded");
                    jSONObject.put(TriggerIfContentAvailable.ID, this.zzwQ.zzwO.zzwN);
                    this.zzwQ.zzwO.zzwJ.zzb("sendMessageToNativeJs", jSONObject);
                } catch (Throwable e) {
                    zzb.zzb("Unable to dispatch sendMessageToNativeJsevent", e);
                }
            }
        }

        C01761(zzh com_google_android_gms_ads_internal_formats_zzh) {
            this.zzwO = com_google_android_gms_ads_internal_formats_zzh;
        }

        public void zza(zziz com_google_android_gms_internal_zziz, Map<String, String> map) {
            this.zzwO.zzoM.zzhe().zza(new C01751(this, map));
            String str = (String) map.get("overlayHtml");
            String str2 = (String) map.get("baseUrl");
            if (TextUtils.isEmpty(str2)) {
                this.zzwO.zzoM.loadData(str, Mime.HTML_TEXT, "UTF-8");
            } else {
                this.zzwO.zzoM.loadDataWithBaseURL(str2, str, Mime.HTML_TEXT, "UTF-8", null);
            }
        }
    }

    /* renamed from: com.google.android.gms.ads.internal.formats.zzh.2 */
    class C01772 implements zzdk {
        final /* synthetic */ zzh zzwO;

        C01772(zzh com_google_android_gms_ads_internal_formats_zzh) {
            this.zzwO = com_google_android_gms_ads_internal_formats_zzh;
        }

        public void zza(zziz com_google_android_gms_internal_zziz, Map<String, String> map) {
            this.zzwO.zzoM.getView().setVisibility(0);
        }
    }

    /* renamed from: com.google.android.gms.ads.internal.formats.zzh.3 */
    class C01783 implements zzdk {
        final /* synthetic */ zzh zzwO;

        C01783(zzh com_google_android_gms_ads_internal_formats_zzh) {
            this.zzwO = com_google_android_gms_ads_internal_formats_zzh;
        }

        public void zza(zziz com_google_android_gms_internal_zziz, Map<String, String> map) {
            this.zzwO.zzoM.getView().setVisibility(8);
        }
    }

    /* renamed from: com.google.android.gms.ads.internal.formats.zzh.4 */
    class C01794 implements zzdk {
        final /* synthetic */ zzh zzwO;

        C01794(zzh com_google_android_gms_ads_internal_formats_zzh) {
            this.zzwO = com_google_android_gms_ads_internal_formats_zzh;
        }

        public void zza(zziz com_google_android_gms_internal_zziz, Map<String, String> map) {
            this.zzwO.zzoM.getView().setVisibility(8);
        }
    }

    /* renamed from: com.google.android.gms.ads.internal.formats.zzh.5 */
    class C01805 implements zzdk {
        final /* synthetic */ zzh zzwO;

        C01805(zzh com_google_android_gms_ads_internal_formats_zzh) {
            this.zzwO = com_google_android_gms_ads_internal_formats_zzh;
        }

        public void zza(zziz com_google_android_gms_internal_zziz, Map<String, String> map) {
            JSONObject jSONObject = new JSONObject();
            try {
                for (String str : map.keySet()) {
                    jSONObject.put(str, map.get(str));
                }
                jSONObject.put(TriggerIfContentAvailable.ID, this.zzwO.zzwN);
                this.zzwO.zzwJ.zzb("sendMessageToNativeJs", jSONObject);
            } catch (Throwable e) {
                zzb.zzb("Unable to dispatch sendMessageToNativeJs event", e);
            }
        }
    }

    public zzh(Context context, zzn com_google_android_gms_ads_internal_zzn, zzbb com_google_android_gms_internal_zzbb, zzan com_google_android_gms_internal_zzan, JSONObject jSONObject, zza com_google_android_gms_ads_internal_formats_zzh_zza, VersionInfoParcel versionInfoParcel) {
        this.zzpd = new Object();
        this.mContext = context;
        this.zzwF = com_google_android_gms_ads_internal_zzn;
        this.zzwJ = com_google_android_gms_internal_zzbb;
        this.zzwL = com_google_android_gms_internal_zzan;
        this.zzwI = jSONObject;
        this.zzwK = com_google_android_gms_ads_internal_formats_zzh_zza;
        this.zzpb = versionInfoParcel;
    }

    public Context getContext() {
        return this.mContext;
    }

    public void recordImpression() {
        zzx.zzci("recordImpression must be called on the main UI thread.");
        zzl(true);
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("ad", this.zzwI);
            this.zzwJ.zza("google.afma.nativeAds.handleImpressionPing", jSONObject);
        } catch (Throwable e) {
            zzb.zzb("Unable to create impression JSON.", e);
        }
    }

    public zzb zza(OnClickListener onClickListener) {
        zza zzdz = this.zzwK.zzdz();
        if (zzdz == null) {
            return null;
        }
        zzb com_google_android_gms_ads_internal_formats_zzb = new zzb(this.mContext, zzdz);
        com_google_android_gms_ads_internal_formats_zzb.setLayoutParams(new LayoutParams(-1, -1));
        com_google_android_gms_ads_internal_formats_zzb.zzdu().setOnClickListener(onClickListener);
        com_google_android_gms_ads_internal_formats_zzb.zzdu().setContentDescription("Ad attribution icon");
        return com_google_android_gms_ads_internal_formats_zzb;
    }

    public void zza(View view, Map<String, WeakReference<View>> map, JSONObject jSONObject, JSONObject jSONObject2) {
        zzx.zzci("performClick must be called on the main UI thread.");
        for (Entry entry : map.entrySet()) {
            if (view.equals((View) ((WeakReference) entry.getValue()).get())) {
                zza((String) entry.getKey(), jSONObject, jSONObject2);
                return;
            }
        }
    }

    public void zza(String str, JSONObject jSONObject, JSONObject jSONObject2) {
        zzx.zzci("performClick must be called on the main UI thread.");
        try {
            JSONObject jSONObject3 = new JSONObject();
            jSONObject3.put("asset", str);
            jSONObject3.put("template", this.zzwK.zzdy());
            JSONObject jSONObject4 = new JSONObject();
            jSONObject4.put("ad", this.zzwI);
            jSONObject4.put("click", jSONObject3);
            jSONObject4.put("has_custom_click_handler", this.zzwF.zzr(this.zzwK.getCustomTemplateId()) != null);
            if (jSONObject != null) {
                jSONObject4.put("view_rectangles", jSONObject);
            }
            if (jSONObject2 != null) {
                jSONObject4.put("click_point", jSONObject2);
            }
            this.zzwJ.zza("google.afma.nativeAds.handleClickGmsg", jSONObject4);
        } catch (Throwable e) {
            zzb.zzb("Unable to create click JSON.", e);
        }
    }

    public void zzb(MotionEvent motionEvent) {
        this.zzwL.zza(motionEvent);
    }

    public zziz zzdC() {
        this.zzoM = zzdD();
        this.zzoM.getView().setVisibility(8);
        this.zzwJ.zza("/loadHtml", new C01761(this));
        this.zzwJ.zza("/showOverlay", new C01772(this));
        this.zzwJ.zza("/hideOverlay", new C01783(this));
        this.zzoM.zzhe().zza("/hideOverlay", new C01794(this));
        this.zzoM.zzhe().zza("/sendMessageToSdk", new C01805(this));
        return this.zzoM;
    }

    zziz zzdD() {
        return zzp.zzbw().zza(this.mContext, AdSizeParcel.zzs(this.mContext), false, false, this.zzwL, this.zzpb);
    }

    public void zzh(View view) {
    }

    public void zzi(View view) {
        synchronized (this.zzpd) {
            if (this.zzwM) {
            } else if (!view.isShown()) {
            } else if (view.getGlobalVisibleRect(new Rect(), null)) {
                recordImpression();
            }
        }
    }

    protected void zzl(boolean z) {
        this.zzwM = z;
    }
}
