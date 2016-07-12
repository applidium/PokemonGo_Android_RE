package com.google.android.gms.internal;

import android.content.Context;
import com.google.android.gms.ads.internal.util.client.VersionInfoParcel;
import com.google.android.gms.internal.zzbb.zza;
import java.util.concurrent.Future;

@zzgr
public class zzbc {

    /* renamed from: com.google.android.gms.internal.zzbc.1 */
    class C04731 implements Runnable {
        final /* synthetic */ zzin zzrA;
        final /* synthetic */ zzan zzrB;
        final /* synthetic */ String zzrC;
        final /* synthetic */ zzbc zzrD;
        final /* synthetic */ Context zzry;
        final /* synthetic */ VersionInfoParcel zzrz;

        C04731(zzbc com_google_android_gms_internal_zzbc, Context context, VersionInfoParcel versionInfoParcel, zzin com_google_android_gms_internal_zzin, zzan com_google_android_gms_internal_zzan, String str) {
            this.zzrD = com_google_android_gms_internal_zzbc;
            this.zzry = context;
            this.zzrz = versionInfoParcel;
            this.zzrA = com_google_android_gms_internal_zzin;
            this.zzrB = com_google_android_gms_internal_zzan;
            this.zzrC = str;
        }

        public void run() {
            this.zzrD.zza(this.zzry, this.zzrz, this.zzrA, this.zzrB).zzt(this.zzrC);
        }
    }

    /* renamed from: com.google.android.gms.internal.zzbc.2 */
    class C04742 implements zza {
        final /* synthetic */ zzin zzrA;
        final /* synthetic */ zzbc zzrD;
        final /* synthetic */ zzbb zzrE;

        C04742(zzbc com_google_android_gms_internal_zzbc, zzin com_google_android_gms_internal_zzin, zzbb com_google_android_gms_internal_zzbb) {
            this.zzrD = com_google_android_gms_internal_zzbc;
            this.zzrA = com_google_android_gms_internal_zzin;
            this.zzrE = com_google_android_gms_internal_zzbb;
        }

        public void zzcj() {
            this.zzrA.zzf(this.zzrE);
        }
    }

    private zzbb zza(Context context, VersionInfoParcel versionInfoParcel, zzin<zzbb> com_google_android_gms_internal_zzin_com_google_android_gms_internal_zzbb, zzan com_google_android_gms_internal_zzan) {
        zzbb com_google_android_gms_internal_zzbd = new zzbd(context, versionInfoParcel, com_google_android_gms_internal_zzan);
        com_google_android_gms_internal_zzbd.zza(new C04742(this, com_google_android_gms_internal_zzin_com_google_android_gms_internal_zzbb, com_google_android_gms_internal_zzbd));
        return com_google_android_gms_internal_zzbd;
    }

    public Future<zzbb> zza(Context context, VersionInfoParcel versionInfoParcel, String str, zzan com_google_android_gms_internal_zzan) {
        Future com_google_android_gms_internal_zzin = new zzin();
        zzid.zzIE.post(new C04731(this, context, versionInfoParcel, com_google_android_gms_internal_zzin, com_google_android_gms_internal_zzan, str));
        return com_google_android_gms_internal_zzin;
    }
}
