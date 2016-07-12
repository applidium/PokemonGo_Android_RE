package com.google.android.gms.internal;

import android.content.Context;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Looper;
import com.google.android.gms.common.api.GoogleApiClient.ConnectionCallbacks;
import com.google.android.gms.common.api.GoogleApiClient.OnConnectionFailedListener;
import com.google.android.gms.common.internal.zzf;
import com.google.android.gms.common.internal.zzj;
import com.google.android.gms.internal.zzkg.zza;

public class zzkf extends zzj<zzkg> {
    public zzkf(Context context, Looper looper, zzf com_google_android_gms_common_internal_zzf, ConnectionCallbacks connectionCallbacks, OnConnectionFailedListener onConnectionFailedListener) {
        super(context, looper, 92, com_google_android_gms_common_internal_zzf, connectionCallbacks, onConnectionFailedListener);
    }

    protected /* synthetic */ IInterface zzW(IBinder iBinder) {
        return zzap(iBinder);
    }

    protected zzkg zzap(IBinder iBinder) {
        return zza.zzaq(iBinder);
    }

    protected String zzfK() {
        return "com.google.android.gms.auth.api.consent.START";
    }

    protected String zzfL() {
        return "com.google.android.gms.auth.api.consent.internal.IConsentService";
    }
}
