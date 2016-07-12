.class public Lcom/google/android/gms/ads/internal/zzd;
.super Ljava/lang/Object;


# instance fields
.field public final zzoG:Lcom/google/android/gms/internal/zzdx;

.field public final zzoH:Lcom/google/android/gms/ads/internal/overlay/zzj;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/zzdx;Lcom/google/android/gms/ads/internal/overlay/zzj;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/zzd;->zzoG:Lcom/google/android/gms/internal/zzdx;

    iput-object p2, p0, Lcom/google/android/gms/ads/internal/zzd;->zzoH:Lcom/google/android/gms/ads/internal/overlay/zzj;

    return-void
.end method

.method public static zzbd()Lcom/google/android/gms/ads/internal/zzd;
    .locals 3

    new-instance v0, Lcom/google/android/gms/ads/internal/zzd;

    new-instance v1, Lcom/google/android/gms/internal/zzdh;

    invoke-direct {v1}, Lcom/google/android/gms/internal/zzdh;-><init>()V

    new-instance v2, Lcom/google/android/gms/ads/internal/overlay/zzl;

    invoke-direct {v2}, Lcom/google/android/gms/ads/internal/overlay/zzl;-><init>()V

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/ads/internal/zzd;-><init>(Lcom/google/android/gms/internal/zzdx;Lcom/google/android/gms/ads/internal/overlay/zzj;)V

    return-object v0
.end method
