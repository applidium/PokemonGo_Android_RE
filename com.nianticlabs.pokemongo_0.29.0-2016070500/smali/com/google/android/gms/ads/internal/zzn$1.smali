.class Lcom/google/android/gms/ads/internal/zzn$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/ads/internal/zzn;->zza(Lcom/google/android/gms/internal/zzhs$zza;Lcom/google/android/gms/internal/zzcg;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zzoB:Lcom/google/android/gms/internal/zzhs$zza;

.field final synthetic zzpB:Lcom/google/android/gms/ads/internal/zzn;


# direct methods
.method constructor <init>(Lcom/google/android/gms/ads/internal/zzn;Lcom/google/android/gms/internal/zzhs$zza;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/zzn$1;->zzpB:Lcom/google/android/gms/ads/internal/zzn;

    iput-object p2, p0, Lcom/google/android/gms/ads/internal/zzn$1;->zzoB:Lcom/google/android/gms/internal/zzhs$zza;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    const/4 v2, 0x0

    iget-object v8, p0, Lcom/google/android/gms/ads/internal/zzn$1;->zzpB:Lcom/google/android/gms/ads/internal/zzn;

    new-instance v0, Lcom/google/android/gms/internal/zzhs;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/zzn$1;->zzoB:Lcom/google/android/gms/internal/zzhs$zza;

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    move-object v6, v2

    move-object v7, v2

    invoke-direct/range {v0 .. v7}, Lcom/google/android/gms/internal/zzhs;-><init>(Lcom/google/android/gms/internal/zzhs$zza;Lcom/google/android/gms/internal/zziz;Lcom/google/android/gms/internal/zzed;Lcom/google/android/gms/internal/zzen;Ljava/lang/String;Lcom/google/android/gms/internal/zzeg;Lcom/google/android/gms/ads/internal/formats/zzh$zza;)V

    invoke-virtual {v8, v0}, Lcom/google/android/gms/ads/internal/zzn;->zzb(Lcom/google/android/gms/internal/zzhs;)V

    return-void
.end method
