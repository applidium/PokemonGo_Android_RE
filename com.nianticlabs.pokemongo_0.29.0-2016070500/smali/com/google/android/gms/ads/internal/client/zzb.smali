.class public final Lcom/google/android/gms/ads/internal/client/zzb;
.super Lcom/google/android/gms/ads/internal/client/zzn$zza;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzgr;
.end annotation


# instance fields
.field private final zzsy:Lcom/google/android/gms/ads/internal/client/zza;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/ads/internal/client/zza;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/ads/internal/client/zzn$zza;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/client/zzb;->zzsy:Lcom/google/android/gms/ads/internal/client/zza;

    return-void
.end method


# virtual methods
.method public onAdClicked()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/client/zzb;->zzsy:Lcom/google/android/gms/ads/internal/client/zza;

    invoke-interface {v0}, Lcom/google/android/gms/ads/internal/client/zza;->onAdClicked()V

    return-void
.end method
