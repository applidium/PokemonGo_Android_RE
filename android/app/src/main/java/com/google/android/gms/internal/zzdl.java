package com.google.android.gms.internal;

import android.content.Context;
import android.text.TextUtils;
import com.google.android.gms.ads.internal.util.client.VersionInfoParcel;
import com.google.android.gms.ads.internal.zzp;
import com.voxelbusters.nativeplugins.defines.Keys;
import com.voxelbusters.nativeplugins.defines.Keys.Billing.Validation;
import com.voxelbusters.nativeplugins.defines.Keys.GameServices;
import java.io.BufferedOutputStream;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.URL;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
import spacemadness.com.lunarconsole.BuildConfig;

@zzgr
public class zzdl implements zzdk {
    private final Context mContext;
    private final VersionInfoParcel zzpb;

    /* renamed from: com.google.android.gms.internal.zzdl.1 */
    class C05051 implements Runnable {
        final /* synthetic */ Map zzwP;
        final /* synthetic */ zziz zzxB;
        final /* synthetic */ zzdl zzxC;

        /* renamed from: com.google.android.gms.internal.zzdl.1.1 */
        class C05041 implements Runnable {
            final /* synthetic */ JSONObject zzxD;
            final /* synthetic */ C05051 zzxE;

            C05041(C05051 c05051, JSONObject jSONObject) {
                this.zzxE = c05051;
                this.zzxD = jSONObject;
            }

            public void run() {
                this.zzxE.zzxB.zzb("fetchHttpRequestCompleted", this.zzxD);
                com.google.android.gms.ads.internal.util.client.zzb.zzaF("Dispatched http response.");
            }
        }

        C05051(zzdl com_google_android_gms_internal_zzdl, Map map, zziz com_google_android_gms_internal_zziz) {
            this.zzxC = com_google_android_gms_internal_zzdl;
            this.zzwP = map;
            this.zzxB = com_google_android_gms_internal_zziz;
        }

        public void run() {
            com.google.android.gms.ads.internal.util.client.zzb.zzaF("Received Http request.");
            JSONObject zzX = this.zzxC.zzX((String) this.zzwP.get("http_request"));
            if (zzX == null) {
                com.google.android.gms.ads.internal.util.client.zzb.m36e("Response should not be null.");
            } else {
                zzid.zzIE.post(new C05041(this, zzX));
            }
        }
    }

    @zzgr
    static class zza {
        private final String mValue;
        private final String zzue;

        public zza(String str, String str2) {
            this.zzue = str;
            this.mValue = str2;
        }

        public String getKey() {
            return this.zzue;
        }

        public String getValue() {
            return this.mValue;
        }
    }

    @zzgr
    static class zzb {
        private final String zzxF;
        private final URL zzxG;
        private final ArrayList<zza> zzxH;
        private final String zzxI;

        public zzb(String str, URL url, ArrayList<zza> arrayList, String str2) {
            this.zzxF = str;
            this.zzxG = url;
            if (arrayList == null) {
                this.zzxH = new ArrayList();
            } else {
                this.zzxH = arrayList;
            }
            this.zzxI = str2;
        }

        public String zzdE() {
            return this.zzxF;
        }

        public URL zzdF() {
            return this.zzxG;
        }

        public ArrayList<zza> zzdG() {
            return this.zzxH;
        }

        public String zzdH() {
            return this.zzxI;
        }
    }

    @zzgr
    class zzc {
        final /* synthetic */ zzdl zzxC;
        private final zzd zzxJ;
        private final boolean zzxK;
        private final String zzxL;

        public zzc(zzdl com_google_android_gms_internal_zzdl, boolean z, zzd com_google_android_gms_internal_zzdl_zzd, String str) {
            this.zzxC = com_google_android_gms_internal_zzdl;
            this.zzxK = z;
            this.zzxJ = com_google_android_gms_internal_zzdl_zzd;
            this.zzxL = str;
        }

        public String getReason() {
            return this.zzxL;
        }

        public boolean isSuccess() {
            return this.zzxK;
        }

        public zzd zzdI() {
            return this.zzxJ;
        }
    }

    @zzgr
    static class zzd {
        private final String zzwq;
        private final String zzxF;
        private final int zzxM;
        private final List<zza> zzxN;

        public zzd(String str, int i, List<zza> list, String str2) {
            this.zzxF = str;
            this.zzxM = i;
            if (list == null) {
                this.zzxN = new ArrayList();
            } else {
                this.zzxN = list;
            }
            this.zzwq = str2;
        }

        public String getBody() {
            return this.zzwq;
        }

        public int getResponseCode() {
            return this.zzxM;
        }

        public String zzdE() {
            return this.zzxF;
        }

        public Iterable<zza> zzdJ() {
            return this.zzxN;
        }
    }

    public zzdl(Context context, VersionInfoParcel versionInfoParcel) {
        this.mContext = context;
        this.zzpb = versionInfoParcel;
    }

