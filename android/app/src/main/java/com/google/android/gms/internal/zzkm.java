package com.google.android.gms.internal;

import android.content.Context;
import android.os.RemoteException;
import com.google.android.gms.auth.api.proxy.ProxyApi;
import com.google.android.gms.auth.api.proxy.ProxyApi.ProxyResult;
import com.google.android.gms.auth.api.proxy.ProxyRequest;
import com.google.android.gms.auth.api.proxy.ProxyResponse;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.PendingResult;
import com.google.android.gms.common.internal.zzx;

public class zzkm implements ProxyApi {

    /* renamed from: com.google.android.gms.internal.zzkm.1 */
    class C06051 extends zzkl {
        final /* synthetic */ ProxyRequest zzSQ;
        final /* synthetic */ zzkm zzSR;

        /* renamed from: com.google.android.gms.internal.zzkm.1.1 */
        class C06041 extends zzkh {
            final /* synthetic */ C06051 zzSS;

            C06041(C06051 c06051) {
                this.zzSS = c06051;
            }

            public void zza(ProxyResponse proxyResponse) {
                this.zzSS.zzb(new zzkn(proxyResponse));
            }
        }

        C06051(zzkm com_google_android_gms_internal_zzkm, GoogleApiClient googleApiClient, ProxyRequest proxyRequest) {
            this.zzSR = com_google_android_gms_internal_zzkm;
            this.zzSQ = proxyRequest;
            super(googleApiClient);
        }

        protected void zza(Context context, zzkk com_google_android_gms_internal_zzkk) throws RemoteException {
            com_google_android_gms_internal_zzkk.zza(new C06041(this), this.zzSQ);
        }
    }

    public PendingResult<ProxyResult> performProxyRequest(GoogleApiClient googleApiClient, ProxyRequest proxyRequest) {
        zzx.zzw(googleApiClient);
        zzx.zzw(proxyRequest);
        return googleApiClient.zzb(new C06051(this, googleApiClient, proxyRequest));
    }
}
