package com.google.android.gms.auth.api.credentials.internal;

import android.content.Context;
import android.os.RemoteException;
import com.google.android.gms.auth.api.credentials.Credential;
import com.google.android.gms.auth.api.credentials.CredentialRequest;
import com.google.android.gms.auth.api.credentials.CredentialRequestResult;
import com.google.android.gms.auth.api.credentials.CredentialsApi;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.PendingResult;
import com.google.android.gms.common.api.Result;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.internal.zzlb.zzb;

public final class zzc implements CredentialsApi {

    /* renamed from: com.google.android.gms.auth.api.credentials.internal.zzc.1 */
    class C02241 extends zzd<CredentialRequestResult> {
        final /* synthetic */ CredentialRequest zzSE;
        final /* synthetic */ zzc zzSF;

        /* renamed from: com.google.android.gms.auth.api.credentials.internal.zzc.1.1 */
        class C02231 extends zza {
            final /* synthetic */ C02241 zzSG;

            C02231(C02241 c02241) {
                this.zzSG = c02241;
            }

            public void zza(Status status, Credential credential) {
                this.zzSG.zzb(new zzb(status, credential));
            }

            public void zzg(Status status) {
                this.zzSG.zzb(zzb.zzh(status));
            }
        }

        C02241(zzc com_google_android_gms_auth_api_credentials_internal_zzc, GoogleApiClient googleApiClient, CredentialRequest credentialRequest) {
            this.zzSF = com_google_android_gms_auth_api_credentials_internal_zzc;
            this.zzSE = credentialRequest;
            super(googleApiClient);
        }

        protected void zza(Context context, zzh com_google_android_gms_auth_api_credentials_internal_zzh) throws RemoteException {
            com_google_android_gms_auth_api_credentials_internal_zzh.zza(new C02231(this), this.zzSE);
        }

        protected /* synthetic */ Result zzb(Status status) {
            return zzi(status);
        }

        protected CredentialRequestResult zzi(Status status) {
            return zzb.zzh(status);
        }
    }

    /* renamed from: com.google.android.gms.auth.api.credentials.internal.zzc.2 */
    class C02252 extends zzd<Status> {
        final /* synthetic */ zzc zzSF;
        final /* synthetic */ Credential zzSH;

        C02252(zzc com_google_android_gms_auth_api_credentials_internal_zzc, GoogleApiClient googleApiClient, Credential credential) {
            this.zzSF = com_google_android_gms_auth_api_credentials_internal_zzc;
            this.zzSH = credential;
            super(googleApiClient);
        }

        protected void zza(Context context, zzh com_google_android_gms_auth_api_credentials_internal_zzh) throws RemoteException {
            com_google_android_gms_auth_api_credentials_internal_zzh.zza(new zza(this), new SaveRequest(this.zzSH));
        }

        protected /* synthetic */ Result zzb(Status status) {
            return zzd(status);
        }

        protected Status zzd(Status status) {
            return status;
        }
    }

    /* renamed from: com.google.android.gms.auth.api.credentials.internal.zzc.3 */
    class C02263 extends zzd<Status> {
        final /* synthetic */ zzc zzSF;
        final /* synthetic */ Credential zzSH;

        C02263(zzc com_google_android_gms_auth_api_credentials_internal_zzc, GoogleApiClient googleApiClient, Credential credential) {
            this.zzSF = com_google_android_gms_auth_api_credentials_internal_zzc;
            this.zzSH = credential;
            super(googleApiClient);
        }

        protected void zza(Context context, zzh com_google_android_gms_auth_api_credentials_internal_zzh) throws RemoteException {
            com_google_android_gms_auth_api_credentials_internal_zzh.zza(new zza(this), new DeleteRequest(this.zzSH));
        }

        protected /* synthetic */ Result zzb(Status status) {
            return zzd(status);
        }

        protected Status zzd(Status status) {
            return status;
        }
    }

    /* renamed from: com.google.android.gms.auth.api.credentials.internal.zzc.4 */
    class C02274 extends zzd<Status> {
        final /* synthetic */ zzc zzSF;

        C02274(zzc com_google_android_gms_auth_api_credentials_internal_zzc, GoogleApiClient googleApiClient) {
            this.zzSF = com_google_android_gms_auth_api_credentials_internal_zzc;
            super(googleApiClient);
        }

        protected void zza(Context context, zzh com_google_android_gms_auth_api_credentials_internal_zzh) throws RemoteException {
            com_google_android_gms_auth_api_credentials_internal_zzh.zza(new zza(this));
        }

        protected /* synthetic */ Result zzb(Status status) {
            return zzd(status);
        }

        protected Status zzd(Status status) {
            return status;
        }
    }

    private static class zza extends zza {
        private zzb<Status> zzSI;

        zza(zzb<Status> com_google_android_gms_internal_zzlb_zzb_com_google_android_gms_common_api_Status) {
            this.zzSI = com_google_android_gms_internal_zzlb_zzb_com_google_android_gms_common_api_Status;
        }

        public void zzg(Status status) {
            this.zzSI.zzp(status);
        }
    }

    public PendingResult<Status> delete(GoogleApiClient googleApiClient, Credential credential) {
        return googleApiClient.zzb(new C02263(this, googleApiClient, credential));
    }

    public PendingResult<Status> disableAutoSignIn(GoogleApiClient googleApiClient) {
        return googleApiClient.zzb(new C02274(this, googleApiClient));
    }

    public PendingResult<CredentialRequestResult> request(GoogleApiClient googleApiClient, CredentialRequest credentialRequest) {
        return googleApiClient.zza(new C02241(this, googleApiClient, credentialRequest));
    }

    public PendingResult<Status> save(GoogleApiClient googleApiClient, Credential credential) {
        return googleApiClient.zzb(new C02252(this, googleApiClient, credential));
    }
}
