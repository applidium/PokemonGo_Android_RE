package com.google.android.gms.ads.reward.mediation;

import android.content.Context;
import android.os.Bundle;
import com.google.android.gms.ads.mediation.MediationAdRequest;
import com.google.android.gms.ads.mediation.MediationAdapter;

public interface MediationRewardedVideoAdAdapter extends MediationAdapter {
    void initialize(Context context, MediationAdRequest mediationAdRequest, String str, MediationRewardedVideoAdListener mediationRewardedVideoAdListener, Bundle bundle, Bundle bundle2);

    boolean isInitialized();

    void loadAd(MediationAdRequest mediationAdRequest, Bundle bundle, Bundle bundle2);

    void showVideo();
}
