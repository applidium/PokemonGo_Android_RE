package com.google.android.gms.internal;

import com.google.android.gms.common.api.Api.ApiOptions.Optional;
import com.google.android.gms.common.api.GoogleApiClient.ServerAuthCodeCallbacks;
import com.google.android.gms.common.internal.zzx;

public final class zzqx implements Optional {
    public static final zzqx zzaUZ;
    private final boolean zzTi;
    private final boolean zzTk;
    private final String zzTl;
    private final boolean zzaVa;
    private final ServerAuthCodeCallbacks zzaVb;
    private final boolean zzaVc;

    public static final class zza {
        private String zzaSe;
        private boolean zzaVd;
        private boolean zzaVe;
        private ServerAuthCodeCallbacks zzaVf;
        private boolean zzaVg;
        private boolean zzaVh;

        private String zzet(String str) {
            zzx.zzw(str);
            boolean z = this.zzaSe == null || this.zzaSe.equals(str);
            zzx.zzb(z, (Object) "two different server client ids provided");
            return str;
        }

        public zzqx zzCi() {
            return new zzqx(this.zzaVe, this.zzaSe, this.zzaVf, this.zzaVg, this.zzaVh, null);
        }

        public zza zza(String str, ServerAuthCodeCallbacks serverAuthCodeCallbacks) {
            this.zzaVd = true;
            this.zzaVe = true;
            this.zzaSe = zzet(str);
            this.zzaVf = (ServerAuthCodeCallbacks) zzx.zzw(serverAuthCodeCallbacks);
            return this;
        }
    }

    static {
        zzaUZ = new zza().zzCi();
    }

    private zzqx(boolean z, boolean z2, String str, ServerAuthCodeCallbacks serverAuthCodeCallbacks, boolean z3, boolean z4) {
        this.zzaVa = z;
        this.zzTi = z2;
        this.zzTl = str;
        this.zzaVb = serverAuthCodeCallbacks;
        this.zzaVc = z3;
        this.zzTk = z4;
    }

    public boolean zzCf() {
        return this.zzaVa;
    }

    public ServerAuthCodeCallbacks zzCg() {
        return this.zzaVb;
    }

    public boolean zzCh() {
        return this.zzaVc;
    }

    public boolean zzlY() {
        return this.zzTi;
    }

    public boolean zzma() {
        return this.zzTk;
    }

    public String zzmb() {
        return this.zzTl;
    }
}
