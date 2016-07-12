.class public Lcom/google/android/gms/internal/zzhf;
.super Lcom/google/android/gms/ads/internal/reward/client/zzb$zza;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final zzGW:Lcom/google/android/gms/internal/zzhg;

.field private final zzpb:Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

.field private final zzpd:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/zzem;Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;)V
    .locals 2

    invoke-direct {p0}, Lcom/google/android/gms/ads/internal/reward/client/zzb$zza;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzhf;->mContext:Landroid/content/Context;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzhf;->zzpb:Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

    new-instance v0, Lcom/google/android/gms/internal/zzhg;

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/AdSizeParcel;->zzcC()Lcom/google/android/gms/ads/internal/client/AdSizeParcel;

    move-result-object v1

    invoke-direct {v0, p1, v1, p2, p3}, Lcom/google/android/gms/internal/zzhg;-><init>(Landroid/content/Context;Lcom/google/android/gms/ads/internal/client/AdSizeParcel;Lcom/google/android/gms/internal/zzem;Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzhf;->zzGW:Lcom/google/android/gms/internal/zzhg;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzhf;->zzpd:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 2

    iget-object v1, p0, Lcom/google/android/gms/internal/zzhf;->zzpd:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzhf;->zzGW:Lcom/google/android/gms/internal/zzhg;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzhg;->destroy()V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public isLoaded()Z
    .locals 2

    iget-object v1, p0, Lcom/google/android/gms/internal/zzhf;->zzpd:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzhf;->zzGW:Lcom/google/android/gms/internal/zzhg;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzhg;->isLoaded()Z

    move-result v0

    monitor-exit v1

    return v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public pause()V
    .locals 2

    iget-object v1, p0, Lcom/google/android/gms/internal/zzhf;->zzpd:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzhf;->zzGW:Lcom/google/android/gms/internal/zzhg;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzhg;->pause()V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public resume()V
    .locals 2

    iget-object v1, p0, Lcom/google/android/gms/internal/zzhf;->zzpd:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzhf;->zzGW:Lcom/google/android/gms/internal/zzhg;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzhg;->resume()V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setUserId(Ljava/lang/String;)V
    .locals 2
    .param p1, "userId"    # Ljava/lang/String;

    .prologue
    iget-object v1, p0, Lcom/google/android/gms/internal/zzhf;->zzpd:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzhf;->zzGW:Lcom/google/android/gms/internal/zzhg;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/zzhg;->setUserId(Ljava/lang/String;)V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public show()V
    .locals 2

    iget-object v1, p0, Lcom/google/android/gms/internal/zzhf;->zzpd:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzhf;->zzGW:Lcom/google/android/gms/internal/zzhg;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzhg;->zzga()V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public zza(Lcom/google/android/gms/ads/internal/reward/client/RewardedVideoAdRequestParcel;)V
    .locals 2

    iget-object v1, p0, Lcom/google/android/gms/internal/zzhf;->zzpd:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzhf;->zzGW:Lcom/google/android/gms/internal/zzhg;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/zzhg;->zza(Lcom/google/android/gms/ads/internal/reward/client/RewardedVideoAdRequestParcel;)V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public zza(Lcom/google/android/gms/ads/internal/reward/client/zzd;)V
    .locals 2

    iget-object v1, p0, Lcom/google/android/gms/internal/zzhf;->zzpd:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzhf;->zzGW:Lcom/google/android/gms/internal/zzhg;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/zzhg;->zza(Lcom/google/android/gms/ads/internal/reward/client/zzd;)V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
