.class public Lcom/google/android/gms/ads/internal/request/zzd$zzb;
.super Lcom/google/android/gms/ads/internal/request/zzd;

# interfaces
.implements Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;
.implements Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzgr;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/ads/internal/request/zzd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "zzb"
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private final zzEi:Lcom/google/android/gms/ads/internal/request/zzc$zza;

.field protected zzEj:Lcom/google/android/gms/ads/internal/request/zze;

.field private zzEk:Z

.field private final zzpd:Ljava/lang/Object;

.field private zzzz:Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;Lcom/google/android/gms/ads/internal/request/zzc$zza;)V
    .locals 6

    invoke-direct {p0, p2, p3}, Lcom/google/android/gms/ads/internal/request/zzd;-><init>(Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;Lcom/google/android/gms/ads/internal/request/zzc$zza;)V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/ads/internal/request/zzd$zzb;->zzpd:Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/request/zzd$zzb;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/ads/internal/request/zzd$zzb;->zzzz:Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;

    iput-object p3, p0, Lcom/google/android/gms/ads/internal/request/zzd$zzb;->zzEi:Lcom/google/android/gms/ads/internal/request/zzc$zza;

    sget-object v0, Lcom/google/android/gms/internal/zzby;->zzuK:Lcom/google/android/gms/internal/zzbu;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzbu;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/ads/internal/request/zzd$zzb;->zzEk:Z

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzp;->zzbG()Lcom/google/android/gms/internal/zzii;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzii;->zzgM()Landroid/os/Looper;

    move-result-object v2

    :goto_0
    new-instance v0, Lcom/google/android/gms/ads/internal/request/zze;

    iget-object v1, p2, Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;->zzqj:Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

    iget v5, v1, Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;->zzJw:I

    move-object v1, p1

    move-object v3, p0

    move-object v4, p0

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/ads/internal/request/zze;-><init>(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;I)V

    iput-object v0, p0, Lcom/google/android/gms/ads/internal/request/zzd$zzb;->zzEj:Lcom/google/android/gms/ads/internal/request/zze;

    invoke-virtual {p0}, Lcom/google/android/gms/ads/internal/request/zzd$zzb;->connect()V

    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    goto :goto_0
.end method


# virtual methods
.method protected connect()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/request/zzd$zzb;->zzEj:Lcom/google/android/gms/ads/internal/request/zze;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/request/zze;->zzoZ()V

    return-void
.end method

.method public onConnected(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "connectionHint"    # Landroid/os/Bundle;

    .prologue
    invoke-virtual {p0}, Lcom/google/android/gms/ads/internal/request/zzd$zzb;->zzgz()Ljava/util/concurrent/Future;

    return-void
.end method

.method public onConnectionFailed(Lcom/google/android/gms/common/ConnectionResult;)V
    .locals 6
    .param p1, "result"    # Lcom/google/android/gms/common/ConnectionResult;

    .prologue
    const-string v0, "Cannot connect to remote service, fallback to local instance."

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/client/zzb;->zzaF(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/android/gms/ads/internal/request/zzd$zzb;->zzfJ()Lcom/google/android/gms/internal/zzhz;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzhz;->zzgz()Ljava/util/concurrent/Future;

    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    const-string v0, "action"

    const-string v1, "gms_connection_failed_fallback_to_local"

    invoke-virtual {v4, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzp;->zzbv()Lcom/google/android/gms/internal/zzid;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/request/zzd$zzb;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/request/zzd$zzb;->zzzz:Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;

    iget-object v2, v2, Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;->zzqj:Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

    iget-object v2, v2, Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;->zzJu:Ljava/lang/String;

    const-string v3, "gmob-apps"

    const/4 v5, 0x1

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/zzid;->zzb(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Z)V

    return-void
.end method

.method public onConnectionSuspended(I)V
    .locals 1
    .param p1, "cause"    # I

    .prologue
    const-string v0, "Disconnected from remote ad request service."

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/client/zzb;->zzaF(Ljava/lang/String;)V

    return-void
.end method

.method public zzfH()V
    .locals 2

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/request/zzd$zzb;->zzpd:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/request/zzd$zzb;->zzEj:Lcom/google/android/gms/ads/internal/request/zze;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/request/zze;->isConnected()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/request/zzd$zzb;->zzEj:Lcom/google/android/gms/ads/internal/request/zze;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/request/zze;->isConnecting()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/request/zzd$zzb;->zzEj:Lcom/google/android/gms/ads/internal/request/zze;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/request/zze;->disconnect()V

    :cond_1
    invoke-static {}, Landroid/os/Binder;->flushPendingCommands()V

    iget-boolean v0, p0, Lcom/google/android/gms/ads/internal/request/zzd$zzb;->zzEk:Z

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzp;->zzbG()Lcom/google/android/gms/internal/zzii;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzii;->zzgN()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/ads/internal/request/zzd$zzb;->zzEk:Z

    :cond_2
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public zzfI()Lcom/google/android/gms/ads/internal/request/zzj;
    .locals 2

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/request/zzd$zzb;->zzpd:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/request/zzd$zzb;->zzEj:Lcom/google/android/gms/ads/internal/request/zze;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/request/zze;->zzfM()Lcom/google/android/gms/ads/internal/request/zzj;
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/DeadObjectException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    :try_start_1
    monitor-exit v1

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    :goto_1
    const/4 v0, 0x0

    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :catch_1
    move-exception v0

    goto :goto_1
.end method

.method zzfJ()Lcom/google/android/gms/internal/zzhz;
    .locals 4

    new-instance v0, Lcom/google/android/gms/ads/internal/request/zzd$zza;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/request/zzd$zzb;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/request/zzd$zzb;->zzzz:Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;

    iget-object v3, p0, Lcom/google/android/gms/ads/internal/request/zzd$zzb;->zzEi:Lcom/google/android/gms/ads/internal/request/zzc$zza;

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gms/ads/internal/request/zzd$zza;-><init>(Landroid/content/Context;Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;Lcom/google/android/gms/ads/internal/request/zzc$zza;)V

    return-object v0
.end method
