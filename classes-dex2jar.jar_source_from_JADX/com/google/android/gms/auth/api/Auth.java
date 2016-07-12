package com.google.android.gms.auth.api;

import android.content.Context;
import android.os.Bundle;
import android.os.Looper;
import com.google.android.gms.auth.api.credentials.CredentialsApi;
import com.google.android.gms.auth.api.credentials.PasswordSpecification;
import com.google.android.gms.auth.api.credentials.internal.zze;
import com.google.android.gms.auth.api.proxy.ProxyApi;
import com.google.android.gms.auth.api.signin.GoogleSignInConfig;
import com.google.android.gms.auth.api.signin.internal.zzb;
import com.google.android.gms.auth.api.signin.internal.zzg;
import com.google.android.gms.auth.api.signin.zzd;
import com.google.android.gms.auth.api.signin.zzf;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.Api.ApiOptions.NoOptions;
import com.google.android.gms.common.api.Api.ApiOptions.Optional;
import com.google.android.gms.common.api.Api.zzc;
import com.google.android.gms.common.api.GoogleApiClient.ConnectionCallbacks;
import com.google.android.gms.common.api.GoogleApiClient.OnConnectionFailedListener;
import com.google.android.gms.internal.zzjz;
import com.google.android.gms.internal.zzka;
import com.google.android.gms.internal.zzkb;
import com.google.android.gms.internal.zzke;
import com.google.android.gms.internal.zzkf;
import com.google.android.gms.internal.zzki;
import com.google.android.gms.internal.zzkm;

public final class Auth {
    public static final Api<AuthCredentialsOptions> CREDENTIALS_API;
    public static final CredentialsApi CredentialsApi;
    public static final Api<zza> PROXY_API;
    public static final ProxyApi ProxyApi;
    public static final zzc<zzki> zzRE;
    public static final zzc<zze> zzRF;
    public static final zzc<zzkb> zzRG;
    public static final zzc<zzg> zzRH;
    public static final zzc<zzb> zzRI;
    public static final zzc<zzkf> zzRJ;
    private static final com.google.android.gms.common.api.Api.zza<zzki, zza> zzRK;
    private static final com.google.android.gms.common.api.Api.zza<zze, AuthCredentialsOptions> zzRL;
    private static final com.google.android.gms.common.api.Api.zza<zzkb, NoOptions> zzRM;
    private static final com.google.android.gms.common.api.Api.zza<zzkf, NoOptions> zzRN;
    private static final com.google.android.gms.common.api.Api.zza<zzg, com.google.android.gms.auth.api.signin.zzg> zzRO;
    private static final com.google.android.gms.common.api.Api.zza<zzb, GoogleSignInConfig> zzRP;
    public static final Api<com.google.android.gms.auth.api.signin.zzg> zzRQ;
    public static final Api<GoogleSignInConfig> zzRR;
    public static final Api<NoOptions> zzRS;
    public static final Api<NoOptions> zzRT;
    public static final zzjz zzRU;
    public static final zzf zzRV;
    public static final zzd zzRW;
    public static final com.google.android.gms.auth.api.consent.zza zzRX;

    /* renamed from: com.google.android.gms.auth.api.Auth.1 */
    static final class C02151 extends com.google.android.gms.common.api.Api.zza<zzki, zza> {
        C02151() {
        }

        public zzki zza(Context context, Looper looper, com.google.android.gms.common.internal.zzf com_google_android_gms_common_internal_zzf, zza com_google_android_gms_auth_api_Auth_zza, ConnectionCallbacks connectionCallbacks, OnConnectionFailedListener onConnectionFailedListener) {
            return new zzki(context, looper, com_google_android_gms_common_internal_zzf, com_google_android_gms_auth_api_Auth_zza, connectionCallbacks, onConnectionFailedListener);
        }
    }

    /* renamed from: com.google.android.gms.auth.api.Auth.2 */
    static final class C02162 extends com.google.android.gms.common.api.Api.zza<zze, AuthCredentialsOptions> {
        C02162() {
        }

        public zze zza(Context context, Looper looper, com.google.android.gms.common.internal.zzf com_google_android_gms_common_internal_zzf, AuthCredentialsOptions authCredentialsOptions, ConnectionCallbacks connectionCallbacks, OnConnectionFailedListener onConnectionFailedListener) {
            return new zze(context, looper, com_google_android_gms_common_internal_zzf, authCredentialsOptions, connectionCallbacks, onConnectionFailedListener);
        }
    }

    /* renamed from: com.google.android.gms.auth.api.Auth.3 */
    static final class C02173 extends com.google.android.gms.common.api.Api.zza<zzkb, NoOptions> {
        C02173() {
        }

        public /* synthetic */ Api.zzb zza(Context context, Looper looper, com.google.android.gms.common.internal.zzf com_google_android_gms_common_internal_zzf, Object obj, ConnectionCallbacks connectionCallbacks, OnConnectionFailedListener onConnectionFailedListener) {
            return zzc(context, looper, com_google_android_gms_common_internal_zzf, (NoOptions) obj, connectionCallbacks, onConnectionFailedListener);
        }

