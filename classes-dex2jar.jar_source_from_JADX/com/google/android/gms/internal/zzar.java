package com.google.android.gms.internal;

import java.nio.ByteBuffer;
import java.security.Key;
import java.security.SecureRandom;
import javax.crypto.Cipher;
import javax.crypto.spec.IvParameterSpec;
import javax.crypto.spec.SecretKeySpec;

public class zzar {
    private final zzap zzmW;
    private final SecureRandom zznE;

    public class zza extends Exception {
        final /* synthetic */ zzar zznF;

        public zza(zzar com_google_android_gms_internal_zzar) {
            this.zznF = com_google_android_gms_internal_zzar;
        }

        public zza(zzar com_google_android_gms_internal_zzar, Throwable th) {
            this.zznF = com_google_android_gms_internal_zzar;
            super(th);
        }
    }

    public zzar(zzap com_google_android_gms_internal_zzap, SecureRandom secureRandom) {
        this.zzmW = com_google_android_gms_internal_zzap;
        this.zznE = secureRandom;
    }

    static void zze(byte[] bArr) {
        for (int i = 0; i < bArr.length; i++) {
            bArr[i] = (byte) (bArr[i] ^ 68);
        }
    }

    public byte[] zzc(byte[] bArr, String str) throws zza {
        if (bArr.length != 16) {
            throw new zza(this);
        }
        try {
            byte[] zza = this.zzmW.zza(str, false);
            if (zza.length <= 16) {
                throw new zza(this);
            }
            ByteBuffer allocate = ByteBuffer.allocate(zza.length);
            allocate.put(zza);
            allocate.flip();
            byte[] bArr2 = new byte[16];
            zza = new byte[(zza.length - 16)];
            allocate.get(bArr2);
            allocate.get(zza);
            Key secretKeySpec = new SecretKeySpec(bArr, "AES");
            Cipher instance = Cipher.getInstance("AES/CBC/PKCS5Padding");
            instance.init(2, secretKeySpec, new IvParameterSpec(bArr2));
            return instance.doFinal(zza);
        } catch (Throwable e) {
            throw new zza(this, e);
        } catch (Throwable e2) {
            throw new zza(this, e2);
        } catch (Throwable e22) {
            throw new zza(this, e22);
        } catch (Throwable e222) {
            throw new zza(this, e222);
        } catch (Throwable e2222) {
            throw new zza(this, e2222);
        } catch (Throwable e22222) {
            throw new zza(this, e22222);
        } catch (Throwable e222222) {
            throw new zza(this, e222222);
        }
    }

    public byte[] zzl(String str) throws zza {
        try {
            byte[] zza = this.zzmW.zza(str, false);
            if (zza.length != 32) {
                throw new zza(this);
            }
            byte[] bArr = new byte[16];
            ByteBuffer.wrap(zza, 4, 16).get(bArr);
            zze(bArr);
            return bArr;
        } catch (Throwable e) {
            throw new zza(this, e);
        }
    }
}
