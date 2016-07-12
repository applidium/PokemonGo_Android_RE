.class public Lcom/google/android/gms/ads/internal/overlay/zzl;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/ads/internal/overlay/zzj;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public zza(Landroid/content/Context;Lcom/google/android/gms/internal/zziz;ILcom/google/android/gms/internal/zzcg;Lcom/google/android/gms/internal/zzce;)Lcom/google/android/gms/ads/internal/overlay/zzi;
    .locals 7

    invoke-static {}, Lcom/google/android/gms/internal/zzmx;->zzqx()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    new-instance v6, Lcom/google/android/gms/ads/internal/overlay/zzc;

    new-instance v0, Lcom/google/android/gms/ads/internal/overlay/zzp;

    invoke-interface {p2}, Lcom/google/android/gms/internal/zziz;->zzhh()Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

    move-result-object v2

    invoke-interface {p2}, Lcom/google/android/gms/internal/zziz;->getRequestId()Ljava/lang/String;

    move-result-object v3

    move-object v1, p1

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/ads/internal/overlay/zzp;-><init>(Landroid/content/Context;Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;Ljava/lang/String;Lcom/google/android/gms/internal/zzcg;Lcom/google/android/gms/internal/zzce;)V

    invoke-direct {v6, p1, v0}, Lcom/google/android/gms/ads/internal/overlay/zzc;-><init>(Landroid/content/Context;Lcom/google/android/gms/ads/internal/overlay/zzp;)V

    move-object v0, v6

    goto :goto_0
.end method
