.class public Lcom/google/android/gms/internal/zzc;
.super Ljava/lang/Thread;


# static fields
.field private static final DEBUG:Z


# instance fields
.field private final zzh:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue",
            "<",
            "Lcom/google/android/gms/internal/zzk",
            "<*>;>;"
        }
    .end annotation
.end field

.field private final zzi:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue",
            "<",
            "Lcom/google/android/gms/internal/zzk",
            "<*>;>;"
        }
    .end annotation
.end field

.field private final zzj:Lcom/google/android/gms/internal/zzb;

.field private final zzk:Lcom/google/android/gms/internal/zzn;

.field private volatile zzl:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-boolean v0, Lcom/google/android/gms/internal/zzs;->DEBUG:Z

    sput-boolean v0, Lcom/google/android/gms/internal/zzc;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/BlockingQueue;Lcom/google/android/gms/internal/zzb;Lcom/google/android/gms/internal/zzn;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/BlockingQueue",
            "<",
            "Lcom/google/android/gms/internal/zzk",
            "<*>;>;",
            "Ljava/util/concurrent/BlockingQueue",
            "<",
            "Lcom/google/android/gms/internal/zzk",
            "<*>;>;",
            "Lcom/google/android/gms/internal/zzb;",
            "Lcom/google/android/gms/internal/zzn;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzc;->zzl:Z

    iput-object p1, p0, Lcom/google/android/gms/internal/zzc;->zzh:Ljava/util/concurrent/BlockingQueue;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzc;->zzi:Ljava/util/concurrent/BlockingQueue;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzc;->zzj:Lcom/google/android/gms/internal/zzb;

    iput-object p4, p0, Lcom/google/android/gms/internal/zzc;->zzk:Lcom/google/android/gms/internal/zzn;

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/zzc;)Ljava/util/concurrent/BlockingQueue;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzc;->zzi:Ljava/util/concurrent/BlockingQueue;

    return-object v0
.end method


# virtual methods
.method public quit()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzc;->zzl:Z

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzc;->interrupt()V

    return-void
.end method

.method public run()V
    .locals 5

    sget-boolean v0, Lcom/google/android/gms/internal/zzc;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "start new dispatcher"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/zzs;->zza(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    const/16 v0, 0xa

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzc;->zzj:Lcom/google/android/gms/internal/zzb;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzb;->zza()V

    :cond_1
    :goto_0
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzc;->zzh:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->take()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzk;

    const-string v1, "cache-queue-take"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzk;->zzc(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzk;->isCanceled()Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "cache-discard-canceled"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzk;->zzd(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzc;->zzl:Z

    if-eqz v0, :cond_1

    return-void

    :cond_2
    :try_start_1
    iget-object v1, p0, Lcom/google/android/gms/internal/zzc;->zzj:Lcom/google/android/gms/internal/zzb;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzk;->zzh()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/google/android/gms/internal/zzb;->zza(Ljava/lang/String;)Lcom/google/android/gms/internal/zzb$zza;

    move-result-object v1

    if-nez v1, :cond_3

    const-string v1, "cache-miss"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzk;->zzc(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/zzc;->zzi:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v1, v0}, Ljava/util/concurrent/BlockingQueue;->put(Ljava/lang/Object;)V

    goto :goto_0

    :cond_3
    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzb$zza;->zzb()Z

    move-result v2

    if-eqz v2, :cond_4

    const-string v2, "cache-hit-expired"

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/zzk;->zzc(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzk;->zza(Lcom/google/android/gms/internal/zzb$zza;)Lcom/google/android/gms/internal/zzk;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzc;->zzi:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v1, v0}, Ljava/util/concurrent/BlockingQueue;->put(Ljava/lang/Object;)V

    goto :goto_0

    :cond_4
    const-string v2, "cache-hit"

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/zzk;->zzc(Ljava/lang/String;)V

    new-instance v2, Lcom/google/android/gms/internal/zzi;

    iget-object v3, v1, Lcom/google/android/gms/internal/zzb$zza;->data:[B

    iget-object v4, v1, Lcom/google/android/gms/internal/zzb$zza;->zzg:Ljava/util/Map;

    invoke-direct {v2, v3, v4}, Lcom/google/android/gms/internal/zzi;-><init>([BLjava/util/Map;)V

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/zzk;->zza(Lcom/google/android/gms/internal/zzi;)Lcom/google/android/gms/internal/zzm;

    move-result-object v2

    const-string v3, "cache-hit-parsed"

    invoke-virtual {v0, v3}, Lcom/google/android/gms/internal/zzk;->zzc(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzb$zza;->zzc()Z

    move-result v3

    if-nez v3, :cond_5

    iget-object v1, p0, Lcom/google/android/gms/internal/zzc;->zzk:Lcom/google/android/gms/internal/zzn;

    invoke-interface {v1, v0, v2}, Lcom/google/android/gms/internal/zzn;->zza(Lcom/google/android/gms/internal/zzk;Lcom/google/android/gms/internal/zzm;)V

    goto :goto_0

    :cond_5
    const-string v3, "cache-hit-refresh-needed"

    invoke-virtual {v0, v3}, Lcom/google/android/gms/internal/zzk;->zzc(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzk;->zza(Lcom/google/android/gms/internal/zzb$zza;)Lcom/google/android/gms/internal/zzk;

    const/4 v1, 0x1

    iput-boolean v1, v2, Lcom/google/android/gms/internal/zzm;->zzai:Z

    iget-object v1, p0, Lcom/google/android/gms/internal/zzc;->zzk:Lcom/google/android/gms/internal/zzn;

    new-instance v3, Lcom/google/android/gms/internal/zzc$1;

    invoke-direct {v3, p0, v0}, Lcom/google/android/gms/internal/zzc$1;-><init>(Lcom/google/android/gms/internal/zzc;Lcom/google/android/gms/internal/zzk;)V

    invoke-interface {v1, v0, v2, v3}, Lcom/google/android/gms/internal/zzn;->zza(Lcom/google/android/gms/internal/zzk;Lcom/google/android/gms/internal/zzm;Ljava/lang/Runnable;)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method
