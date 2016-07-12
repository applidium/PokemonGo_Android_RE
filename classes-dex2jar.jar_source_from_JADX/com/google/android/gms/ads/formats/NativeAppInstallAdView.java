package com.google.android.gms.ads.formats;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;

public final class NativeAppInstallAdView extends NativeAdView {
    public NativeAppInstallAdView(Context context) {
        super(context);
    }

    public NativeAppInstallAdView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    public NativeAppInstallAdView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
    }

    public NativeAppInstallAdView(Context context, AttributeSet attributeSet, int i, int i2) {
        super(context, attributeSet, i, i2);
    }

    public final View getBodyView() {
        return super.zzm("2004");
    }

    public final View getCallToActionView() {
        return super.zzm("2002");
    }

    public final View getHeadlineView() {
        return super.zzm("2001");
    }

    public final View getIconView() {
        return super.zzm("2003");
    }

    public final View getImageView() {
        return super.zzm("2007");
    }

    public final View getPriceView() {
        return super.zzm("2006");
    }

    public final View getStarRatingView() {
        return super.zzm("2008");
    }

    public final View getStoreView() {
        return super.zzm("2005");
    }

    public final void setBodyView(View view) {
        super.zza("2004", view);
    }

    public final void setCallToActionView(View view) {
        super.zza("2002", view);
    }

    public final void setHeadlineView(View view) {
        super.zza("2001", view);
    }

    public final void setIconView(View view) {
        super.zza("2003", view);
    }

    public final void setImageView(View view) {
        super.zza("2007", view);
    }

    public final void setPriceView(View view) {
        super.zza("2006", view);
    }

    public final void setStarRatingView(View view) {
        super.zza("2008", view);
    }

    public final void setStoreView(View view) {
        super.zza("2005", view);
    }
}
