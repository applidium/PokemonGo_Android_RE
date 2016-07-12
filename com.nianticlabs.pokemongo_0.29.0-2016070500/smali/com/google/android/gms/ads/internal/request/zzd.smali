.class public abstract Lcom/google/android/gms/ads/internal/request/zzd;
.super Lcom/google/android/gms/internal/zzhz;

# interfaces
.implements Lcom/google/android/gms/ads/internal/request/zzc$zza;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzgr;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/ads/internal/request/zzd$zzb;,
        Lcom/google/android/gms/ads/internal/request/zzd$zza;
    }
.end annotation


# instance fields
.field private zzDf:Lcom/google/android/gms/ads/internal/request/AdResponseParcel;

.field private final zzEi:Lcom/google/android/gms/ads/internal/request/zzc$zza;

.field private final zzpd:Ljava/lang/Object;

.field private final zzzz:Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;Lcom/google/android/gms/ads/internal/request/zzc$zza;)V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzhz;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/ads/internal/request/zzd;->zzpd:Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/request/zzd;->zzzz:Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;

    iput-object p2, p0, Lcom/google/android/gms/ads/internal/request/zzd;->zzEi:Lcom/google/android/gms/ads/internal/request/zzc$zza;

    return-void
.end method


# virtual methods
.method public final onStop()V
    .locals 0

    invoke-virtual {p0}, Lcom/google/android/gms/ads/internal/request/zzd;->zzfH()V

    return-void
.end method

