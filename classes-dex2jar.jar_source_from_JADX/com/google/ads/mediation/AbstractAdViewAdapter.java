package com.google.ads.mediation;

import android.content.Context;
import android.location.Location;
import android.os.Bundle;
import android.view.View;
import com.google.ads.mediation.admob.AdMobAdapter;
import com.google.android.gms.ads.AdListener;
import com.google.android.gms.ads.AdLoader;
import com.google.android.gms.ads.AdLoader.Builder;
import com.google.android.gms.ads.AdRequest;
import com.google.android.gms.ads.AdSize;
import com.google.android.gms.ads.AdView;
import com.google.android.gms.ads.InterstitialAd;
import com.google.android.gms.ads.formats.NativeAdOptions;
import com.google.android.gms.ads.formats.NativeAdView;
import com.google.android.gms.ads.formats.NativeAppInstallAd;
import com.google.android.gms.ads.formats.NativeAppInstallAd.OnAppInstallAdLoadedListener;
import com.google.android.gms.ads.formats.NativeContentAd;
import com.google.android.gms.ads.formats.NativeContentAd.OnContentAdLoadedListener;
import com.google.android.gms.ads.internal.client.zzl;
import com.google.android.gms.ads.mediation.MediationAdRequest;
import com.google.android.gms.ads.mediation.MediationBannerAdapter;
import com.google.android.gms.ads.mediation.MediationBannerListener;
import com.google.android.gms.ads.mediation.MediationInterstitialAdapter;
import com.google.android.gms.ads.mediation.MediationInterstitialListener;
import com.google.android.gms.ads.mediation.MediationNativeAdapter;
import com.google.android.gms.ads.mediation.MediationNativeListener;
import com.google.android.gms.ads.mediation.NativeAppInstallAdMapper;
import com.google.android.gms.ads.mediation.NativeContentAdMapper;
import com.google.android.gms.ads.mediation.NativeMediationAdRequest;
import com.google.android.gms.internal.zzgr;
import java.util.Date;
import java.util.Set;

@zzgr
public abstract class AbstractAdViewAdapter implements MediationBannerAdapter, MediationInterstitialAdapter, MediationNativeAdapter {
    public static final String AD_UNIT_ID_PARAMETER = "pubid";
    protected AdView zzaK;
    protected InterstitialAd zzaL;
    private AdLoader zzaM;

    static class zza extends NativeAppInstallAdMapper {
        private final NativeAppInstallAd zzaN;

        public zza(NativeAppInstallAd nativeAppInstallAd) {
            this.zzaN = nativeAppInstallAd;
            setHeadline(nativeAppInstallAd.getHeadline().toString());
            setImages(nativeAppInstallAd.getImages());
            setBody(nativeAppInstallAd.getBody().toString());
            setIcon(nativeAppInstallAd.getIcon());
            setCallToAction(nativeAppInstallAd.getCallToAction().toString());
            setStarRating(nativeAppInstallAd.getStarRating().doubleValue());
            setStore(nativeAppInstallAd.getStore().toString());
            setPrice(nativeAppInstallAd.getPrice().toString());
            setOverrideImpressionRecording(true);
            setOverrideClickHandling(true);
        }

        public void trackView(View view) {
            if (view instanceof NativeAdView) {
                ((NativeAdView) view).setNativeAd(this.zzaN);
            }
        }
    }

    static class zzb extends NativeContentAdMapper {
        private final NativeContentAd zzaO;

        public zzb(NativeContentAd nativeContentAd) {
            this.zzaO = nativeContentAd;
            setHeadline(nativeContentAd.getHeadline().toString());
            setImages(nativeContentAd.getImages());
            setBody(nativeContentAd.getBody().toString());
            setLogo(nativeContentAd.getLogo());
            setCallToAction(nativeContentAd.getCallToAction().toString());
            setAdvertiser(nativeContentAd.getAdvertiser().toString());
            setOverrideImpressionRecording(true);
            setOverrideClickHandling(true);
        }

