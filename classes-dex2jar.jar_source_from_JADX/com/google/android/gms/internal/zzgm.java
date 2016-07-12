package com.google.android.gms.internal;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Color;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.os.RemoteException;
import android.text.TextUtils;
import com.google.android.gms.ads.internal.formats.zzc;
import com.google.android.gms.ads.internal.formats.zzf;
import com.google.android.gms.ads.internal.formats.zzh;
import com.google.android.gms.ads.internal.zzn;
import com.google.android.gms.common.internal.zzx;
import com.google.android.gms.dynamic.zze;
import com.google.android.gms.location.LocationStatusCodes;
import com.upsight.android.logger.UpsightLogger;
import com.voxelbusters.nativeplugins.defines.Keys;
import com.voxelbusters.nativeplugins.defines.Keys.Billing.Validation;
import com.voxelbusters.nativeplugins.defines.Keys.Scheme;
import java.io.IOException;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.Map;
import java.util.concurrent.Callable;
import java.util.concurrent.CancellationException;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Future;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

@zzgr
public class zzgm implements Callable<zzhs> {
    private static final long zzDE;
    private final Context mContext;
    private final zzih zzDF;
    private final zzn zzDG;
    private final zzbc zzDH;
    private boolean zzDI;
    private List<String> zzDJ;
    private final com.google.android.gms.internal.zzhs.zza zzDe;
    private int zzDv;
    private final Object zzpd;
    private final zzan zzwL;

    /* renamed from: com.google.android.gms.internal.zzgm.1 */
    class C05521 implements zzdk {
        final /* synthetic */ zzbb zzDK;
        final /* synthetic */ zzb zzDL;
        final /* synthetic */ zzin zzDM;
        final /* synthetic */ zzgm zzDN;

        C05521(zzgm com_google_android_gms_internal_zzgm, zzbb com_google_android_gms_internal_zzbb, zzb com_google_android_gms_internal_zzgm_zzb, zzin com_google_android_gms_internal_zzin) {
            this.zzDN = com_google_android_gms_internal_zzgm;
            this.zzDK = com_google_android_gms_internal_zzbb;
            this.zzDL = com_google_android_gms_internal_zzgm_zzb;
            this.zzDM = com_google_android_gms_internal_zzin;
        }

        public void zza(zziz com_google_android_gms_internal_zziz, Map<String, String> map) {
            this.zzDK.zzb("/nativeAdPreProcess", this.zzDL.zzDZ);
            try {
                String str = (String) map.get(Validation.SUCCESS);
                if (!TextUtils.isEmpty(str)) {
                    this.zzDM.zzf(new JSONObject(str).getJSONArray("ads").getJSONObject(0));
                    return;
                }
            } catch (Throwable e) {
                com.google.android.gms.ads.internal.util.client.zzb.zzb("Malformed native JSON response.", e);
            }
            this.zzDN.zzC(0);
            zzx.zza(this.zzDN.zzfD(), (Object) "Unable to set the ad state error!");
            this.zzDM.zzf(null);
        }
    }

    /* renamed from: com.google.android.gms.internal.zzgm.2 */
    class C05532 implements Runnable {
        final /* synthetic */ zzgm zzDN;
        final /* synthetic */ zzin zzDO;
        final /* synthetic */ String zzDP;

        C05532(zzgm com_google_android_gms_internal_zzgm, zzin com_google_android_gms_internal_zzin, String str) {
            this.zzDN = com_google_android_gms_internal_zzgm;
            this.zzDO = com_google_android_gms_internal_zzin;
            this.zzDP = str;
        }

        public void run() {
            this.zzDO.zzf(this.zzDN.zzDG.zzbo().get(this.zzDP));
        }
    }

    /* renamed from: com.google.android.gms.internal.zzgm.3 */
    class C05543 implements zzdk {
        final /* synthetic */ zzgm zzDN;
        final /* synthetic */ zzf zzDQ;

        C05543(zzgm com_google_android_gms_internal_zzgm, zzf com_google_android_gms_ads_internal_formats_zzf) {
            this.zzDN = com_google_android_gms_internal_zzgm;
            this.zzDQ = com_google_android_gms_ads_internal_formats_zzf;
        }

