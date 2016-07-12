.class public Lcom/google/android/gms/internal/zzdt;
.super Lcom/google/android/gms/internal/zzhz;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzgr;
.end annotation


# instance fields
.field final zzoM:Lcom/google/android/gms/internal/zziz;

.field final zzxY:Lcom/google/android/gms/internal/zzdv;

.field private final zzxZ:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zziz;Lcom/google/android/gms/internal/zzdv;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzhz;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzdt;->zzoM:Lcom/google/android/gms/internal/zziz;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzdt;->zzxY:Lcom/google/android/gms/internal/zzdv;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzdt;->zzxZ:Ljava/lang/String;

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzp;->zzbI()Lcom/google/android/gms/internal/zzdu;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/zzdu;->zza(Lcom/google/android/gms/internal/zzdt;)V

    return-void
.end method


# virtual methods
.method public onStop()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzdt;->zzxY:Lcom/google/android/gms/internal/zzdv;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzdv;->abort()V

    return-void
.end method

.method public zzbn()V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzdt;->zzxY:Lcom/google/android/gms/internal/zzdv;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzdt;->zzxZ:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzdv;->zzab(Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sget-object v0, Lcom/google/android/gms/internal/zzid;->zzIE:Landroid/os/Handler;

    new-instance v1, Lcom/google/android/gms/internal/zzdt$1;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/zzdt$1;-><init>(Lcom/google/android/gms/internal/zzdt;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :catchall_0
    move-exception v0

    sget-object v1, Lcom/google/android/gms/internal/zzid;->zzIE:Landroid/os/Handler;

    new-instance v2, Lcom/google/android/gms/internal/zzdt$1;

    invoke-direct {v2, p0}, Lcom/google/android/gms/internal/zzdt$1;-><init>(Lcom/google/android/gms/internal/zzdt;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    throw v0
.end method
