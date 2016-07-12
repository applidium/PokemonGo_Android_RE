package com.google.android.gms.location.internal;

import android.content.Context;
import android.os.Bundle;
import android.os.DeadObjectException;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Looper;
import com.google.android.gms.common.api.GoogleApiClient.ConnectionCallbacks;
import com.google.android.gms.common.api.GoogleApiClient.OnConnectionFailedListener;
import com.google.android.gms.common.internal.zzf;
import com.google.android.gms.common.internal.zzj;
import com.google.android.gms.location.internal.zzi.zza;

public class zzb extends zzj<zzi> {
    private final String zzaFa;
    protected final zzp<zzi> zzaFb;

    /* renamed from: com.google.android.gms.location.internal.zzb.1 */
    class C06431 implements zzp<zzi> {
        final /* synthetic */ zzb zzaFc;

        C06431(zzb com_google_android_gms_location_internal_zzb) {
            this.zzaFc = com_google_android_gms_location_internal_zzb;
        }

        public void zzpb() {
            this.zzaFc.zzpb();
        }

        public /* synthetic */ IInterface zzpc() throws DeadObjectException {
            return zzwB();
        }

        public zzi zzwB() throws DeadObjectException {
            return (zzi) this.zzaFc.zzpc();
        }
    }

    public zzb(Context context, Looper looper, ConnectionCallbacks connectionCallbacks, OnConnectionFailedListener onConnectionFailedListener, String str, zzf com_google_android_gms_common_internal_zzf) {
        super(context, looper, 23, com_google_android_gms_common_internal_zzf, connectionCallbacks, onConnectionFailedListener);
        this.zzaFb = new C06431(this);
        this.zzaFa = str;
    }

    protected /* synthetic */ IInterface zzW(IBinder iBinder) {
        return zzbY(iBinder);
    }

    protected zzi zzbY(IBinder iBinder) {
        return zza.zzcb(iBinder);
    }

    protected String zzfK() {
        return "com.google.android.location.internal.GoogleLocationManagerService.START";
    }

    protected String zzfL() {
        return "com.google.android.gms.location.internal.IGoogleLocationManagerService";
    }

    protected Bundle zzly() {
        Bundle bundle = new Bundle();
        bundle.putString("client_name", this.zzaFa);
        return bundle;
    }
}
