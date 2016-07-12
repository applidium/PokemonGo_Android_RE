package com.google.android.gms.internal;

import android.content.Context;
import com.google.android.gms.ads.internal.util.client.VersionInfoParcel;
import com.google.android.gms.common.internal.zzx;
import java.util.Map;

@zzgr
public class zzdz {
    private final Context mContext;
    private final VersionInfoParcel zzpb;
    private final Object zzpd;
    private final String zzyo;
    private zzb<zzbb> zzyp;
    private zzb<zzbb> zzyq;
    private zze zzyr;
    private int zzys;

    public interface zzb<T> {
        void zzc(T t);
    }

    /* renamed from: com.google.android.gms.internal.zzdz.1 */
    class C05171 implements Runnable {
        final /* synthetic */ zze zzyt;
        final /* synthetic */ zzdz zzyu;

        /* renamed from: com.google.android.gms.internal.zzdz.1.1 */
        class C05121 implements com.google.android.gms.internal.zzbb.zza {
            final /* synthetic */ zzbb zzyv;
            final /* synthetic */ C05171 zzyw;

            /* renamed from: com.google.android.gms.internal.zzdz.1.1.1 */
            class C05111 implements Runnable {
                final /* synthetic */ C05121 zzyx;

                /* renamed from: com.google.android.gms.internal.zzdz.1.1.1.1 */
                class C05101 implements Runnable {
                    final /* synthetic */ C05111 zzyy;

                    C05101(C05111 c05111) {
                        this.zzyy = c05111;
                    }

                    public void run() {
                        this.zzyy.zzyx.zzyv.destroy();
                    }
                }

                C05111(C05121 c05121) {
                    this.zzyx = c05121;
                }

                public void run() {
                    synchronized (this.zzyx.zzyw.zzyu.zzpd) {
                        if (this.zzyx.zzyw.zzyt.getStatus() == -1 || this.zzyx.zzyw.zzyt.getStatus() == 1) {
                            return;
                        }
                        this.zzyx.zzyw.zzyt.reject();
                        zzid.runOnUiThread(new C05101(this));
                        com.google.android.gms.ads.internal.util.client.zzb.m37v("Could not receive loaded message in a timely manner. Rejecting.");
                    }
                }
            }

            C05121(C05171 c05171, zzbb com_google_android_gms_internal_zzbb) {
                this.zzyw = c05171;
                this.zzyv = com_google_android_gms_internal_zzbb;
            }

            public void zzcj() {
                zzid.zzIE.postDelayed(new C05111(this), (long) zza.zzyD);
            }
        }

        /* renamed from: com.google.android.gms.internal.zzdz.1.2 */
        class C05132 implements zzdk {
            final /* synthetic */ zzbb zzyv;
            final /* synthetic */ C05171 zzyw;

            C05132(C05171 c05171, zzbb com_google_android_gms_internal_zzbb) {
                this.zzyw = c05171;
                this.zzyv = com_google_android_gms_internal_zzbb;
            }

            public void zza(zziz com_google_android_gms_internal_zziz, Map<String, String> map) {
                synchronized (this.zzyw.zzyu.zzpd) {
                    if (this.zzyw.zzyt.getStatus() == -1 || this.zzyw.zzyt.getStatus() == 1) {
                        return;
                    }
                    this.zzyw.zzyu.zzys = 0;
                    this.zzyw.zzyu.zzyp.zzc(this.zzyv);
                    this.zzyw.zzyt.zzg(this.zzyv);
                    this.zzyw.zzyu.zzyr = this.zzyw.zzyt;
                    com.google.android.gms.ads.internal.util.client.zzb.m37v("Successfully loaded JS Engine.");
                }
            }
        }

        /* renamed from: com.google.android.gms.internal.zzdz.1.3 */
        class C05143 implements zzdk {
            final /* synthetic */ zzbb zzyv;
            final /* synthetic */ C05171 zzyw;
            final /* synthetic */ zzil zzyz;

