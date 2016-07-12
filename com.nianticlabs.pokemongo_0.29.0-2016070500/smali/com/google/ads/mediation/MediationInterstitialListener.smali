.class public interface abstract Lcom/google/ads/mediation/MediationInterstitialListener;
.super Ljava/lang/Object;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# virtual methods
.method public abstract onDismissScreen(Lcom/google/ads/mediation/MediationInterstitialAdapter;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/ads/mediation/MediationInterstitialAdapter",
            "<**>;)V"
        }
    .end annotation
.end method

.method public abstract onFailedToReceiveAd(Lcom/google/ads/mediation/MediationInterstitialAdapter;Lcom/google/ads/AdRequest$ErrorCode;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/ads/mediation/MediationInterstitialAdapter",
            "<**>;",
            "Lcom/google/ads/AdRequest$ErrorCode;",
            ")V"
        }
    .end annotation
.end method

.method public abstract onLeaveApplication(Lcom/google/ads/mediation/MediationInterstitialAdapter;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/ads/mediation/MediationInterstitialAdapter",
            "<**>;)V"
        }
    .end annotation
.end method

.method public abstract onPresentScreen(Lcom/google/ads/mediation/MediationInterstitialAdapter;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/ads/mediation/MediationInterstitialAdapter",
            "<**>;)V"
        }
    .end annotation
.end method

.method public abstract onReceivedAd(Lcom/google/ads/mediation/MediationInterstitialAdapter;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/ads/mediation/MediationInterstitialAdapter",
            "<**>;)V"
        }
    .end annotation
.end method
