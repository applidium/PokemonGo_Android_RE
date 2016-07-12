package com.google.android.gms.location;

import android.content.Context;
import android.os.Looper;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.Api.ApiOptions.NoOptions;
import com.google.android.gms.common.api.Api.zzb;
import com.google.android.gms.common.api.Api.zzc;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.GoogleApiClient.ConnectionCallbacks;
import com.google.android.gms.common.api.GoogleApiClient.OnConnectionFailedListener;
import com.google.android.gms.common.api.Result;
import com.google.android.gms.common.internal.zzf;
import com.google.android.gms.common.internal.zzx;
import com.google.android.gms.location.internal.zzd;
import com.google.android.gms.location.internal.zzl;
import com.google.android.gms.location.internal.zzq;

public class LocationServices {
    public static final Api<NoOptions> API;
    public static final FusedLocationProviderApi FusedLocationApi;
    public static final GeofencingApi GeofencingApi;
    public static final SettingsApi SettingsApi;
    private static final zzc<zzl> zzRk;
    private static final com.google.android.gms.common.api.Api.zza<zzl, NoOptions> zzRl;

    /* renamed from: com.google.android.gms.location.LocationServices.1 */
    static final class C06381 extends com.google.android.gms.common.api.Api.zza<zzl, NoOptions> {
        C06381() {
        }

        public /* synthetic */ zzb zza(Context context, Looper looper, zzf com_google_android_gms_common_internal_zzf, Object obj, ConnectionCallbacks connectionCallbacks, OnConnectionFailedListener onConnectionFailedListener) {
            return zzm(context, looper, com_google_android_gms_common_internal_zzf, (NoOptions) obj, connectionCallbacks, onConnectionFailedListener);
        }

        public zzl zzm(Context context, Looper looper, zzf com_google_android_gms_common_internal_zzf, NoOptions noOptions, ConnectionCallbacks connectionCallbacks, OnConnectionFailedListener onConnectionFailedListener) {
            return new zzl(context, looper, connectionCallbacks, onConnectionFailedListener, "locationServices", com_google_android_gms_common_internal_zzf);
        }
    }

    public static abstract class zza<R extends Result> extends com.google.android.gms.internal.zzlb.zza<R, zzl> {
        public zza(GoogleApiClient googleApiClient) {
            super(LocationServices.zzRk, googleApiClient);
        }
    }

    static {
        zzRk = new zzc();
        zzRl = new C06381();
        API = new Api("LocationServices.API", zzRl, zzRk);
        FusedLocationApi = new zzd();
        GeofencingApi = new com.google.android.gms.location.internal.zzf();
        SettingsApi = new zzq();
    }

    private LocationServices() {
    }

    public static zzl zzd(GoogleApiClient googleApiClient) {
        boolean z = true;
        zzx.zzb(googleApiClient != null, (Object) "GoogleApiClient parameter is required.");
        zzl com_google_android_gms_location_internal_zzl = (zzl) googleApiClient.zza(zzRk);
        if (com_google_android_gms_location_internal_zzl == null) {
            z = false;
        }
        zzx.zza(z, (Object) "GoogleApiClient is not configured to use the LocationServices.API Api. Pass thisinto GoogleApiClient.Builder#addApi() to use this feature.");
        return com_google_android_gms_location_internal_zzl;
    }
}
