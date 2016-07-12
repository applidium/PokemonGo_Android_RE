package com.google.android.gms.ads.reward;

import com.google.android.gms.ads.AdRequest;

public interface RewardedVideoAd {
    void destroy();

    RewardedVideoAdListener getRewardedVideoAdListener();

    String getUserId();

    boolean isLoaded();

    void loadAd(String str, AdRequest adRequest);

    void pause();

    void resume();

    void setRewardedVideoAdListener(RewardedVideoAdListener rewardedVideoAdListener);

    void setUserId(String str);

    void show();
}
