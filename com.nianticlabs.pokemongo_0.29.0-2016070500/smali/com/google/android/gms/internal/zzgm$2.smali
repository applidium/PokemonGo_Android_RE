.class Lcom/google/android/gms/internal/zzgm$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zzgm;->zzd(Lorg/json/JSONObject;)Lcom/google/android/gms/internal/zzgm$zza;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zzDN:Lcom/google/android/gms/internal/zzgm;

.field final synthetic zzDO:Lcom/google/android/gms/internal/zzin;

.field final synthetic zzDP:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzgm;Lcom/google/android/gms/internal/zzin;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzgm$2;->zzDN:Lcom/google/android/gms/internal/zzgm;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzgm$2;->zzDO:Lcom/google/android/gms/internal/zzin;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzgm$2;->zzDP:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/zzgm$2;->zzDO:Lcom/google/android/gms/internal/zzin;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzgm$2;->zzDN:Lcom/google/android/gms/internal/zzgm;

    invoke-static {v1}, Lcom/google/android/gms/internal/zzgm;->zza(Lcom/google/android/gms/internal/zzgm;)Lcom/google/android/gms/ads/internal/zzn;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/ads/internal/zzn;->zzbo()Lcom/google/android/gms/internal/zzmi;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/zzgm$2;->zzDP:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/zzmi;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzin;->zzf(Ljava/lang/Object;)V

    return-void
.end method