        public void zza(zziz com_google_android_gms_internal_zziz, Map<String, String> map) {
            this.zzDN.zzb(this.zzDQ, (String) map.get("asset"));
        }
    }

    /* renamed from: com.google.android.gms.internal.zzgm.4 */
    class C05554 implements com.google.android.gms.internal.zzip.zza<List<zzc>, com.google.android.gms.ads.internal.formats.zza> {
        final /* synthetic */ zzgm zzDN;
        final /* synthetic */ String zzDR;
        final /* synthetic */ Integer zzDS;
        final /* synthetic */ Integer zzDT;
        final /* synthetic */ int zzDU;
        final /* synthetic */ int zzDV;
        final /* synthetic */ int zzDW;

        C05554(zzgm com_google_android_gms_internal_zzgm, String str, Integer num, Integer num2, int i, int i2, int i3) {
            this.zzDN = com_google_android_gms_internal_zzgm;
            this.zzDR = str;
            this.zzDS = num;
            this.zzDT = num2;
            this.zzDU = i;
            this.zzDV = i2;
            this.zzDW = i3;
        }

        public /* synthetic */ Object zze(Object obj) {
            return zzf((List) obj);
        }

        public com.google.android.gms.ads.internal.formats.zza zzf(List<zzc> list) {
            if (list != null) {
                try {
                    if (!list.isEmpty()) {
                        return new com.google.android.gms.ads.internal.formats.zza(this.zzDR, zzgm.zzd((List) list), this.zzDS, this.zzDT, this.zzDU > 0 ? Integer.valueOf(this.zzDU) : null, this.zzDV + this.zzDW);
                    }
                } catch (Throwable e) {
                    com.google.android.gms.ads.internal.util.client.zzb.zzb("Could not get attribution icon", e);
                    return null;
                }
            }
            return null;
        }
    }

    /* renamed from: com.google.android.gms.internal.zzgm.5 */
    class C05565 implements com.google.android.gms.internal.zzih.zza<zzc> {
        final /* synthetic */ String zzAs;
        final /* synthetic */ zzgm zzDN;
        final /* synthetic */ boolean zzDX;
        final /* synthetic */ double zzDY;

        C05565(zzgm com_google_android_gms_internal_zzgm, boolean z, double d, String str) {
            this.zzDN = com_google_android_gms_internal_zzgm;
            this.zzDX = z;
            this.zzDY = d;
            this.zzAs = str;
        }

        public zzc zzfE() {
            this.zzDN.zza(2, this.zzDX);
            return null;
        }

        public /* synthetic */ Object zzfF() {
            return zzfE();
        }

        public zzc zzg(InputStream inputStream) {
            byte[] zzk;
            try {
                zzk = zzmt.zzk(inputStream);
            } catch (IOException e) {
                zzk = null;
            }
            if (zzk == null) {
                this.zzDN.zza(2, this.zzDX);
                return null;
            }
            Bitmap decodeByteArray = BitmapFactory.decodeByteArray(zzk, 0, zzk.length);
            if (decodeByteArray == null) {
                this.zzDN.zza(2, this.zzDX);
                return null;
            }
            decodeByteArray.setDensity((int) (160.0d * this.zzDY));
            return new zzc(new BitmapDrawable(Resources.getSystem(), decodeByteArray), Uri.parse(this.zzAs), this.zzDY);
        }

        public /* synthetic */ Object zzh(InputStream inputStream) {
            return zzg(inputStream);
        }
    }

    public interface zza<T extends com.google.android.gms.ads.internal.formats.zzh.zza> {
        T zza(zzgm com_google_android_gms_internal_zzgm, JSONObject jSONObject) throws JSONException, InterruptedException, ExecutionException;
    }

    class zzb {
        final /* synthetic */ zzgm zzDN;
        public zzdk zzDZ;

        zzb(zzgm com_google_android_gms_internal_zzgm) {
            this.zzDN = com_google_android_gms_internal_zzgm;
        }
    }

    static {
        zzDE = TimeUnit.SECONDS.toMillis(60);
    }

