package com.google.android.gms.ads.internal.overlay;

import android.content.Context;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.FrameLayout;
import android.widget.FrameLayout.LayoutParams;
import android.widget.ImageButton;
import com.google.android.gms.ads.internal.client.zzl;
import com.google.android.gms.internal.zzgr;

@zzgr
public class zzm extends FrameLayout implements OnClickListener {
    private final ImageButton zzBW;
    private final zzo zzBX;

    public zzm(Context context, int i, zzo com_google_android_gms_ads_internal_overlay_zzo) {
        super(context);
        this.zzBX = com_google_android_gms_ads_internal_overlay_zzo;
        setOnClickListener(this);
        this.zzBW = new ImageButton(context);
        this.zzBW.setImageResource(17301527);
        this.zzBW.setBackgroundColor(0);
        this.zzBW.setOnClickListener(this);
        this.zzBW.setPadding(0, 0, 0, 0);
        this.zzBW.setContentDescription("Interstitial close button");
        int zzb = zzl.zzcF().zzb(context, i);
        addView(this.zzBW, new LayoutParams(zzb, zzb, 17));
    }

    public void onClick(View view) {
        if (this.zzBX != null) {
            this.zzBX.zzeE();
        }
    }

    public void zza(boolean z, boolean z2) {
        if (!z2) {
            this.zzBW.setVisibility(0);
        } else if (z) {
            this.zzBW.setVisibility(4);
        } else {
            this.zzBW.setVisibility(8);
        }
    }
}
