.class public final Lcom/google/android/gms/ads/doubleclick/PublisherInterstitialAd;
.super Ljava/lang/Object;


# instance fields
.field private final zznU:Lcom/google/android/gms/ads/internal/client/zzaa;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/android/gms/ads/internal/client/zzaa;

    invoke-direct {v0, p1, p0}, Lcom/google/android/gms/ads/internal/client/zzaa;-><init>(Landroid/content/Context;Lcom/google/android/gms/ads/doubleclick/PublisherInterstitialAd;)V

    iput-object v0, p0, Lcom/google/android/gms/ads/doubleclick/PublisherInterstitialAd;->zznU:Lcom/google/android/gms/ads/internal/client/zzaa;

    return-void
.end method


# virtual methods
.method public getAdListener()Lcom/google/android/gms/ads/AdListener;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/ads/doubleclick/PublisherInterstitialAd;->zznU:Lcom/google/android/gms/ads/internal/client/zzaa;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/client/zzaa;->getAdListener()Lcom/google/android/gms/ads/AdListener;

    move-result-object v0

    return-object v0
.end method

.method public getAdUnitId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/ads/doubleclick/PublisherInterstitialAd;->zznU:Lcom/google/android/gms/ads/internal/client/zzaa;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/client/zzaa;->getAdUnitId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAppEventListener()Lcom/google/android/gms/ads/doubleclick/AppEventListener;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/ads/doubleclick/PublisherInterstitialAd;->zznU:Lcom/google/android/gms/ads/internal/client/zzaa;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/client/zzaa;->getAppEventListener()Lcom/google/android/gms/ads/doubleclick/AppEventListener;

    move-result-object v0

    return-object v0
.end method

.method public getMediationAdapterClassName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/ads/doubleclick/PublisherInterstitialAd;->zznU:Lcom/google/android/gms/ads/internal/client/zzaa;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/client/zzaa;->getMediationAdapterClassName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getOnCustomRenderedAdLoadedListener()Lcom/google/android/gms/ads/doubleclick/OnCustomRenderedAdLoadedListener;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/ads/doubleclick/PublisherInterstitialAd;->zznU:Lcom/google/android/gms/ads/internal/client/zzaa;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/client/zzaa;->getOnCustomRenderedAdLoadedListener()Lcom/google/android/gms/ads/doubleclick/OnCustomRenderedAdLoadedListener;

    move-result-object v0

    return-object v0
.end method

.method public isLoaded()Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/ads/doubleclick/PublisherInterstitialAd;->zznU:Lcom/google/android/gms/ads/internal/client/zzaa;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/client/zzaa;->isLoaded()Z

    move-result v0

    return v0
.end method

.method public loadAd(Lcom/google/android/gms/ads/doubleclick/PublisherAdRequest;)V
    .locals 2
    .param p1, "publisherAdRequest"    # Lcom/google/android/gms/ads/doubleclick/PublisherAdRequest;

    .prologue
    iget-object v0, p0, Lcom/google/android/gms/ads/doubleclick/PublisherInterstitialAd;->zznU:Lcom/google/android/gms/ads/internal/client/zzaa;

    invoke-virtual {p1}, Lcom/google/android/gms/ads/doubleclick/PublisherAdRequest;->zzaF()Lcom/google/android/gms/ads/internal/client/zzy;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/internal/client/zzaa;->zza(Lcom/google/android/gms/ads/internal/client/zzy;)V

    return-void
.end method

.method public setAdListener(Lcom/google/android/gms/ads/AdListener;)V
    .locals 1
    .param p1, "adListener"    # Lcom/google/android/gms/ads/AdListener;

    .prologue
    iget-object v0, p0, Lcom/google/android/gms/ads/doubleclick/PublisherInterstitialAd;->zznU:Lcom/google/android/gms/ads/internal/client/zzaa;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/ads/internal/client/zzaa;->setAdListener(Lcom/google/android/gms/ads/AdListener;)V

    return-void
.end method

.method public setAdUnitId(Ljava/lang/String;)V
    .locals 1
    .param p1, "adUnitId"    # Ljava/lang/String;

    .prologue
    iget-object v0, p0, Lcom/google/android/gms/ads/doubleclick/PublisherInterstitialAd;->zznU:Lcom/google/android/gms/ads/internal/client/zzaa;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/ads/internal/client/zzaa;->setAdUnitId(Ljava/lang/String;)V

    return-void
.end method

.method public setAppEventListener(Lcom/google/android/gms/ads/doubleclick/AppEventListener;)V
    .locals 1
    .param p1, "appEventListener"    # Lcom/google/android/gms/ads/doubleclick/AppEventListener;

    .prologue
    iget-object v0, p0, Lcom/google/android/gms/ads/doubleclick/PublisherInterstitialAd;->zznU:Lcom/google/android/gms/ads/internal/client/zzaa;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/ads/internal/client/zzaa;->setAppEventListener(Lcom/google/android/gms/ads/doubleclick/AppEventListener;)V

    return-void
.end method

.method public setOnCustomRenderedAdLoadedListener(Lcom/google/android/gms/ads/doubleclick/OnCustomRenderedAdLoadedListener;)V
    .locals 1
    .param p1, "onCustomRenderedAdLoadedListener"    # Lcom/google/android/gms/ads/doubleclick/OnCustomRenderedAdLoadedListener;

    .prologue
    iget-object v0, p0, Lcom/google/android/gms/ads/doubleclick/PublisherInterstitialAd;->zznU:Lcom/google/android/gms/ads/internal/client/zzaa;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/ads/internal/client/zzaa;->setOnCustomRenderedAdLoadedListener(Lcom/google/android/gms/ads/doubleclick/OnCustomRenderedAdLoadedListener;)V

    return-void
.end method

.method public show()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/ads/doubleclick/PublisherInterstitialAd;->zznU:Lcom/google/android/gms/ads/internal/client/zzaa;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/client/zzaa;->show()V

    return-void
.end method
