package com.google.android.gms.internal;

import android.text.TextUtils;
import com.google.android.gms.ads.internal.client.zzl;
import com.google.android.gms.ads.internal.util.client.zza;
import com.google.android.gms.common.api.Releasable;
import com.google.android.gms.location.places.Place;
import com.nianticproject.holoholo.sfida.SfidaMessage;
import com.nianticproject.holoholo.sfida.constants.BluetoothGattSupport;
import com.voxelbusters.nativeplugins.defines.Keys;
import com.voxelbusters.nativeplugins.defines.Keys.GameServices;
import java.util.HashMap;
import java.util.Map;
import spacemadness.com.lunarconsole.C1401R;

@zzgr
public abstract class zzdv implements Releasable {
    protected zziz zzoM;

    /* renamed from: com.google.android.gms.internal.zzdv.1 */
    class C05071 implements Runnable {
        final /* synthetic */ String zzyc;
        final /* synthetic */ String zzyd;
        final /* synthetic */ int zzye;
        final /* synthetic */ int zzyf;
        final /* synthetic */ boolean zzyg;
        final /* synthetic */ zzdv zzyh;

        C05071(zzdv com_google_android_gms_internal_zzdv, String str, String str2, int i, int i2, boolean z) {
            this.zzyh = com_google_android_gms_internal_zzdv;
            this.zzyc = str;
            this.zzyd = str2;
            this.zzye = i;
            this.zzyf = i2;
            this.zzyg = z;
        }

        public void run() {
            Map hashMap = new HashMap();
            hashMap.put(SendEvent.EVENT, "precacheProgress");
            hashMap.put("src", this.zzyc);
            hashMap.put("cachedSrc", this.zzyd);
            hashMap.put("bytesLoaded", Integer.toString(this.zzye));
            hashMap.put("totalBytes", Integer.toString(this.zzyf));
            hashMap.put("cacheReady", this.zzyg ? "1" : "0");
            this.zzyh.zzoM.zzb("onPrecacheEvent", hashMap);
        }
    }

    /* renamed from: com.google.android.gms.internal.zzdv.2 */
    class C05082 implements Runnable {
        final /* synthetic */ String zzyc;
        final /* synthetic */ String zzyd;
        final /* synthetic */ int zzyf;
        final /* synthetic */ zzdv zzyh;

        C05082(zzdv com_google_android_gms_internal_zzdv, String str, String str2, int i) {
            this.zzyh = com_google_android_gms_internal_zzdv;
            this.zzyc = str;
            this.zzyd = str2;
            this.zzyf = i;
        }

        public void run() {
            Map hashMap = new HashMap();
            hashMap.put(SendEvent.EVENT, "precacheComplete");
            hashMap.put("src", this.zzyc);
            hashMap.put("cachedSrc", this.zzyd);
            hashMap.put("totalBytes", Integer.toString(this.zzyf));
            this.zzyh.zzoM.zzb("onPrecacheEvent", hashMap);
        }
    }

    /* renamed from: com.google.android.gms.internal.zzdv.3 */
    class C05093 implements Runnable {
        final /* synthetic */ String zzyc;
        final /* synthetic */ String zzyd;
        final /* synthetic */ zzdv zzyh;
        final /* synthetic */ String zzyi;
        final /* synthetic */ String zzyj;

        C05093(zzdv com_google_android_gms_internal_zzdv, String str, String str2, String str3, String str4) {
            this.zzyh = com_google_android_gms_internal_zzdv;
            this.zzyc = str;
            this.zzyd = str2;
            this.zzyi = str3;
            this.zzyj = str4;
        }

        public void run() {
            Map hashMap = new HashMap();
            hashMap.put(SendEvent.EVENT, "precacheCanceled");
            hashMap.put("src", this.zzyc);
            if (!TextUtils.isEmpty(this.zzyd)) {
                hashMap.put("cachedSrc", this.zzyd);
            }
            hashMap.put(Keys.TYPE, this.zzyh.zzad(this.zzyi));
            hashMap.put("reason", this.zzyi);
            if (!TextUtils.isEmpty(this.zzyj)) {
                hashMap.put(Keys.MESSAGE, this.zzyj);
            }
            this.zzyh.zzoM.zzb("onPrecacheEvent", hashMap);
        }
    }

    public zzdv(zziz com_google_android_gms_internal_zziz) {
        this.zzoM = com_google_android_gms_internal_zziz;
    }

    private String zzad(String str) {
        String str2 = "internal";
        Object obj = -1;
        switch (str.hashCode()) {
            case -1396664534:
                if (str.equals("badUrl")) {
                    obj = 6;
                    break;
                }
                break;
            case -1347010958:
                if (str.equals("inProgress")) {
                    obj = 2;
                    break;
                }
                break;
            case -918817863:
                if (str.equals("downloadTimeout")) {
                    obj = 7;
                    break;
                }
                break;
            case -659376217:
                if (str.equals("contentLengthMissing")) {
                    obj = 3;
                    break;
                }
                break;
            case -642208130:
                if (str.equals("playerFailed")) {
                    obj = 1;
                    break;
                }
                break;
            case -354048396:
                if (str.equals("sizeExceeded")) {
                    obj = 8;
                    break;
                }
                break;
            case -32082395:
                if (str.equals("externalAbort")) {
                    obj = 9;
                    break;
                }
                break;
            case 96784904:
                if (str.equals(GameServices.ERROR)) {
                    obj = null;
                    break;
                }
                break;
            case 580119100:
                if (str.equals("expireFailed")) {
                    obj = 5;
                    break;
                }
                break;
            case 725497484:
                if (str.equals("noCacheDir")) {
                    obj = 4;
                    break;
                }
                break;
        }
        switch (obj) {
            case C1401R.styleable.AdsAttrs_adSize /*0*/:
            case C1401R.styleable.LoadingImageView_imageAspectRatio /*1*/:
            case C1401R.styleable.LoadingImageView_circleCrop /*2*/:
            case SfidaMessage.ACTIVITY_BYTE_LENGTH /*3*/:
                return "internal";
            case Place.TYPE_AQUARIUM /*4*/:
            case Place.TYPE_ART_GALLERY /*5*/:
                return "io";
            case Place.TYPE_ATM /*6*/:
            case Place.TYPE_BAKERY /*7*/:
                return "network";
            case BluetoothGattSupport.GATT_INSUF_AUTHENTICATION /*8*/:
            case Place.TYPE_BAR /*9*/:
                return "policy";
            default:
                return str2;
        }
    }

    public abstract void abort();

    public void release() {
    }

    protected void zza(String str, String str2, int i) {
        zza.zzJt.post(new C05082(this, str, str2, i));
    }

    protected void zza(String str, String str2, int i, int i2, boolean z) {
        zza.zzJt.post(new C05071(this, str, str2, i, i2, z));
    }

    protected void zza(String str, String str2, String str3, String str4) {
        zza.zzJt.post(new C05093(this, str, str2, str3, str4));
    }

    public abstract boolean zzab(String str);

    protected String zzac(String str) {
        return zzl.zzcF().zzaE(str);
    }
}
