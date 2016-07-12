.class Lcom/google/android/gms/internal/zzdz$3;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/zzis$zza;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zzdz;->zzdN()Lcom/google/android/gms/internal/zzdz$zze;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zzyB:Lcom/google/android/gms/internal/zzdz$zze;

.field final synthetic zzyu:Lcom/google/android/gms/internal/zzdz;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzdz;Lcom/google/android/gms/internal/zzdz$zze;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzdz$3;->zzyu:Lcom/google/android/gms/internal/zzdz;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzdz$3;->zzyB:Lcom/google/android/gms/internal/zzdz$zze;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/zzdz$3;->zzyu:Lcom/google/android/gms/internal/zzdz;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzdz;->zzc(Lcom/google/android/gms/internal/zzdz;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzdz$3;->zzyu:Lcom/google/android/gms/internal/zzdz;

    const/4 v2, 0x1

    invoke-static {v0, v2}, Lcom/google/android/gms/internal/zzdz;->zza(Lcom/google/android/gms/internal/zzdz;I)I

    const-string v0, "Failed loading new engine. Marking new engine destroyable."

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/client/zzb;->v(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzdz$3;->zzyB:Lcom/google/android/gms/internal/zzdz$zze;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzdz$zze;->zzdR()V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
