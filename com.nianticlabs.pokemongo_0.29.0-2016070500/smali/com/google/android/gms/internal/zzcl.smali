.class public final Lcom/google/android/gms/internal/zzcl;
.super Lcom/google/android/gms/internal/zzck$zza;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzgr;
.end annotation


# instance fields
.field private final zztK:Lcom/google/android/gms/ads/doubleclick/OnCustomRenderedAdLoadedListener;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/ads/doubleclick/OnCustomRenderedAdLoadedListener;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzck$zza;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzcl;->zztK:Lcom/google/android/gms/ads/doubleclick/OnCustomRenderedAdLoadedListener;

    return-void
.end method


# virtual methods
.method public zza(Lcom/google/android/gms/internal/zzcj;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcl;->zztK:Lcom/google/android/gms/ads/doubleclick/OnCustomRenderedAdLoadedListener;

    new-instance v1, Lcom/google/android/gms/internal/zzci;

    invoke-direct {v1, p1}, Lcom/google/android/gms/internal/zzci;-><init>(Lcom/google/android/gms/internal/zzcj;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/ads/doubleclick/OnCustomRenderedAdLoadedListener;->onCustomRenderedAdLoaded(Lcom/google/android/gms/ads/doubleclick/CustomRenderedAd;)V

    return-void
.end method