.method zza(Lcom/google/android/gms/ads/internal/request/zzj;Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;)Z
    .locals 4

    const/4 v1, 0x0

    const/4 v0, 0x1

    :try_start_0
    new-instance v2, Lcom/google/android/gms/ads/internal/request/zzg;

    invoke-direct {v2, p0}, Lcom/google/android/gms/ads/internal/request/zzg;-><init>(Lcom/google/android/gms/ads/internal/request/zzc$zza;)V

    invoke-interface {p1, p2, v2}, Lcom/google/android/gms/ads/internal/request/zzj;->zza(Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;Lcom/google/android/gms/ads/internal/request/zzk;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_3

    :goto_0
    return v0

    :catch_0
    move-exception v2

    const-string v3, "Could not fetch ad response from ad request service."

    invoke-static {v3, v2}, Lcom/google/android/gms/ads/internal/util/client/zzb;->zzd(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzp;->zzby()Lcom/google/android/gms/internal/zzhu;

    move-result-object v3

    invoke-virtual {v3, v2, v0}, Lcom/google/android/gms/internal/zzhu;->zzc(Ljava/lang/Throwable;Z)V

    :goto_1
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/request/zzd;->zzEi:Lcom/google/android/gms/ads/internal/request/zzc$zza;

    new-instance v2, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;

    invoke-direct {v2, v1}, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;-><init>(I)V

    invoke-interface {v0, v2}, Lcom/google/android/gms/ads/internal/request/zzc$zza;->zzb(Lcom/google/android/gms/ads/internal/request/AdResponseParcel;)V

    move v0, v1

    goto :goto_0

    :catch_1
    move-exception v2

    const-string v3, "Could not fetch ad response from ad request service due to an Exception."

    invoke-static {v3, v2}, Lcom/google/android/gms/ads/internal/util/client/zzb;->zzd(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzp;->zzby()Lcom/google/android/gms/internal/zzhu;

    move-result-object v3

    invoke-virtual {v3, v2, v0}, Lcom/google/android/gms/internal/zzhu;->zzc(Ljava/lang/Throwable;Z)V

    goto :goto_1

    :catch_2
    move-exception v2

    const-string v3, "Could not fetch ad response from ad request service due to an Exception."

    invoke-static {v3, v2}, Lcom/google/android/gms/ads/internal/util/client/zzb;->zzd(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzp;->zzby()Lcom/google/android/gms/internal/zzhu;

    move-result-object v3

    invoke-virtual {v3, v2, v0}, Lcom/google/android/gms/internal/zzhu;->zzc(Ljava/lang/Throwable;Z)V

    goto :goto_1

    :catch_3
    move-exception v2

    const-string v3, "Could not fetch ad response from ad request service due to an Exception."

    invoke-static {v3, v2}, Lcom/google/android/gms/ads/internal/util/client/zzb;->zzd(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzp;->zzby()Lcom/google/android/gms/internal/zzhu;

    move-result-object v3

    invoke-virtual {v3, v2, v0}, Lcom/google/android/gms/internal/zzhu;->zzc(Ljava/lang/Throwable;Z)V

    goto :goto_1
.end method

.method public zzb(Lcom/google/android/gms/ads/internal/request/AdResponseParcel;)V
    .locals 2

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/request/zzd;->zzpd:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iput-object p1, p0, Lcom/google/android/gms/ads/internal/request/zzd;->zzDf:Lcom/google/android/gms/ads/internal/request/AdResponseParcel;

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/request/zzd;->zzpd:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public zzbn()V
    .locals 2

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/ads/internal/request/zzd;->zzfI()Lcom/google/android/gms/ads/internal/request/zzj;

    move-result-object v0

    if-nez v0, :cond_1

    new-instance v0, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;-><init>(I)V

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/request/zzd;->zzEi:Lcom/google/android/gms/ads/internal/request/zzc$zza;

    invoke-interface {v1, v0}, Lcom/google/android/gms/ads/internal/request/zzc$zza;->zzb(Lcom/google/android/gms/ads/internal/request/AdResponseParcel;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/google/android/gms/ads/internal/request/zzd;->zzfH()V

    return-void

    :cond_1
    :try_start_1
    iget-object v1, p0, Lcom/google/android/gms/ads/internal/request/zzd;->zzzz:Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/ads/internal/request/zzd;->zza(Lcom/google/android/gms/ads/internal/request/zzj;Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzp;->zzbz()Lcom/google/android/gms/internal/zzmn;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzmn;->elapsedRealtime()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/ads/internal/request/zzd;->zzi(J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lcom/google/android/gms/ads/internal/request/zzd;->zzfH()V

    throw v0
.end method

.method protected zzf(J)Z
    .locals 7

    const/4 v0, 0x0

    const-wide/32 v2, 0xea60

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzp;->zzbz()Lcom/google/android/gms/internal/zzmn;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/android/gms/internal/zzmn;->elapsedRealtime()J

    move-result-wide v4

    sub-long/2addr v4, p1

    sub-long/2addr v2, v4

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-gtz v1, :cond_0

    :goto_0
    return v0

    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/ads/internal/request/zzd;->zzpd:Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Ljava/lang/Object;->wait(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public abstract zzfH()V
.end method

.method public abstract zzfI()Lcom/google/android/gms/ads/internal/request/zzj;
.end method

.method protected zzi(J)V
    .locals 5

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/request/zzd;->zzpd:Ljava/lang/Object;

    monitor-enter v1

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/request/zzd;->zzDf:Lcom/google/android/gms/ads/internal/request/AdResponseParcel;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/request/zzd;->zzEi:Lcom/google/android/gms/ads/internal/request/zzc$zza;

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/request/zzd;->zzDf:Lcom/google/android/gms/ads/internal/request/AdResponseParcel;

    invoke-interface {v0, v2}, Lcom/google/android/gms/ads/internal/request/zzc$zza;->zzb(Lcom/google/android/gms/ads/internal/request/AdResponseParcel;)V

    monitor-exit v1

    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/ads/internal/request/zzd;->zzf(J)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/request/zzd;->zzDf:Lcom/google/android/gms/ads/internal/request/AdResponseParcel;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/request/zzd;->zzEi:Lcom/google/android/gms/ads/internal/request/zzc$zza;

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/request/zzd;->zzDf:Lcom/google/android/gms/ads/internal/request/AdResponseParcel;

    invoke-interface {v0, v2}, Lcom/google/android/gms/ads/internal/request/zzc$zza;->zzb(Lcom/google/android/gms/ads/internal/request/AdResponseParcel;)V

    :goto_1
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_2
    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/request/zzd;->zzEi:Lcom/google/android/gms/ads/internal/request/zzc$zza;

    new-instance v2, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;-><init>(I)V

    invoke-interface {v0, v2}, Lcom/google/android/gms/ads/internal/request/zzc$zza;->zzb(Lcom/google/android/gms/ads/internal/request/AdResponseParcel;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method
