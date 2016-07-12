.class Lcom/google/android/gms/internal/zzeh$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zzeh;->zza(JJ)Lcom/google/android/gms/internal/zzei;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zzzr:Lcom/google/android/gms/internal/zzeg;

.field final synthetic zzzs:Lcom/google/android/gms/internal/zzeh;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzeh;Lcom/google/android/gms/internal/zzeg;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzeh$1;->zzzs:Lcom/google/android/gms/internal/zzeh;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzeh$1;->zzzr:Lcom/google/android/gms/internal/zzeg;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/zzeh$1;->zzzs:Lcom/google/android/gms/internal/zzeh;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzeh;->zza(Lcom/google/android/gms/internal/zzeh;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzeh$1;->zzzs:Lcom/google/android/gms/internal/zzeh;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzeh;->zzb(Lcom/google/android/gms/internal/zzeh;)I

    move-result v0

    const/4 v2, -0x2

    if-eq v0, v2, :cond_0

    monitor-exit v1

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzeh$1;->zzzs:Lcom/google/android/gms/internal/zzeh;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzeh$1;->zzzs:Lcom/google/android/gms/internal/zzeh;

    invoke-static {v2}, Lcom/google/android/gms/internal/zzeh;->zzc(Lcom/google/android/gms/internal/zzeh;)Lcom/google/android/gms/internal/zzen;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/google/android/gms/internal/zzeh;->zza(Lcom/google/android/gms/internal/zzeh;Lcom/google/android/gms/internal/zzen;)Lcom/google/android/gms/internal/zzen;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzeh$1;->zzzs:Lcom/google/android/gms/internal/zzeh;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzeh;->zzd(Lcom/google/android/gms/internal/zzeh;)Lcom/google/android/gms/internal/zzen;

    move-result-object v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzeh$1;->zzzs:Lcom/google/android/gms/internal/zzeh;

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/zzeh;->zzq(I)V

    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/internal/zzeh$1;->zzzr:Lcom/google/android/gms/internal/zzeg;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzeh$1;->zzzs:Lcom/google/android/gms/internal/zzeh;

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/zzeg;->zza(Lcom/google/android/gms/internal/zzei$zza;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzeh$1;->zzzs:Lcom/google/android/gms/internal/zzeh;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzeh$1;->zzzr:Lcom/google/android/gms/internal/zzeg;

    invoke-static {v0, v2}, Lcom/google/android/gms/internal/zzeh;->zza(Lcom/google/android/gms/internal/zzeh;Lcom/google/android/gms/internal/zzeg;)V

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method
