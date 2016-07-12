.class Lcom/google/android/gms/internal/zzli$5;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zzli;->clearDefaultAccountAndReconnect()Lcom/google/android/gms/common/api/PendingResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zzacr:Lcom/google/android/gms/internal/zzli;

.field final synthetic zzacu:Ljava/util/concurrent/atomic/AtomicReference;

.field final synthetic zzacv:Lcom/google/android/gms/internal/zzlo;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzli;Ljava/util/concurrent/atomic/AtomicReference;Lcom/google/android/gms/internal/zzlo;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzli$5;->zzacr:Lcom/google/android/gms/internal/zzli;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzli$5;->zzacu:Ljava/util/concurrent/atomic/AtomicReference;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzli$5;->zzacv:Lcom/google/android/gms/internal/zzlo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onConnected(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "connectionHint"    # Landroid/os/Bundle;

    .prologue
    iget-object v1, p0, Lcom/google/android/gms/internal/zzli$5;->zzacr:Lcom/google/android/gms/internal/zzli;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzli$5;->zzacu:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/api/GoogleApiClient;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzli$5;->zzacv:Lcom/google/android/gms/internal/zzlo;

    const/4 v3, 0x1

    invoke-static {v1, v0, v2, v3}, Lcom/google/android/gms/internal/zzli;->zza(Lcom/google/android/gms/internal/zzli;Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/internal/zzlo;Z)V

    return-void
.end method

.method public onConnectionSuspended(I)V
    .locals 0
    .param p1, "cause"    # I

    .prologue
    return-void
.end method
