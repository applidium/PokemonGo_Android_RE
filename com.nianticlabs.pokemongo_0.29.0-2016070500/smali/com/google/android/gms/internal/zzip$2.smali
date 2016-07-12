.class final Lcom/google/android/gms/internal/zzip$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zzip;->zzh(Ljava/util/List;)Lcom/google/android/gms/internal/zziq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic zzJE:Ljava/util/concurrent/atomic/AtomicInteger;

.field final synthetic zzJF:I

.field final synthetic zzJG:Lcom/google/android/gms/internal/zzin;

.field final synthetic zzJH:Ljava/util/List;


# direct methods
.method constructor <init>(Ljava/util/concurrent/atomic/AtomicInteger;ILcom/google/android/gms/internal/zzin;Ljava/util/List;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzip$2;->zzJE:Ljava/util/concurrent/atomic/AtomicInteger;

    iput p2, p0, Lcom/google/android/gms/internal/zzip$2;->zzJF:I

    iput-object p3, p0, Lcom/google/android/gms/internal/zzip$2;->zzJG:Lcom/google/android/gms/internal/zzin;

    iput-object p4, p0, Lcom/google/android/gms/internal/zzip$2;->zzJH:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzip$2;->zzJE:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v0

    iget v1, p0, Lcom/google/android/gms/internal/zzip$2;->zzJF:I

    if-lt v0, v1, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzip$2;->zzJG:Lcom/google/android/gms/internal/zzin;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzip$2;->zzJH:Ljava/util/List;

    invoke-static {v1}, Lcom/google/android/gms/internal/zzip;->zzj(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzin;->zzf(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    :goto_1
    const-string v1, "Unable to convert list of futures to a future of list"

    invoke-static {v1, v0}, Lcom/google/android/gms/ads/internal/util/client/zzb;->zzd(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_1
.end method
