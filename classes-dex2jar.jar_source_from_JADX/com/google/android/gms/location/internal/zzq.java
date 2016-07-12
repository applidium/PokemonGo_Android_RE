package com.google.android.gms.location.internal;

import android.os.RemoteException;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.PendingResult;
import com.google.android.gms.common.api.Result;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.internal.zzlb.zzb;
import com.google.android.gms.location.LocationServices.zza;
import com.google.android.gms.location.LocationSettingsRequest;
import com.google.android.gms.location.LocationSettingsResult;
import com.google.android.gms.location.SettingsApi;

public class zzq implements SettingsApi {

    /* renamed from: com.google.android.gms.location.internal.zzq.1 */
    class C06641 extends zza<LocationSettingsResult> {
        final /* synthetic */ LocationSettingsRequest zzaFP;
        final /* synthetic */ String zzaFQ;
        final /* synthetic */ zzq zzaFR;

        C06641(zzq com_google_android_gms_location_internal_zzq, GoogleApiClient googleApiClient, LocationSettingsRequest locationSettingsRequest, String str) {
            this.zzaFR = com_google_android_gms_location_internal_zzq;
            this.zzaFP = locationSettingsRequest;
            this.zzaFQ = str;
            super(googleApiClient);
        }

        protected void zza(zzl com_google_android_gms_location_internal_zzl) throws RemoteException {
            com_google_android_gms_location_internal_zzl.zza(this.zzaFP, (zzb) this, this.zzaFQ);
        }

        public LocationSettingsResult zzaK(Status status) {
            return new LocationSettingsResult(status);
        }

        public /* synthetic */ Result zzb(Status status) {
            return zzaK(status);
        }
    }

    public PendingResult<LocationSettingsResult> checkLocationSettings(GoogleApiClient googleApiClient, LocationSettingsRequest locationSettingsRequest) {
        return zza(googleApiClient, locationSettingsRequest, null);
    }

    public PendingResult<LocationSettingsResult> zza(GoogleApiClient googleApiClient, LocationSettingsRequest locationSettingsRequest, String str) {
        return googleApiClient.zza(new C06641(this, googleApiClient, locationSettingsRequest, str));
    }
}
