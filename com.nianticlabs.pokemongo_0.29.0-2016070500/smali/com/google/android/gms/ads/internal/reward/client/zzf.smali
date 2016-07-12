.class public Lcom/google/android/gms/ads/internal/reward/client/zzf;
.super Lcom/google/android/gms/dynamic/zzg;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzgr;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/dynamic/zzg",
        "<",
        "Lcom/google/android/gms/ads/internal/reward/client/zzc;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "com.google.android.gms.ads.reward.RewardedVideoAdCreatorImpl"

    invoke-direct {p0, v0}, Lcom/google/android/gms/dynamic/zzg;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method private zzb(Landroid/content/Context;Lcom/google/android/gms/internal/zzel;)Lcom/google/android/gms/ads/internal/reward/client/zzb;
    .locals 3

    :try_start_0
    invoke-static {p1}, Lcom/google/android/gms/dynamic/zze;->zzy(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/zzd;

    move-result-object v1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/ads/internal/reward/client/zzf;->zzas(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/ads/internal/reward/client/zzc;

    const v2, 0x7bd338

    invoke-interface {v0, v1, p2, v2}, Lcom/google/android/gms/ads/internal/reward/client/zzc;->zza(Lcom/google/android/gms/dynamic/zzd;Lcom/google/android/gms/internal/zzem;I)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/reward/client/zzb$zza;->zzaa(Landroid/os/IBinder;)Lcom/google/android/gms/ads/internal/reward/client/zzb;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/google/android/gms/dynamic/zzg$zza; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    :goto_1
    const-string v1, "Could not get remote RewardedVideoAd."

    invoke-static {v1, v0}, Lcom/google/android/gms/ads/internal/util/client/zzb;->zzd(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_1
.end method


# virtual methods
.method public zza(Landroid/content/Context;Lcom/google/android/gms/internal/zzel;)Lcom/google/android/gms/ads/internal/reward/client/zzb;
    .locals 3

    const v2, 0x7bd338

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzl;->zzcF()Lcom/google/android/gms/ads/internal/util/client/zza;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/ads/internal/util/client/zza;->zzR(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/ads/internal/reward/client/zzf;->zzb(Landroid/content/Context;Lcom/google/android/gms/internal/zzel;)Lcom/google/android/gms/ads/internal/reward/client/zzb;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    const-string v0, "Using RewardedVideoAd from the client jar."

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/client/zzb;->zzaF(Ljava/lang/String;)V

    new-instance v1, Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

    const/4 v0, 0x1

    invoke-direct {v1, v2, v2, v0}, Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;-><init>(IIZ)V

    new-instance v0, Lcom/google/android/gms/internal/zzhf;

    invoke-direct {v0, p1, p2, v1}, Lcom/google/android/gms/internal/zzhf;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/zzem;Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;)V

    :cond_1
    return-object v0
.end method

.method protected zzad(Landroid/os/IBinder;)Lcom/google/android/gms/ads/internal/reward/client/zzc;
    .locals 1

    invoke-static {p1}, Lcom/google/android/gms/ads/internal/reward/client/zzc$zza;->zzab(Landroid/os/IBinder;)Lcom/google/android/gms/ads/internal/reward/client/zzc;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic zzd(Landroid/os/IBinder;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/ads/internal/reward/client/zzf;->zzad(Landroid/os/IBinder;)Lcom/google/android/gms/ads/internal/reward/client/zzc;

    move-result-object v0

    return-object v0
.end method
