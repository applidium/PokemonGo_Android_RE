package com.google.android.gms.common.api;

import android.content.Context;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Looper;
import com.google.android.gms.common.api.GoogleApiClient.ConnectionCallbacks;
import com.google.android.gms.common.api.GoogleApiClient.OnConnectionFailedListener;
import com.google.android.gms.common.internal.zzp;
import com.google.android.gms.common.internal.zzx;
import java.io.FileDescriptor;
import java.io.PrintWriter;
import java.util.Collections;
import java.util.List;
import java.util.Set;

public final class Api<O extends ApiOptions> {
    private final String mName;
    private final zzc<?> zzZM;
    private final zza<?, O> zzaav;
    private final zze<?, O> zzaaw;
    private final zzf<?> zzaax;

    public interface zzb {
        void disconnect();

        void dump(String str, FileDescriptor fileDescriptor, PrintWriter printWriter, String[] strArr);

        boolean isConnected();

        void zza(com.google.android.gms.common.api.GoogleApiClient.zza com_google_android_gms_common_api_GoogleApiClient_zza);

        void zza(zzp com_google_android_gms_common_internal_zzp);

        void zza(zzp com_google_android_gms_common_internal_zzp, Set<Scope> set);

        boolean zzlN();

        IBinder zznz();
    }

    public static abstract class zza<T extends zzb, O> {
        public int getPriority() {
            return Integer.MAX_VALUE;
        }

        public abstract T zza(Context context, Looper looper, com.google.android.gms.common.internal.zzf com_google_android_gms_common_internal_zzf, O o, ConnectionCallbacks connectionCallbacks, OnConnectionFailedListener onConnectionFailedListener);

        public List<Scope> zzm(O o) {
            return Collections.emptyList();
        }
    }

    public interface ApiOptions {

        public interface HasOptions extends ApiOptions {
        }

        public interface NotRequiredOptions extends ApiOptions {
        }

        public interface Optional extends HasOptions, NotRequiredOptions {
        }

        public static final class NoOptions implements NotRequiredOptions {
            private NoOptions() {
            }
        }
    }

    public static final class zzc<C extends zzb> {
    }

    public interface zzd<T extends IInterface> {
        T zzW(IBinder iBinder);

        void zza(int i, T t);

        String zzfK();

        String zzfL();
    }

    public interface zze<T extends zzd, O> {
        T zzn(O o);

        int zznA();
    }

    public static final class zzf<C extends zzd> {
    }

    public <C extends zzb> Api(String str, zza<C, O> com_google_android_gms_common_api_Api_zza_C__O, zzc<C> com_google_android_gms_common_api_Api_zzc_C) {
        zzx.zzb((Object) com_google_android_gms_common_api_Api_zza_C__O, (Object) "Cannot construct an Api with a null ClientBuilder");
        zzx.zzb((Object) com_google_android_gms_common_api_Api_zzc_C, (Object) "Cannot construct an Api with a null ClientKey");
        this.mName = str;
        this.zzaav = com_google_android_gms_common_api_Api_zza_C__O;
        this.zzaaw = null;
        this.zzZM = com_google_android_gms_common_api_Api_zzc_C;
        this.zzaax = null;
    }

    public String getName() {
        return this.mName;
    }

    public zza<?, O> zznv() {
        zzx.zza(this.zzaav != null, (Object) "This API was constructed with a SimpleClientBuilder. Use getSimpleClientBuilder");
        return this.zzaav;
    }

    public zze<?, O> zznw() {
        zzx.zza(this.zzaaw != null, (Object) "This API was constructed with a ClientBuilder. Use getClientBuilder");
        return this.zzaaw;
    }

    public zzc<?> zznx() {
        zzx.zza(this.zzZM != null, (Object) "This API was constructed with a SimpleClientKey. Use getSimpleClientKey");
        return this.zzZM;
    }

    public boolean zzny() {
        return this.zzaax != null;
    }
}
