.class public Lcom/google/android/gms/internal/zzlq;
.super Lcom/google/android/gms/common/api/zze;

# interfaces
.implements Lcom/google/android/gms/common/api/ResultCallback;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R::",
        "Lcom/google/android/gms/common/api/Result;",
        ">",
        "Lcom/google/android/gms/common/api/zze",
        "<TR;>;",
        "Lcom/google/android/gms/common/api/ResultCallback",
        "<TR;>;"
    }
.end annotation


# instance fields
.field private final zzabh:Ljava/lang/Object;

.field private zzacY:Lcom/google/android/gms/common/api/zzb;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/zzb",
            "<-TR;+",
            "Lcom/google/android/gms/common/api/Result;",
            ">;"
        }
    .end annotation
.end field

.field private zzacZ:Lcom/google/android/gms/internal/zzlq;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/zzlq",
            "<+",
            "Lcom/google/android/gms/common/api/Result;",
            ">;"
        }
    .end annotation
.end field

.field private zzada:Lcom/google/android/gms/common/api/ResultCallbacks;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/ResultCallbacks",
            "<-TR;>;"
        }
    .end annotation
.end field

.field private zzadb:Lcom/google/android/gms/common/api/PendingResult;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/PendingResult",
            "<TR;>;"
        }
    .end annotation
.end field


# direct methods
.method private zzd(Lcom/google/android/gms/common/api/Result;)V
    .locals 5

    instance-of v1, p1, Lcom/google/android/gms/common/api/Releasable;

    if-eqz v1, :cond_0

    :try_start_0
    move-object v0, p1

    check-cast v0, Lcom/google/android/gms/common/api/Releasable;

    move-object v1, v0

    invoke-interface {v1}, Lcom/google/android/gms/common/api/Releasable;->release()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v1

    const-string v2, "TransformedResultImpl"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to release "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private zzon()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzlq;->zzadb:Lcom/google/android/gms/common/api/PendingResult;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzlq;->zzacY:Lcom/google/android/gms/common/api/zzb;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzlq;->zzada:Lcom/google/android/gms/common/api/ResultCallbacks;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/zzlq;->zzadb:Lcom/google/android/gms/common/api/PendingResult;

    invoke-virtual {v0, p0}, Lcom/google/android/gms/common/api/PendingResult;->setResultCallback(Lcom/google/android/gms/common/api/ResultCallback;)V

    goto :goto_0
.end method


# virtual methods
.method public onResult(Lcom/google/android/gms/common/api/Result;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TR;)V"
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/google/android/gms/internal/zzlq;, "Lcom/google/android/gms/internal/zzlq<TR;>;"
    .local p1, "result":Lcom/google/android/gms/common/api/Result;, "TR;"
    iget-object v1, p0, Lcom/google/android/gms/internal/zzlq;->zzabh:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    invoke-interface {p1}, Lcom/google/android/gms/common/api/Result;->getStatus()Lcom/google/android/gms/common/api/Status;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/Status;->isSuccess()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/google/android/gms/internal/zzlq;->zzacY:Lcom/google/android/gms/common/api/zzb;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzlq;->zzacY:Lcom/google/android/gms/common/api/zzb;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/common/api/zzb;->zza(Lcom/google/android/gms/common/api/Result;)Lcom/google/android/gms/common/api/PendingResult;

    move-result-object v0

    if-nez v0, :cond_1

    new-instance v0, Lcom/google/android/gms/common/api/Status;

    const/16 v2, 0xd

    const-string v3, "Transform returned null"

    invoke-direct {v0, v2, v3}, Lcom/google/android/gms/common/api/Status;-><init>(ILjava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/zzlq;->zzx(Lcom/google/android/gms/common/api/Status;)V

    :goto_0
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzlq;->zzd(Lcom/google/android/gms/common/api/Result;)V

    :cond_0
    :goto_1
    monitor-exit v1

    return-void

    :cond_1
    iget-object v2, p0, Lcom/google/android/gms/internal/zzlq;->zzacZ:Lcom/google/android/gms/internal/zzlq;

    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/zzlq;->zza(Lcom/google/android/gms/common/api/PendingResult;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_2
    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/internal/zzlq;->zzada:Lcom/google/android/gms/common/api/ResultCallbacks;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzlq;->zzada:Lcom/google/android/gms/common/api/ResultCallbacks;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/common/api/ResultCallbacks;->onSuccess(Lcom/google/android/gms/common/api/Result;)V

    goto :goto_1

    :cond_3
    invoke-interface {p1}, Lcom/google/android/gms/common/api/Result;->getStatus()Lcom/google/android/gms/common/api/Status;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/zzlq;->zzx(Lcom/google/android/gms/common/api/Status;)V

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzlq;->zzd(Lcom/google/android/gms/common/api/Result;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method

.method public zza(Lcom/google/android/gms/common/api/PendingResult;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/PendingResult",
            "<*>;)V"
        }
    .end annotation

    iget-object v1, p0, Lcom/google/android/gms/internal/zzlq;->zzabh:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iput-object p1, p0, Lcom/google/android/gms/internal/zzlq;->zzadb:Lcom/google/android/gms/common/api/PendingResult;

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzlq;->zzon()V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public zzx(Lcom/google/android/gms/common/api/Status;)V
    .locals 3

    iget-object v1, p0, Lcom/google/android/gms/internal/zzlq;->zzabh:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzlq;->zzacY:Lcom/google/android/gms/common/api/zzb;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzlq;->zzacY:Lcom/google/android/gms/common/api/zzb;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/common/api/zzb;->zzu(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/common/api/Status;

    move-result-object v0

    const-string v2, "onFailure must not return null"

    invoke-static {v0, v2}, Lcom/google/android/gms/common/internal/zzx;->zzb(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzlq;->zzacZ:Lcom/google/android/gms/internal/zzlq;

    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/zzlq;->zzx(Lcom/google/android/gms/common/api/Status;)V

    :cond_0
    :goto_0
    monitor-exit v1

    return-void

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/zzlq;->zzada:Lcom/google/android/gms/common/api/ResultCallbacks;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzlq;->zzada:Lcom/google/android/gms/common/api/ResultCallbacks;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/common/api/ResultCallbacks;->onFailure(Lcom/google/android/gms/common/api/Status;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
