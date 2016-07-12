package com.google.android.gms.internal;

import android.support.v4.view.MotionEventCompat;
import android.support.v4.view.ViewCompat;
import com.fasterxml.jackson.core.util.MinimalPrettyPrinter;
import java.security.MessageDigest;

public class zzbo extends zzbl {
    private MessageDigest zzsw;

    byte[] zza(String[] strArr) {
        byte[] bArr = new byte[strArr.length];
        for (int i = 0; i < strArr.length; i++) {
            bArr[i] = zzj(zzbn.zzC(strArr[i]));
        }
        return bArr;
    }

    byte zzj(int i) {
        return (byte) ((((i & MotionEventCompat.ACTION_MASK) ^ ((MotionEventCompat.ACTION_POINTER_INDEX_MASK & i) >> 8)) ^ ((16711680 & i) >> 16)) ^ ((ViewCompat.MEASURED_STATE_MASK & i) >> 24));
    }

    public byte[] zzz(String str) {
        byte[] bArr;
        int i = 4;
        byte[] zza = zza(str.split(MinimalPrettyPrinter.DEFAULT_ROOT_VALUE_SEPARATOR));
        this.zzsw = zzcy();
        synchronized (this.zzpd) {
            if (this.zzsw == null) {
                bArr = new byte[0];
            } else {
                this.zzsw.reset();
                this.zzsw.update(zza);
                Object digest = this.zzsw.digest();
                if (digest.length <= 4) {
                    i = digest.length;
                }
                bArr = new byte[i];
                System.arraycopy(digest, 0, bArr, 0, bArr.length);
            }
        }
        return bArr;
    }
}
