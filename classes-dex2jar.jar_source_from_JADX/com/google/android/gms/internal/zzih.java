package com.google.android.gms.internal;

import android.content.Context;
import java.io.ByteArrayInputStream;
import java.io.InputStream;
import java.util.Map;
import org.apache.commons.io.IOUtils;

@zzgr
public class zzih {
    private static zzl zzIZ;
    public static final zza<Void> zzJa;
    private static final Object zzpy;

    public interface zza<T> {
        T zzfF();

        T zzh(InputStream inputStream);
    }

    /* renamed from: com.google.android.gms.internal.zzih.1 */
    static final class C05871 implements zza {
        C05871() {
        }

        public /* synthetic */ Object zzfF() {
            return zzgL();
        }

        public Void zzgL() {
            return null;
        }

        public /* synthetic */ Object zzh(InputStream inputStream) {
            return zzi(inputStream);
        }

        public Void zzi(InputStream inputStream) {
            return null;
        }
    }

    /* renamed from: com.google.android.gms.internal.zzih.2 */
    class C05882 implements com.google.android.gms.internal.zzm.zza {
        final /* synthetic */ zzc zzJb;
        final /* synthetic */ zzih zzJc;
        final /* synthetic */ String zzyc;

        C05882(zzih com_google_android_gms_internal_zzih, String str, zzc com_google_android_gms_internal_zzih_zzc) {
            this.zzJc = com_google_android_gms_internal_zzih;
            this.zzyc = str;
            this.zzJb = com_google_android_gms_internal_zzih_zzc;
        }

        public void zze(zzr com_google_android_gms_internal_zzr) {
            com.google.android.gms.ads.internal.util.client.zzb.zzaH("Failed to load URL: " + this.zzyc + IOUtils.LINE_SEPARATOR_UNIX + com_google_android_gms_internal_zzr.toString());
            this.zzJb.zzb(null);
        }
    }

    /* renamed from: com.google.android.gms.internal.zzih.3 */
    class C05893 extends zzab {
        final /* synthetic */ zzih zzJc;
        final /* synthetic */ Map zzJd;

        C05893(zzih com_google_android_gms_internal_zzih, String str, com.google.android.gms.internal.zzm.zzb com_google_android_gms_internal_zzm_zzb, com.google.android.gms.internal.zzm.zza com_google_android_gms_internal_zzm_zza, Map map) {
            this.zzJc = com_google_android_gms_internal_zzih;
            this.zzJd = map;
            super(str, com_google_android_gms_internal_zzm_zzb, com_google_android_gms_internal_zzm_zza);
        }

        public Map<String, String> getHeaders() throws zza {
            return this.zzJd == null ? super.getHeaders() : this.zzJd;
        }
    }

    private static class zzb<T> extends zzk<InputStream> {
        private final zza<T> zzJe;
        private final com.google.android.gms.internal.zzm.zzb<T> zzaG;

        /* renamed from: com.google.android.gms.internal.zzih.zzb.1 */
        class C05901 implements com.google.android.gms.internal.zzm.zza {
            final /* synthetic */ com.google.android.gms.internal.zzm.zzb zzJf;
            final /* synthetic */ zza zzJg;

            C05901(com.google.android.gms.internal.zzm.zzb com_google_android_gms_internal_zzm_zzb, zza com_google_android_gms_internal_zzih_zza) {
                this.zzJf = com_google_android_gms_internal_zzm_zzb;
                this.zzJg = com_google_android_gms_internal_zzih_zza;
            }

            public void zze(zzr com_google_android_gms_internal_zzr) {
                this.zzJf.zzb(this.zzJg.zzfF());
            }
        }

        public zzb(String str, zza<T> com_google_android_gms_internal_zzih_zza_T, com.google.android.gms.internal.zzm.zzb<T> com_google_android_gms_internal_zzm_zzb_T) {
            super(0, str, new C05901(com_google_android_gms_internal_zzm_zzb_T, com_google_android_gms_internal_zzih_zza_T));
            this.zzJe = com_google_android_gms_internal_zzih_zza_T;
            this.zzaG = com_google_android_gms_internal_zzm_zzb_T;
        }

        protected zzm<InputStream> zza(zzi com_google_android_gms_internal_zzi) {
            return zzm.zza(new ByteArrayInputStream(com_google_android_gms_internal_zzi.data), zzx.zzb(com_google_android_gms_internal_zzi));
        }

        protected /* synthetic */ void zza(Object obj) {
            zzj((InputStream) obj);
        }

        protected void zzj(InputStream inputStream) {
            this.zzaG.zzb(this.zzJe.zzh(inputStream));
        }
    }

    private class zzc<T> extends zzin<T> implements com.google.android.gms.internal.zzm.zzb<T> {
        final /* synthetic */ zzih zzJc;

        private zzc(zzih com_google_android_gms_internal_zzih) {
            this.zzJc = com_google_android_gms_internal_zzih;
        }

        public void zzb(T t) {
            super.zzf(t);
        }
    }

    static {
        zzpy = new Object();
        zzJa = new C05871();
    }

    public zzih(Context context) {
        zzIZ = zzP(context);
    }

    private static zzl zzP(Context context) {
        zzl com_google_android_gms_internal_zzl;
        synchronized (zzpy) {
            if (zzIZ == null) {
                zzIZ = zzac.zza(context.getApplicationContext());
            }
            com_google_android_gms_internal_zzl = zzIZ;
        }
        return com_google_android_gms_internal_zzl;
    }

    public <T> zziq<T> zza(String str, zza<T> com_google_android_gms_internal_zzih_zza_T) {
        Object com_google_android_gms_internal_zzih_zzc = new zzc();
        zzIZ.zze(new zzb(str, com_google_android_gms_internal_zzih_zza_T, com_google_android_gms_internal_zzih_zzc));
        return com_google_android_gms_internal_zzih_zzc;
    }

    public zziq<String> zza(String str, Map<String, String> map) {
        Object com_google_android_gms_internal_zzih_zzc = new zzc();
        zzIZ.zze(new C05893(this, str, com_google_android_gms_internal_zzih_zzc, new C05882(this, str, com_google_android_gms_internal_zzih_zzc), map));
        return com_google_android_gms_internal_zzih_zzc;
    }
}