            C05143(C05171 c05171, zzbb com_google_android_gms_internal_zzbb, zzil com_google_android_gms_internal_zzil) {
                this.zzyw = c05171;
                this.zzyv = com_google_android_gms_internal_zzbb;
                this.zzyz = com_google_android_gms_internal_zzil;
            }

            public void zza(zziz com_google_android_gms_internal_zziz, Map<String, String> map) {
                synchronized (this.zzyw.zzyu.zzpd) {
                    com.google.android.gms.ads.internal.util.client.zzb.zzaG("JS Engine is requesting an update");
                    if (this.zzyw.zzyu.zzys == 0) {
                        com.google.android.gms.ads.internal.util.client.zzb.zzaG("Starting reload.");
                        this.zzyw.zzyu.zzys = 2;
                        this.zzyw.zzyu.zzdN();
                    }
                    this.zzyv.zzb("/requestReload", (zzdk) this.zzyz.get());
                }
            }
        }

        /* renamed from: com.google.android.gms.internal.zzdz.1.4 */
        class C05164 implements Runnable {
            final /* synthetic */ zzbb zzyv;
            final /* synthetic */ C05171 zzyw;

            /* renamed from: com.google.android.gms.internal.zzdz.1.4.1 */
            class C05151 implements Runnable {
                final /* synthetic */ C05164 zzyA;

                C05151(C05164 c05164) {
                    this.zzyA = c05164;
                }

                public void run() {
                    this.zzyA.zzyv.destroy();
                }
            }

            C05164(C05171 c05171, zzbb com_google_android_gms_internal_zzbb) {
                this.zzyw = c05171;
                this.zzyv = com_google_android_gms_internal_zzbb;
            }

            public void run() {
                synchronized (this.zzyw.zzyu.zzpd) {
                    if (this.zzyw.zzyt.getStatus() == -1 || this.zzyw.zzyt.getStatus() == 1) {
                        return;
                    }
                    this.zzyw.zzyt.reject();
                    zzid.runOnUiThread(new C05151(this));
                    com.google.android.gms.ads.internal.util.client.zzb.m37v("Could not receive loaded message in a timely manner. Rejecting.");
                }
            }
        }

        C05171(zzdz com_google_android_gms_internal_zzdz, zze com_google_android_gms_internal_zzdz_zze) {
            this.zzyu = com_google_android_gms_internal_zzdz;
            this.zzyt = com_google_android_gms_internal_zzdz_zze;
        }

        public void run() {
            zzbb zza = this.zzyu.zza(this.zzyu.mContext, this.zzyu.zzpb);
            zza.zza(new C05121(this, zza));
            zza.zza("/jsLoaded", new C05132(this, zza));
            zzil com_google_android_gms_internal_zzil = new zzil();
            zzdk c05143 = new C05143(this, zza, com_google_android_gms_internal_zzil);
            com_google_android_gms_internal_zzil.set(c05143);
            zza.zza("/requestReload", c05143);
            if (this.zzyu.zzyo.endsWith(".js")) {
                zza.zzs(this.zzyu.zzyo);
            } else if (this.zzyu.zzyo.startsWith("<html>")) {
                zza.zzu(this.zzyu.zzyo);
            } else {
                zza.zzt(this.zzyu.zzyo);
            }
            zzid.zzIE.postDelayed(new C05164(this, zza), (long) zza.zzyC);
        }
    }

    /* renamed from: com.google.android.gms.internal.zzdz.2 */
    class C05182 implements com.google.android.gms.internal.zzis.zzc<zzbb> {
        final /* synthetic */ zze zzyB;
        final /* synthetic */ zzdz zzyu;

        C05182(zzdz com_google_android_gms_internal_zzdz, zze com_google_android_gms_internal_zzdz_zze) {
            this.zzyu = com_google_android_gms_internal_zzdz;
            this.zzyB = com_google_android_gms_internal_zzdz_zze;
        }

