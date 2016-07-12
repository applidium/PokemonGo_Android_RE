package com.google.android.gms.ads.internal.client;

import android.content.Context;
import android.location.Location;
import android.os.Bundle;
import com.google.ads.mediation.admob.AdMobAdapter;
import com.google.android.gms.ads.mediation.MediationAdapter;
import com.google.android.gms.ads.mediation.NetworkExtras;
import com.google.android.gms.ads.mediation.admob.AdMobExtras;
import com.google.android.gms.ads.mediation.customevent.CustomEvent;
import com.google.android.gms.ads.search.SearchAdRequest;
import com.google.android.gms.internal.zzgr;
import java.util.Collections;
import java.util.Date;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Map;
import java.util.Set;

@zzgr
public final class zzy {
    public static final String DEVICE_ID_EMULATOR;
    private final Date zzaT;
    private final Set<String> zzaV;
    private final Location zzaX;
    private final boolean zzoN;
    private final int zzsR;
    private final int zzsU;
    private final String zzsV;
    private final String zzsX;
    private final Bundle zzsZ;
    private final String zztb;
    private final Bundle zztu;
    private final Map<Class<? extends NetworkExtras>, NetworkExtras> zztv;
    private final SearchAdRequest zztw;
    private final Set<String> zztx;
    private final Set<String> zzty;

    public static final class zza {
        private Date zzaT;
        private Location zzaX;
        private boolean zzoN;
        private int zzsR;
        private int zzsU;
        private String zzsV;
        private String zzsX;
        private final Bundle zzsZ;
        private final HashMap<Class<? extends NetworkExtras>, NetworkExtras> zztA;
        private final HashSet<String> zztB;
        private final HashSet<String> zztC;
        private String zztb;
        private final Bundle zztu;
        private final HashSet<String> zztz;

        public zza() {
            this.zztz = new HashSet();
            this.zztu = new Bundle();
            this.zztA = new HashMap();
            this.zztB = new HashSet();
            this.zzsZ = new Bundle();
            this.zztC = new HashSet();
            this.zzsR = -1;
            this.zzoN = false;
            this.zzsU = -1;
        }

        public void setManualImpressionsEnabled(boolean z) {
            this.zzoN = z;
        }

        public void zzF(String str) {
            this.zztz.add(str);
        }

        public void zzG(String str) {
            this.zztB.add(str);
        }

        public void zzH(String str) {
            this.zztB.remove(str);
        }

        public void zzI(String str) {
            this.zzsX = str;
        }

        public void zzJ(String str) {
            this.zzsV = str;
        }

        public void zzK(String str) {
            this.zztb = str;
        }

        public void zzL(String str) {
            this.zztC.add(str);
        }

        @Deprecated
        public void zza(NetworkExtras networkExtras) {
            if (networkExtras instanceof AdMobExtras) {
                zza(AdMobAdapter.class, ((AdMobExtras) networkExtras).getExtras());
            } else {
                this.zztA.put(networkExtras.getClass(), networkExtras);
            }
        }

        public void zza(Class<? extends MediationAdapter> cls, Bundle bundle) {
            this.zztu.putBundle(cls.getName(), bundle);
        }

        public void zza(Date date) {
            this.zzaT = date;
        }

        public void zzb(Location location) {
            this.zzaX = location;
        }

        public void zzb(Class<? extends CustomEvent> cls, Bundle bundle) {
            if (this.zztu.getBundle("com.google.android.gms.ads.mediation.customevent.CustomEventAdapter") == null) {
                this.zztu.putBundle("com.google.android.gms.ads.mediation.customevent.CustomEventAdapter", new Bundle());
            }
            this.zztu.getBundle("com.google.android.gms.ads.mediation.customevent.CustomEventAdapter").putBundle(cls.getName(), bundle);
        }

        public void zzb(String str, String str2) {
            this.zzsZ.putString(str, str2);
        }

