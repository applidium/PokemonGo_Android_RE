.class Lcom/google/android/gms/internal/zzdz$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zzdz;->zzdM()Lcom/google/android/gms/internal/zzdz$zze;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zzyt:Lcom/google/android/gms/internal/zzdz$zze;

.field final synthetic zzyu:Lcom/google/android/gms/internal/zzdz;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzdz;Lcom/google/android/gms/internal/zzdz$zze;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzdz$1;->zzyu:Lcom/google/android/gms/internal/zzdz;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzdz$1;->zzyt:Lcom/google/android/gms/internal/zzdz$zze;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    iget-object v0, p0, Lcom/google/android/gms/internal/zzdz$1;->zzyu:Lcom/google/android/gms/internal/zzdz;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzdz$1;->zzyu:Lcom/google/android/gms/internal/zzdz;

    invoke-static {v1}, Lcom/google/android/gms/internal/zzdz;->zza(Lcom/google/android/gms/internal/zzdz;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/zzdz$1;->zzyu:Lcom/google/android/gms/internal/zzdz;

    invoke-static {v2}, Lcom/google/android/gms/internal/zzdz;->zzb(Lcom/google/android/gms/internal/zzdz;)Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/zzdz;->zza(Landroid/content/Context;Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;)Lcom/google/android/gms/internal/zzbb;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/zzdz$1$1;

    invoke-direct {v1, p0, v0}, Lcom/google/android/gms/internal/zzdz$1$1;-><init>(Lcom/google/android/gms/internal/zzdz$1;Lcom/google/android/gms/internal/zzbb;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/zzbb;->zza(Lcom/google/android/gms/internal/zzbb$zza;)V

    const-string v1, "/jsLoaded"

    new-instance v2, Lcom/google/android/gms/internal/zzdz$1$2;

    invoke-direct {v2, p0, v0}, Lcom/google/android/gms/internal/zzdz$1$2;-><init>(Lcom/google/android/gms/internal/zzdz$1;Lcom/google/android/gms/internal/zzbb;)V

    invoke-interface {v0, v1, v2}, Lcom/google/android/gms/internal/zzbb;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/zzdk;)V

    new-instance v1, Lcom/google/android/gms/internal/zzil;

    invoke-direct {v1}, Lcom/google/android/gms/internal/zzil;-><init>()V

    new-instance v2, Lcom/google/android/gms/internal/zzdz$1$3;

    invoke-direct {v2, p0, v0, v1}, Lcom/google/android/gms/internal/zzdz$1$3;-><init>(Lcom/google/android/gms/internal/zzdz$1;Lcom/google/android/gms/internal/zzbb;Lcom/google/android/gms/internal/zzil;)V

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/zzil;->set(Ljava/lang/Object;)V

    const-string v1, "/requestReload"

    invoke-interface {v0, v1, v2}, Lcom/google/android/gms/internal/zzbb;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/zzdk;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/zzdz$1;->zzyu:Lcom/google/android/gms/internal/zzdz;

    invoke-static {v1}, Lcom/google/android/gms/internal/zzdz;->zzf(Lcom/google/android/gms/internal/zzdz;)Ljava/lang/String;

    move-result-object v1

    const-string v2, ".js"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzdz$1;->zzyu:Lcom/google/android/gms/internal/zzdz;

    invoke-static {v1}, Lcom/google/android/gms/internal/zzdz;->zzf(Lcom/google/android/gms/internal/zzdz;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/zzbb;->zzs(Ljava/lang/String;)V

    :goto_0
    sget-object v1, Lcom/google/android/gms/internal/zzid;->zzIE:Landroid/os/Handler;

    new-instance v2, Lcom/google/android/gms/internal/zzdz$1$4;

    invoke-direct {v2, p0, v0}, Lcom/google/android/gms/internal/zzdz$1$4;-><init>(Lcom/google/android/gms/internal/zzdz$1;Lcom/google/android/gms/internal/zzbb;)V

    sget v0, Lcom/google/android/gms/internal/zzdz$zza;->zzyC:I

    int-to-long v4, v0

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/internal/zzdz$1;->zzyu:Lcom/google/android/gms/internal/zzdz;

    invoke-static {v1}, Lcom/google/android/gms/internal/zzdz;->zzf(Lcom/google/android/gms/internal/zzdz;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "<html>"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/google/android/gms/internal/zzdz$1;->zzyu:Lcom/google/android/gms/internal/zzdz;

    invoke-static {v1}, Lcom/google/android/gms/internal/zzdz;->zzf(Lcom/google/android/gms/internal/zzdz;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/zzbb;->zzu(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/google/android/gms/internal/zzdz$1;->zzyu:Lcom/google/android/gms/internal/zzdz;

    invoke-static {v1}, Lcom/google/android/gms/internal/zzdz;->zzf(Lcom/google/android/gms/internal/zzdz;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/zzbb;->zzt(Ljava/lang/String;)V

    goto :goto_0
.end method