        public void zza(zzbb com_google_android_gms_internal_zzbb) {
            synchronized (this.zzyu.zzpd) {
                this.zzyu.zzys = 0;
                if (!(this.zzyu.zzyr == null || this.zzyB == this.zzyu.zzyr)) {
                    com.google.android.gms.ads.internal.util.client.zzb.m37v("New JS engine is loaded, marking previous one as destroyable.");
                    this.zzyu.zzyr.zzdR();
                }
                this.zzyu.zzyr = this.zzyB;
            }
        }

        public /* synthetic */ void zzc(Object obj) {
            zza((zzbb) obj);
        }
    }

    /* renamed from: com.google.android.gms.internal.zzdz.3 */
    class C05193 implements com.google.android.gms.internal.zzis.zza {
        final /* synthetic */ zze zzyB;
        final /* synthetic */ zzdz zzyu;

        C05193(zzdz com_google_android_gms_internal_zzdz, zze com_google_android_gms_internal_zzdz_zze) {
            this.zzyu = com_google_android_gms_internal_zzdz;
            this.zzyB = com_google_android_gms_internal_zzdz_zze;
        }

        public void run() {
            synchronized (this.zzyu.zzpd) {
                this.zzyu.zzys = 1;
                com.google.android.gms.ads.internal.util.client.zzb.m37v("Failed loading new engine. Marking new engine destroyable.");
                this.zzyB.zzdR();
            }
        }
    }

    static class zza {
        static int zzyC;
        static int zzyD;

        static {
            zzyC = 60000;
            zzyD = 10000;
        }
    }

    public static class zzc<T> implements zzb<T> {
        public void zzc(T t) {
        }
    }

    public static class zzd extends zzit<zzbe> {
        private final Object zzpd;
        private final zze zzyE;
        private boolean zzyF;

        /* renamed from: com.google.android.gms.internal.zzdz.zzd.1 */
        class C05201 implements com.google.android.gms.internal.zzis.zzc<zzbe> {
            final /* synthetic */ zzd zzyG;

            C05201(zzd com_google_android_gms_internal_zzdz_zzd) {
                this.zzyG = com_google_android_gms_internal_zzdz_zzd;
            }

            public void zzb(zzbe com_google_android_gms_internal_zzbe) {
                com.google.android.gms.ads.internal.util.client.zzb.m37v("Ending javascript session.");
                ((zzbf) com_google_android_gms_internal_zzbe).zzck();
            }

            public /* synthetic */ void zzc(Object obj) {
                zzb((zzbe) obj);
            }
        }

        /* renamed from: com.google.android.gms.internal.zzdz.zzd.2 */
        class C05212 implements com.google.android.gms.internal.zzis.zzc<zzbe> {
            final /* synthetic */ zzd zzyG;

            C05212(zzd com_google_android_gms_internal_zzdz_zzd) {
                this.zzyG = com_google_android_gms_internal_zzdz_zzd;
            }

            public void zzb(zzbe com_google_android_gms_internal_zzbe) {
                com.google.android.gms.ads.internal.util.client.zzb.m37v("Releasing engine reference.");
                this.zzyG.zzyE.zzdQ();
            }

            public /* synthetic */ void zzc(Object obj) {
                zzb((zzbe) obj);
            }
        }

        /* renamed from: com.google.android.gms.internal.zzdz.zzd.3 */
        class C05223 implements com.google.android.gms.internal.zzis.zza {
            final /* synthetic */ zzd zzyG;

            C05223(zzd com_google_android_gms_internal_zzdz_zzd) {
                this.zzyG = com_google_android_gms_internal_zzdz_zzd;
            }

            public void run() {
                this.zzyG.zzyE.zzdQ();
            }
        }

        public zzd(zze com_google_android_gms_internal_zzdz_zze) {
            this.zzpd = new Object();
            this.zzyE = com_google_android_gms_internal_zzdz_zze;
        }

