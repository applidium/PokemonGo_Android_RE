package com.google.android.gms.internal;

import android.os.Bundle;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.Api.zzb;
import com.google.android.gms.common.api.Result;
import com.google.android.gms.internal.zzlb.zza;

public interface zzlj {
    void begin();

    void connect();

    void disconnect();

    String getName();

    void onConnected(Bundle bundle);

    void onConnectionSuspended(int i);

    <A extends zzb, R extends Result, T extends zza<R, A>> T zza(T t);

    void zza(ConnectionResult connectionResult, Api<?> api, int i);

    <A extends zzb, T extends zza<? extends Result, A>> T zzb(T t);
}
