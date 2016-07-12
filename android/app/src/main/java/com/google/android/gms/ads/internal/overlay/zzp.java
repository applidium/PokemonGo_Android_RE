package com.google.android.gms.ads.internal.overlay;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Color;
import android.os.Bundle;
import android.support.v4.view.accessibility.AccessibilityNodeInfoCompat;
import android.text.TextUtils;
import android.view.TextureView;
import com.google.android.gms.ads.internal.util.client.VersionInfoParcel;
import com.google.android.gms.internal.zzby;
import com.google.android.gms.internal.zzcc;
import com.google.android.gms.internal.zzce;
import com.google.android.gms.internal.zzcg;
import com.google.android.gms.internal.zzig;
import com.google.android.gms.internal.zzig.zza;
import com.google.android.gms.internal.zzig.zzb;
import com.voxelbusters.nativeplugins.defines.Keys;
import java.util.concurrent.TimeUnit;

public class zzp {
    private final Context mContext;
    private final String zzBY;
    private final VersionInfoParcel zzBZ;
    private final zzce zzCa;
    private final zzcg zzCb;
    private final zzig zzCc;
    private final long[] zzCd;
    private final String[] zzCe;
    private zzce zzCf;
    private zzce zzCg;
    private zzce zzCh;
    private zzce zzCi;
    private boolean zzCj;
    private zzi zzCk;
    private boolean zzCl;
    private boolean zzCm;
    private long zzCn;

    public zzp(Context context, VersionInfoParcel versionInfoParcel, String str, zzcg com_google_android_gms_internal_zzcg, zzce com_google_android_gms_internal_zzce) {
        this.zzCc = new zzb().zza("min_1", Double.MIN_VALUE, 1.0d).zza("1_5", 1.0d, 5.0d).zza("5_10", 5.0d, 10.0d).zza("10_20", 10.0d, 20.0d).zza("20_30", 20.0d, 30.0d).zza("30_max", 30.0d, Double.MAX_VALUE).zzgK();
        this.zzCn = -1;
        this.mContext = context;
        this.zzBZ = versionInfoParcel;
        this.zzBY = str;
        this.zzCb = com_google_android_gms_internal_zzcg;
        this.zzCa = com_google_android_gms_internal_zzce;
        String str2 = (String) zzby.zzuF.get();
        if (str2 == null) {
            this.zzCe = new String[0];
            this.zzCd = new long[0];
            return;
        }
        String[] split = TextUtils.split(str2, ",");
        this.zzCe = new String[split.length];
        this.zzCd = new long[split.length];
        for (int i = 0; i < split.length; i++) {
            try {
                this.zzCd[i] = Long.parseLong(split[i]);
            } catch (Throwable e) {
                com.google.android.gms.ads.internal.util.client.zzb.zzd("Unable to parse frame hash target time number.", e);
                this.zzCd[i] = -1;
            }
        }
    }

    private void zzc(zzi com_google_android_gms_ads_internal_overlay_zzi) {
        long longValue = ((Long) zzby.zzuG.get()).longValue();
        long currentPosition = (long) com_google_android_gms_ads_internal_overlay_zzi.getCurrentPosition();
        int i = 0;
        while (i < this.zzCe.length) {
            if (this.zzCe[i] == null && longValue > Math.abs(currentPosition - this.zzCd[i])) {
                this.zzCe[i] = zza((TextureView) com_google_android_gms_ads_internal_overlay_zzi);
                return;
            }
            i++;
        }
    }

    private void zzfd() {
        if (this.zzCh != null && this.zzCi == null) {
            zzcc.zza(this.zzCb, this.zzCh, "vff");
            zzcc.zza(this.zzCb, this.zzCa, "vtt");
            this.zzCi = zzcc.zzb(this.zzCb);
        }
        long nanoTime = com.google.android.gms.ads.internal.zzp.zzbz().nanoTime();
        if (this.zzCj && this.zzCm && this.zzCn != -1) {
            this.zzCc.zza(((double) TimeUnit.SECONDS.toNanos(1)) / ((double) (nanoTime - this.zzCn)));
        }
        this.zzCm = this.zzCj;
        this.zzCn = nanoTime;
    }

    public void onStop() {
        if (((Boolean) zzby.zzuE.get()).booleanValue() && !this.zzCl) {
            Bundle bundle = new Bundle();
            bundle.putString(Keys.TYPE, "native-player-metrics");
            bundle.putString("request", this.zzBY);
            bundle.putString("player", this.zzCk.zzer());
            for (zza com_google_android_gms_internal_zzig_zza : this.zzCc.getBuckets()) {
                bundle.putString("fps_c_" + com_google_android_gms_internal_zzig_zza.name, Integer.toString(com_google_android_gms_internal_zzig_zza.count));
                bundle.putString("fps_p_" + com_google_android_gms_internal_zzig_zza.name, Double.toString(com_google_android_gms_internal_zzig_zza.zzIV));
            }
            for (int i = 0; i < this.zzCd.length; i++) {
                String str = this.zzCe[i];
                if (str != null) {
                    bundle.putString("fh_" + Long.valueOf(this.zzCd[i]), str);
                }
            }
            com.google.android.gms.ads.internal.zzp.zzbv().zza(this.mContext, this.zzBZ.zzJu, "gmob-apps", bundle, true);
            this.zzCl = true;
        }
    }

    String zza(TextureView textureView) {
        Bitmap bitmap = textureView.getBitmap(8, 8);
        long j = 0;
        long j2 = 63;
        int i = 0;
        while (i < 8) {
            int i2 = 0;
            long j3 = j;
            j = j2;
            while (i2 < 8) {
                int pixel = bitmap.getPixel(i2, i);
                j3 |= (Color.green(pixel) + (Color.blue(pixel) + Color.red(pixel)) > AccessibilityNodeInfoCompat.ACTION_CLEAR_ACCESSIBILITY_FOCUS ? 1 : 0) << ((int) j);
                i2++;
                j--;
            }
            i++;
            j2 = j;
            j = j3;
        }
        return String.format("%016X", new Object[]{Long.valueOf(j)});
    }

    public void zza(zzi com_google_android_gms_ads_internal_overlay_zzi) {
        zzcc.zza(this.zzCb, this.zzCa, "vpc");
        this.zzCf = zzcc.zzb(this.zzCb);
        this.zzCk = com_google_android_gms_ads_internal_overlay_zzi;
    }

    public void zzb(zzi com_google_android_gms_ads_internal_overlay_zzi) {
        zzfd();
        zzc(com_google_android_gms_ads_internal_overlay_zzi);
    }

    public void zzeR() {
        if (this.zzCf != null && this.zzCg == null) {
            zzcc.zza(this.zzCb, this.zzCf, "vfr");
            this.zzCg = zzcc.zzb(this.zzCb);
        }
    }

    public void zzfe() {
        this.zzCj = true;
        if (this.zzCg != null && this.zzCh == null) {
            zzcc.zza(this.zzCb, this.zzCg, "vfp");
            this.zzCh = zzcc.zzb(this.zzCb);
        }
    }

    public void zzff() {
        this.zzCj = false;
    }
}
