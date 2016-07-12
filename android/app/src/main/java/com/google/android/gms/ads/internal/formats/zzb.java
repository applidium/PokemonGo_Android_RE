package com.google.android.gms.ads.internal.formats;

import android.content.Context;
import android.graphics.Typeface;
import android.graphics.drawable.AnimationDrawable;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.ShapeDrawable;
import android.graphics.drawable.shapes.RoundRectShape;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewGroup.LayoutParams;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.google.android.gms.ads.internal.client.zzl;
import com.google.android.gms.ads.internal.zzp;
import com.google.android.gms.common.internal.zzx;
import java.util.List;

class zzb extends RelativeLayout {
    private static final float[] zzwj;
    private final RelativeLayout zzwk;
    private AnimationDrawable zzwl;

    static {
        zzwj = new float[]{5.0f, 5.0f, 5.0f, 5.0f, 5.0f, 5.0f, 5.0f, 5.0f};
    }

    public zzb(Context context, zza com_google_android_gms_ads_internal_formats_zza) {
        super(context);
        zzx.zzw(com_google_android_gms_ads_internal_formats_zza);
        LayoutParams layoutParams = new RelativeLayout.LayoutParams(-2, -2);
        layoutParams.addRule(10);
        layoutParams.addRule(11);
        Drawable shapeDrawable = new ShapeDrawable(new RoundRectShape(zzwj, null, null));
        shapeDrawable.getPaint().setColor(com_google_android_gms_ads_internal_formats_zza.getBackgroundColor());
        this.zzwk = new RelativeLayout(context);
        this.zzwk.setLayoutParams(layoutParams);
        zzp.zzbx().zza(this.zzwk, shapeDrawable);
        layoutParams = new RelativeLayout.LayoutParams(-2, -2);
        if (!TextUtils.isEmpty(com_google_android_gms_ads_internal_formats_zza.getText())) {
            LayoutParams layoutParams2 = new RelativeLayout.LayoutParams(-2, -2);
            View textView = new TextView(context);
            textView.setLayoutParams(layoutParams2);
            textView.setId(1195835393);
            textView.setTypeface(Typeface.DEFAULT);
            textView.setText(com_google_android_gms_ads_internal_formats_zza.getText());
            textView.setTextColor(com_google_android_gms_ads_internal_formats_zza.getTextColor());
            textView.setTextSize((float) com_google_android_gms_ads_internal_formats_zza.getTextSize());
            textView.setPadding(zzl.zzcF().zzb(context, 4), 0, zzl.zzcF().zzb(context, 4), 0);
            this.zzwk.addView(textView);
            layoutParams.addRule(1, textView.getId());
        }
        View imageView = new ImageView(context);
        imageView.setLayoutParams(layoutParams);
        imageView.setId(1195835394);
        List<Drawable> zzds = com_google_android_gms_ads_internal_formats_zza.zzds();
        if (zzds.size() > 1) {
            this.zzwl = new AnimationDrawable();
            for (Drawable addFrame : zzds) {
                this.zzwl.addFrame(addFrame, com_google_android_gms_ads_internal_formats_zza.zzdt());
            }
            zzp.zzbx().zza(imageView, this.zzwl);
        } else if (zzds.size() == 1) {
            imageView.setImageDrawable((Drawable) zzds.get(0));
        }
        this.zzwk.addView(imageView);
        addView(this.zzwk);
    }

    public void onAttachedToWindow() {
        if (this.zzwl != null) {
            this.zzwl.start();
        }
        super.onAttachedToWindow();
    }

    public ViewGroup zzdu() {
        return this.zzwk;
    }
}