        public void trackView(View view) {
            if (view instanceof NativeAdView) {
                ((NativeAdView) view).setNativeAd(this.zzaO);
            }
        }
    }

    static final class zzc extends AdListener implements com.google.android.gms.ads.internal.client.zza {
        final AbstractAdViewAdapter zzaP;
        final MediationBannerListener zzaQ;

        public zzc(AbstractAdViewAdapter abstractAdViewAdapter, MediationBannerListener mediationBannerListener) {
            this.zzaP = abstractAdViewAdapter;
            this.zzaQ = mediationBannerListener;
        }

        public void onAdClicked() {
            this.zzaQ.onAdClicked(this.zzaP);
        }

        public void onAdClosed() {
            this.zzaQ.onAdClosed(this.zzaP);
        }

        public void onAdFailedToLoad(int i) {
            this.zzaQ.onAdFailedToLoad(this.zzaP, i);
        }

        public void onAdLeftApplication() {
            this.zzaQ.onAdLeftApplication(this.zzaP);
        }

        public void onAdLoaded() {
            this.zzaQ.onAdLoaded(this.zzaP);
        }

        public void onAdOpened() {
            this.zzaQ.onAdOpened(this.zzaP);
        }
    }

    static final class zzd extends AdListener implements com.google.android.gms.ads.internal.client.zza {
        final AbstractAdViewAdapter zzaP;
        final MediationInterstitialListener zzaR;

        public zzd(AbstractAdViewAdapter abstractAdViewAdapter, MediationInterstitialListener mediationInterstitialListener) {
            this.zzaP = abstractAdViewAdapter;
            this.zzaR = mediationInterstitialListener;
        }

        public void onAdClicked() {
            this.zzaR.onAdClicked(this.zzaP);
        }

        public void onAdClosed() {
            this.zzaR.onAdClosed(this.zzaP);
        }

        public void onAdFailedToLoad(int i) {
            this.zzaR.onAdFailedToLoad(this.zzaP, i);
        }

        public void onAdLeftApplication() {
            this.zzaR.onAdLeftApplication(this.zzaP);
        }

        public void onAdLoaded() {
            this.zzaR.onAdLoaded(this.zzaP);
        }

        public void onAdOpened() {
            this.zzaR.onAdOpened(this.zzaP);
        }
    }

    static final class zze extends AdListener implements OnAppInstallAdLoadedListener, OnContentAdLoadedListener, com.google.android.gms.ads.internal.client.zza {
        final AbstractAdViewAdapter zzaP;
        final MediationNativeListener zzaS;

        public zze(AbstractAdViewAdapter abstractAdViewAdapter, MediationNativeListener mediationNativeListener) {
            this.zzaP = abstractAdViewAdapter;
            this.zzaS = mediationNativeListener;
        }

        public void onAdClicked() {
            this.zzaS.onAdClicked(this.zzaP);
        }

        public void onAdClosed() {
            this.zzaS.onAdClosed(this.zzaP);
        }

        public void onAdFailedToLoad(int i) {
            this.zzaS.onAdFailedToLoad(this.zzaP, i);
        }

        public void onAdLeftApplication() {
            this.zzaS.onAdLeftApplication(this.zzaP);
        }

        public void onAdLoaded() {
        }

        public void onAdOpened() {
            this.zzaS.onAdOpened(this.zzaP);
        }

        public void onAppInstallAdLoaded(NativeAppInstallAd nativeAppInstallAd) {
            this.zzaS.onAdLoaded(this.zzaP, new zza(nativeAppInstallAd));
        }

        public void onContentAdLoaded(NativeContentAd nativeContentAd) {
            this.zzaS.onAdLoaded(this.zzaP, new zzb(nativeContentAd));
        }
    }

    public String getAdUnitId(Bundle bundle) {
        return bundle.getString(AD_UNIT_ID_PARAMETER);
    }

    public View getBannerView() {
        return this.zzaK;
    }

    public void onDestroy() {
        if (this.zzaK != null) {
            this.zzaK.destroy();
            this.zzaK = null;
        }
        if (this.zzaL != null) {
            this.zzaL = null;
        }
        if (this.zzaM != null) {
            this.zzaM = null;
        }
    }

