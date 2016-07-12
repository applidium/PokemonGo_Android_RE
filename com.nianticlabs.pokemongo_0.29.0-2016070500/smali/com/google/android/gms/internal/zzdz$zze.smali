.class public Lcom/google/android/gms/internal/zzdz$zze;
.super Lcom/google/android/gms/internal/zzit;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/zzdz;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "zze"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/zzit",
        "<",
        "Lcom/google/android/gms/internal/zzbb;",
        ">;"
    }
.end annotation


# instance fields
.field private final zzpd:Ljava/lang/Object;

.field private zzyH:Z

.field private zzyI:I

.field private zzyq:Lcom/google/android/gms/internal/zzdz$zzb;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/zzdz$zzb",
            "<",
            "Lcom/google/android/gms/internal/zzbb;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/zzdz$zzb;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzdz$zzb",
            "<",
            "Lcom/google/android/gms/internal/zzbb;",
            ">;)V"
        }
    .end annotation

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzit;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzdz$zze;->zzpd:Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/internal/zzdz$zze;->zzyq:Lcom/google/android/gms/internal/zzdz$zzb;

    iput-boolean v1, p0, Lcom/google/android/gms/internal/zzdz$zze;->zzyH:Z

    iput v1, p0, Lcom/google/android/gms/internal/zzdz$zze;->zzyI:I

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/zzdz$zze;)Lcom/google/android/gms/internal/zzdz$zzb;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzdz$zze;->zzyq:Lcom/google/android/gms/internal/zzdz$zzb;

    return-object v0
.end method


# virtual methods
.method public zzdP()Lcom/google/android/gms/internal/zzdz$zzd;
    .locals 4

    new-instance v1, Lcom/google/android/gms/internal/zzdz$zzd;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/zzdz$zzd;-><init>(Lcom/google/android/gms/internal/zzdz$zze;)V

    iget-object v2, p0, Lcom/google/android/gms/internal/zzdz$zze;->zzpd:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    new-instance v0, Lcom/google/android/gms/internal/zzdz$zze$1;

    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/internal/zzdz$zze$1;-><init>(Lcom/google/android/gms/internal/zzdz$zze;Lcom/google/android/gms/internal/zzdz$zzd;)V

    new-instance v3, Lcom/google/android/gms/internal/zzdz$zze$2;

    invoke-direct {v3, p0, v1}, Lcom/google/android/gms/internal/zzdz$zze$2;-><init>(Lcom/google/android/gms/internal/zzdz$zze;Lcom/google/android/gms/internal/zzdz$zzd;)V

    invoke-virtual {p0, v0, v3}, Lcom/google/android/gms/internal/zzdz$zze;->zza(Lcom/google/android/gms/internal/zzis$zzc;Lcom/google/android/gms/internal/zzis$zza;)V

    iget v0, p0, Lcom/google/android/gms/internal/zzdz$zze;->zzyI:I

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzx;->zzZ(Z)V

    iget v0, p0, Lcom/google/android/gms/internal/zzdz$zze;->zzyI:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/gms/internal/zzdz$zze;->zzyI:I

    monitor-exit v2

    return-object v1

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected zzdQ()V
    .locals 3

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/android/gms/internal/zzdz$zze;->zzpd:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget v2, p0, Lcom/google/android/gms/internal/zzdz$zze;->zzyI:I

    if-lt v2, v0, :cond_0

    :goto_0
    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzx;->zzZ(Z)V

    const-string v0, "Releasing 1 reference for JS Engine"

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/client/zzb;->v(Ljava/lang/String;)V

    iget v0, p0, Lcom/google/android/gms/internal/zzdz$zze;->zzyI:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/google/android/gms/internal/zzdz$zze;->zzyI:I

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzdz$zze;->zzdS()V

    monitor-exit v1

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public zzdR()V
    .locals 3

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/android/gms/internal/zzdz$zze;->zzpd:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget v2, p0, Lcom/google/android/gms/internal/zzdz$zze;->zzyI:I

    if-ltz v2, :cond_0

    :goto_0
    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzx;->zzZ(Z)V

    const-string v0, "Releasing root reference. JS Engine will be destroyed once other references are released."

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/client/zzb;->v(Ljava/lang/String;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzdz$zze;->zzyH:Z

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzdz$zze;->zzdS()V

    monitor-exit v1

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected zzdS()V
    .locals 3

    iget-object v1, p0, Lcom/google/android/gms/internal/zzdz$zze;->zzpd:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget v0, p0, Lcom/google/android/gms/internal/zzdz$zze;->zzyI:I

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzx;->zzZ(Z)V

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzdz$zze;->zzyH:Z

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/google/android/gms/internal/zzdz$zze;->zzyI:I

    if-nez v0, :cond_1

    const-string v0, "No reference is left (including root). Cleaning up engine."

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/client/zzb;->v(Ljava/lang/String;)V

    new-instance v0, Lcom/google/android/gms/internal/zzdz$zze$3;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/zzdz$zze$3;-><init>(Lcom/google/android/gms/internal/zzdz$zze;)V

    new-instance v2, Lcom/google/android/gms/internal/zzis$zzb;

    invoke-direct {v2}, Lcom/google/android/gms/internal/zzis$zzb;-><init>()V

    invoke-virtual {p0, v0, v2}, Lcom/google/android/gms/internal/zzdz$zze;->zza(Lcom/google/android/gms/internal/zzis$zzc;Lcom/google/android/gms/internal/zzis$zza;)V

    :goto_1
    monitor-exit v1

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    const-string v0, "There are still references to the engine. Not destroying."

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/client/zzb;->v(Ljava/lang/String;)V

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
