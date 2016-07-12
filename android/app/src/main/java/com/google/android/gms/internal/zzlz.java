package com.google.android.gms.internal;

import android.os.RemoteException;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.PendingResult;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.internal.zzlb.zzb;

public final class zzlz implements zzly {

    /* renamed from: com.google.android.gms.internal.zzlz.1 */
    class C06281 extends zza {
        final /* synthetic */ zzlz zzagx;

        C06281(zzlz com_google_android_gms_internal_zzlz, GoogleApiClient googleApiClient) {
            this.zzagx = com_google_android_gms_internal_zzlz;
            super(googleApiClient);
        }

        protected void zza(zzmb com_google_android_gms_internal_zzmb) throws RemoteException {
            ((zzmd) com_google_android_gms_internal_zzmb.zzpc()).zza(new zza(this));
        }
    }

    private static class zza extends zzlw {
        private final zzb<Status> zzagy;

        public zza(zzb<Status> com_google_android_gms_internal_zzlb_zzb_com_google_android_gms_common_api_Status) {
            this.zzagy = com_google_android_gms_internal_zzlb_zzb_com_google_android_gms_common_api_Status;
        }

        public void zzbN(int i) throws RemoteException {
            this.zzagy.zzp(new Status(i));
        }
    }

    public PendingResult<Status> zzb(GoogleApiClient googleApiClient) {
        return googleApiClient.zzb(new C06281(this, googleApiClient));
    }
}
