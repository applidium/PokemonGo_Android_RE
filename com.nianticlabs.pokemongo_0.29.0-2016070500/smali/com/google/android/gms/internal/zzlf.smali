.class public Lcom/google/android/gms/internal/zzlf;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/zzlj;


# instance fields
.field private final zzabr:Lcom/google/android/gms/internal/zzli;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/zzli;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzlf;->zzabr:Lcom/google/android/gms/internal/zzli;

    return-void
.end method

.method private zza(Lcom/google/android/gms/internal/zzli$zzf;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A::",
            "Lcom/google/android/gms/common/api/Api$zzb;",
            ">(",
            "Lcom/google/android/gms/internal/zzli$zzf",
            "<TA;>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/DeadObjectException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzlf;->zzabr:Lcom/google/android/gms/internal/zzli;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/zzli;->zzb(Lcom/google/android/gms/internal/zzli$zzf;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzlf;->zzabr:Lcom/google/android/gms/internal/zzli;

    invoke-interface {p1}, Lcom/google/android/gms/internal/zzli$zzf;->zznx()Lcom/google/android/gms/common/api/Api$zzc;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzli;->zza(Lcom/google/android/gms/common/api/Api$zzc;)Lcom/google/android/gms/common/api/Api$zzb;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/common/api/Api$zzb;->isConnected()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzlf;->zzabr:Lcom/google/android/gms/internal/zzli;

    iget-object v1, v1, Lcom/google/android/gms/internal/zzli;->zzach:Ljava/util/Map;

    invoke-interface {p1}, Lcom/google/android/gms/internal/zzli$zzf;->zznx()Lcom/google/android/gms/common/api/Api$zzc;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v0, Lcom/google/android/gms/common/api/Status;

    const/16 v1, 0x11

    invoke-direct {v0, v1}, Lcom/google/android/gms/common/api/Status;-><init>(I)V

    invoke-interface {p1, v0}, Lcom/google/android/gms/internal/zzli$zzf;->zzv(Lcom/google/android/gms/common/api/Status;)V

    :goto_0
    return-void

    :cond_0
    invoke-interface {p1, v0}, Lcom/google/android/gms/internal/zzli$zzf;->zzb(Lcom/google/android/gms/common/api/Api$zzb;)V

    goto :goto_0
.end method


# virtual methods
.method public begin()V
    .locals 3

    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzlf;->zzabr:Lcom/google/android/gms/internal/zzli;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzli;->zzaca:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzlf;->zzabr:Lcom/google/android/gms/internal/zzli;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzli;->zzaca:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->remove()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzli$zzf;

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzlf;->zza(Lcom/google/android/gms/internal/zzli$zzf;)V
    :try_end_0
    .catch Landroid/os/DeadObjectException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "GACConnected"

    const-string v2, "Service died while flushing queue"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :cond_0
    return-void
.end method

.method public connect()V
    .locals 0

    return-void
.end method

.method public disconnect()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzlf;->zzabr:Lcom/google/android/gms/internal/zzli;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzli;->zzach:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzlf;->zzabr:Lcom/google/android/gms/internal/zzli;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzli;->zznY()V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzlf;->zzabr:Lcom/google/android/gms/internal/zzli;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzli;->zzg(Lcom/google/android/gms/common/ConnectionResult;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzlf;->zzabr:Lcom/google/android/gms/internal/zzli;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzli;->zzabZ:Lcom/google/android/gms/common/internal/zzk;

    invoke-virtual {v0}, Lcom/google/android/gms/common/internal/zzk;->zzpk()V

    return-void
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    const-string v0, "CONNECTED"

    return-object v0
.end method

.method public onConnected(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "connectionHint"    # Landroid/os/Bundle;

    .prologue
    return-void
.end method

.method public onConnectionSuspended(I)V
    .locals 5
    .param p1, "cause"    # I

    .prologue
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzlf;->zzabr:Lcom/google/android/gms/internal/zzli;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzli;->zzoe()V

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzlf;->zzabr:Lcom/google/android/gms/internal/zzli;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzli;->zzacm:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzli$zzf;

    new-instance v2, Lcom/google/android/gms/common/api/Status;

    const/16 v3, 0x8

    const-string v4, "The connection to Google Play services was lost"

    invoke-direct {v2, v3, v4}, Lcom/google/android/gms/common/api/Status;-><init>(ILjava/lang/String;)V

    invoke-interface {v0, v2}, Lcom/google/android/gms/internal/zzli$zzf;->zzw(Lcom/google/android/gms/common/api/Status;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/zzlf;->zzabr:Lcom/google/android/gms/internal/zzli;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzli;->zzg(Lcom/google/android/gms/common/ConnectionResult;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzlf;->zzabr:Lcom/google/android/gms/internal/zzli;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzli;->zzabZ:Lcom/google/android/gms/common/internal/zzk;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/common/internal/zzk;->zzbG(I)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzlf;->zzabr:Lcom/google/android/gms/internal/zzli;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzli;->zzabZ:Lcom/google/android/gms/common/internal/zzk;

    invoke-virtual {v0}, Lcom/google/android/gms/common/internal/zzk;->zzpk()V

    const/4 v0, 0x2

    if-ne p1, v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzlf;->zzabr:Lcom/google/android/gms/internal/zzli;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzli;->connect()V

    :cond_2
    return-void
.end method

.method public zza(Lcom/google/android/gms/internal/zzlb$zza;)Lcom/google/android/gms/internal/zzlb$zza;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A::",
            "Lcom/google/android/gms/common/api/Api$zzb;",
            "R::",
            "Lcom/google/android/gms/common/api/Result;",
            "T:",
            "Lcom/google/android/gms/internal/zzlb$zza",
            "<TR;TA;>;>(TT;)TT;"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzlf;->zzb(Lcom/google/android/gms/internal/zzlb$zza;)Lcom/google/android/gms/internal/zzlb$zza;

    move-result-object v0

    return-object v0
.end method

.method public zza(Lcom/google/android/gms/common/ConnectionResult;Lcom/google/android/gms/common/api/Api;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/ConnectionResult;",
            "Lcom/google/android/gms/common/api/Api",
            "<*>;I)V"
        }
    .end annotation

    return-void
.end method

.method public zzb(Lcom/google/android/gms/internal/zzlb$zza;)Lcom/google/android/gms/internal/zzlb$zza;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A::",
            "Lcom/google/android/gms/common/api/Api$zzb;",
            "T:",
            "Lcom/google/android/gms/internal/zzlb$zza",
            "<+",
            "Lcom/google/android/gms/common/api/Result;",
            "TA;>;>(TT;)TT;"
        }
    .end annotation

    :try_start_0
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzlf;->zza(Lcom/google/android/gms/internal/zzli$zzf;)V
    :try_end_0
    .catch Landroid/os/DeadObjectException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object p1

    :catch_0
    move-exception v0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzlf;->zzabr:Lcom/google/android/gms/internal/zzli;

    new-instance v1, Lcom/google/android/gms/internal/zzlf$1;

    invoke-direct {v1, p0, p0}, Lcom/google/android/gms/internal/zzlf$1;-><init>(Lcom/google/android/gms/internal/zzlf;Lcom/google/android/gms/internal/zzlj;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzli;->zza(Lcom/google/android/gms/internal/zzli$zzb;)V

    goto :goto_0
.end method