        public void release() {
            synchronized (this.zzpd) {
                if (this.zzyF) {
                    return;
                }
                this.zzyF = true;
                zza(new C05201(this), new com.google.android.gms.internal.zzis.zzb());
                zza(new C05212(this), new C05223(this));
            }
        }
    }

    public static class zze extends zzit<zzbb> {
        private final Object zzpd;
        private boolean zzyH;
        private int zzyI;
        private zzb<zzbb> zzyq;

        /* renamed from: com.google.android.gms.internal.zzdz.zze.1 */
        class C05231 implements com.google.android.gms.internal.zzis.zzc<zzbb> {
            final /* synthetic */ zzd zzyJ;
            final /* synthetic */ zze zzyK;

            C05231(zze com_google_android_gms_internal_zzdz_zze, zzd com_google_android_gms_internal_zzdz_zzd) {
                this.zzyK = com_google_android_gms_internal_zzdz_zze;
                this.zzyJ = com_google_android_gms_internal_zzdz_zzd;
            }

            public void zza(zzbb com_google_android_gms_internal_zzbb) {
                com.google.android.gms.ads.internal.util.client.zzb.m37v("Getting a new session for JS Engine.");
                this.zzyJ.zzg(com_google_android_gms_internal_zzbb.zzci());
            }

            public /* synthetic */ void zzc(Object obj) {
                zza((zzbb) obj);
            }
        }

        /* renamed from: com.google.android.gms.internal.zzdz.zze.2 */
        class C05242 implements com.google.android.gms.internal.zzis.zza {
            final /* synthetic */ zzd zzyJ;
            final /* synthetic */ zze zzyK;

            C05242(zze com_google_android_gms_internal_zzdz_zze, zzd com_google_android_gms_internal_zzdz_zzd) {
                this.zzyK = com_google_android_gms_internal_zzdz_zze;
                this.zzyJ = com_google_android_gms_internal_zzdz_zzd;
            }

            public void run() {
                com.google.android.gms.ads.internal.util.client.zzb.m37v("Rejecting reference for JS Engine.");
                this.zzyJ.reject();
            }
        }

        /* renamed from: com.google.android.gms.internal.zzdz.zze.3 */
        class C05263 implements com.google.android.gms.internal.zzis.zzc<zzbb> {
            final /* synthetic */ zze zzyK;

            /* renamed from: com.google.android.gms.internal.zzdz.zze.3.1 */
            class C05251 implements Runnable {
                final /* synthetic */ zzbb zzrE;
                final /* synthetic */ C05263 zzyL;

                C05251(C05263 c05263, zzbb com_google_android_gms_internal_zzbb) {
                    this.zzyL = c05263;
                    this.zzrE = com_google_android_gms_internal_zzbb;
                }

                public void run() {
                    this.zzyL.zzyK.zzyq.zzc(this.zzrE);
                    this.zzrE.destroy();
                }
            }

            C05263(zze com_google_android_gms_internal_zzdz_zze) {
                this.zzyK = com_google_android_gms_internal_zzdz_zze;
            }

            public void zza(zzbb com_google_android_gms_internal_zzbb) {
                zzid.runOnUiThread(new C05251(this, com_google_android_gms_internal_zzbb));
            }

            public /* synthetic */ void zzc(Object obj) {
                zza((zzbb) obj);
            }
        }

        public zze(zzb<zzbb> com_google_android_gms_internal_zzdz_zzb_com_google_android_gms_internal_zzbb) {
            this.zzpd = new Object();
            this.zzyq = com_google_android_gms_internal_zzdz_zzb_com_google_android_gms_internal_zzbb;
            this.zzyH = false;
            this.zzyI = 0;
        }

