.class Lcom/google/android/gms/common/api/Batch$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/api/PendingResult$zza;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/common/api/Batch;-><init>(Ljava/util/List;Lcom/google/android/gms/common/api/GoogleApiClient;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zzaaC:Lcom/google/android/gms/common/api/Batch;


# direct methods
.method constructor <init>(Lcom/google/android/gms/common/api/Batch;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/common/api/Batch$1;->zzaaC:Lcom/google/android/gms/common/api/Batch;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public zzt(Lcom/google/android/gms/common/api/Status;)V
    .locals 5

    iget-object v0, p0, Lcom/google/android/gms/common/api/Batch$1;->zzaaC:Lcom/google/android/gms/common/api/Batch;

    invoke-static {v0}, Lcom/google/android/gms/common/api/Batch;->zza(Lcom/google/android/gms/common/api/Batch;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/common/api/Batch$1;->zzaaC:Lcom/google/android/gms/common/api/Batch;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/Batch;->isCanceled()Z

    move-result v0

    if-eqz v0, :cond_0

    monitor-exit v1

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/google/android/gms/common/api/Status;->isCanceled()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/google/android/gms/common/api/Batch$1;->zzaaC:Lcom/google/android/gms/common/api/Batch;

    const/4 v2, 0x1

    invoke-static {v0, v2}, Lcom/google/android/gms/common/api/Batch;->zza(Lcom/google/android/gms/common/api/Batch;Z)Z

    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/google/android/gms/common/api/Batch$1;->zzaaC:Lcom/google/android/gms/common/api/Batch;

    invoke-static {v0}, Lcom/google/android/gms/common/api/Batch;->zzb(Lcom/google/android/gms/common/api/Batch;)I

    iget-object v0, p0, Lcom/google/android/gms/common/api/Batch$1;->zzaaC:Lcom/google/android/gms/common/api/Batch;

    invoke-static {v0}, Lcom/google/android/gms/common/api/Batch;->zzc(Lcom/google/android/gms/common/api/Batch;)I

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/common/api/Batch$1;->zzaaC:Lcom/google/android/gms/common/api/Batch;

    invoke-static {v0}, Lcom/google/android/gms/common/api/Batch;->zzd(Lcom/google/android/gms/common/api/Batch;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/google/android/gms/common/api/Batch$1;->zzaaC:Lcom/google/android/gms/common/api/Batch;

    invoke-static {v0}, Lcom/google/android/gms/common/api/Batch;->zze(Lcom/google/android/gms/common/api/Batch;)V

    :cond_2
    :goto_2
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_3
    :try_start_1
    invoke-virtual {p1}, Lcom/google/android/gms/common/api/Status;->isSuccess()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/common/api/Batch$1;->zzaaC:Lcom/google/android/gms/common/api/Batch;

    const/4 v2, 0x1

    invoke-static {v0, v2}, Lcom/google/android/gms/common/api/Batch;->zzb(Lcom/google/android/gms/common/api/Batch;Z)Z

    goto :goto_1

    :cond_4
    iget-object v0, p0, Lcom/google/android/gms/common/api/Batch$1;->zzaaC:Lcom/google/android/gms/common/api/Batch;

    invoke-static {v0}, Lcom/google/android/gms/common/api/Batch;->zzf(Lcom/google/android/gms/common/api/Batch;)Z

    move-result v0

    if-eqz v0, :cond_5

    new-instance v0, Lcom/google/android/gms/common/api/Status;

    const/16 v2, 0xd

    invoke-direct {v0, v2}, Lcom/google/android/gms/common/api/Status;-><init>(I)V

    :goto_3
    iget-object v2, p0, Lcom/google/android/gms/common/api/Batch$1;->zzaaC:Lcom/google/android/gms/common/api/Batch;

    new-instance v3, Lcom/google/android/gms/common/api/BatchResult;

    iget-object v4, p0, Lcom/google/android/gms/common/api/Batch$1;->zzaaC:Lcom/google/android/gms/common/api/Batch;

    invoke-static {v4}, Lcom/google/android/gms/common/api/Batch;->zzg(Lcom/google/android/gms/common/api/Batch;)[Lcom/google/android/gms/common/api/PendingResult;

    move-result-object v4

    invoke-direct {v3, v0, v4}, Lcom/google/android/gms/common/api/BatchResult;-><init>(Lcom/google/android/gms/common/api/Status;[Lcom/google/android/gms/common/api/PendingResult;)V

    invoke-virtual {v2, v3}, Lcom/google/android/gms/common/api/Batch;->zzb(Lcom/google/android/gms/common/api/Result;)V

    goto :goto_2

    :cond_5
    sget-object v0, Lcom/google/android/gms/common/api/Status;->zzabb:Lcom/google/android/gms/common/api/Status;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_3
.end method
