package com.google.android.gms.internal;

import android.app.Activity;
import android.text.TextUtils;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.PopupWindow;
import android.widget.RelativeLayout;
import com.google.android.gms.ads.internal.client.AdSizeParcel;
import com.google.android.gms.ads.internal.client.zzl;
import com.google.android.gms.ads.internal.util.client.zzb;
import com.google.android.gms.ads.internal.zzp;
import com.google.android.gms.location.places.Place;
import com.nianticproject.holoholo.sfida.SfidaMessage;
import com.squareup.otto.Bus;
import java.util.Arrays;
import java.util.HashSet;
import java.util.Map;
import java.util.Set;
import spacemadness.com.lunarconsole.C1401R;

@zzgr
public class zzfc extends zzfh {
    static final Set<String> zzAb;
    private String zzAc;
    private boolean zzAd;
    private int zzAe;
    private int zzAf;
    private int zzAg;
    private int zzAh;
    private final Activity zzAi;
    private ImageView zzAj;
    private LinearLayout zzAk;
    private zzfi zzAl;
    private PopupWindow zzAm;
    private RelativeLayout zzAn;
    private ViewGroup zzAo;
    private int zznQ;
    private int zznR;
    private final zziz zzoM;
    private final Object zzpd;
    private AdSizeParcel zzzm;

    /* renamed from: com.google.android.gms.internal.zzfc.1 */
    class C05421 implements OnClickListener {
        final /* synthetic */ zzfc zzAp;

        C05421(zzfc com_google_android_gms_internal_zzfc) {
            this.zzAp = com_google_android_gms_internal_zzfc;
        }

        public void onClick(View view) {
            this.zzAp.zzn(true);
        }
    }

    static {
        zzAb = new HashSet(Arrays.asList(new String[]{"top-left", "top-right", "top-center", "center", "bottom-left", "bottom-right", "bottom-center"}));
    }

    public zzfc(zziz com_google_android_gms_internal_zziz, zzfi com_google_android_gms_internal_zzfi) {
        super(com_google_android_gms_internal_zziz, "resize");
        this.zzAc = "top-right";
        this.zzAd = true;
        this.zzAe = 0;
        this.zzAf = 0;
        this.zznR = -1;
        this.zzAg = 0;
        this.zzAh = 0;
        this.zznQ = -1;
        this.zzpd = new Object();
        this.zzoM = com_google_android_gms_internal_zziz;
        this.zzAi = com_google_android_gms_internal_zziz.zzgZ();
        this.zzAl = com_google_android_gms_internal_zzfi;
    }

    private int[] zzee() {
        if (!zzeg()) {
            return null;
        }
        if (this.zzAd) {
            return new int[]{this.zzAe + this.zzAg, this.zzAf + this.zzAh};
        }
        int[] zzh = zzp.zzbv().zzh(this.zzAi);
        int[] zzj = zzp.zzbv().zzj(this.zzAi);
        int i = zzh[0];
        int i2 = this.zzAe + this.zzAg;
        int i3 = this.zzAf + this.zzAh;
        i = i2 < 0 ? 0 : this.zznQ + i2 > i ? i - this.zznQ : i2;
        if (i3 < zzj[0]) {
            i3 = zzj[0];
        } else if (this.zznR + i3 > zzj[1]) {
            i3 = zzj[1] - this.zznR;
        }
        return new int[]{i, i3};
    }

