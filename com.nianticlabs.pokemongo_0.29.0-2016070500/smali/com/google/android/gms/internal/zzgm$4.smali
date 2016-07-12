.class Lcom/google/android/gms/internal/zzgm$4;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/zzip$zza;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zzgm;->zze(Lorg/json/JSONObject;)Lcom/google/android/gms/internal/zziq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/zzip$zza",
        "<",
        "Ljava/util/List",
        "<",
        "Lcom/google/android/gms/ads/internal/formats/zzc;",
        ">;",
        "Lcom/google/android/gms/ads/internal/formats/zza;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic zzDN:Lcom/google/android/gms/internal/zzgm;

.field final synthetic zzDR:Ljava/lang/String;

.field final synthetic zzDS:Ljava/lang/Integer;

.field final synthetic zzDT:Ljava/lang/Integer;

.field final synthetic zzDU:I

.field final synthetic zzDV:I

.field final synthetic zzDW:I


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzgm;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;III)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzgm$4;->zzDN:Lcom/google/android/gms/internal/zzgm;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzgm$4;->zzDR:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzgm$4;->zzDS:Ljava/lang/Integer;

    iput-object p4, p0, Lcom/google/android/gms/internal/zzgm$4;->zzDT:Ljava/lang/Integer;

    iput p5, p0, Lcom/google/android/gms/internal/zzgm$4;->zzDU:I

    iput p6, p0, Lcom/google/android/gms/internal/zzgm$4;->zzDV:I

    iput p7, p0, Lcom/google/android/gms/internal/zzgm$4;->zzDW:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic zze(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzgm$4;->zzf(Ljava/util/List;)Lcom/google/android/gms/ads/internal/formats/zza;

    move-result-object v0

    return-object v0
.end method

.method public zzf(Ljava/util/List;)Lcom/google/android/gms/ads/internal/formats/zza;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/ads/internal/formats/zzc;",
            ">;)",
            "Lcom/google/android/gms/ads/internal/formats/zza;"
        }
    .end annotation

    const/4 v7, 0x0

    if-eqz p1, :cond_0

    :try_start_0
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    move-object v0, v7

    :goto_0
    move-object v7, v0

    :goto_1
    return-object v7

    :cond_1
    new-instance v0, Lcom/google/android/gms/ads/internal/formats/zza;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzgm$4;->zzDR:Ljava/lang/String;

    invoke-static {p1}, Lcom/google/android/gms/internal/zzgm;->zze(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gms/internal/zzgm$4;->zzDS:Ljava/lang/Integer;

    iget-object v4, p0, Lcom/google/android/gms/internal/zzgm$4;->zzDT:Ljava/lang/Integer;

    iget v5, p0, Lcom/google/android/gms/internal/zzgm$4;->zzDU:I

    if-lez v5, :cond_2

    iget v5, p0, Lcom/google/android/gms/internal/zzgm$4;->zzDU:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    :goto_2
    iget v6, p0, Lcom/google/android/gms/internal/zzgm$4;->zzDV:I

    iget v8, p0, Lcom/google/android/gms/internal/zzgm$4;->zzDW:I

    add-int/2addr v6, v8

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/ads/internal/formats/zza;-><init>(Ljava/lang/String;Ljava/util/List;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "Could not get attribution icon"

    invoke-static {v1, v0}, Lcom/google/android/gms/ads/internal/util/client/zzb;->zzb(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    :cond_2
    move-object v5, v7

    goto :goto_2
.end method