        public void zzj(boolean z) {
            this.zzsU = z ? 1 : 0;
        }

        public void zzm(int i) {
            this.zzsR = i;
        }
    }

    static {
        DEVICE_ID_EMULATOR = zzl.zzcF().zzaE("emulator");
    }

    public zzy(zza com_google_android_gms_ads_internal_client_zzy_zza) {
        this(com_google_android_gms_ads_internal_client_zzy_zza, null);
    }

    public zzy(zza com_google_android_gms_ads_internal_client_zzy_zza, SearchAdRequest searchAdRequest) {
        this.zzaT = com_google_android_gms_ads_internal_client_zzy_zza.zzaT;
        this.zzsX = com_google_android_gms_ads_internal_client_zzy_zza.zzsX;
        this.zzsR = com_google_android_gms_ads_internal_client_zzy_zza.zzsR;
        this.zzaV = Collections.unmodifiableSet(com_google_android_gms_ads_internal_client_zzy_zza.zztz);
        this.zzaX = com_google_android_gms_ads_internal_client_zzy_zza.zzaX;
        this.zzoN = com_google_android_gms_ads_internal_client_zzy_zza.zzoN;
        this.zztu = com_google_android_gms_ads_internal_client_zzy_zza.zztu;
        this.zztv = Collections.unmodifiableMap(com_google_android_gms_ads_internal_client_zzy_zza.zztA);
        this.zzsV = com_google_android_gms_ads_internal_client_zzy_zza.zzsV;
        this.zztb = com_google_android_gms_ads_internal_client_zzy_zza.zztb;
        this.zztw = searchAdRequest;
        this.zzsU = com_google_android_gms_ads_internal_client_zzy_zza.zzsU;
        this.zztx = Collections.unmodifiableSet(com_google_android_gms_ads_internal_client_zzy_zza.zztB);
        this.zzsZ = com_google_android_gms_ads_internal_client_zzy_zza.zzsZ;
        this.zzty = Collections.unmodifiableSet(com_google_android_gms_ads_internal_client_zzy_zza.zztC);
    }

    public static void updateCorrelator() {
        zzl.zzcH().zzcL();
    }

    public Date getBirthday() {
        return this.zzaT;
    }

    public String getContentUrl() {
        return this.zzsX;
    }

    public Bundle getCustomEventExtrasBundle(Class<? extends CustomEvent> cls) {
        Bundle bundle = this.zztu.getBundle("com.google.android.gms.ads.mediation.customevent.CustomEventAdapter");
        return bundle != null ? bundle.getBundle(cls.getClass().getName()) : null;
    }

    public Bundle getCustomTargeting() {
        return this.zzsZ;
    }

    public int getGender() {
        return this.zzsR;
    }

    public Set<String> getKeywords() {
        return this.zzaV;
    }

    public Location getLocation() {
        return this.zzaX;
    }

    public boolean getManualImpressionsEnabled() {
        return this.zzoN;
    }

    @Deprecated
    public <T extends NetworkExtras> T getNetworkExtras(Class<T> cls) {
        return (NetworkExtras) this.zztv.get(cls);
    }

    public Bundle getNetworkExtrasBundle(Class<? extends MediationAdapter> cls) {
        return this.zztu.getBundle(cls.getName());
    }

    public String getPublisherProvidedId() {
        return this.zzsV;
    }

    public boolean isTestDevice(Context context) {
        return this.zztx.contains(zzl.zzcF().zzQ(context));
    }

    public String zzcM() {
        return this.zztb;
    }

    public SearchAdRequest zzcN() {
        return this.zztw;
    }

    public Map<Class<? extends NetworkExtras>, NetworkExtras> zzcO() {
        return this.zztv;
    }

    public Bundle zzcP() {
        return this.zztu;
    }

    public int zzcQ() {
        return this.zzsU;
    }

    public Set<String> zzcR() {
        return this.zzty;
    }
}
