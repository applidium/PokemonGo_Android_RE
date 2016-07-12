package com.google.android.gms.ads.internal.overlay;

import android.content.Context;
import android.support.v4.internal.view.SupportMenu;
import android.support.v4.view.InputDeviceCompat;
import android.support.v4.view.ViewCompat;
import android.support.v4.view.accessibility.AccessibilityNodeInfoCompat;
import android.text.TextUtils;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.FrameLayout.LayoutParams;
import android.widget.TextView;
import com.google.android.gms.common.internal.zzb;
import com.google.android.gms.internal.zzce;
import com.google.android.gms.internal.zzcg;
import com.google.android.gms.internal.zzgr;
import com.google.android.gms.internal.zziz;
import com.voxelbusters.nativeplugins.defines.Keys.GameServices;
import java.util.HashMap;
import java.util.Map;

@zzgr
public class zzk extends FrameLayout implements zzh {
    private final FrameLayout zzBN;
    private final zzq zzBO;
    private zzi zzBP;
    private boolean zzBQ;
    private boolean zzBR;
    private TextView zzBS;
    private long zzBT;
    private long zzBU;
    private String zzBV;
    private final zziz zzoM;
    private String zzxZ;

    public zzk(Context context, zziz com_google_android_gms_internal_zziz, int i, zzcg com_google_android_gms_internal_zzcg, zzce com_google_android_gms_internal_zzce) {
        super(context);
        this.zzoM = com_google_android_gms_internal_zziz;
        this.zzBN = new FrameLayout(context);
        addView(this.zzBN, new LayoutParams(-1, -1));
        zzb.zzs(com_google_android_gms_internal_zziz.zzhb());
        this.zzBP = com_google_android_gms_internal_zziz.zzhb().zzoH.zza(context, com_google_android_gms_internal_zziz, i, com_google_android_gms_internal_zzcg, com_google_android_gms_internal_zzce);
        if (this.zzBP != null) {
            this.zzBN.addView(this.zzBP, new LayoutParams(-1, -1, 17));
        }
        this.zzBS = new TextView(context);
        this.zzBS.setBackgroundColor(ViewCompat.MEASURED_STATE_MASK);
        zzeY();
        this.zzBO = new zzq(this);
        this.zzBO.zzfg();
        if (this.zzBP != null) {
            this.zzBP.zza((zzh) this);
        }
        if (this.zzBP == null) {
            zzh("AdVideoUnderlay Error", "Allocating player failed.");
        }
    }

    private void zza(String str, String... strArr) {
        Map hashMap = new HashMap();
        hashMap.put(SendEvent.EVENT, str);
        int length = strArr.length;
        int i = 0;
        Object obj = null;
        while (i < length) {
            Object obj2 = strArr[i];
            if (obj != null) {
                hashMap.put(obj, obj2);
                obj2 = null;
            }
            i++;
            obj = obj2;
        }
        this.zzoM.zzb("onVideoEvent", hashMap);
    }

    public static void zzd(zziz com_google_android_gms_internal_zziz) {
        Map hashMap = new HashMap();
        hashMap.put(SendEvent.EVENT, "no_video_view");
        com_google_android_gms_internal_zziz.zzb("onVideoEvent", hashMap);
    }

    private void zzeY() {
        if (!zzfa()) {
            this.zzBN.addView(this.zzBS, new LayoutParams(-1, -1));
            this.zzBN.bringChildToFront(this.zzBS);
        }
    }

    private void zzeZ() {
        if (zzfa()) {
            this.zzBN.removeView(this.zzBS);
        }
    }

    private boolean zzfa() {
        return this.zzBS.getParent() != null;
    }

    private void zzfb() {
        if (this.zzoM.zzgZ() != null && !this.zzBQ) {
            this.zzBR = (this.zzoM.zzgZ().getWindow().getAttributes().flags & AccessibilityNodeInfoCompat.ACTION_CLEAR_ACCESSIBILITY_FOCUS) != 0;
            if (!this.zzBR) {
                this.zzoM.zzgZ().getWindow().addFlags(AccessibilityNodeInfoCompat.ACTION_CLEAR_ACCESSIBILITY_FOCUS);
                this.zzBQ = true;
            }
        }
    }