    public zzgm(Context context, zzn com_google_android_gms_ads_internal_zzn, zzbc com_google_android_gms_internal_zzbc, zzih com_google_android_gms_internal_zzih, zzan com_google_android_gms_internal_zzan, com.google.android.gms.internal.zzhs.zza com_google_android_gms_internal_zzhs_zza) {
        this.zzpd = new Object();
        this.mContext = context;
        this.zzDG = com_google_android_gms_ads_internal_zzn;
        this.zzDF = com_google_android_gms_internal_zzih;
        this.zzDH = com_google_android_gms_internal_zzbc;
        this.zzDe = com_google_android_gms_internal_zzhs_zza;
        this.zzwL = com_google_android_gms_internal_zzan;
        this.zzDI = false;
        this.zzDv = -2;
        this.zzDJ = null;
    }

    private com.google.android.gms.ads.internal.formats.zzh.zza zza(zzbb com_google_android_gms_internal_zzbb, zza com_google_android_gms_internal_zzgm_zza, JSONObject jSONObject) throws ExecutionException, InterruptedException, JSONException {
        if (zzfD()) {
            return null;
        }
        String[] zzc = zzc(jSONObject.getJSONObject("tracking_urls_and_actions"), "impression_tracking_urls");
        this.zzDJ = zzc == null ? null : Arrays.asList(zzc);
        com.google.android.gms.ads.internal.formats.zzh.zza zza = com_google_android_gms_internal_zzgm_zza.zza(this, jSONObject);
        if (zza == null) {
            com.google.android.gms.ads.internal.util.client.zzb.m36e("Failed to retrieve ad assets.");
            return null;
        }
        zza.zza(new zzh(this.mContext, this.zzDG, com_google_android_gms_internal_zzbb, this.zzwL, jSONObject, zza, this.zzDe.zzHC.zzqj));
        return zza;
    }

    private zzhs zza(com.google.android.gms.ads.internal.formats.zzh.zza com_google_android_gms_ads_internal_formats_zzh_zza) {
        int i;
        synchronized (this.zzpd) {
            i = this.zzDv;
            if (com_google_android_gms_ads_internal_formats_zzh_zza == null && this.zzDv == -2) {
                i = 0;
            }
        }
        return new zzhs(this.zzDe.zzHC.zzEn, null, this.zzDe.zzHD.zzyY, i, this.zzDe.zzHD.zzyZ, this.zzDJ, this.zzDe.zzHD.orientation, this.zzDe.zzHD.zzzc, this.zzDe.zzHC.zzEq, false, null, null, null, null, null, 0, this.zzDe.zzqn, this.zzDe.zzHD.zzEJ, this.zzDe.zzHz, this.zzDe.zzHA, this.zzDe.zzHD.zzEP, this.zzDe.zzHw, i != -2 ? null : com_google_android_gms_ads_internal_formats_zzh_zza);
    }

    private zziq<zzc> zza(JSONObject jSONObject, boolean z, boolean z2) throws JSONException {
        String string = z ? jSONObject.getString(Keys.URL) : jSONObject.optString(Keys.URL);
        double optDouble = jSONObject.optDouble("scale", 1.0d);
        if (!TextUtils.isEmpty(string)) {
            return z2 ? new zzio(new zzc(null, Uri.parse(string), optDouble)) : this.zzDF.zza(string, new C05565(this, z, optDouble, string));
        } else {
            zza(0, z);
            return new zzio(null);
        }
    }

    private void zza(com.google.android.gms.ads.internal.formats.zzh.zza com_google_android_gms_ads_internal_formats_zzh_zza, zzbb com_google_android_gms_internal_zzbb) {
        if (com_google_android_gms_ads_internal_formats_zzh_zza instanceof zzf) {
            zzf com_google_android_gms_ads_internal_formats_zzf = (zzf) com_google_android_gms_ads_internal_formats_zzh_zza;
            zzb com_google_android_gms_internal_zzgm_zzb = new zzb(this);
            zzdk c05543 = new C05543(this, com_google_android_gms_ads_internal_formats_zzf);
            com_google_android_gms_internal_zzgm_zzb.zzDZ = c05543;
            com_google_android_gms_internal_zzbb.zza("/nativeAdCustomClick", c05543);
        }
    }

    private Integer zzb(JSONObject jSONObject, String str) {
        try {
            JSONObject jSONObject2 = jSONObject.getJSONObject(str);
            return Integer.valueOf(Color.rgb(jSONObject2.getInt("r"), jSONObject2.getInt("g"), jSONObject2.getInt("b")));
        } catch (JSONException e) {
            return null;
        }
    }

