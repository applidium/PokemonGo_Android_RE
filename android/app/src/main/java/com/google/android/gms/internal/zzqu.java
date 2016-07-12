package com.google.android.gms.internal;

import android.content.Context;
import android.os.Looper;
import com.google.android.gms.common.Scopes;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.Api.ApiOptions.NoOptions;
import com.google.android.gms.common.api.Api.zza;
import com.google.android.gms.common.api.Api.zzb;
import com.google.android.gms.common.api.Api.zzc;
import com.google.android.gms.common.api.GoogleApiClient.ConnectionCallbacks;
import com.google.android.gms.common.api.GoogleApiClient.OnConnectionFailedListener;
import com.google.android.gms.common.api.Scope;
import com.google.android.gms.common.internal.zzf;
import com.google.android.gms.signin.internal.zzh;
import com.google.android.gms.signin.internal.zzi;
import java.util.concurrent.Executors;

public final class zzqu {
    public static final Api<zzqx> API;
    public static final zzc<zzi> zzRk;
    public static final zza<zzi, zzqx> zzRl;
    public static final Scope zzTe;
    public static final Scope zzTf;
    static final zza<zzi, NoOptions> zzaUX;
    public static final zzqv zzaUY;
    public static final Api<NoOptions> zzaiH;
    public static final zzc<zzi> zzapF;

    /* renamed from: com.google.android.gms.internal.zzqu.1 */
    static final class C06301 extends zza<zzi, zzqx> {
        C06301() {
        }

        public zzi zza(Context context, Looper looper, zzf com_google_android_gms_common_internal_zzf, zzqx com_google_android_gms_internal_zzqx, ConnectionCallbacks connectionCallbacks, OnConnectionFailedListener onConnectionFailedListener) {
            return new zzi(context, looper, true, com_google_android_gms_common_internal_zzf, com_google_android_gms_internal_zzqx == null ? zzqx.zzaUZ : com_google_android_gms_internal_zzqx, connectionCallbacks, onConnectionFailedListener, Executors.newSingleThreadExecutor());
        }
    }

    /* renamed from: com.google.android.gms.internal.zzqu.2 */
    static final class C06312 extends zza<zzi, NoOptions> {
        C06312() {
        }

        public /* synthetic */ zzb zza(Context context, Looper looper, zzf com_google_android_gms_common_internal_zzf, Object obj, ConnectionCallbacks connectionCallbacks, OnConnectionFailedListener onConnectionFailedListener) {
            return zzt(context, looper, com_google_android_gms_common_internal_zzf, (NoOptions) obj, connectionCallbacks, onConnectionFailedListener);
        }

        public zzi zzt(Context context, Looper looper, zzf com_google_android_gms_common_internal_zzf, NoOptions noOptions, ConnectionCallbacks connectionCallbacks, OnConnectionFailedListener onConnectionFailedListener) {
            return new zzi(context, looper, false, com_google_android_gms_common_internal_zzf, zzqx.zzaUZ, connectionCallbacks, onConnectionFailedListener, Executors.newSingleThreadExecutor());
        }
    }

    static {
        zzRk = new zzc();
        zzapF = new zzc();
        zzRl = new C06301();
        zzaUX = new C06312();
        zzTe = new Scope(Scopes.PROFILE);
        zzTf = new Scope(Scopes.EMAIL);
        API = new Api("SignIn.API", zzRl, zzRk);
        zzaiH = new Api("SignIn.INTERNAL_API", zzaUX, zzapF);
        zzaUY = new zzh();
    }
}
