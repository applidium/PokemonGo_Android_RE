.class Lcom/google/android/gms/internal/zzdz$1$1$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zzdz$1$1;->zzcj()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zzyx:Lcom/google/android/gms/internal/zzdz$1$1;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzdz$1$1;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzdz$1$1$1;->zzyx:Lcom/google/android/gms/internal/zzdz$1$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/zzdz$1$1$1;->zzyx:Lcom/google/android/gms/internal/zzdz$1$1;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzdz$1$1;->zzyw:Lcom/google/android/gms/internal/zzdz$1;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzdz$1;->zzyu:Lcom/google/android/gms/internal/zzdz;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzdz;->zzc(Lcom/google/android/gms/internal/zzdz;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzdz$1$1$1;->zzyx:Lcom/google/android/gms/internal/zzdz$1$1;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzdz$1$1;->zzyw:Lcom/google/android/gms/internal/zzdz$1;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzdz$1;->zzyt:Lcom/google/android/gms/internal/zzdz$zze;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzdz$zze;->getStatus()I

    move-result v0

    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzdz$1$1$1;->zzyx:Lcom/google/android/gms/internal/zzdz$1$1;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzdz$1$1;->zzyw:Lcom/google/android/gms/internal/zzdz$1;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzdz$1;->zzyt:Lcom/google/android/gms/internal/zzdz$zze;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzdz$zze;->getStatus()I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    :cond_0
    monitor-exit v1

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/zzdz$1$1$1;->zzyx:Lcom/google/android/gms/internal/zzdz$1$1;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzdz$1$1;->zzyw:Lcom/google/android/gms/internal/zzdz$1;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzdz$1;->zzyt:Lcom/google/android/gms/internal/zzdz$zze;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzdz$zze;->reject()V

    new-instance v0, Lcom/google/android/gms/internal/zzdz$1$1$1$1;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/zzdz$1$1$1$1;-><init>(Lcom/google/android/gms/internal/zzdz$1$1$1;)V

    invoke-static {v0}, Lcom/google/android/gms/internal/zzid;->runOnUiThread(Ljava/lang/Runnable;)V

    const-string v0, "Could not receive loaded message in a timely manner. Rejecting."

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/client/zzb;->v(Ljava/lang/String;)V

    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