    private void zzf(Map<String, String> map) {
        if (!TextUtils.isEmpty((CharSequence) map.get("width"))) {
            this.zznQ = zzp.zzbv().zzaA((String) map.get("width"));
        }
        if (!TextUtils.isEmpty((CharSequence) map.get("height"))) {
            this.zznR = zzp.zzbv().zzaA((String) map.get("height"));
        }
        if (!TextUtils.isEmpty((CharSequence) map.get("offsetX"))) {
            this.zzAg = zzp.zzbv().zzaA((String) map.get("offsetX"));
        }
        if (!TextUtils.isEmpty((CharSequence) map.get("offsetY"))) {
            this.zzAh = zzp.zzbv().zzaA((String) map.get("offsetY"));
        }
        if (!TextUtils.isEmpty((CharSequence) map.get("allowOffscreen"))) {
            this.zzAd = Boolean.parseBoolean((String) map.get("allowOffscreen"));
        }
        String str = (String) map.get("customClosePosition");
        if (!TextUtils.isEmpty(str)) {
            this.zzAc = str;
        }
    }

    public void zza(int i, int i2, boolean z) {
        synchronized (this.zzpd) {
            this.zzAe = i;
            this.zzAf = i2;
            if (this.zzAm != null && z) {
                int[] zzee = zzee();
                if (zzee != null) {
                    this.zzAm.update(zzl.zzcF().zzb(this.zzAi, zzee[0]), zzl.zzcF().zzb(this.zzAi, zzee[1]), this.zzAm.getWidth(), this.zzAm.getHeight());
                    zzc(zzee[0], zzee[1]);
                } else {
                    zzn(true);
                }
            }
        }
    }

    void zzb(int i, int i2) {
        if (this.zzAl != null) {
            this.zzAl.zza(i, i2, this.zznQ, this.zznR);
        }
    }

    void zzc(int i, int i2) {
        zzb(i, i2 - zzp.zzbv().zzj(this.zzAi)[0], this.zznQ, this.zznR);
    }

    public void zzd(int i, int i2) {
        this.zzAe = i;
        this.zzAf = i2;
    }

    boolean zzed() {
        return this.zznQ > -1 && this.zznR > -1;
    }

    public boolean zzef() {
        boolean z;
        synchronized (this.zzpd) {
            z = this.zzAm != null;
        }
        return z;
    }

    boolean zzeg() {
        int[] zzh = zzp.zzbv().zzh(this.zzAi);
        int[] zzj = zzp.zzbv().zzj(this.zzAi);
        int i = zzh[0];
        int i2 = zzh[1];
        if (this.zznQ < 50 || this.zznQ > i) {
            zzb.zzaH("Width is too small or too large.");
            return false;
        } else if (this.zznR < 50 || this.zznR > i2) {
            zzb.zzaH("Height is too small or too large.");
            return false;
        } else if (this.zznR == i2 && this.zznQ == i) {
            zzb.zzaH("Cannot resize to a full-screen ad.");
            return false;
        } else {
            if (this.zzAd) {
                String str = this.zzAc;
                boolean z = true;
                switch (str.hashCode()) {
                    case -1364013995:
                        if (str.equals("center")) {
                            z = true;
                            break;
                        }
                        break;
                    case -1012429441:
                        if (str.equals("top-left")) {
                            z = false;
                            break;
                        }
                        break;
                    case -655373719:
                        if (str.equals("bottom-left")) {
                            z = true;
                            break;
                        }
                        break;
                    case 1163912186:
                        if (str.equals("bottom-right")) {
                            z = true;
                            break;
                        }
                        break;
                    case 1288627767:
                        if (str.equals("bottom-center")) {
                            z = true;
                            break;
                        }
                        break;
                    case 1755462605:
                        if (str.equals("top-center")) {
                            z = true;
                            break;
                        }
                        break;
                }
                int i3;
                switch (z) {
                    case C1401R.styleable.AdsAttrs_adSize /*0*/:
                        i2 = this.zzAe + this.zzAg;
                        i3 = this.zzAf + this.zzAh;
                        break;
                    case C1401R.styleable.LoadingImageView_imageAspectRatio /*1*/:
                        i2 = ((this.zzAe + this.zzAg) + (this.zznQ / 2)) - 25;
                        i3 = this.zzAf + this.zzAh;
                        break;
                    case C1401R.styleable.LoadingImageView_circleCrop /*2*/:
                        i2 = ((this.zzAe + this.zzAg) + (this.zznQ / 2)) - 25;
                        i3 = ((this.zzAf + this.zzAh) + (this.zznR / 2)) - 25;
                        break;
                    case SfidaMessage.ACTIVITY_BYTE_LENGTH /*3*/:
                        i2 = this.zzAe + this.zzAg;
                        i3 = ((this.zzAf + this.zzAh) + this.zznR) - 50;
                        break;
                    case Place.TYPE_AQUARIUM /*4*/:
                        i2 = ((this.zzAe + this.zzAg) + (this.zznQ / 2)) - 25;
                        i3 = ((this.zzAf + this.zzAh) + this.zznR) - 50;
                        break;
                    case Place.TYPE_ART_GALLERY /*5*/:
                        i2 = ((this.zzAe + this.zzAg) + this.zznQ) - 50;
                        i3 = ((this.zzAf + this.zzAh) + this.zznR) - 50;
                        break;
                    default:
                        i2 = ((this.zzAe + this.zzAg) + this.zznQ) - 50;
                        i3 = this.zzAf + this.zzAh;
                        break;
                }
                if (i2 < 0 || i2 + 50 > i || r3 < zzj[0] || r3 + 50 > zzj[1]) {
                    return false;
                }
            }
            return true;
        }
    }

