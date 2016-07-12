package com.google.android.gms.internal;

import com.google.android.gms.location.places.Place;
import com.upsight.android.internal.persistence.subscription.Subscriptions;
import java.io.IOException;
import spacemadness.com.lunarconsole.C1401R;

public final class zzru extends zzry<zzru> {
    public String[] zzbhU;
    public int[] zzbhV;
    public byte[][] zzbhW;

    public zzru() {
        zzFn();
    }

    public static zzru zzz(byte[] bArr) throws zzsd {
        return (zzru) zzse.zza(new zzru(), bArr);
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof zzru) {
            zzru com_google_android_gms_internal_zzru = (zzru) obj;
            if (zzsc.equals(this.zzbhU, com_google_android_gms_internal_zzru.zzbhU) && zzsc.equals(this.zzbhV, com_google_android_gms_internal_zzru.zzbhV) && zzsc.zza(this.zzbhW, com_google_android_gms_internal_zzru.zzbhW)) {
                if (this.zzbik != null && !this.zzbik.isEmpty()) {
                    return this.zzbik.equals(com_google_android_gms_internal_zzru.zzbik);
                }
                if (com_google_android_gms_internal_zzru.zzbik == null || com_google_android_gms_internal_zzru.zzbik.isEmpty()) {
                    return true;
                }
            }
        }
        return false;
    }

    public int hashCode() {
        int hashCode = getClass().getName().hashCode();
        int hashCode2 = zzsc.hashCode(this.zzbhU);
        int hashCode3 = zzsc.hashCode(this.zzbhV);
        int zza = zzsc.zza(this.zzbhW);
        int hashCode4 = (this.zzbik == null || this.zzbik.isEmpty()) ? 0 : this.zzbik.hashCode();
        return hashCode4 + ((((((((hashCode + 527) * 31) + hashCode2) * 31) + hashCode3) * 31) + zza) * 31);
    }

    protected int zzB() {
        int i;
        int i2;
        int i3;
        int i4 = 0;
        int zzB = super.zzB();
        if (this.zzbhU == null || this.zzbhU.length <= 0) {
            i = zzB;
        } else {
            i2 = 0;
            i3 = 0;
            for (String str : this.zzbhU) {
                if (str != null) {
                    i3++;
                    i2 += zzrx.zzfA(str);
                }
            }
            i = (i2 + zzB) + (i3 * 1);
        }
        if (this.zzbhV != null && this.zzbhV.length > 0) {
            i2 = 0;
            for (int zzB2 : this.zzbhV) {
                i2 += zzrx.zzlJ(zzB2);
            }
            i = (i2 + i) + (this.zzbhV.length * 1);
        }
        if (this.zzbhW == null || this.zzbhW.length <= 0) {
            return i;
        }
        i2 = 0;
        for (byte[] bArr : this.zzbhW) {
            if (bArr != null) {
                i4++;
                i2 += zzrx.zzE(bArr);
            }
        }
        return (i2 + i) + (i4 * 1);
    }

    public zzru zzE(zzrw com_google_android_gms_internal_zzrw) throws IOException {
        while (true) {
            int zzFo = com_google_android_gms_internal_zzrw.zzFo();
            int zzc;
            Object obj;
            switch (zzFo) {
                case C1401R.styleable.AdsAttrs_adSize /*0*/:
                    break;
                case Subscriptions.MAX_QUEUE_LENGTH /*10*/:
                    zzc = zzsh.zzc(com_google_android_gms_internal_zzrw, 10);
                    zzFo = this.zzbhU == null ? 0 : this.zzbhU.length;
                    obj = new String[(zzc + zzFo)];
                    if (zzFo != 0) {
                        System.arraycopy(this.zzbhU, 0, obj, 0, zzFo);
                    }
                    while (zzFo < obj.length - 1) {
                        obj[zzFo] = com_google_android_gms_internal_zzrw.readString();
                        com_google_android_gms_internal_zzrw.zzFo();
                        zzFo++;
                    }
                    obj[zzFo] = com_google_android_gms_internal_zzrw.readString();
                    this.zzbhU = obj;
                    continue;
                case Place.TYPE_CAMPGROUND /*16*/:
                    zzc = zzsh.zzc(com_google_android_gms_internal_zzrw, 16);
                    zzFo = this.zzbhV == null ? 0 : this.zzbhV.length;
                    obj = new int[(zzc + zzFo)];
                    if (zzFo != 0) {
                        System.arraycopy(this.zzbhV, 0, obj, 0, zzFo);
                    }
                    while (zzFo < obj.length - 1) {
                        obj[zzFo] = com_google_android_gms_internal_zzrw.zzFr();
                        com_google_android_gms_internal_zzrw.zzFo();
                        zzFo++;
                    }
                    obj[zzFo] = com_google_android_gms_internal_zzrw.zzFr();
                    this.zzbhV = obj;
                    continue;
                case Place.TYPE_CAR_RENTAL /*18*/:
                    int zzlC = com_google_android_gms_internal_zzrw.zzlC(com_google_android_gms_internal_zzrw.zzFv());
                    zzc = com_google_android_gms_internal_zzrw.getPosition();
                    zzFo = 0;
                    while (com_google_android_gms_internal_zzrw.zzFA() > 0) {
                        com_google_android_gms_internal_zzrw.zzFr();
                        zzFo++;
                    }
                    com_google_android_gms_internal_zzrw.zzlE(zzc);
                    zzc = this.zzbhV == null ? 0 : this.zzbhV.length;
                    Object obj2 = new int[(zzFo + zzc)];
                    if (zzc != 0) {
                        System.arraycopy(this.zzbhV, 0, obj2, 0, zzc);
                    }
                    while (zzc < obj2.length) {
                        obj2[zzc] = com_google_android_gms_internal_zzrw.zzFr();
                        zzc++;
                    }
                    this.zzbhV = obj2;
                    com_google_android_gms_internal_zzrw.zzlD(zzlC);
                    continue;
                case Place.TYPE_CONVENIENCE_STORE /*26*/:
                    zzc = zzsh.zzc(com_google_android_gms_internal_zzrw, 26);
                    zzFo = this.zzbhW == null ? 0 : this.zzbhW.length;
                    obj = new byte[(zzc + zzFo)][];
                    if (zzFo != 0) {
                        System.arraycopy(this.zzbhW, 0, obj, 0, zzFo);
                    }
                    while (zzFo < obj.length - 1) {
                        obj[zzFo] = com_google_android_gms_internal_zzrw.readBytes();
                        com_google_android_gms_internal_zzrw.zzFo();
                        zzFo++;
                    }
                    obj[zzFo] = com_google_android_gms_internal_zzrw.readBytes();
                    this.zzbhW = obj;
                    continue;
                default:
                    if (!zza(com_google_android_gms_internal_zzrw, zzFo)) {
                        break;
                    }
                    continue;
            }
            return this;
        }
    }

    public zzru zzFn() {
        this.zzbhU = zzsh.zzbiC;
        this.zzbhV = zzsh.zzbix;
        this.zzbhW = zzsh.zzbiD;
        this.zzbik = null;
        this.zzbiv = -1;
        return this;
    }

    public void zza(zzrx com_google_android_gms_internal_zzrx) throws IOException {
        int i = 0;
        if (this.zzbhU != null && this.zzbhU.length > 0) {
            for (String str : this.zzbhU) {
                if (str != null) {
                    com_google_android_gms_internal_zzrx.zzb(1, str);
                }
            }
        }
        if (this.zzbhV != null && this.zzbhV.length > 0) {
            for (int zzy : this.zzbhV) {
                com_google_android_gms_internal_zzrx.zzy(2, zzy);
            }
        }
        if (this.zzbhW != null && this.zzbhW.length > 0) {
            while (i < this.zzbhW.length) {
                byte[] bArr = this.zzbhW[i];
                if (bArr != null) {
                    com_google_android_gms_internal_zzrx.zza(3, bArr);
                }
                i++;
            }
        }
        super.zza(com_google_android_gms_internal_zzrx);
    }

    public /* synthetic */ zzse zzb(zzrw com_google_android_gms_internal_zzrw) throws IOException {
        return zzE(com_google_android_gms_internal_zzrw);
    }
}