    private JSONObject zzb(zzbb com_google_android_gms_internal_zzbb) throws TimeoutException, JSONException {
        if (zzfD()) {
            return null;
        }
        zzin com_google_android_gms_internal_zzin = new zzin();
        zzb com_google_android_gms_internal_zzgm_zzb = new zzb(this);
        zzdk c05521 = new C05521(this, com_google_android_gms_internal_zzbb, com_google_android_gms_internal_zzgm_zzb, com_google_android_gms_internal_zzin);
        com_google_android_gms_internal_zzgm_zzb.zzDZ = c05521;
        com_google_android_gms_internal_zzbb.zza("/nativeAdPreProcess", c05521);
        com_google_android_gms_internal_zzbb.zza("google.afma.nativeAds.preProcessJsonGmsg", new JSONObject(this.zzDe.zzHD.body));
        return (JSONObject) com_google_android_gms_internal_zzin.get(zzDE, TimeUnit.MILLISECONDS);
    }

    private void zzb(zzcu com_google_android_gms_internal_zzcu, String str) {
        try {
            zzcy zzr = this.zzDG.zzr(com_google_android_gms_internal_zzcu.getCustomTemplateId());
            if (zzr != null) {
                zzr.zza(com_google_android_gms_internal_zzcu, str);
            }
        } catch (Throwable e) {
            com.google.android.gms.ads.internal.util.client.zzb.zzd("Failed to call onCustomClick for asset " + str + ".", e);
        }
    }

    private String[] zzc(JSONObject jSONObject, String str) throws JSONException {
        JSONArray optJSONArray = jSONObject.optJSONArray(str);
        if (optJSONArray == null) {
            return null;
        }
        String[] strArr = new String[optJSONArray.length()];
        for (int i = 0; i < optJSONArray.length(); i++) {
            strArr[i] = optJSONArray.getString(i);
        }
        return strArr;
    }

    private static List<Drawable> zzd(List<zzc> list) throws RemoteException {
        List<Drawable> arrayList = new ArrayList();
        for (zzc zzdv : list) {
            arrayList.add((Drawable) zze.zzp(zzdv.zzdv()));
        }
        return arrayList;
    }

    private zzbb zzfC() throws CancellationException, ExecutionException, InterruptedException, TimeoutException {
        if (zzfD()) {
            return null;
        }
        zzbb com_google_android_gms_internal_zzbb = (zzbb) this.zzDH.zza(this.mContext, this.zzDe.zzHC.zzqj, (this.zzDe.zzHD.zzBF.indexOf(Scheme.HTTPS) == 0 ? "https:" : "http:") + ((String) zzby.zzvj.get()), this.zzwL).get(zzDE, TimeUnit.MILLISECONDS);
        com_google_android_gms_internal_zzbb.zza(this.zzDG, this.zzDG, this.zzDG, this.zzDG, false, null, null, null, null);
        return com_google_android_gms_internal_zzbb;
    }

    public /* synthetic */ Object call() throws Exception {
        return zzfB();
    }

    public void zzC(int i) {
        synchronized (this.zzpd) {
            this.zzDI = true;
            this.zzDv = i;
        }
    }

    public zziq<zzc> zza(JSONObject jSONObject, String str, boolean z, boolean z2) throws JSONException {
        JSONObject jSONObject2 = z ? jSONObject.getJSONObject(str) : jSONObject.optJSONObject(str);
        if (jSONObject2 == null) {
            jSONObject2 = new JSONObject();
        }
        return zza(jSONObject2, z, z2);
    }

    public List<zziq<zzc>> zza(JSONObject jSONObject, String str, boolean z, boolean z2, boolean z3) throws JSONException {
        JSONArray jSONArray = z ? jSONObject.getJSONArray(str) : jSONObject.optJSONArray(str);
        List<zziq<zzc>> arrayList = new ArrayList();
        if (jSONArray == null || jSONArray.length() == 0) {
            zza(0, z);
        } else {
            int length = z3 ? jSONArray.length() : 1;
            for (int i = 0; i < length; i++) {
                JSONObject jSONObject2 = jSONArray.getJSONObject(i);
                if (jSONObject2 == null) {
                    jSONObject2 = new JSONObject();
                }
                arrayList.add(zza(jSONObject2, z, z2));
            }
        }
        return arrayList;
    }

