package com.google.android.gms.internal;

import android.app.Activity;
import android.content.Context;
import android.view.View;
import android.view.ViewGroup.LayoutParams;
import android.view.Window;
import android.widget.FrameLayout;
import android.widget.PopupWindow;
import com.google.android.gms.ads.internal.util.client.zzb;
import com.google.android.gms.internal.zzhs.zza;

@zzgr
public class zzgj extends zzgi {
    private Object zzDw;
    private PopupWindow zzDx;
    private boolean zzDy;

    zzgj(Context context, zza com_google_android_gms_internal_zzhs_zza, zziz com_google_android_gms_internal_zziz, zzgg.zza com_google_android_gms_internal_zzgg_zza) {
        super(context, com_google_android_gms_internal_zzhs_zza, com_google_android_gms_internal_zziz, com_google_android_gms_internal_zzgg_zza);
        this.zzDw = new Object();
        this.zzDy = false;
    }

    private void zzfA() {
        synchronized (this.zzDw) {
            this.zzDy = true;
            if ((this.mContext instanceof Activity) && ((Activity) this.mContext).isDestroyed()) {
                this.zzDx = null;
            }
            if (this.zzDx != null) {
                if (this.zzDx.isShowing()) {
                    this.zzDx.dismiss();
                }
                this.zzDx = null;
            }
        }
    }

    public void cancel() {
        zzfA();
        super.cancel();
    }

    protected void zzfz() {
        Window window = this.mContext instanceof Activity ? ((Activity) this.mContext).getWindow() : null;
        if (window != null && window.getDecorView() != null && !((Activity) this.mContext).isDestroyed()) {
            View frameLayout = new FrameLayout(this.mContext);
            frameLayout.setLayoutParams(new LayoutParams(-1, -1));
            frameLayout.addView(this.zzoM.getView(), -1, -1);
            synchronized (this.zzDw) {
                if (this.zzDy) {
                    return;
                }
                this.zzDx = new PopupWindow(frameLayout, 1, 1, false);
                this.zzDx.setOutsideTouchable(true);
                this.zzDx.setClippingEnabled(false);
                zzb.zzaF("Displaying the 1x1 popup off the screen.");
                try {
                    this.zzDx.showAtLocation(window.getDecorView(), 0, -1, -1);
                } catch (Exception e) {
                    this.zzDx = null;
                }
            }
        }
    }

    protected void zzz(int i) {
        zzfA();
        super.zzz(i);
    }
}
