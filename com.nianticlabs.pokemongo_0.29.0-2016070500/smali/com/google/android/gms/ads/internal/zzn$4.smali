.class Lcom/google/android/gms/ads/internal/zzn$4;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/ads/internal/zzn;->zza(Lcom/google/android/gms/internal/zzhs;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zzpB:Lcom/google/android/gms/ads/internal/zzn;

.field final synthetic zzpE:Ljava/lang/String;

.field final synthetic zzpF:Lcom/google/android/gms/internal/zzhs;


# direct methods
.method constructor <init>(Lcom/google/android/gms/ads/internal/zzn;Ljava/lang/String;Lcom/google/android/gms/internal/zzhs;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/zzn$4;->zzpB:Lcom/google/android/gms/ads/internal/zzn;

    iput-object p2, p0, Lcom/google/android/gms/ads/internal/zzn$4;->zzpE:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/ads/internal/zzn$4;->zzpF:Lcom/google/android/gms/internal/zzhs;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzn$4;->zzpB:Lcom/google/android/gms/ads/internal/zzn;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzn;->zzot:Lcom/google/android/gms/ads/internal/zzq;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzq;->zzqA:Lcom/google/android/gms/internal/zzmi;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/zzn$4;->zzpE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzmi;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzcz;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/zzn$4;->zzpF:Lcom/google/android/gms/internal/zzhs;

    iget-object v1, v1, Lcom/google/android/gms/internal/zzhs;->zzHB:Lcom/google/android/gms/ads/internal/formats/zzh$zza;

    check-cast v1, Lcom/google/android/gms/ads/internal/formats/zzf;

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/zzcz;->zza(Lcom/google/android/gms/internal/zzcu;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "Could not call onCustomTemplateAdLoadedListener.onCustomTemplateAdLoaded()."

    invoke-static {v1, v0}, Lcom/google/android/gms/ads/internal/util/client/zzb;->zzd(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