    /* JADX WARNING: inconsistent code. */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public void zzg(java.util.Map<java.lang.String, java.lang.String> r13) {
        /*
        r12 = this;
        r3 = -1;
        r5 = 1;
        r4 = 0;
        r6 = r12.zzpd;
        monitor-enter(r6);
        r1 = r12.zzAi;	 Catch:{ all -> 0x0020 }
        if (r1 != 0) goto L_0x0011;
    L_0x000a:
        r1 = "Not an activity context. Cannot resize.";
        r12.zzak(r1);	 Catch:{ all -> 0x0020 }
        monitor-exit(r6);	 Catch:{ all -> 0x0020 }
    L_0x0010:
        return;
    L_0x0011:
        r1 = r12.zzoM;	 Catch:{ all -> 0x0020 }
        r1 = r1.zzaN();	 Catch:{ all -> 0x0020 }
        if (r1 != 0) goto L_0x0023;
    L_0x0019:
        r1 = "Webview is not yet available, size is not set.";
        r12.zzak(r1);	 Catch:{ all -> 0x0020 }
        monitor-exit(r6);	 Catch:{ all -> 0x0020 }
        goto L_0x0010;
    L_0x0020:
        r1 = move-exception;
        monitor-exit(r6);	 Catch:{ all -> 0x0020 }
        throw r1;
    L_0x0023:
        r1 = r12.zzoM;	 Catch:{ all -> 0x0020 }
        r1 = r1.zzaN();	 Catch:{ all -> 0x0020 }
        r1 = r1.zztf;	 Catch:{ all -> 0x0020 }
        if (r1 == 0) goto L_0x0034;
    L_0x002d:
        r1 = "Is interstitial. Cannot resize an interstitial.";
        r12.zzak(r1);	 Catch:{ all -> 0x0020 }
        monitor-exit(r6);	 Catch:{ all -> 0x0020 }
        goto L_0x0010;
    L_0x0034:
        r1 = r12.zzoM;	 Catch:{ all -> 0x0020 }
        r1 = r1.zzhi();	 Catch:{ all -> 0x0020 }
        if (r1 == 0) goto L_0x0043;
    L_0x003c:
        r1 = "Cannot resize an expanded banner.";
        r12.zzak(r1);	 Catch:{ all -> 0x0020 }
        monitor-exit(r6);	 Catch:{ all -> 0x0020 }
        goto L_0x0010;
    L_0x0043:
        r12.zzf(r13);	 Catch:{ all -> 0x0020 }
        r1 = r12.zzed();	 Catch:{ all -> 0x0020 }
        if (r1 != 0) goto L_0x0053;
    L_0x004c:
        r1 = "Invalid width and height options. Cannot resize.";
        r12.zzak(r1);	 Catch:{ all -> 0x0020 }
        monitor-exit(r6);	 Catch:{ all -> 0x0020 }
        goto L_0x0010;
    L_0x0053:
        r1 = r12.zzAi;	 Catch:{ all -> 0x0020 }
        r7 = r1.getWindow();	 Catch:{ all -> 0x0020 }
        if (r7 == 0) goto L_0x0061;
    L_0x005b:
        r1 = r7.getDecorView();	 Catch:{ all -> 0x0020 }
        if (r1 != 0) goto L_0x0068;
    L_0x0061:
        r1 = "Activity context is not ready, cannot get window or decor view.";
        r12.zzak(r1);	 Catch:{ all -> 0x0020 }
        monitor-exit(r6);	 Catch:{ all -> 0x0020 }
        goto L_0x0010;
    L_0x0068:
        r8 = r12.zzee();	 Catch:{ all -> 0x0020 }
        if (r8 != 0) goto L_0x0075;
    L_0x006e:
        r1 = "Resize location out of screen or close button is not visible.";
        r12.zzak(r1);	 Catch:{ all -> 0x0020 }
        monitor-exit(r6);	 Catch:{ all -> 0x0020 }
        goto L_0x0010;
    L_0x0075:
        r1 = com.google.android.gms.ads.internal.client.zzl.zzcF();	 Catch:{ all -> 0x0020 }
        r2 = r12.zzAi;	 Catch:{ all -> 0x0020 }
        r9 = r12.zznQ;	 Catch:{ all -> 0x0020 }
        r9 = r1.zzb(r2, r9);	 Catch:{ all -> 0x0020 }
        r1 = com.google.android.gms.ads.internal.client.zzl.zzcF();	 Catch:{ all -> 0x0020 }
        r2 = r12.zzAi;	 Catch:{ all -> 0x0020 }
        r10 = r12.zznR;	 Catch:{ all -> 0x0020 }
        r10 = r1.zzb(r2, r10);	 Catch:{ all -> 0x0020 }
        r1 = r12.zzoM;	 Catch:{ all -> 0x0020 }
        r1 = r1.getView();	 Catch:{ all -> 0x0020 }
        r2 = r1.getParent();	 Catch:{ all -> 0x0020 }
        if (r2 == 0) goto L_0x01d5;
    L_0x0099:
        r1 = r2 instanceof android.view.ViewGroup;	 Catch:{ all -> 0x0020 }
        if (r1 == 0) goto L_0x01d5;
    L_0x009d:
        r0 = r2;
        r0 = (android.view.ViewGroup) r0;	 Catch:{ all -> 0x0020 }
        r1 = r0;
        r11 = r12.zzoM;	 Catch:{ all -> 0x0020 }
        r11 = r11.getView();	 Catch:{ all -> 0x0020 }
        r1.removeView(r11);	 Catch:{ all -> 0x0020 }
        r1 = r12.zzAm;	 Catch:{ all -> 0x0020 }
        if (r1 != 0) goto L_0x01ce;
    L_0x00ae:
        r2 = (android.view.ViewGroup) r2;	 Catch:{ all -> 0x0020 }
        r12.zzAo = r2;	 Catch:{ all -> 0x0020 }
        r1 = com.google.android.gms.ads.internal.zzp.zzbv();	 Catch:{ all -> 0x0020 }
        r2 = r12.zzoM;	 Catch:{ all -> 0x0020 }
        r2 = r2.getView();	 Catch:{ all -> 0x0020 }
        r1 = r1.zzk(r2);	 Catch:{ all -> 0x0020 }
        r2 = new android.widget.ImageView;	 Catch:{ all -> 0x0020 }
        r11 = r12.zzAi;	 Catch:{ all -> 0x0020 }
        r2.<init>(r11);	 Catch:{ all -> 0x0020 }
        r12.zzAj = r2;	 Catch:{ all -> 0x0020 }
        r2 = r12.zzAj;	 Catch:{ all -> 0x0020 }
        r2.setImageBitmap(r1);	 Catch:{ all -> 0x0020 }
        r1 = r12.zzoM;	 Catch:{ all -> 0x0020 }
        r1 = r1.zzaN();	 Catch:{ all -> 0x0020 }
        r12.zzzm = r1;	 Catch:{ all -> 0x0020 }
        r1 = r12.zzAo;	 Catch:{ all -> 0x0020 }
        r2 = r12.zzAj;	 Catch:{ all -> 0x0020 }
        r1.addView(r2);	 Catch:{ all -> 0x0020 }
    L_0x00dd:
        r1 = new android.widget.RelativeLayout;	 Catch:{ all -> 0x0020 }
        r2 = r12.zzAi;	 Catch:{ all -> 0x0020 }
        r1.<init>(r2);	 Catch:{ all -> 0x0020 }
        r12.zzAn = r1;	 Catch:{ all -> 0x0020 }
        r1 = r12.zzAn;	 Catch:{ all -> 0x0020 }
        r2 = 0;
        r1.setBackgroundColor(r2);	 Catch:{ all -> 0x0020 }
        r1 = r12.zzAn;	 Catch:{ all -> 0x0020 }
        r2 = new android.view.ViewGroup$LayoutParams;	 Catch:{ all -> 0x0020 }
        r2.<init>(r9, r10);	 Catch:{ all -> 0x0020 }
        r1.setLayoutParams(r2);	 Catch:{ all -> 0x0020 }
        r1 = com.google.android.gms.ads.internal.zzp.zzbv();	 Catch:{ all -> 0x0020 }
        r2 = r12.zzAn;	 Catch:{ all -> 0x0020 }
        r11 = 0;
        r1 = r1.zza(r2, r9, r10, r11);	 Catch:{ all -> 0x0020 }
        r12.zzAm = r1;	 Catch:{ all -> 0x0020 }
        r1 = r12.zzAm;	 Catch:{ all -> 0x0020 }
        r2 = 1;
        r1.setOutsideTouchable(r2);	 Catch:{ all -> 0x0020 }
        r1 = r12.zzAm;	 Catch:{ all -> 0x0020 }
        r2 = 1;
        r1.setTouchable(r2);	 Catch:{ all -> 0x0020 }
        r2 = r12.zzAm;	 Catch:{ all -> 0x0020 }
        r1 = r12.zzAd;	 Catch:{ all -> 0x0020 }
        if (r1 != 0) goto L_0x01dd;
    L_0x0115:
        r1 = r5;
    L_0x0116:
        r2.setClippingEnabled(r1);	 Catch:{ all -> 0x0020 }
        r1 = r12.zzAn;	 Catch:{ all -> 0x0020 }
        r2 = r12.zzoM;	 Catch:{ all -> 0x0020 }
        r2 = r2.getView();	 Catch:{ all -> 0x0020 }
        r9 = -1;
        r10 = -1;
        r1.addView(r2, r9, r10);	 Catch:{ all -> 0x0020 }
        r1 = new android.widget.LinearLayout;	 Catch:{ all -> 0x0020 }
        r2 = r12.zzAi;	 Catch:{ all -> 0x0020 }
        r1.<init>(r2);	 Catch:{ all -> 0x0020 }
        r12.zzAk = r1;	 Catch:{ all -> 0x0020 }
        r2 = new android.widget.RelativeLayout$LayoutParams;	 Catch:{ all -> 0x0020 }
        r1 = com.google.android.gms.ads.internal.client.zzl.zzcF();	 Catch:{ all -> 0x0020 }
        r9 = r12.zzAi;	 Catch:{ all -> 0x0020 }
        r10 = 50;
        r1 = r1.zzb(r9, r10);	 Catch:{ all -> 0x0020 }
        r9 = com.google.android.gms.ads.internal.client.zzl.zzcF();	 Catch:{ all -> 0x0020 }
        r10 = r12.zzAi;	 Catch:{ all -> 0x0020 }
        r11 = 50;
        r9 = r9.zzb(r10, r11);	 Catch:{ all -> 0x0020 }
        r2.<init>(r1, r9);	 Catch:{ all -> 0x0020 }
        r1 = r12.zzAc;	 Catch:{ all -> 0x0020 }
        r9 = r1.hashCode();	 Catch:{ all -> 0x0020 }
        switch(r9) {
            case -1364013995: goto L_0x01f6;
            case -1012429441: goto L_0x01e0;
            case -655373719: goto L_0x0201;
            case 1163912186: goto L_0x0217;
            case 1288627767: goto L_0x020c;
            case 1755462605: goto L_0x01eb;
            default: goto L_0x0155;
        };	 Catch:{ all -> 0x0020 }
    L_0x0155:
        r1 = r3;
    L_0x0156:
        switch(r1) {
            case 0: goto L_0x0222;
            case 1: goto L_0x022e;
            case 2: goto L_0x023a;
            case 3: goto L_0x0241;
            case 4: goto L_0x024d;
            case 5: goto L_0x0259;
            default: goto L_0x0159;
        };	 Catch:{ all -> 0x0020 }
    L_0x0159:
        r1 = 10;
        r2.addRule(r1);	 Catch:{ all -> 0x0020 }
        r1 = 11;
        r2.addRule(r1);	 Catch:{ all -> 0x0020 }
    L_0x0163:
        r1 = r12.zzAk;	 Catch:{ all -> 0x0020 }
        r3 = new com.google.android.gms.internal.zzfc$1;	 Catch:{ all -> 0x0020 }
        r3.<init>(r12);	 Catch:{ all -> 0x0020 }
        r1.setOnClickListener(r3);	 Catch:{ all -> 0x0020 }
        r1 = r12.zzAk;	 Catch:{ all -> 0x0020 }
        r3 = "Close button";
        r1.setContentDescription(r3);	 Catch:{ all -> 0x0020 }
        r1 = r12.zzAn;	 Catch:{ all -> 0x0020 }
        r3 = r12.zzAk;	 Catch:{ all -> 0x0020 }
        r1.addView(r3, r2);	 Catch:{ all -> 0x0020 }
        r1 = r12.zzAm;	 Catch:{ RuntimeException -> 0x0265 }
        r2 = r7.getDecorView();	 Catch:{ RuntimeException -> 0x0265 }
        r3 = 0;
        r4 = com.google.android.gms.ads.internal.client.zzl.zzcF();	 Catch:{ RuntimeException -> 0x0265 }
        r5 = r12.zzAi;	 Catch:{ RuntimeException -> 0x0265 }
        r7 = 0;
        r7 = r8[r7];	 Catch:{ RuntimeException -> 0x0265 }
        r4 = r4.zzb(r5, r7);	 Catch:{ RuntimeException -> 0x0265 }
        r5 = com.google.android.gms.ads.internal.client.zzl.zzcF();	 Catch:{ RuntimeException -> 0x0265 }
        r7 = r12.zzAi;	 Catch:{ RuntimeException -> 0x0265 }
        r9 = 1;
        r9 = r8[r9];	 Catch:{ RuntimeException -> 0x0265 }
        r5 = r5.zzb(r7, r9);	 Catch:{ RuntimeException -> 0x0265 }
        r1.showAtLocation(r2, r3, r4, r5);	 Catch:{ RuntimeException -> 0x0265 }
        r1 = 0;
        r1 = r8[r1];	 Catch:{ all -> 0x0020 }
        r2 = 1;
        r2 = r8[r2];	 Catch:{ all -> 0x0020 }
        r12.zzb(r1, r2);	 Catch:{ all -> 0x0020 }
        r1 = r12.zzoM;	 Catch:{ all -> 0x0020 }
        r2 = new com.google.android.gms.ads.internal.client.AdSizeParcel;	 Catch:{ all -> 0x0020 }
        r3 = r12.zzAi;	 Catch:{ all -> 0x0020 }
        r4 = new com.google.android.gms.ads.AdSize;	 Catch:{ all -> 0x0020 }
        r5 = r12.zznQ;	 Catch:{ all -> 0x0020 }
        r7 = r12.zznR;	 Catch:{ all -> 0x0020 }
        r4.<init>(r5, r7);	 Catch:{ all -> 0x0020 }
        r2.<init>(r3, r4);	 Catch:{ all -> 0x0020 }
        r1.zza(r2);	 Catch:{ all -> 0x0020 }
        r1 = 0;
        r1 = r8[r1];	 Catch:{ all -> 0x0020 }
        r2 = 1;
        r2 = r8[r2];	 Catch:{ all -> 0x0020 }
        r12.zzc(r1, r2);	 Catch:{ all -> 0x0020 }
        r1 = "resized";
        r12.zzam(r1);	 Catch:{ all -> 0x0020 }
        monitor-exit(r6);	 Catch:{ all -> 0x0020 }
        goto L_0x0010;
    L_0x01ce:
        r1 = r12.zzAm;	 Catch:{ all -> 0x0020 }
        r1.dismiss();	 Catch:{ all -> 0x0020 }
        goto L_0x00dd;
    L_0x01d5:
        r1 = "Webview is detached, probably in the middle of a resize or expand.";
        r12.zzak(r1);	 Catch:{ all -> 0x0020 }
        monitor-exit(r6);	 Catch:{ all -> 0x0020 }
        goto L_0x0010;
    L_0x01dd:
        r1 = r4;
        goto L_0x0116;
    L_0x01e0:
        r5 = "top-left";
        r1 = r1.equals(r5);	 Catch:{ all -> 0x0020 }
        if (r1 == 0) goto L_0x0155;
    L_0x01e8:
        r1 = r4;
        goto L_0x0156;
    L_0x01eb:
        r4 = "top-center";
        r1 = r1.equals(r4);	 Catch:{ all -> 0x0020 }
        if (r1 == 0) goto L_0x0155;
    L_0x01f3:
        r1 = r5;
        goto L_0x0156;
    L_0x01f6:
        r4 = "center";
        r1 = r1.equals(r4);	 Catch:{ all -> 0x0020 }
        if (r1 == 0) goto L_0x0155;
    L_0x01fe:
        r1 = 2;
        goto L_0x0156;
    L_0x0201:
        r4 = "bottom-left";
        r1 = r1.equals(r4);	 Catch:{ all -> 0x0020 }
        if (r1 == 0) goto L_0x0155;
    L_0x0209:
        r1 = 3;
        goto L_0x0156;
    L_0x020c:
        r4 = "bottom-center";
        r1 = r1.equals(r4);	 Catch:{ all -> 0x0020 }
        if (r1 == 0) goto L_0x0155;
    L_0x0214:
        r1 = 4;
        goto L_0x0156;
    L_0x0217:
        r4 = "bottom-right";
        r1 = r1.equals(r4);	 Catch:{ all -> 0x0020 }
        if (r1 == 0) goto L_0x0155;
    L_0x021f:
        r1 = 5;
        goto L_0x0156;
    L_0x0222:
        r1 = 10;
        r2.addRule(r1);	 Catch:{ all -> 0x0020 }
        r1 = 9;
        r2.addRule(r1);	 Catch:{ all -> 0x0020 }
        goto L_0x0163;
    L_0x022e:
        r1 = 10;
        r2.addRule(r1);	 Catch:{ all -> 0x0020 }
        r1 = 14;
        r2.addRule(r1);	 Catch:{ all -> 0x0020 }
        goto L_0x0163;
    L_0x023a:
        r1 = 13;
        r2.addRule(r1);	 Catch:{ all -> 0x0020 }
        goto L_0x0163;
    L_0x0241:
        r1 = 12;
        r2.addRule(r1);	 Catch:{ all -> 0x0020 }
        r1 = 9;
        r2.addRule(r1);	 Catch:{ all -> 0x0020 }
        goto L_0x0163;
    L_0x024d:
        r1 = 12;
        r2.addRule(r1);	 Catch:{ all -> 0x0020 }
        r1 = 14;
        r2.addRule(r1);	 Catch:{ all -> 0x0020 }
        goto L_0x0163;
    L_0x0259:
        r1 = 12;
        r2.addRule(r1);	 Catch:{ all -> 0x0020 }
        r1 = 11;
        r2.addRule(r1);	 Catch:{ all -> 0x0020 }
        goto L_0x0163;
    L_0x0265:
        r1 = move-exception;
        r2 = new java.lang.StringBuilder;	 Catch:{ all -> 0x0020 }
        r2.<init>();	 Catch:{ all -> 0x0020 }
        r3 = "Cannot show popup window: ";
        r2 = r2.append(r3);	 Catch:{ all -> 0x0020 }
        r1 = r1.getMessage();	 Catch:{ all -> 0x0020 }
        r1 = r2.append(r1);	 Catch:{ all -> 0x0020 }
        r1 = r1.toString();	 Catch:{ all -> 0x0020 }
        r12.zzak(r1);	 Catch:{ all -> 0x0020 }
        r1 = r12.zzAn;	 Catch:{ all -> 0x0020 }
        r2 = r12.zzoM;	 Catch:{ all -> 0x0020 }
        r2 = r2.getView();	 Catch:{ all -> 0x0020 }
        r1.removeView(r2);	 Catch:{ all -> 0x0020 }
        r1 = r12.zzAo;	 Catch:{ all -> 0x0020 }
        if (r1 == 0) goto L_0x02a8;
    L_0x028f:
        r1 = r12.zzAo;	 Catch:{ all -> 0x0020 }
        r2 = r12.zzAj;	 Catch:{ all -> 0x0020 }
        r1.removeView(r2);	 Catch:{ all -> 0x0020 }
        r1 = r12.zzAo;	 Catch:{ all -> 0x0020 }
        r2 = r12.zzoM;	 Catch:{ all -> 0x0020 }
        r2 = r2.getView();	 Catch:{ all -> 0x0020 }
        r1.addView(r2);	 Catch:{ all -> 0x0020 }
        r1 = r12.zzoM;	 Catch:{ all -> 0x0020 }
        r2 = r12.zzzm;	 Catch:{ all -> 0x0020 }
        r1.zza(r2);	 Catch:{ all -> 0x0020 }
    L_0x02a8:
        monitor-exit(r6);	 Catch:{ all -> 0x0020 }
        goto L_0x0010;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.zzfc.zzg(java.util.Map):void");
    }

    public void zzn(boolean z) {
        synchronized (this.zzpd) {
            if (this.zzAm != null) {
                this.zzAm.dismiss();
                this.zzAn.removeView(this.zzoM.getView());
                if (this.zzAo != null) {
                    this.zzAo.removeView(this.zzAj);
                    this.zzAo.addView(this.zzoM.getView());
                    this.zzoM.zza(this.zzzm);
                }
                if (z) {
                    zzam(Bus.DEFAULT_IDENTIFIER);
                    if (this.zzAl != null) {
                        this.zzAl.zzbc();
                    }
                }
                this.zzAm = null;
                this.zzAn = null;
                this.zzAo = null;
                this.zzAk = null;
            }
        }
    }
}
