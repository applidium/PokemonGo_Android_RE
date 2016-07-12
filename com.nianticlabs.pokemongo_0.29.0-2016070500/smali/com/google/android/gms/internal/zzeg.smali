.class public final Lcom/google/android/gms/internal/zzeg;
.super Lcom/google/android/gms/internal/zzeo$zza;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzgr;
.end annotation


# instance fields
.field private final zzpd:Ljava/lang/Object;

.field private zzzh:Lcom/google/android/gms/internal/zzei$zza;

.field private zzzi:Lcom/google/android/gms/internal/zzef;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzeo$zza;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzeg;->zzpd:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public onAdClicked()V
    .locals 2

    iget-object v1, p0, Lcom/google/android/gms/internal/zzeg;->zzpd:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzeg;->zzzi:Lcom/google/android/gms/internal/zzef;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzeg;->zzzi:Lcom/google/android/gms/internal/zzef;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzef;->zzaX()V

    :cond_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public onAdClosed()V
    .locals 2

    iget-object v1, p0, Lcom/google/android/gms/internal/zzeg;->zzpd:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzeg;->zzzi:Lcom/google/android/gms/internal/zzef;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzeg;->zzzi:Lcom/google/android/gms/internal/zzef;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzef;->zzaY()V

    :cond_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public onAdFailedToLoad(I)V
    .locals 3
    .param p1, "error"    # I

    .prologue
    iget-object v1, p0, Lcom/google/android/gms/internal/zzeg;->zzpd:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzeg;->zzzh:Lcom/google/android/gms/internal/zzei$zza;

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    if-ne p1, v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    iget-object v2, p0, Lcom/google/android/gms/internal/zzeg;->zzzh:Lcom/google/android/gms/internal/zzei$zza;

    invoke-interface {v2, v0}, Lcom/google/android/gms/internal/zzei$zza;->zzq(I)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzeg;->zzzh:Lcom/google/android/gms/internal/zzei$zza;

    :cond_0
    monitor-exit v1

    return-void

    :cond_1
    const/4 v0, 0x2

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public onAdLeftApplication()V
    .locals 2

    iget-object v1, p0, Lcom/google/android/gms/internal/zzeg;->zzpd:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzeg;->zzzi:Lcom/google/android/gms/internal/zzef;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzeg;->zzzi:Lcom/google/android/gms/internal/zzef;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzef;->zzaZ()V

    :cond_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public onAdLoaded()V
    .locals 3

    iget-object v1, p0, Lcom/google/android/gms/internal/zzeg;->zzpd:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzeg;->zzzh:Lcom/google/android/gms/internal/zzei$zza;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzeg;->zzzh:Lcom/google/android/gms/internal/zzei$zza;

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Lcom/google/android/gms/internal/zzei$zza;->zzq(I)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzeg;->zzzh:Lcom/google/android/gms/internal/zzei$zza;

    monitor-exit v1

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzeg;->zzzi:Lcom/google/android/gms/internal/zzef;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzeg;->zzzi:Lcom/google/android/gms/internal/zzef;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzef;->zzbb()V

    :cond_1
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public onAdOpened()V
    .locals 2

    iget-object v1, p0, Lcom/google/android/gms/internal/zzeg;->zzpd:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzeg;->zzzi:Lcom/google/android/gms/internal/zzef;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzeg;->zzzi:Lcom/google/android/gms/internal/zzef;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzef;->zzba()V

    :cond_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public zza(Lcom/google/android/gms/internal/zzef;)V
    .locals 2

    iget-object v1, p0, Lcom/google/android/gms/internal/zzeg;->zzpd:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iput-object p1, p0, Lcom/google/android/gms/internal/zzeg;->zzzi:Lcom/google/android/gms/internal/zzef;

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public zza(Lcom/google/android/gms/internal/zzei$zza;)V
    .locals 2

    iget-object v1, p0, Lcom/google/android/gms/internal/zzeg;->zzpd:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iput-object p1, p0, Lcom/google/android/gms/internal/zzeg;->zzzh:Lcom/google/android/gms/internal/zzei$zza;

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public zza(Lcom/google/android/gms/internal/zzep;)V
    .locals 3

    iget-object v1, p0, Lcom/google/android/gms/internal/zzeg;->zzpd:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzeg;->zzzh:Lcom/google/android/gms/internal/zzei$zza;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzeg;->zzzh:Lcom/google/android/gms/internal/zzei$zza;

    const/4 v2, 0x0

    invoke-interface {v0, v2, p1}, Lcom/google/android/gms/internal/zzei$zza;->zza(ILcom/google/android/gms/internal/zzep;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzeg;->zzzh:Lcom/google/android/gms/internal/zzei$zza;

    monitor-exit v1

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzeg;->zzzi:Lcom/google/android/gms/internal/zzef;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzeg;->zzzi:Lcom/google/android/gms/internal/zzef;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzef;->zzbb()V

    :cond_1
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
