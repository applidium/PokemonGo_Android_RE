.class Lcom/google/android/gms/internal/zzdz$1$3;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/zzdk;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zzdz$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zzyv:Lcom/google/android/gms/internal/zzbb;

.field final synthetic zzyw:Lcom/google/android/gms/internal/zzdz$1;

.field final synthetic zzyz:Lcom/google/android/gms/internal/zzil;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzdz$1;Lcom/google/android/gms/internal/zzbb;Lcom/google/android/gms/internal/zzil;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzdz$1$3;->zzyw:Lcom/google/android/gms/internal/zzdz$1;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzdz$1$3;->zzyv:Lcom/google/android/gms/internal/zzbb;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzdz$1$3;->zzyz:Lcom/google/android/gms/internal/zzil;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public zza(Lcom/google/android/gms/internal/zziz;Ljava/util/Map;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zziz;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzdz$1$3;->zzyw:Lcom/google/android/gms/internal/zzdz$1;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzdz$1;->zzyu:Lcom/google/android/gms/internal/zzdz;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzdz;->zzc(Lcom/google/android/gms/internal/zzdz;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    const-string v0, "JS Engine is requesting an update"

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/client/zzb;->zzaG(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzdz$1$3;->zzyw:Lcom/google/android/gms/internal/zzdz$1;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzdz$1;->zzyu:Lcom/google/android/gms/internal/zzdz;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzdz;->zze(Lcom/google/android/gms/internal/zzdz;)I

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "Starting reload."

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/client/zzb;->zzaG(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzdz$1$3;->zzyw:Lcom/google/android/gms/internal/zzdz$1;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzdz$1;->zzyu:Lcom/google/android/gms/internal/zzdz;

    const/4 v2, 0x2

    invoke-static {v0, v2}, Lcom/google/android/gms/internal/zzdz;->zza(Lcom/google/android/gms/internal/zzdz;I)I

    iget-object v0, p0, Lcom/google/android/gms/internal/zzdz$1$3;->zzyw:Lcom/google/android/gms/internal/zzdz$1;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzdz$1;->zzyu:Lcom/google/android/gms/internal/zzdz;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzdz;->zzdN()Lcom/google/android/gms/internal/zzdz$zze;

    :cond_0
    iget-object v2, p0, Lcom/google/android/gms/internal/zzdz$1$3;->zzyv:Lcom/google/android/gms/internal/zzbb;

    const-string v3, "/requestReload"

    iget-object v0, p0, Lcom/google/android/gms/internal/zzdz$1$3;->zzyz:Lcom/google/android/gms/internal/zzil;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzil;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzdk;

    invoke-interface {v2, v3, v0}, Lcom/google/android/gms/internal/zzbb;->zzb(Ljava/lang/String;Lcom/google/android/gms/internal/zzdk;)V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
