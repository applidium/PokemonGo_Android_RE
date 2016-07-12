.class public final Lcom/google/android/gms/ads/internal/client/zzc;
.super Lcom/google/android/gms/ads/internal/client/zzo$zza;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzgr;
.end annotation


# instance fields
.field private final zzsz:Lcom/google/android/gms/ads/AdListener;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/ads/AdListener;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/ads/internal/client/zzo$zza;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/client/zzc;->zzsz:Lcom/google/android/gms/ads/AdListener;

    return-void
.end method


# virtual methods
.method public onAdClosed()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/client/zzc;->zzsz:Lcom/google/android/gms/ads/AdListener;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/AdListener;->onAdClosed()V

    return-void
.end method

.method public onAdFailedToLoad(I)V
    .locals 1
    .param p1, "errorCode"    # I

    .prologue
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/client/zzc;->zzsz:Lcom/google/android/gms/ads/AdListener;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/ads/AdListener;->onAdFailedToLoad(I)V

    return-void
.end method

.method public onAdLeftApplication()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/client/zzc;->zzsz:Lcom/google/android/gms/ads/AdListener;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/AdListener;->onAdLeftApplication()V

    return-void
.end method

.method public onAdLoaded()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/client/zzc;->zzsz:Lcom/google/android/gms/ads/AdListener;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/AdListener;->onAdLoaded()V

    return-void
.end method

.method public onAdOpened()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/client/zzc;->zzsz:Lcom/google/android/gms/ads/AdListener;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/AdListener;->onAdOpened()V

    return-void
.end method
