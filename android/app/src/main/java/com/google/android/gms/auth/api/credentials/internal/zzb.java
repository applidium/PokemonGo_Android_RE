package com.google.android.gms.auth.api.credentials.internal;

import com.google.android.gms.auth.api.credentials.Credential;
import com.google.android.gms.auth.api.credentials.CredentialRequestResult;
import com.google.android.gms.common.api.Status;

public final class zzb implements CredentialRequestResult {
    private final Status zzSC;
    private final Credential zzSD;

    public zzb(Status status, Credential credential) {
        this.zzSC = status;
        this.zzSD = credential;
    }

    public static zzb zzh(Status status) {
        return new zzb(status, null);
    }

    public Credential getCredential() {
        return this.zzSD;
    }

    public Status getStatus() {
        return this.zzSC;
    }
}
