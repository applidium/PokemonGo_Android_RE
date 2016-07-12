.class public Lcom/google/android/gms/ads/internal/formats/zzf;
.super Lcom/google/android/gms/internal/zzcu$zza;

# interfaces
.implements Lcom/google/android/gms/ads/internal/formats/zzh$zza;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzgr;
.end annotation


# instance fields
.field private final zzpd:Ljava/lang/Object;

.field private final zzwA:Ljava/lang/String;

.field private final zzwB:Lcom/google/android/gms/internal/zzmi;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/zzmi",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/ads/internal/formats/zzc;",
            ">;"
        }
    .end annotation
.end field

.field private final zzwC:Lcom/google/android/gms/internal/zzmi;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/zzmi",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final zzww:Lcom/google/android/gms/ads/internal/formats/zza;

.field private zzwx:Lcom/google/android/gms/ads/internal/formats/zzh;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/google/android/gms/internal/zzmi;Lcom/google/android/gms/internal/zzmi;Lcom/google/android/gms/ads/internal/formats/zza;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/zzmi",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/ads/internal/formats/zzc;",
            ">;",
            "Lcom/google/android/gms/internal/zzmi",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/google/android/gms/ads/internal/formats/zza;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzcu$zza;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/ads/internal/formats/zzf;->zzpd:Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/formats/zzf;->zzwA:Ljava/lang/String;

    iput-object p2, p0, Lcom/google/android/gms/ads/internal/formats/zzf;->zzwB:Lcom/google/android/gms/internal/zzmi;

    iput-object p3, p0, Lcom/google/android/gms/ads/internal/formats/zzf;->zzwC:Lcom/google/android/gms/internal/zzmi;

    iput-object p4, p0, Lcom/google/android/gms/ads/internal/formats/zzf;->zzww:Lcom/google/android/gms/ads/internal/formats/zza;

    return-void
.end method


# virtual methods
.method public getAvailableAssetNames()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/formats/zzf;->zzwB:Lcom/google/android/gms/internal/zzmi;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzmi;->size()I

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/formats/zzf;->zzwC:Lcom/google/android/gms/internal/zzmi;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzmi;->size()I

    move-result v1

    add-int/2addr v0, v1

    new-array v4, v0, [Ljava/lang/String;

    move v1, v2

    move v3, v2

    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/formats/zzf;->zzwB:Lcom/google/android/gms/internal/zzmi;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzmi;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/formats/zzf;->zzwB:Lcom/google/android/gms/internal/zzmi;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzmi;->keyAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    aput-object v0, v4, v3

    add-int/lit8 v0, v1, 0x1

    add-int/lit8 v1, v3, 0x1

    move v3, v1

    move v1, v0

    goto :goto_0

    :cond_0
    :goto_1
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/formats/zzf;->zzwC:Lcom/google/android/gms/internal/zzmi;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzmi;->size()I

    move-result v0

    if-ge v2, v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/formats/zzf;->zzwC:Lcom/google/android/gms/internal/zzmi;

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/zzmi;->keyAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    aput-object v0, v4, v3

    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getCustomTemplateId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/formats/zzf;->zzwA:Ljava/lang/String;

    return-object v0
.end method

.method public performClick(Ljava/lang/String;)V
    .locals 4
    .param p1, "assetName"    # Ljava/lang/String;

    .prologue
    iget-object v1, p0, Lcom/google/android/gms/ads/internal/formats/zzf;->zzpd:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/formats/zzf;->zzwx:Lcom/google/android/gms/ads/internal/formats/zzh;

    if-nez v0, :cond_0

    const-string v0, "Attempt to call performClick before ad initialized."

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/client/zzb;->e(Ljava/lang/String;)V

    monitor-exit v1

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/formats/zzf;->zzwx:Lcom/google/android/gms/ads/internal/formats/zzh;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, p1, v2, v3}, Lcom/google/android/gms/ads/internal/formats/zzh;->zza(Ljava/lang/String;Lorg/json/JSONObject;Lorg/json/JSONObject;)V

    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public recordImpression()V
    .locals 2

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/formats/zzf;->zzpd:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/formats/zzf;->zzwx:Lcom/google/android/gms/ads/internal/formats/zzh;

    if-nez v0, :cond_0

    const-string v0, "Attempt to perform recordImpression before ad initialized."

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/client/zzb;->e(Ljava/lang/String;)V

    monitor-exit v1

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/formats/zzf;->zzwx:Lcom/google/android/gms/ads/internal/formats/zzh;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/formats/zzh;->recordImpression()V

    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public zzU(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/formats/zzf;->zzwC:Lcom/google/android/gms/internal/zzmi;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/zzmi;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public zzV(Ljava/lang/String;)Lcom/google/android/gms/internal/zzcm;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/formats/zzf;->zzwB:Lcom/google/android/gms/internal/zzmi;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/zzmi;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzcm;

    return-object v0
.end method

.method public zza(Lcom/google/android/gms/ads/internal/formats/zzh;)V
    .locals 2

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/formats/zzf;->zzpd:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iput-object p1, p0, Lcom/google/android/gms/ads/internal/formats/zzf;->zzwx:Lcom/google/android/gms/ads/internal/formats/zzh;

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public zzdy()Ljava/lang/String;
    .locals 1

    const-string v0, "3"

    return-object v0
.end method

.method public zzdz()Lcom/google/android/gms/ads/internal/formats/zza;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/formats/zzf;->zzww:Lcom/google/android/gms/ads/internal/formats/zza;

    return-object v0
.end method
