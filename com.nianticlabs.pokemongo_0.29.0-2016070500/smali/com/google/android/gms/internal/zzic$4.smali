.class final Lcom/google/android/gms/internal/zzic$4;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zzic;->zza(Ljava/util/concurrent/ExecutorService;Ljava/util/concurrent/Callable;)Lcom/google/android/gms/internal/zziq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic zzIv:Ljava/util/concurrent/Future;

.field final synthetic zzrA:Lcom/google/android/gms/internal/zzin;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzin;Ljava/util/concurrent/Future;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzic$4;->zzrA:Lcom/google/android/gms/internal/zzin;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzic$4;->zzIv:Ljava/util/concurrent/Future;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzic$4;->zzrA:Lcom/google/android/gms/internal/zzin;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzin;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzic$4;->zzIv:Ljava/util/concurrent/Future;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Ljava/util/concurrent/Future;->cancel(Z)Z

    :cond_0
    return-void
.end method
