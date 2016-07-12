.class Lcom/google/android/gms/ads/internal/zzb$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/ads/internal/zzb;->zza(Ljava/lang/String;ZILandroid/content/Intent;Lcom/google/android/gms/ads/internal/purchase/zzf;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zzoA:Lcom/google/android/gms/ads/internal/zzb;

.field final synthetic zzoz:Landroid/content/Intent;


# direct methods
.method constructor <init>(Lcom/google/android/gms/ads/internal/zzb;Landroid/content/Intent;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/zzb$1;->zzoA:Lcom/google/android/gms/ads/internal/zzb;

    iput-object p2, p0, Lcom/google/android/gms/ads/internal/zzb$1;->zzoz:Landroid/content/Intent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzp;->zzbF()Lcom/google/android/gms/ads/internal/purchase/zzi;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/zzb$1;->zzoz:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/internal/purchase/zzi;->zzd(Landroid/content/Intent;)I

    move-result v0

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzp;->zzbF()Lcom/google/android/gms/ads/internal/purchase/zzi;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzb$1;->zzoA:Lcom/google/android/gms/ads/internal/zzb;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzb;->zzot:Lcom/google/android/gms/ads/internal/zzq;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzq;->zzqo:Lcom/google/android/gms/internal/zzhs;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzb$1;->zzoA:Lcom/google/android/gms/ads/internal/zzb;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzb;->zzot:Lcom/google/android/gms/ads/internal/zzq;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzq;->zzqo:Lcom/google/android/gms/internal/zzhs;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzhs;->zzBD:Lcom/google/android/gms/internal/zziz;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzb$1;->zzoA:Lcom/google/android/gms/ads/internal/zzb;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzb;->zzot:Lcom/google/android/gms/ads/internal/zzq;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzq;->zzqo:Lcom/google/android/gms/internal/zzhs;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzhs;->zzBD:Lcom/google/android/gms/internal/zziz;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zziz;->zzhc()Lcom/google/android/gms/ads/internal/overlay/zzd;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzb$1;->zzoA:Lcom/google/android/gms/ads/internal/zzb;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzb;->zzot:Lcom/google/android/gms/ads/internal/zzq;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzq;->zzqo:Lcom/google/android/gms/internal/zzhs;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzhs;->zzBD:Lcom/google/android/gms/internal/zziz;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zziz;->zzhc()Lcom/google/android/gms/ads/internal/overlay/zzd;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/overlay/zzd;->close()V

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzb$1;->zzoA:Lcom/google/android/gms/ads/internal/zzb;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzb;->zzot:Lcom/google/android/gms/ads/internal/zzq;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/google/android/gms/ads/internal/zzq;->zzqI:Z

    return-void
.end method
