package com.google.android.gms.ads.mediation;

import android.os.Bundle;
import android.view.View;

public abstract class NativeAdMapper {
    protected Bundle mExtras;
    protected boolean mOverrideClickHandling;
    protected boolean mOverrideImpressionRecording;

    public NativeAdMapper() {
        this.mExtras = new Bundle();
    }

    public final Bundle getExtras() {
        return this.mExtras;
    }

    public final boolean getOverrideClickHandling() {
        return this.mOverrideClickHandling;
    }

    public final boolean getOverrideImpressionRecording() {
        return this.mOverrideImpressionRecording;
    }

    public void handleClick(View view) {
    }

    public void recordImpression() {
    }

    public final void setExtras(Bundle bundle) {
        this.mExtras = bundle;
    }

    public final void setOverrideClickHandling(boolean z) {
        this.mOverrideClickHandling = z;
    }

    public final void setOverrideImpressionRecording(boolean z) {
        this.mOverrideImpressionRecording = z;
    }

    public void trackView(View view) {
    }
}