    private void zzfc() {
        if (this.zzoM.zzgZ() != null && this.zzBQ && !this.zzBR) {
            this.zzoM.zzgZ().getWindow().clearFlags(AccessibilityNodeInfoCompat.ACTION_CLEAR_ACCESSIBILITY_FOCUS);
            this.zzBQ = false;
        }
    }

    public void destroy() {
        this.zzBO.cancel();
        if (this.zzBP != null) {
            this.zzBP.stop();
        }
        zzfc();
    }

    public void onPaused() {
        zza("pause", new String[0]);
        zzfc();
    }

    public void pause() {
        if (this.zzBP != null) {
            this.zzBP.pause();
        }
    }

    public void play() {
        if (this.zzBP != null) {
            this.zzBP.play();
        }
    }

    public void seekTo(int i) {
        if (this.zzBP != null) {
            this.zzBP.seekTo(i);
        }
    }

    public void setMimeType(String str) {
        this.zzBV = str;
    }

    public void zza(float f) {
        if (this.zzBP != null) {
            this.zzBP.zza(f);
        }
    }

    public void zzan(String str) {
        this.zzxZ = str;
    }

    public void zzd(int i, int i2, int i3, int i4) {
        if (i3 != 0 && i4 != 0) {
            ViewGroup.LayoutParams layoutParams = new LayoutParams(i3 + 2, i4 + 2);
            layoutParams.setMargins(i - 1, i2 - 1, 0, 0);
            this.zzBN.setLayoutParams(layoutParams);
            requestLayout();
        }
    }

    public void zzd(MotionEvent motionEvent) {
        if (this.zzBP != null) {
            this.zzBP.dispatchTouchEvent(motionEvent);
        }
    }

    public void zzeQ() {
    }

    public void zzeR() {
        if (this.zzBP != null && this.zzBU == 0) {
            zza("canplaythrough", "duration", String.valueOf(((float) this.zzBP.getDuration()) / 1000.0f), "videoWidth", String.valueOf(this.zzBP.getVideoWidth()), "videoHeight", String.valueOf(this.zzBP.getVideoHeight()));
        }
    }

    public void zzeS() {
        zzfb();
    }

    public void zzeT() {
        zza("ended", new String[0]);
        zzfc();
    }

    public void zzeU() {
        zzeY();
        this.zzBU = this.zzBT;
    }

    public void zzeV() {
        if (this.zzBP != null) {
            if (TextUtils.isEmpty(this.zzxZ)) {
                zza("no_src", new String[0]);
                return;
            }
            this.zzBP.setMimeType(this.zzBV);
            this.zzBP.setVideoPath(this.zzxZ);
        }
    }

    public void zzeW() {
        if (this.zzBP != null) {
            View textView = new TextView(this.zzBP.getContext());
            textView.setText("AdMob - " + this.zzBP.zzer());
            textView.setTextColor(SupportMenu.CATEGORY_MASK);
            textView.setBackgroundColor(InputDeviceCompat.SOURCE_ANY);
            this.zzBN.addView(textView, new LayoutParams(-2, -2, 17));
            this.zzBN.bringChildToFront(textView);
        }
    }

    void zzeX() {
        if (this.zzBP != null) {
            long currentPosition = (long) this.zzBP.getCurrentPosition();
            if (this.zzBT != currentPosition && currentPosition > 0) {
                zzeZ();
                zza("timeupdate", "time", String.valueOf(((float) currentPosition) / 1000.0f));
                this.zzBT = currentPosition;
            }
        }
    }

    public void zzex() {
        if (this.zzBP != null) {
            this.zzBP.zzex();
        }
    }

    public void zzey() {
        if (this.zzBP != null) {
            this.zzBP.zzey();
        }
    }

    public void zzh(String str, String str2) {
        zza(GameServices.ERROR, "what", str, "extra", str2);
    }
}