        public zzkb zzc(Context context, Looper looper, com.google.android.gms.common.internal.zzf com_google_android_gms_common_internal_zzf, NoOptions noOptions, ConnectionCallbacks connectionCallbacks, OnConnectionFailedListener onConnectionFailedListener) {
            return new zzkb(context, looper, com_google_android_gms_common_internal_zzf, connectionCallbacks, onConnectionFailedListener);
        }
    }

    /* renamed from: com.google.android.gms.auth.api.Auth.4 */
    static final class C02184 extends com.google.android.gms.common.api.Api.zza<zzkf, NoOptions> {
        C02184() {
        }

        public /* synthetic */ Api.zzb zza(Context context, Looper looper, com.google.android.gms.common.internal.zzf com_google_android_gms_common_internal_zzf, Object obj, ConnectionCallbacks connectionCallbacks, OnConnectionFailedListener onConnectionFailedListener) {
            return zzd(context, looper, com_google_android_gms_common_internal_zzf, (NoOptions) obj, connectionCallbacks, onConnectionFailedListener);
        }

        public zzkf zzd(Context context, Looper looper, com.google.android.gms.common.internal.zzf com_google_android_gms_common_internal_zzf, NoOptions noOptions, ConnectionCallbacks connectionCallbacks, OnConnectionFailedListener onConnectionFailedListener) {
            return new zzkf(context, looper, com_google_android_gms_common_internal_zzf, connectionCallbacks, onConnectionFailedListener);
        }
    }

    /* renamed from: com.google.android.gms.auth.api.Auth.5 */
    static final class C02195 extends com.google.android.gms.common.api.Api.zza<zzg, com.google.android.gms.auth.api.signin.zzg> {
        C02195() {
        }

        public zzg zza(Context context, Looper looper, com.google.android.gms.common.internal.zzf com_google_android_gms_common_internal_zzf, com.google.android.gms.auth.api.signin.zzg com_google_android_gms_auth_api_signin_zzg, ConnectionCallbacks connectionCallbacks, OnConnectionFailedListener onConnectionFailedListener) {
            return new zzg(context, looper, com_google_android_gms_common_internal_zzf, com_google_android_gms_auth_api_signin_zzg, connectionCallbacks, onConnectionFailedListener);
        }
    }

    /* renamed from: com.google.android.gms.auth.api.Auth.6 */
    static final class C02206 extends com.google.android.gms.common.api.Api.zza<zzb, GoogleSignInConfig> {
        C02206() {
        }

        public zzb zza(Context context, Looper looper, com.google.android.gms.common.internal.zzf com_google_android_gms_common_internal_zzf, GoogleSignInConfig googleSignInConfig, ConnectionCallbacks connectionCallbacks, OnConnectionFailedListener onConnectionFailedListener) {
            return new zzb(context, looper, com_google_android_gms_common_internal_zzf, googleSignInConfig, connectionCallbacks, onConnectionFailedListener);
        }
    }

    public static final class AuthCredentialsOptions implements Optional {
        private final String zzRY;
        private final PasswordSpecification zzRZ;

        public static class Builder {
            private PasswordSpecification zzRZ;

            public Builder() {
                this.zzRZ = PasswordSpecification.zzSt;
            }
        }

        public Bundle zzly() {
            Bundle bundle = new Bundle();
            bundle.putString("consumer_package", this.zzRY);
            bundle.putParcelable("password_specification", this.zzRZ);
            return bundle;
        }
    }

    public static final class zza implements Optional {
        private final Bundle zzSa;

        public Bundle zzlE() {
            return new Bundle(this.zzSa);
        }
    }

    static {
        zzRE = new zzc();
        zzRF = new zzc();
        zzRG = new zzc();
        zzRH = new zzc();
        zzRI = new zzc();
        zzRJ = new zzc();
        zzRK = new C02151();
        zzRL = new C02162();
        zzRM = new C02173();
        zzRN = new C02184();
        zzRO = new C02195();
        zzRP = new C02206();
        PROXY_API = new Api("Auth.PROXY_API", zzRK, zzRE);
        CREDENTIALS_API = new Api("Auth.CREDENTIALS_API", zzRL, zzRF);
        zzRQ = new Api("Auth.SIGN_IN_API", zzRO, zzRH);
        zzRR = new Api("Auth.GOOGLE_SIGN_IN_API", zzRP, zzRI);
        zzRS = new Api("Auth.ACCOUNT_STATUS_API", zzRM, zzRG);
        zzRT = new Api("Auth.CONSENT_API", zzRN, zzRJ);
        ProxyApi = new zzkm();
        CredentialsApi = new com.google.android.gms.auth.api.credentials.internal.zzc();
        zzRU = new zzka();
        zzRV = new com.google.android.gms.auth.api.signin.internal.zzf();
        zzRW = new com.google.android.gms.auth.api.signin.internal.zza();
        zzRX = new zzke();
    }

    private Auth() {
    }
}
