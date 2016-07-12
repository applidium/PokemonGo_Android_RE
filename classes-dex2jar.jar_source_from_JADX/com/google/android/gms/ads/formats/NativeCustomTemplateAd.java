package com.google.android.gms.ads.formats;

import com.google.android.gms.ads.formats.NativeAd.Image;
import java.util.List;

public interface NativeCustomTemplateAd {

    public interface OnCustomClickListener {
        void onCustomClick(NativeCustomTemplateAd nativeCustomTemplateAd, String str);
    }

    public interface OnCustomTemplateAdLoadedListener {
        void onCustomTemplateAdLoaded(NativeCustomTemplateAd nativeCustomTemplateAd);
    }

    List<String> getAvailableAssetNames();

    String getCustomTemplateId();

    Image getImage(String str);

    CharSequence getText(String str);

    void performClick(String str);

    void recordImpression();
}