    public JSONObject zzX(String str) {
        try {
            JSONObject jSONObject = new JSONObject(str);
            JSONObject jSONObject2 = new JSONObject();
            Object obj = BuildConfig.FLAVOR;
            try {
                obj = jSONObject.optString("http_request_id");
                zzc zza = zza(zzb(jSONObject));
                if (zza.isSuccess()) {
                    jSONObject2.put("response", zza(zza.zzdI()));
                    jSONObject2.put(Validation.SUCCESS, true);
                    return jSONObject2;
                }
                jSONObject2.put("response", new JSONObject().put("http_request_id", obj));
                jSONObject2.put(Validation.SUCCESS, false);
                jSONObject2.put("reason", zza.getReason());
                return jSONObject2;
            } catch (Exception e) {
                try {
                    jSONObject2.put("response", new JSONObject().put("http_request_id", obj));
                    jSONObject2.put(Validation.SUCCESS, false);
                    jSONObject2.put("reason", e.toString());
                    return jSONObject2;
                } catch (JSONException e2) {
                    return jSONObject2;
                }
            }
        } catch (JSONException e3) {
            com.google.android.gms.ads.internal.util.client.zzb.m36e("The request is not a valid JSON.");
            try {
                return new JSONObject().put(Validation.SUCCESS, false);
            } catch (JSONException e4) {
                return new JSONObject();
            }
        }
    }

    protected zzc zza(zzb com_google_android_gms_internal_zzdl_zzb) {
        try {
            HttpURLConnection httpURLConnection = (HttpURLConnection) com_google_android_gms_internal_zzdl_zzb.zzdF().openConnection();
            zzp.zzbv().zza(this.mContext, this.zzpb.zzJu, false, httpURLConnection);
            Iterator it = com_google_android_gms_internal_zzdl_zzb.zzdG().iterator();
            while (it.hasNext()) {
                zza com_google_android_gms_internal_zzdl_zza = (zza) it.next();
                httpURLConnection.addRequestProperty(com_google_android_gms_internal_zzdl_zza.getKey(), com_google_android_gms_internal_zzdl_zza.getValue());
            }
            if (!TextUtils.isEmpty(com_google_android_gms_internal_zzdl_zzb.zzdH())) {
                httpURLConnection.setDoOutput(true);
                byte[] bytes = com_google_android_gms_internal_zzdl_zzb.zzdH().getBytes();
                httpURLConnection.setFixedLengthStreamingMode(bytes.length);
                BufferedOutputStream bufferedOutputStream = new BufferedOutputStream(httpURLConnection.getOutputStream());
                bufferedOutputStream.write(bytes);
                bufferedOutputStream.close();
            }
            List arrayList = new ArrayList();
            if (httpURLConnection.getHeaderFields() != null) {
                for (Entry entry : httpURLConnection.getHeaderFields().entrySet()) {
                    for (String com_google_android_gms_internal_zzdl_zza2 : (List) entry.getValue()) {
                        arrayList.add(new zza((String) entry.getKey(), com_google_android_gms_internal_zzdl_zza2));
                    }
                }
            }
            return new zzc(this, true, new zzd(com_google_android_gms_internal_zzdl_zzb.zzdE(), httpURLConnection.getResponseCode(), arrayList, zzp.zzbv().zza(new InputStreamReader(httpURLConnection.getInputStream()))), null);
        } catch (Exception e) {
            return new zzc(this, false, null, e.toString());
        }
    }

    protected JSONObject zza(zzd com_google_android_gms_internal_zzdl_zzd) {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("http_request_id", com_google_android_gms_internal_zzdl_zzd.zzdE());
            if (com_google_android_gms_internal_zzdl_zzd.getBody() != null) {
                jSONObject.put(Keys.BODY, com_google_android_gms_internal_zzdl_zzd.getBody());
            }
            JSONArray jSONArray = new JSONArray();
            for (zza com_google_android_gms_internal_zzdl_zza : com_google_android_gms_internal_zzdl_zzd.zzdJ()) {
                jSONArray.put(new JSONObject().put("key", com_google_android_gms_internal_zzdl_zza.getKey()).put(GameServices.SCORE_VALUE, com_google_android_gms_internal_zzdl_zza.getValue()));
            }
            jSONObject.put("headers", jSONArray);
            jSONObject.put("response_code", com_google_android_gms_internal_zzdl_zzd.getResponseCode());
        } catch (Throwable e) {
            com.google.android.gms.ads.internal.util.client.zzb.zzb("Error constructing JSON for http response.", e);
        }
        return jSONObject;
    }

    public void zza(zziz com_google_android_gms_internal_zziz, Map<String, String> map) {
        zzic.zza(new C05051(this, map, com_google_android_gms_internal_zziz));
    }

    protected zzb zzb(JSONObject jSONObject) {
        URL url;
        String optString = jSONObject.optString("http_request_id");
        String optString2 = jSONObject.optString(Keys.URL);
        String optString3 = jSONObject.optString("post_body", null);
        try {
            url = new URL(optString2);
        } catch (Throwable e) {
            com.google.android.gms.ads.internal.util.client.zzb.zzb("Error constructing http request.", e);
            url = null;
        }
        ArrayList arrayList = new ArrayList();
        JSONArray optJSONArray = jSONObject.optJSONArray("headers");
        if (optJSONArray == null) {
            optJSONArray = new JSONArray();
        }
        for (int i = 0; i < optJSONArray.length(); i++) {
            JSONObject optJSONObject = optJSONArray.optJSONObject(i);
            if (optJSONObject != null) {
                arrayList.add(new zza(optJSONObject.optString("key"), optJSONObject.optString(GameServices.SCORE_VALUE)));
            }
        }
        return new zzb(optString, url, arrayList, optString3);
    }
}
