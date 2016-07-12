package com.google.android.gms.internal;

import java.io.IOException;
import java.util.Arrays;

final class zzsg {
    final int tag;
    final byte[] zzbiw;

    zzsg(int i, byte[] bArr) {
        this.tag = i;
        this.zzbiw = bArr;
    }

    public boolean equals(Object obj) {
        if (obj != this) {
            if (!(obj instanceof zzsg)) {
                return false;
            }
            zzsg com_google_android_gms_internal_zzsg = (zzsg) obj;
            if (this.tag != com_google_android_gms_internal_zzsg.tag) {
                return false;
            }
            if (!Arrays.equals(this.zzbiw, com_google_android_gms_internal_zzsg.zzbiw)) {
                return false;
            }
        }
        return true;
    }

    public int hashCode() {
        return ((this.tag + 527) * 31) + Arrays.hashCode(this.zzbiw);
    }

    int zzB() {
        return (zzrx.zzlO(this.tag) + 0) + this.zzbiw.length;
    }

    void zza(zzrx com_google_android_gms_internal_zzrx) throws IOException {
        com_google_android_gms_internal_zzrx.zzlN(this.tag);
        com_google_android_gms_internal_zzrx.zzF(this.zzbiw);
    }
}
