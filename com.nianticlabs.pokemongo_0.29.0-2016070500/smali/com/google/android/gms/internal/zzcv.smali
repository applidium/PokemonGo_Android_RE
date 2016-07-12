.class public Lcom/google/android/gms/internal/zzcv;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/ads/formats/NativeCustomTemplateAd;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzgr;
.end annotation


# instance fields
.field private final zzxi:Lcom/google/android/gms/internal/zzcu;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/zzcu;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzcv;->zzxi:Lcom/google/android/gms/internal/zzcu;

    return-void
.end method


# virtual methods
.method public getAvailableAssetNames()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzcv;->zzxi:Lcom/google/android/gms/internal/zzcu;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzcu;->getAvailableAssetNames()Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const-string v1, "Failed to get available asset names."

    invoke-static {v1, v0}, Lcom/google/android/gms/ads/internal/util/client/zzb;->zzb(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getCustomTemplateId()Ljava/lang/String;
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzcv;->zzxi:Lcom/google/android/gms/internal/zzcu;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzcu;->getCustomTemplateId()Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const-string v1, "Failed to get custom template id."

    invoke-static {v1, v0}, Lcom/google/android/gms/ads/internal/util/client/zzb;->zzb(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getImage(Ljava/lang/String;)Lcom/google/android/gms/ads/formats/NativeAd$Image;
    .locals 2
    .param p1, "assetName"    # Ljava/lang/String;

    .prologue
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzcv;->zzxi:Lcom/google/android/gms/internal/zzcu;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/zzcu;->zzV(Ljava/lang/String;)Lcom/google/android/gms/internal/zzcm;

    move-result-object v1

    if-eqz v1, :cond_0

    new-instance v0, Lcom/google/android/gms/internal/zzcn;

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/zzcn;-><init>(Lcom/google/android/gms/internal/zzcm;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const-string v1, "Failed to get image."

    invoke-static {v1, v0}, Lcom/google/android/gms/ads/internal/util/client/zzb;->zzb(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getText(Ljava/lang/String;)Ljava/lang/CharSequence;
    .locals 2
    .param p1, "assetName"    # Ljava/lang/String;

    .prologue
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzcv;->zzxi:Lcom/google/android/gms/internal/zzcu;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/zzcu;->zzU(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const-string v1, "Failed to get string."

    invoke-static {v1, v0}, Lcom/google/android/gms/ads/internal/util/client/zzb;->zzb(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public performClick(Ljava/lang/String;)V
    .locals 2
    .param p1, "assetName"    # Ljava/lang/String;

    .prologue
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzcv;->zzxi:Lcom/google/android/gms/internal/zzcu;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/zzcu;->performClick(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "Failed to perform click."

    invoke-static {v1, v0}, Lcom/google/android/gms/ads/internal/util/client/zzb;->zzb(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public recordImpression()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzcv;->zzxi:Lcom/google/android/gms/internal/zzcu;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzcu;->recordImpression()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "Failed to record impression."

    invoke-static {v1, v0}, Lcom/google/android/gms/ads/internal/util/client/zzb;->zzb(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