    public Future<zzc> zza(JSONObject jSONObject, String str, boolean z) throws JSONException {
        JSONObject jSONObject2 = jSONObject.getJSONObject(str);
        boolean optBoolean = jSONObject2.optBoolean("require", true);
        if (jSONObject2 == null) {
            jSONObject2 = new JSONObject();
        }
        return zza(jSONObject2, optBoolean, z);
    }

    public void zza(int i, boolean z) {
        if (z) {
            zzC(i);
        }
    }

    protected zza zzd(JSONObject jSONObject) throws JSONException, TimeoutException {
        if (zzfD()) {
            return null;
        }
        String string = jSONObject.getString("template_id");
        boolean z = this.zzDe.zzHC.zzqB != null ? this.zzDe.zzHC.zzqB.zzwR : false;
        boolean z2 = this.zzDe.zzHC.zzqB != null ? this.zzDe.zzHC.zzqB.zzwT : false;
        if ("2".equals(string)) {
            return new zzgn(z, z2);
        }
        if ("1".equals(string)) {
            return new zzgo(z, z2);
        }
        if ("3".equals(string)) {
            String string2 = jSONObject.getString("custom_template_id");
            zzin com_google_android_gms_internal_zzin = new zzin();
            zzid.zzIE.post(new C05532(this, com_google_android_gms_internal_zzin, string2));
            if (com_google_android_gms_internal_zzin.get(zzDE, TimeUnit.MILLISECONDS) != null) {
                return new zzgp(z);
            }
            com.google.android.gms.ads.internal.util.client.zzb.m36e("No handler for custom template: " + jSONObject.getString("custom_template_id"));
        } else {
            zzC(0);
        }
        return null;
    }

    public zziq<com.google.android.gms.ads.internal.formats.zza> zze(JSONObject jSONObject) throws JSONException {
        JSONObject optJSONObject = jSONObject.optJSONObject("attribution");
        if (optJSONObject == null) {
            return new zzio(null);
        }
        String optString = optJSONObject.optString("text");
        int optInt = optJSONObject.optInt("text_size", -1);
        Integer zzb = zzb(optJSONObject, "text_color");
        Integer zzb2 = zzb(optJSONObject, "bg_color");
        int optInt2 = optJSONObject.optInt("animation_ms", LocationStatusCodes.GEOFENCE_NOT_AVAILABLE);
        int optInt3 = optJSONObject.optInt("presentation_ms", UpsightLogger.MAX_LENGTH);
        List arrayList = new ArrayList();
        if (optJSONObject.optJSONArray("images") != null) {
            arrayList = zza(optJSONObject, "images", false, false, true);
        } else {
            arrayList.add(zza(optJSONObject, "image", false, false));
        }
        return zzip.zza(zzip.zzh(arrayList), new C05554(this, optString, zzb2, zzb, optInt, optInt3, optInt2));
    }

    public zzhs zzfB() {
        try {
            zzbb zzfC = zzfC();
            JSONObject zzb = zzb(zzfC);
            com.google.android.gms.ads.internal.formats.zzh.zza zza = zza(zzfC, zzd(zzb), zzb);
            zza(zza, zzfC);
            return zza(zza);
        } catch (CancellationException e) {
            if (!this.zzDI) {
                zzC(0);
            }
            return zza(null);
        } catch (ExecutionException e2) {
            if (this.zzDI) {
                zzC(0);
            }
            return zza(null);
        } catch (InterruptedException e3) {
            if (this.zzDI) {
                zzC(0);
            }
            return zza(null);
        } catch (Throwable e4) {
            com.google.android.gms.ads.internal.util.client.zzb.zzd("Malformed native JSON response.", e4);
            if (this.zzDI) {
                zzC(0);
            }
            return zza(null);
        } catch (Throwable e42) {
            com.google.android.gms.ads.internal.util.client.zzb.zzd("Timeout when loading native ad.", e42);
            if (this.zzDI) {
                zzC(0);
            }
            return zza(null);
        }
    }

    public boolean zzfD() {
        boolean z;
        synchronized (this.zzpd) {
            z = this.zzDI;
        }
        return z;
    }
}
