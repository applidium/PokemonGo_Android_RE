.class public Lcom/google/android/gms/ads/internal/client/zzab;
.super Ljava/lang/Object;


# static fields
.field private static final zzpy:Ljava/lang/Object;

.field private static zztM:Lcom/google/android/gms/ads/internal/client/zzab;


# instance fields
.field private zztN:Lcom/google/android/gms/ads/internal/client/zzw;

.field private zztO:Lcom/google/android/gms/ads/reward/RewardedVideoAd;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/android/gms/ads/internal/client/zzab;->zzpy:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static zzcV()Lcom/google/android/gms/ads/internal/client/zzab;
    .locals 2

    sget-object v1, Lcom/google/android/gms/ads/internal/client/zzab;->zzpy:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/google/android/gms/ads/internal/client/zzab;->zztM:Lcom/google/android/gms/ads/internal/client/zzab;

    if-nez v0, :cond_0

    new-instance v0, Lcom/google/android/gms/ads/internal/client/zzab;

    invoke-direct {v0}, Lcom/google/android/gms/ads/internal/client/zzab;-><init>()V

    sput-object v0, Lcom/google/android/gms/ads/internal/client/zzab;->zztM:Lcom/google/android/gms/ads/internal/client/zzab;

    :cond_0
    sget-object v0, Lcom/google/android/gms/ads/internal/client/zzab;->zztM:Lcom/google/android/gms/ads/internal/client/zzab;

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method public getRewardedVideoAdInstance(Landroid/content/Context;)Lcom/google/android/gms/ads/reward/RewardedVideoAd;
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    sget-object v1, Lcom/google/android/gms/ads/internal/client/zzab;->zzpy:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/client/zzab;->zztO:Lcom/google/android/gms/ads/reward/RewardedVideoAd;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/client/zzab;->zztO:Lcom/google/android/gms/ads/reward/RewardedVideoAd;

    monitor-exit v1

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/google/android/gms/internal/zzel;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzel;-><init>()V

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzl;->zzcK()Lcom/google/android/gms/ads/internal/reward/client/zzf;

    move-result-object v2

    invoke-virtual {v2, p1, v0}, Lcom/google/android/gms/ads/internal/reward/client/zzf;->zza(Landroid/content/Context;Lcom/google/android/gms/internal/zzel;)Lcom/google/android/gms/ads/internal/reward/client/zzb;

    move-result-object v0

    new-instance v2, Lcom/google/android/gms/ads/internal/reward/client/zzi;

    invoke-direct {v2, p1, v0}, Lcom/google/android/gms/ads/internal/reward/client/zzi;-><init>(Landroid/content/Context;Lcom/google/android/gms/ads/internal/reward/client/zzb;)V

    iput-object v2, p0, Lcom/google/android/gms/ads/internal/client/zzab;->zztO:Lcom/google/android/gms/ads/reward/RewardedVideoAd;

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/client/zzab;->zztO:Lcom/google/android/gms/ads/reward/RewardedVideoAd;

    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public initialize(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    sget-object v1, Lcom/google/android/gms/ads/internal/client/zzab;->zzpy:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/client/zzab;->zztN:Lcom/google/android/gms/ads/internal/client/zzw;

    if-eqz v0, :cond_0

    monitor-exit v1

    :goto_0
    return-void

    :cond_0
    if-nez p1, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v2, "Context cannot be null."

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    :try_start_1
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzl;->zzcI()Lcom/google/android/gms/ads/internal/client/zzad;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/ads/internal/client/zzad;->zzt(Landroid/content/Context;)Lcom/google/android/gms/ads/internal/client/zzw;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/ads/internal/client/zzab;->zztN:Lcom/google/android/gms/ads/internal/client/zzw;

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/client/zzab;->zztN:Lcom/google/android/gms/ads/internal/client/zzw;

    invoke-interface {v0}, Lcom/google/android/gms/ads/internal/client/zzw;->zza()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_1
    :try_start_2
    monitor-exit v1

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v0, "Fail to initialize mobile ads setting manager"

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/client/zzb;->zzaH(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method

.method public zza(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/ads/internal/client/zzac;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/google/android/gms/ads/internal/client/zzab;->initialize(Landroid/content/Context;)V

    return-void
.end method
