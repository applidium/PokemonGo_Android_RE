.class Lcom/google/android/gms/internal/zzja$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zzja;->zzeG()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zzKi:Lcom/google/android/gms/internal/zzja;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzja;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzja$1;->zzKi:Lcom/google/android/gms/internal/zzja;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzja$1;->zzKi:Lcom/google/android/gms/internal/zzja;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzja;->zzoM:Lcom/google/android/gms/internal/zziz;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zziz;->zzho()V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzja$1;->zzKi:Lcom/google/android/gms/internal/zzja;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzja;->zzoM:Lcom/google/android/gms/internal/zziz;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zziz;->zzhc()Lcom/google/android/gms/ads/internal/overlay/zzd;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzeG()V

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzja$1;->zzKi:Lcom/google/android/gms/internal/zzja;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzja;->zzd(Lcom/google/android/gms/internal/zzja;)Lcom/google/android/gms/internal/zzja$zzb;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzja$1;->zzKi:Lcom/google/android/gms/internal/zzja;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzja;->zzd(Lcom/google/android/gms/internal/zzja;)Lcom/google/android/gms/internal/zzja$zzb;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzja$zzb;->zzbf()V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzja$1;->zzKi:Lcom/google/android/gms/internal/zzja;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/zzja;->zza(Lcom/google/android/gms/internal/zzja;Lcom/google/android/gms/internal/zzja$zzb;)Lcom/google/android/gms/internal/zzja$zzb;

    :cond_1
    return-void
.end method