    public void onPause() {
        if (this.zzaK != null) {
            this.zzaK.pause();
        }
    }

    public void onResume() {
        if (this.zzaK != null) {
            this.zzaK.resume();
        }
    }

    public void requestBannerAd(Context context, MediationBannerListener mediationBannerListener, Bundle bundle, AdSize adSize, MediationAdRequest mediationAdRequest, Bundle bundle2) {
        this.zzaK = new AdView(context);
        this.zzaK.setAdSize(new AdSize(adSize.getWidth(), adSize.getHeight()));
        this.zzaK.setAdUnitId(getAdUnitId(bundle));
        this.zzaK.setAdListener(new zzc(this, mediationBannerListener));
        this.zzaK.loadAd(zza(context, mediationAdRequest, bundle2, bundle));
    }

    public void requestInterstitialAd(Context context, MediationInterstitialListener mediationInterstitialListener, Bundle bundle, MediationAdRequest mediationAdRequest, Bundle bundle2) {
        this.zzaL = new InterstitialAd(context);
        this.zzaL.setAdUnitId(getAdUnitId(bundle));
        this.zzaL.setAdListener(new zzd(this, mediationInterstitialListener));
        this.zzaL.loadAd(zza(context, mediationAdRequest, bundle2, bundle));
    }

    public void requestNativeAd(Context context, MediationNativeListener mediationNativeListener, Bundle bundle, NativeMediationAdRequest nativeMediationAdRequest, Bundle bundle2) {
        OnContentAdLoadedListener com_google_ads_mediation_AbstractAdViewAdapter_zze = new zze(this, mediationNativeListener);
        Builder withAdListener = zza(context, bundle.getString(AD_UNIT_ID_PARAMETER)).withAdListener(com_google_ads_mediation_AbstractAdViewAdapter_zze);
        NativeAdOptions nativeAdOptions = nativeMediationAdRequest.getNativeAdOptions();
        if (nativeAdOptions != null) {
            withAdListener.withNativeAdOptions(nativeAdOptions);
        }
        if (nativeMediationAdRequest.isAppInstallAdRequested()) {
            withAdListener.forAppInstallAd(com_google_ads_mediation_AbstractAdViewAdapter_zze);
        }
        if (nativeMediationAdRequest.isContentAdRequested()) {
            withAdListener.forContentAd(com_google_ads_mediation_AbstractAdViewAdapter_zze);
        }
        this.zzaM = withAdListener.build();
        this.zzaM.loadAd(zza(context, nativeMediationAdRequest, bundle2, bundle));
    }

    public void showInterstitial() {
        this.zzaL.show();
    }

    protected abstract Bundle zza(Bundle bundle, Bundle bundle2);

    Builder zza(Context context, String str) {
        return new Builder(context, str);
    }

    AdRequest zza(Context context, MediationAdRequest mediationAdRequest, Bundle bundle, Bundle bundle2) {
        AdRequest.Builder builder = new AdRequest.Builder();
        Date birthday = mediationAdRequest.getBirthday();
        if (birthday != null) {
            builder.setBirthday(birthday);
        }
        int gender = mediationAdRequest.getGender();
        if (gender != 0) {
            builder.setGender(gender);
        }
        Set<String> keywords = mediationAdRequest.getKeywords();
        if (keywords != null) {
            for (String addKeyword : keywords) {
                builder.addKeyword(addKeyword);
            }
        }
        Location location = mediationAdRequest.getLocation();
        if (location != null) {
            builder.setLocation(location);
        }
        if (mediationAdRequest.isTesting()) {
            builder.addTestDevice(zzl.zzcF().zzQ(context));
        }
        if (mediationAdRequest.taggedForChildDirectedTreatment() != -1) {
            builder.tagForChildDirectedTreatment(mediationAdRequest.taggedForChildDirectedTreatment() == 1);
        }
        builder.addNetworkExtrasBundle(AdMobAdapter.class, zza(bundle, bundle2));
        return builder.build();
    }
}
