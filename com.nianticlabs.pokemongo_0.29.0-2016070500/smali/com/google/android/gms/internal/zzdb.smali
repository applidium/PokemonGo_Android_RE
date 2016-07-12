.class public Lcom/google/android/gms/internal/zzdb;
.super Lcom/google/android/gms/internal/zzcw$zza;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzgr;
.end annotation


# instance fields
.field private final zzxj:Lcom/google/android/gms/ads/formats/NativeAppInstallAd$OnAppInstallAdLoadedListener;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/ads/formats/NativeAppInstallAd$OnAppInstallAdLoadedListener;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzcw$zza;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzdb;->zzxj:Lcom/google/android/gms/ads/formats/NativeAppInstallAd$OnAppInstallAdLoadedListener;

    return-void
.end method


# virtual methods
.method public zza(Lcom/google/android/gms/internal/zzcq;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzdb;->zzxj:Lcom/google/android/gms/ads/formats/NativeAppInstallAd$OnAppInstallAdLoadedListener;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzdb;->zzb(Lcom/google/android/gms/internal/zzcq;)Lcom/google/android/gms/internal/zzcr;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/gms/ads/formats/NativeAppInstallAd$OnAppInstallAdLoadedListener;->onAppInstallAdLoaded(Lcom/google/android/gms/ads/formats/NativeAppInstallAd;)V

    return-void
.end method

.method zzb(Lcom/google/android/gms/internal/zzcq;)Lcom/google/android/gms/internal/zzcr;
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/zzcr;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/zzcr;-><init>(Lcom/google/android/gms/internal/zzcq;)V

    return-object v0
.end method
