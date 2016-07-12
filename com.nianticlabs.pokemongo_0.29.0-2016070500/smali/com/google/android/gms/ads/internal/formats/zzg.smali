.class public Lcom/google/android/gms/ads/internal/formats/zzg;
.super Lcom/google/android/gms/ads/internal/formats/zzh;


# instance fields
.field private zzpd:Ljava/lang/Object;

.field private zzwD:Lcom/google/android/gms/internal/zzeq;

.field private zzwE:Lcom/google/android/gms/internal/zzer;

.field private final zzwF:Lcom/google/android/gms/ads/internal/zzn;

.field private zzwG:Lcom/google/android/gms/ads/internal/formats/zzh;

.field private zzwH:Z


# direct methods
.method private constructor <init>(Landroid/content/Context;Lcom/google/android/gms/ads/internal/zzn;Lcom/google/android/gms/internal/zzan;)V
    .locals 8

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move-object v5, v3

    move-object v6, v3

    move-object v7, v3

    invoke-direct/range {v0 .. v7}, Lcom/google/android/gms/ads/internal/formats/zzh;-><init>(Landroid/content/Context;Lcom/google/android/gms/ads/internal/zzn;Lcom/google/android/gms/internal/zzbb;Lcom/google/android/gms/internal/zzan;Lorg/json/JSONObject;Lcom/google/android/gms/ads/internal/formats/zzh$zza;Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/ads/internal/formats/zzg;->zzwH:Z

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/ads/internal/formats/zzg;->zzpd:Ljava/lang/Object;

    iput-object p2, p0, Lcom/google/android/gms/ads/internal/formats/zzg;->zzwF:Lcom/google/android/gms/ads/internal/zzn;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/ads/internal/zzn;Lcom/google/android/gms/internal/zzan;Lcom/google/android/gms/internal/zzeq;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/gms/ads/internal/formats/zzg;-><init>(Landroid/content/Context;Lcom/google/android/gms/ads/internal/zzn;Lcom/google/android/gms/internal/zzan;)V

    iput-object p4, p0, Lcom/google/android/gms/ads/internal/formats/zzg;->zzwD:Lcom/google/android/gms/internal/zzeq;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/ads/internal/zzn;Lcom/google/android/gms/internal/zzan;Lcom/google/android/gms/internal/zzer;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/gms/ads/internal/formats/zzg;-><init>(Landroid/content/Context;Lcom/google/android/gms/ads/internal/zzn;Lcom/google/android/gms/internal/zzan;)V

    iput-object p4, p0, Lcom/google/android/gms/ads/internal/formats/zzg;->zzwE:Lcom/google/android/gms/internal/zzer;

    return-void
.end method


# virtual methods
.method public recordImpression()V
    .locals 3

    const-string v0, "recordImpression must be called on the main UI thread."

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzx;->zzci(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/formats/zzg;->zzpd:Ljava/lang/Object;

    monitor-enter v1

    const/4 v0, 0x1

    :try_start_0
    invoke-virtual {p0, v0}, Lcom/google/android/gms/ads/internal/formats/zzg;->zzl(Z)V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/formats/zzg;->zzwG:Lcom/google/android/gms/ads/internal/formats/zzh;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/formats/zzg;->zzwG:Lcom/google/android/gms/ads/internal/formats/zzh;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/formats/zzh;->recordImpression()V

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/formats/zzg;->zzwF:Lcom/google/android/gms/ads/internal/zzn;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/zzn;->recordImpression()V

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/formats/zzg;->zzwD:Lcom/google/android/gms/internal/zzeq;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/formats/zzg;->zzwD:Lcom/google/android/gms/internal/zzeq;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzeq;->getOverrideClickHandling()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/formats/zzg;->zzwD:Lcom/google/android/gms/internal/zzeq;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzeq;->recordImpression()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_2
    const-string v2, "Failed to call recordImpression"

    invoke-static {v2, v0}, Lcom/google/android/gms/ads/internal/util/client/zzb;->zzd(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :cond_2
    :try_start_3
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/formats/zzg;->zzwE:Lcom/google/android/gms/internal/zzer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/formats/zzg;->zzwE:Lcom/google/android/gms/internal/zzer;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzer;->getOverrideClickHandling()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/formats/zzg;->zzwE:Lcom/google/android/gms/internal/zzer;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzer;->recordImpression()V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0
.end method

.method public zza(Landroid/view/View$OnClickListener;)Lcom/google/android/gms/ads/internal/formats/zzb;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public zza(Landroid/view/View;Ljava/util/Map;Lorg/json/JSONObject;Lorg/json/JSONObject;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/view/View;",
            ">;>;",
            "Lorg/json/JSONObject;",
            "Lorg/json/JSONObject;",
            ")V"
        }
    .end annotation

    const-string v0, "performClick must be called on the main UI thread."

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzx;->zzci(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/formats/zzg;->zzpd:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/formats/zzg;->zzwG:Lcom/google/android/gms/ads/internal/formats/zzh;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/formats/zzg;->zzwG:Lcom/google/android/gms/ads/internal/formats/zzh;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/google/android/gms/ads/internal/formats/zzh;->zza(Landroid/view/View;Ljava/util/Map;Lorg/json/JSONObject;Lorg/json/JSONObject;)V

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/formats/zzg;->zzwF:Lcom/google/android/gms/ads/internal/zzn;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/zzn;->onAdClicked()V

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/formats/zzg;->zzwD:Lcom/google/android/gms/internal/zzeq;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/formats/zzg;->zzwD:Lcom/google/android/gms/internal/zzeq;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzeq;->getOverrideClickHandling()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/formats/zzg;->zzwD:Lcom/google/android/gms/internal/zzeq;

    invoke-static {p1}, Lcom/google/android/gms/dynamic/zze;->zzy(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/zzd;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/google/android/gms/internal/zzeq;->zzc(Lcom/google/android/gms/dynamic/zzd;)V

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/formats/zzg;->zzwE:Lcom/google/android/gms/internal/zzer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/formats/zzg;->zzwE:Lcom/google/android/gms/internal/zzer;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzer;->getOverrideClickHandling()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/formats/zzg;->zzwD:Lcom/google/android/gms/internal/zzeq;

    invoke-static {p1}, Lcom/google/android/gms/dynamic/zze;->zzy(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/zzd;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/google/android/gms/internal/zzeq;->zzc(Lcom/google/android/gms/dynamic/zzd;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_2
    const-string v2, "Failed to call performClick"

    invoke-static {v2, v0}, Lcom/google/android/gms/ads/internal/util/client/zzb;->zzd(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method public zzb(Lcom/google/android/gms/ads/internal/formats/zzh;)V
    .locals 2

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/formats/zzg;->zzpd:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iput-object p1, p0, Lcom/google/android/gms/ads/internal/formats/zzg;->zzwG:Lcom/google/android/gms/ads/internal/formats/zzh;

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public zzdB()Z
    .locals 2

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/formats/zzg;->zzpd:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/gms/ads/internal/formats/zzg;->zzwH:Z

    monitor-exit v1

    return v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public zzdC()Lcom/google/android/gms/internal/zziz;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public zzh(Landroid/view/View;)V
    .locals 3

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/formats/zzg;->zzpd:Ljava/lang/Object;

    monitor-enter v1

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/google/android/gms/ads/internal/formats/zzg;->zzwH:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/formats/zzg;->zzwD:Lcom/google/android/gms/internal/zzeq;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/formats/zzg;->zzwD:Lcom/google/android/gms/internal/zzeq;

    invoke-static {p1}, Lcom/google/android/gms/dynamic/zze;->zzy(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/zzd;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/google/android/gms/internal/zzeq;->zzd(Lcom/google/android/gms/dynamic/zzd;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_0
    :goto_0
    const/4 v0, 0x0

    :try_start_2
    iput-boolean v0, p0, Lcom/google/android/gms/ads/internal/formats/zzg;->zzwH:Z

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    return-void

    :cond_1
    :try_start_3
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/formats/zzg;->zzwE:Lcom/google/android/gms/internal/zzer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/formats/zzg;->zzwE:Lcom/google/android/gms/internal/zzer;

    invoke-static {p1}, Lcom/google/android/gms/dynamic/zze;->zzy(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/zzd;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/google/android/gms/internal/zzer;->zzd(Lcom/google/android/gms/dynamic/zzd;)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_4
    const-string v2, "Failed to call prepareAd"

    invoke-static {v2, v0}, Lcom/google/android/gms/ads/internal/util/client/zzb;->zzd(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v0
.end method
