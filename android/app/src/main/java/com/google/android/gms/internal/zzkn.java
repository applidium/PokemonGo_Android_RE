package com.google.android.gms.internal;

import com.google.android.gms.auth.api.proxy.ProxyApi.ProxyResult;
import com.google.android.gms.auth.api.proxy.ProxyResponse;
import com.google.android.gms.common.api.Status;

class zzkn implements ProxyResult {
    private Status zzSC;
    private ProxyResponse zzST;

    public zzkn(ProxyResponse proxyResponse) {
        this.zzST = proxyResponse;
        this.zzSC = Status.zzabb;
    }

    public zzkn(Status status) {
        this.zzSC = status;
    }

    public ProxyResponse getResponse() {
        return this.zzST;
    }

    public Status getStatus() {
        return this.zzSC;
    }
}
