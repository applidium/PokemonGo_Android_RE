package com.google.android.gms.internal;

import com.google.android.gms.ads.internal.util.client.zzb;
import com.voxelbusters.nativeplugins.defines.Keys.Sharing;
import org.json.JSONObject;

@zzgr
public class zzff {
    private final boolean zzAv;
    private final boolean zzAw;
    private final boolean zzAx;
    private final boolean zzAy;
    private final boolean zzAz;

    public static final class zza {
        private boolean zzAv;
        private boolean zzAw;
        private boolean zzAx;
        private boolean zzAy;
        private boolean zzAz;

        public zzff zzeh() {
            return new zzff();
        }

        public zza zzo(boolean z) {
            this.zzAv = z;
            return this;
        }

        public zza zzp(boolean z) {
            this.zzAw = z;
            return this;
        }

        public zza zzq(boolean z) {
            this.zzAx = z;
            return this;
        }

        public zza zzr(boolean z) {
            this.zzAy = z;
            return this;
        }

        public zza zzs(boolean z) {
            this.zzAz = z;
            return this;
        }
    }

    private zzff(zza com_google_android_gms_internal_zzff_zza) {
        this.zzAv = com_google_android_gms_internal_zzff_zza.zzAv;
        this.zzAw = com_google_android_gms_internal_zzff_zza.zzAw;
        this.zzAx = com_google_android_gms_internal_zzff_zza.zzAx;
        this.zzAy = com_google_android_gms_internal_zzff_zza.zzAy;
        this.zzAz = com_google_android_gms_internal_zzff_zza.zzAz;
    }

    public JSONObject toJson() {
        try {
            return new JSONObject().put(Sharing.SMS, this.zzAv).put("tel", this.zzAw).put("calendar", this.zzAx).put("storePicture", this.zzAy).put("inlineVideo", this.zzAz);
        } catch (Throwable e) {
            zzb.zzb("Error occured while obtaining the MRAID capabilities.", e);
            return null;
        }
    }
}
