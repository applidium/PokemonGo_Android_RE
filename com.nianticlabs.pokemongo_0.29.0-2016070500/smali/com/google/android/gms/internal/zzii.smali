.class public Lcom/google/android/gms/internal/zzii;
.super Ljava/lang/Object;


# instance fields
.field private mHandler:Landroid/os/Handler;

.field private zzJh:Landroid/os/HandlerThread;

.field private zzJi:I

.field private final zzpd:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzii;->zzJh:Landroid/os/HandlerThread;

    iput-object v0, p0, Lcom/google/android/gms/internal/zzii;->mHandler:Landroid/os/Handler;

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/internal/zzii;->zzJi:I

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzii;->zzpd:Ljava/lang/Object;

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/zzii;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzii;->zzpd:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic zzb(Lcom/google/android/gms/internal/zzii;)I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/zzii;->zzJi:I

    return v0
.end method


# virtual methods
.method public zzgM()Landroid/os/Looper;
    .locals 3

    iget-object v1, p0, Lcom/google/android/gms/internal/zzii;->zzpd:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget v0, p0, Lcom/google/android/gms/internal/zzii;->zzJi:I

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzii;->zzJh:Landroid/os/HandlerThread;

    if-nez v0, :cond_0

    const-string v0, "Starting the looper thread."

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/client/zzb;->v(Ljava/lang/String;)V

    new-instance v0, Landroid/os/HandlerThread;

    const-string v2, "LooperProvider"

    invoke-direct {v0, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzii;->zzJh:Landroid/os/HandlerThread;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzii;->zzJh:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    new-instance v0, Landroid/os/Handler;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzii;->zzJh:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzii;->mHandler:Landroid/os/Handler;

    const-string v0, "Looper thread started."

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/client/zzb;->v(Ljava/lang/String;)V

    :goto_0
    iget v0, p0, Lcom/google/android/gms/internal/zzii;->zzJi:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/gms/internal/zzii;->zzJi:I

    iget-object v0, p0, Lcom/google/android/gms/internal/zzii;->zzJh:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    monitor-exit v1

    return-object v0

    :cond_0
    const-string v0, "Resuming the looper thread"

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/client/zzb;->v(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzii;->zzpd:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/internal/zzii;->zzJh:Landroid/os/HandlerThread;

    const-string v2, "Invalid state: mHandlerThread should already been initialized."

    invoke-static {v0, v2}, Lcom/google/android/gms/common/internal/zzx;->zzb(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public zzgN()V
    .locals 3

    iget-object v1, p0, Lcom/google/android/gms/internal/zzii;->zzpd:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget v0, p0, Lcom/google/android/gms/internal/zzii;->zzJi:I

    if-lez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    const-string v2, "Invalid state: release() called more times than expected."

    invoke-static {v0, v2}, Lcom/google/android/gms/common/internal/zzx;->zzb(ZLjava/lang/Object;)V

    iget v0, p0, Lcom/google/android/gms/internal/zzii;->zzJi:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/google/android/gms/internal/zzii;->zzJi:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzii;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/google/android/gms/internal/zzii$1;

    invoke-direct {v2, p0}, Lcom/google/android/gms/internal/zzii$1;-><init>(Lcom/google/android/gms/internal/zzii;)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    monitor-exit v1

    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
