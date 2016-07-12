.class Lcom/google/android/gms/ads/internal/zzf$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/zzja$zzb;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/ads/internal/zzf;->zza(Lcom/google/android/gms/internal/zzhs;Lcom/google/android/gms/internal/zzhs;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zzoO:Lcom/google/android/gms/internal/zzhs;

.field final synthetic zzoP:Lcom/google/android/gms/ads/internal/zzf;


# direct methods
.method constructor <init>(Lcom/google/android/gms/ads/internal/zzf;Lcom/google/android/gms/internal/zzhs;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/zzf$1;->zzoP:Lcom/google/android/gms/ads/internal/zzf;

    iput-object p2, p0, Lcom/google/android/gms/ads/internal/zzf$1;->zzoO:Lcom/google/android/gms/internal/zzhs;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public zzbf()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzf$1;->zzoP:Lcom/google/android/gms/ads/internal/zzf;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzf;->zzov:Lcom/google/android/gms/internal/zzay;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/zzf$1;->zzoP:Lcom/google/android/gms/ads/internal/zzf;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/zzf;->zzot:Lcom/google/android/gms/ads/internal/zzq;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/zzq;->zzqn:Lcom/google/android/gms/ads/internal/client/AdSizeParcel;

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/zzf$1;->zzoO:Lcom/google/android/gms/internal/zzhs;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/zzay;->zza(Lcom/google/android/gms/ads/internal/client/AdSizeParcel;Lcom/google/android/gms/internal/zzhs;)Lcom/google/android/gms/internal/zzaz;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/zzf$1;->zzoO:Lcom/google/android/gms/internal/zzhs;

    iget-object v1, v1, Lcom/google/android/gms/internal/zzhs;->zzBD:Lcom/google/android/gms/internal/zziz;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzaz;->zza(Lcom/google/android/gms/internal/zzaw;)V

    return-void
.end method