        public zzd zzdP() {
            zzd com_google_android_gms_internal_zzdz_zzd = new zzd(this);
            synchronized (this.zzpd) {
                zza(new C05231(this, com_google_android_gms_internal_zzdz_zzd), new C05242(this, com_google_android_gms_internal_zzdz_zzd));
                zzx.zzZ(this.zzyI >= 0);
                this.zzyI++;
            }
            return com_google_android_gms_internal_zzdz_zzd;
        }

        protected void zzdQ() {
            boolean z = true;
            synchronized (this.zzpd) {
                if (this.zzyI < 1) {
                    z = false;
                }
                zzx.zzZ(z);
                com.google.android.gms.ads.internal.util.client.zzb.m37v("Releasing 1 reference for JS Engine");
                this.zzyI--;
                zzdS();
            }
        }

        public void zzdR() {
            boolean z = true;
            synchronized (this.zzpd) {
                if (this.zzyI < 0) {
                    z = false;
                }
                zzx.zzZ(z);
                com.google.android.gms.ads.internal.util.client.zzb.m37v("Releasing root reference. JS Engine will be destroyed once other references are released.");
                this.zzyH = true;
                zzdS();
            }
        }

        protected void zzdS() {
            synchronized (this.zzpd) {
                zzx.zzZ(this.zzyI >= 0);
                if (this.zzyH && this.zzyI == 0) {
                    com.google.android.gms.ads.internal.util.client.zzb.m37v("No reference is left (including root). Cleaning up engine.");
                    zza(new C05263(this), new com.google.android.gms.internal.zzis.zzb());
                } else {
                    com.google.android.gms.ads.internal.util.client.zzb.m37v("There are still references to the engine. Not destroying.");
                }
            }
        }
    }

    public zzdz(Context context, VersionInfoParcel versionInfoParcel, String str) {
        this.zzpd = new Object();
        this.zzys = 1;
        this.zzyo = str;
        this.mContext = context.getApplicationContext();
        this.zzpb = versionInfoParcel;
        this.zzyp = new zzc();
        this.zzyq = new zzc();
    }

    public zzdz(Context context, VersionInfoParcel versionInfoParcel, String str, zzb<zzbb> com_google_android_gms_internal_zzdz_zzb_com_google_android_gms_internal_zzbb, zzb<zzbb> com_google_android_gms_internal_zzdz_zzb_com_google_android_gms_internal_zzbb2) {
        this(context, versionInfoParcel, str);
        this.zzyp = com_google_android_gms_internal_zzdz_zzb_com_google_android_gms_internal_zzbb;
        this.zzyq = com_google_android_gms_internal_zzdz_zzb_com_google_android_gms_internal_zzbb2;
    }

    private zze zzdM() {
        zze com_google_android_gms_internal_zzdz_zze = new zze(this.zzyq);
        zzid.runOnUiThread(new C05171(this, com_google_android_gms_internal_zzdz_zze));
        return com_google_android_gms_internal_zzdz_zze;
    }

    protected zzbb zza(Context context, VersionInfoParcel versionInfoParcel) {
        return new zzbd(context, versionInfoParcel, null);
    }

    protected zze zzdN() {
        zze zzdM = zzdM();
        zzdM.zza(new C05182(this, zzdM), new C05193(this, zzdM));
        return zzdM;
    }

    public zzd zzdO() {
        zzd zzdP;
        synchronized (this.zzpd) {
            if (this.zzyr == null || this.zzyr.getStatus() == -1) {
                this.zzys = 2;
                this.zzyr = zzdN();
                zzdP = this.zzyr.zzdP();
            } else if (this.zzys == 0) {
                zzdP = this.zzyr.zzdP();
            } else if (this.zzys == 1) {
                this.zzys = 2;
                zzdN();
                zzdP = this.zzyr.zzdP();
            } else if (this.zzys == 2) {
                zzdP = this.zzyr.zzdP();
            } else {
                zzdP = this.zzyr.zzdP();
            }
        }
        return zzdP;
    }
}
