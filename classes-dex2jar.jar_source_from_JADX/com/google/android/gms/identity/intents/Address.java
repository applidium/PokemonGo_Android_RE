package com.google.android.gms.identity.intents;

import android.app.Activity;
import android.content.Context;
import android.os.Looper;
import android.os.RemoteException;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.Api.ApiOptions.HasOptions;
import com.google.android.gms.common.api.Api.zzc;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.GoogleApiClient.ConnectionCallbacks;
import com.google.android.gms.common.api.GoogleApiClient.OnConnectionFailedListener;
import com.google.android.gms.common.api.Result;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.internal.zzf;
import com.google.android.gms.common.internal.zzx;
import com.google.android.gms.internal.zzoy;

public final class Address {
    public static final Api<AddressOptions> API;
    static final zzc<zzoy> zzRk;
    private static final com.google.android.gms.common.api.Api.zza<zzoy, AddressOptions> zzRl;

    /* renamed from: com.google.android.gms.identity.intents.Address.1 */
    static final class C04561 extends com.google.android.gms.common.api.Api.zza<zzoy, AddressOptions> {
        C04561() {
        }

        public zzoy zza(Context context, Looper looper, zzf com_google_android_gms_common_internal_zzf, AddressOptions addressOptions, ConnectionCallbacks connectionCallbacks, OnConnectionFailedListener onConnectionFailedListener) {
            zzx.zzb(context instanceof Activity, (Object) "An Activity must be used for Address APIs");
            if (addressOptions == null) {
                addressOptions = new AddressOptions();
            }
            return new zzoy((Activity) context, looper, com_google_android_gms_common_internal_zzf, addressOptions.theme, connectionCallbacks, onConnectionFailedListener);
        }
    }

    private static abstract class zza extends com.google.android.gms.internal.zzlb.zza<Status, zzoy> {
        public zza(GoogleApiClient googleApiClient) {
            super(Address.zzRk, googleApiClient);
        }

        public /* synthetic */ Result zzb(Status status) {
            return zzd(status);
        }

        public Status zzd(Status status) {
            return status;
        }
    }

    /* renamed from: com.google.android.gms.identity.intents.Address.2 */
    static final class C04572 extends zza {
        final /* synthetic */ UserAddressRequest zzaDf;
        final /* synthetic */ int zzaDg;

        C04572(GoogleApiClient googleApiClient, UserAddressRequest userAddressRequest, int i) {
            this.zzaDf = userAddressRequest;
            this.zzaDg = i;
            super(googleApiClient);
        }

        protected void zza(zzoy com_google_android_gms_internal_zzoy) throws RemoteException {
            com_google_android_gms_internal_zzoy.zza(this.zzaDf, this.zzaDg);
            zzb(Status.zzabb);
        }
    }

    public static final class AddressOptions implements HasOptions {
        public final int theme;

        public AddressOptions() {
            this.theme = 0;
        }

        public AddressOptions(int i) {
            this.theme = i;
        }
    }

    static {
        zzRk = new zzc();
        zzRl = new C04561();
        API = new Api("Address.API", zzRl, zzRk);
    }

    public static void requestUserAddress(GoogleApiClient googleApiClient, UserAddressRequest userAddressRequest, int i) {
        googleApiClient.zza(new C04572(googleApiClient, userAddressRequest, i));
    }
}
