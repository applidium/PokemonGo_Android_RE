.class public Lcom/google/android/gms/ads/internal/zzn;
.super Lcom/google/android/gms/ads/internal/zzb;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzgr;
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/ads/internal/client/AdSizeParcel;Ljava/lang/String;Lcom/google/android/gms/internal/zzem;Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;)V
    .locals 7

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/ads/internal/zzb;-><init>(Landroid/content/Context;Lcom/google/android/gms/ads/internal/client/AdSizeParcel;Ljava/lang/String;Lcom/google/android/gms/internal/zzem;Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;Lcom/google/android/gms/ads/internal/zzd;)V

    return-void
.end method

.method private static zza(Lcom/google/android/gms/internal/zzeq;)Lcom/google/android/gms/ads/internal/formats/zzd;
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v10, 0x0

    new-instance v0, Lcom/google/android/gms/ads/internal/formats/zzd;

    invoke-interface {p0}, Lcom/google/android/gms/internal/zzeq;->getHeadline()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p0}, Lcom/google/android/gms/internal/zzeq;->getImages()Ljava/util/List;

    move-result-object v2

    invoke-interface {p0}, Lcom/google/android/gms/internal/zzeq;->getBody()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p0}, Lcom/google/android/gms/internal/zzeq;->zzdw()Lcom/google/android/gms/internal/zzcm;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-interface {p0}, Lcom/google/android/gms/internal/zzeq;->zzdw()Lcom/google/android/gms/internal/zzcm;

    move-result-object v4

    :goto_0
    invoke-interface {p0}, Lcom/google/android/gms/internal/zzeq;->getCallToAction()Ljava/lang/String;

    move-result-object v5

    invoke-interface {p0}, Lcom/google/android/gms/internal/zzeq;->getStarRating()D

    move-result-wide v6

    invoke-interface {p0}, Lcom/google/android/gms/internal/zzeq;->getStore()Ljava/lang/String;

    move-result-object v8

    invoke-interface {p0}, Lcom/google/android/gms/internal/zzeq;->getPrice()Ljava/lang/String;

    move-result-object v9

    invoke-interface {p0}, Lcom/google/android/gms/internal/zzeq;->getExtras()Landroid/os/Bundle;

    move-result-object v11

    invoke-direct/range {v0 .. v11}, Lcom/google/android/gms/ads/internal/formats/zzd;-><init>(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Lcom/google/android/gms/internal/zzcm;Ljava/lang/String;DLjava/lang/String;Ljava/lang/String;Lcom/google/android/gms/ads/internal/formats/zza;Landroid/os/Bundle;)V

    return-object v0

    :cond_0
    move-object v4, v10

    goto :goto_0
.end method

.method private static zza(Lcom/google/android/gms/internal/zzer;)Lcom/google/android/gms/ads/internal/formats/zze;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v7, 0x0

    new-instance v0, Lcom/google/android/gms/ads/internal/formats/zze;

    invoke-interface {p0}, Lcom/google/android/gms/internal/zzer;->getHeadline()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p0}, Lcom/google/android/gms/internal/zzer;->getImages()Ljava/util/List;

    move-result-object v2

    invoke-interface {p0}, Lcom/google/android/gms/internal/zzer;->getBody()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p0}, Lcom/google/android/gms/internal/zzer;->zzdA()Lcom/google/android/gms/internal/zzcm;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-interface {p0}, Lcom/google/android/gms/internal/zzer;->zzdA()Lcom/google/android/gms/internal/zzcm;

    move-result-object v4

    :goto_0
    invoke-interface {p0}, Lcom/google/android/gms/internal/zzer;->getCallToAction()Ljava/lang/String;

    move-result-object v5

    invoke-interface {p0}, Lcom/google/android/gms/internal/zzer;->getAdvertiser()Ljava/lang/String;

    move-result-object v6

    invoke-interface {p0}, Lcom/google/android/gms/internal/zzer;->getExtras()Landroid/os/Bundle;

    move-result-object v8

    invoke-direct/range {v0 .. v8}, Lcom/google/android/gms/ads/internal/formats/zze;-><init>(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Lcom/google/android/gms/internal/zzcm;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/ads/internal/formats/zza;Landroid/os/Bundle;)V

    return-object v0

    :cond_0
    move-object v4, v7

    goto :goto_0
.end method

.method private zza(Lcom/google/android/gms/ads/internal/formats/zzd;)V
    .locals 2

    sget-object v0, Lcom/google/android/gms/internal/zzid;->zzIE:Landroid/os/Handler;

    new-instance v1, Lcom/google/android/gms/ads/internal/zzn$2;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/ads/internal/zzn$2;-><init>(Lcom/google/android/gms/ads/internal/zzn;Lcom/google/android/gms/ads/internal/formats/zzd;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private zza(Lcom/google/android/gms/ads/internal/formats/zze;)V
    .locals 2

    sget-object v0, Lcom/google/android/gms/internal/zzid;->zzIE:Landroid/os/Handler;

    new-instance v1, Lcom/google/android/gms/ads/internal/zzn$3;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/ads/internal/zzn$3;-><init>(Lcom/google/android/gms/ads/internal/zzn;Lcom/google/android/gms/ads/internal/formats/zze;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private zza(Lcom/google/android/gms/internal/zzhs;Ljava/lang/String;)V
    .locals 2

    sget-object v0, Lcom/google/android/gms/internal/zzid;->zzIE:Landroid/os/Handler;

    new-instance v1, Lcom/google/android/gms/ads/internal/zzn$4;

    invoke-direct {v1, p0, p2, p1}, Lcom/google/android/gms/ads/internal/zzn$4;-><init>(Lcom/google/android/gms/ads/internal/zzn;Ljava/lang/String;Lcom/google/android/gms/internal/zzhs;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method


# virtual methods
.method public pause()V
    .locals 2

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Native Ad DOES NOT support pause()."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public recordImpression()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzn;->zzot:Lcom/google/android/gms/ads/internal/zzq;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzq;->zzqo:Lcom/google/android/gms/internal/zzhs;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/ads/internal/zzn;->zza(Lcom/google/android/gms/internal/zzhs;Z)V

    return-void
.end method

.method public resume()V
    .locals 2

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Native Ad DOES NOT support resume()."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public showInterstitial()V
    .locals 2

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Interstitial is NOT supported by NativeAdManager."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public zza(Lcom/google/android/gms/internal/zzck;)V
    .locals 2

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "CustomRendering is NOT supported by NativeAdManager."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public zza(Lcom/google/android/gms/internal/zzfs;)V
    .locals 2

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "In App Purchase is NOT supported by NativeAdManager."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public zza(Lcom/google/android/gms/internal/zzhs$zza;Lcom/google/android/gms/internal/zzcg;)V
    .locals 10

    iget-object v0, p1, Lcom/google/android/gms/internal/zzhs$zza;->zzqn:Lcom/google/android/gms/ads/internal/client/AdSizeParcel;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzn;->zzot:Lcom/google/android/gms/ads/internal/zzq;

    iget-object v1, p1, Lcom/google/android/gms/internal/zzhs$zza;->zzqn:Lcom/google/android/gms/ads/internal/client/AdSizeParcel;

    iput-object v1, v0, Lcom/google/android/gms/ads/internal/zzq;->zzqn:Lcom/google/android/gms/ads/internal/client/AdSizeParcel;

    :cond_0
    iget v0, p1, Lcom/google/android/gms/internal/zzhs$zza;->errorCode:I

    const/4 v1, -0x2

    if-eq v0, v1, :cond_1

    sget-object v0, Lcom/google/android/gms/internal/zzid;->zzIE:Landroid/os/Handler;

    new-instance v1, Lcom/google/android/gms/ads/internal/zzn$1;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/ads/internal/zzn$1;-><init>(Lcom/google/android/gms/ads/internal/zzn;Lcom/google/android/gms/internal/zzhs$zza;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzn;->zzot:Lcom/google/android/gms/ads/internal/zzq;

    const/4 v1, 0x0

    iput v1, v0, Lcom/google/android/gms/ads/internal/zzq;->zzqH:I

    iget-object v9, p0, Lcom/google/android/gms/ads/internal/zzn;->zzot:Lcom/google/android/gms/ads/internal/zzq;

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzp;->zzbu()Lcom/google/android/gms/internal/zzgg;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/zzn;->zzot:Lcom/google/android/gms/ads/internal/zzq;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/zzq;->context:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/zzn;->zzot:Lcom/google/android/gms/ads/internal/zzq;

    iget-object v4, v2, Lcom/google/android/gms/ads/internal/zzq;->zzqi:Lcom/google/android/gms/internal/zzan;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/google/android/gms/ads/internal/zzn;->zzox:Lcom/google/android/gms/internal/zzem;

    move-object v2, p0

    move-object v3, p1

    move-object v7, p0

    move-object v8, p2

    invoke-virtual/range {v0 .. v8}, Lcom/google/android/gms/internal/zzgg;->zza(Landroid/content/Context;Lcom/google/android/gms/ads/internal/zza;Lcom/google/android/gms/internal/zzhs$zza;Lcom/google/android/gms/internal/zzan;Lcom/google/android/gms/internal/zziz;Lcom/google/android/gms/internal/zzem;Lcom/google/android/gms/internal/zzgg$zza;Lcom/google/android/gms/internal/zzcg;)Lcom/google/android/gms/internal/zzgh;

    move-result-object v0

    iput-object v0, v9, Lcom/google/android/gms/ads/internal/zzq;->zzqm:Lcom/google/android/gms/internal/zzgh;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AdRenderer: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/zzn;->zzot:Lcom/google/android/gms/ads/internal/zzq;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/zzq;->zzqm:Lcom/google/android/gms/internal/zzgh;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/client/zzb;->zzaF(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public zza(Lcom/google/android/gms/internal/zzmi;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzmi",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/zzcz;",
            ">;)V"
        }
    .end annotation

    const-string v0, "setOnCustomTemplateAdLoadedListeners must be called on the main UI thread."

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzx;->zzci(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzn;->zzot:Lcom/google/android/gms/ads/internal/zzq;

    iput-object p1, v0, Lcom/google/android/gms/ads/internal/zzq;->zzqA:Lcom/google/android/gms/internal/zzmi;

    return-void
.end method

.method public zza(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "setNativeTemplates must be called on the main UI thread."

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzx;->zzci(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzn;->zzot:Lcom/google/android/gms/ads/internal/zzq;

    iput-object p1, v0, Lcom/google/android/gms/ads/internal/zzq;->zzqD:Ljava/util/List;

    return-void
.end method

.method protected zza(Lcom/google/android/gms/ads/internal/client/AdRequestParcel;Lcom/google/android/gms/internal/zzhs;Z)Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzn;->zzos:Lcom/google/android/gms/ads/internal/zzo;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/zzo;->zzbp()Z

    move-result v0

    return v0
.end method

.method protected zza(Lcom/google/android/gms/internal/zzhs;Lcom/google/android/gms/internal/zzhs;)Z
    .locals 5

    const/4 v2, 0x0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/ads/internal/zzn;->zza(Ljava/util/List;)V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzn;->zzot:Lcom/google/android/gms/ads/internal/zzq;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/zzq;->zzbN()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Native ad DOES NOT have custom rendering mode."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-boolean v0, p2, Lcom/google/android/gms/internal/zzhs;->zzEK:Z

    if-eqz v0, :cond_3

    :try_start_0
    iget-object v0, p2, Lcom/google/android/gms/internal/zzhs;->zzzv:Lcom/google/android/gms/internal/zzen;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzen;->zzdV()Lcom/google/android/gms/internal/zzeq;

    move-result-object v0

    iget-object v1, p2, Lcom/google/android/gms/internal/zzhs;->zzzv:Lcom/google/android/gms/internal/zzen;

    invoke-interface {v1}, Lcom/google/android/gms/internal/zzen;->zzdW()Lcom/google/android/gms/internal/zzer;

    move-result-object v1

    if-eqz v0, :cond_1

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/zzn;->zza(Lcom/google/android/gms/internal/zzeq;)Lcom/google/android/gms/ads/internal/formats/zzd;

    move-result-object v1

    new-instance v2, Lcom/google/android/gms/ads/internal/formats/zzg;

    iget-object v3, p0, Lcom/google/android/gms/ads/internal/zzn;->zzot:Lcom/google/android/gms/ads/internal/zzq;

    iget-object v3, v3, Lcom/google/android/gms/ads/internal/zzq;->context:Landroid/content/Context;

    iget-object v4, p0, Lcom/google/android/gms/ads/internal/zzn;->zzot:Lcom/google/android/gms/ads/internal/zzq;

    iget-object v4, v4, Lcom/google/android/gms/ads/internal/zzq;->zzqi:Lcom/google/android/gms/internal/zzan;

    invoke-direct {v2, v3, p0, v4, v0}, Lcom/google/android/gms/ads/internal/formats/zzg;-><init>(Landroid/content/Context;Lcom/google/android/gms/ads/internal/zzn;Lcom/google/android/gms/internal/zzan;Lcom/google/android/gms/internal/zzeq;)V

    invoke-virtual {v1, v2}, Lcom/google/android/gms/ads/internal/formats/zzd;->zza(Lcom/google/android/gms/ads/internal/formats/zzh;)V

    invoke-direct {p0, v1}, Lcom/google/android/gms/ads/internal/zzn;->zza(Lcom/google/android/gms/ads/internal/formats/zzd;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    invoke-super {p0, p1, p2}, Lcom/google/android/gms/ads/internal/zzb;->zza(Lcom/google/android/gms/internal/zzhs;Lcom/google/android/gms/internal/zzhs;)Z

    move-result v0

    :goto_1
    return v0

    :cond_1
    if-eqz v1, :cond_2

    :try_start_1
    invoke-static {v1}, Lcom/google/android/gms/ads/internal/zzn;->zza(Lcom/google/android/gms/internal/zzer;)Lcom/google/android/gms/ads/internal/formats/zze;

    move-result-object v0

    new-instance v2, Lcom/google/android/gms/ads/internal/formats/zzg;

    iget-object v3, p0, Lcom/google/android/gms/ads/internal/zzn;->zzot:Lcom/google/android/gms/ads/internal/zzq;

    iget-object v3, v3, Lcom/google/android/gms/ads/internal/zzq;->context:Landroid/content/Context;

    iget-object v4, p0, Lcom/google/android/gms/ads/internal/zzn;->zzot:Lcom/google/android/gms/ads/internal/zzq;

    iget-object v4, v4, Lcom/google/android/gms/ads/internal/zzq;->zzqi:Lcom/google/android/gms/internal/zzan;

    invoke-direct {v2, v3, p0, v4, v1}, Lcom/google/android/gms/ads/internal/formats/zzg;-><init>(Landroid/content/Context;Lcom/google/android/gms/ads/internal/zzn;Lcom/google/android/gms/internal/zzan;Lcom/google/android/gms/internal/zzer;)V

    invoke-virtual {v0, v2}, Lcom/google/android/gms/ads/internal/formats/zze;->zza(Lcom/google/android/gms/ads/internal/formats/zzh;)V

    invoke-direct {p0, v0}, Lcom/google/android/gms/ads/internal/zzn;->zza(Lcom/google/android/gms/ads/internal/formats/zze;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "Failed to get native ad mapper"

    invoke-static {v1, v0}, Lcom/google/android/gms/ads/internal/util/client/zzb;->zzd(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_2
    :try_start_2
    const-string v0, "No matching mapper for retrieved native ad template."

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/client/zzb;->zzaH(Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/ads/internal/zzn;->zze(I)Z
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    move v0, v2

    goto :goto_1

    :cond_3
    iget-object v1, p2, Lcom/google/android/gms/internal/zzhs;->zzHB:Lcom/google/android/gms/ads/internal/formats/zzh$zza;

    instance-of v0, v1, Lcom/google/android/gms/ads/internal/formats/zze;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzn;->zzot:Lcom/google/android/gms/ads/internal/zzq;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzq;->zzqy:Lcom/google/android/gms/internal/zzcx;

    if-eqz v0, :cond_4

    iget-object v0, p2, Lcom/google/android/gms/internal/zzhs;->zzHB:Lcom/google/android/gms/ads/internal/formats/zzh$zza;

    check-cast v0, Lcom/google/android/gms/ads/internal/formats/zze;

    invoke-direct {p0, v0}, Lcom/google/android/gms/ads/internal/zzn;->zza(Lcom/google/android/gms/ads/internal/formats/zze;)V

    goto :goto_0

    :cond_4
    instance-of v0, v1, Lcom/google/android/gms/ads/internal/formats/zzd;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzn;->zzot:Lcom/google/android/gms/ads/internal/zzq;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzq;->zzqx:Lcom/google/android/gms/internal/zzcw;

    if-eqz v0, :cond_5

    iget-object v0, p2, Lcom/google/android/gms/internal/zzhs;->zzHB:Lcom/google/android/gms/ads/internal/formats/zzh$zza;

    check-cast v0, Lcom/google/android/gms/ads/internal/formats/zzd;

    invoke-direct {p0, v0}, Lcom/google/android/gms/ads/internal/zzn;->zza(Lcom/google/android/gms/ads/internal/formats/zzd;)V

    goto :goto_0

    :cond_5
    instance-of v0, v1, Lcom/google/android/gms/ads/internal/formats/zzf;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzn;->zzot:Lcom/google/android/gms/ads/internal/zzq;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzq;->zzqA:Lcom/google/android/gms/internal/zzmi;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzn;->zzot:Lcom/google/android/gms/ads/internal/zzq;

    iget-object v3, v0, Lcom/google/android/gms/ads/internal/zzq;->zzqA:Lcom/google/android/gms/internal/zzmi;

    move-object v0, v1

    check-cast v0, Lcom/google/android/gms/ads/internal/formats/zzf;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/formats/zzf;->getCustomTemplateId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/google/android/gms/internal/zzmi;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_6

    check-cast v1, Lcom/google/android/gms/ads/internal/formats/zzf;

    invoke-virtual {v1}, Lcom/google/android/gms/ads/internal/formats/zzf;->getCustomTemplateId()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/ads/internal/zzn;->zza(Lcom/google/android/gms/internal/zzhs;Ljava/lang/String;)V

    goto :goto_0

    :cond_6
    const-string v0, "No matching listener for retrieved native ad template."

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/client/zzb;->zzaH(Ljava/lang/String;)V

    invoke-virtual {p0, v2}, Lcom/google/android/gms/ads/internal/zzn;->zze(I)Z

    move v0, v2

    goto/16 :goto_1
.end method

.method public zzb(Lcom/google/android/gms/ads/internal/formats/NativeAdOptionsParcel;)V
    .locals 1

    const-string v0, "setNativeAdOptions must be called on the main UI thread."

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzx;->zzci(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzn;->zzot:Lcom/google/android/gms/ads/internal/zzq;

    iput-object p1, v0, Lcom/google/android/gms/ads/internal/zzq;->zzqB:Lcom/google/android/gms/ads/internal/formats/NativeAdOptionsParcel;

    return-void
.end method

.method public zzb(Lcom/google/android/gms/internal/zzcw;)V
    .locals 1

    const-string v0, "setOnAppInstallAdLoadedListener must be called on the main UI thread."

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzx;->zzci(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzn;->zzot:Lcom/google/android/gms/ads/internal/zzq;

    iput-object p1, v0, Lcom/google/android/gms/ads/internal/zzq;->zzqx:Lcom/google/android/gms/internal/zzcw;

    return-void
.end method

.method public zzb(Lcom/google/android/gms/internal/zzcx;)V
    .locals 1

    const-string v0, "setOnContentAdLoadedListener must be called on the main UI thread."

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzx;->zzci(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzn;->zzot:Lcom/google/android/gms/ads/internal/zzq;

    iput-object p1, v0, Lcom/google/android/gms/ads/internal/zzq;->zzqy:Lcom/google/android/gms/internal/zzcx;

    return-void
.end method

.method public zzb(Lcom/google/android/gms/internal/zzmi;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzmi",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/zzcy;",
            ">;)V"
        }
    .end annotation

    const-string v0, "setOnCustomClickListener must be called on the main UI thread."

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzx;->zzci(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzn;->zzot:Lcom/google/android/gms/ads/internal/zzq;

    iput-object p1, v0, Lcom/google/android/gms/ads/internal/zzq;->zzqz:Lcom/google/android/gms/internal/zzmi;

    return-void
.end method

.method public zzbo()Lcom/google/android/gms/internal/zzmi;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/internal/zzmi",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/zzcz;",
            ">;"
        }
    .end annotation

    const-string v0, "getOnCustomTemplateAdLoadedListeners must be called on the main UI thread."

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzx;->zzci(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzn;->zzot:Lcom/google/android/gms/ads/internal/zzq;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzq;->zzqA:Lcom/google/android/gms/internal/zzmi;

    return-object v0
.end method

.method public zzr(Ljava/lang/String;)Lcom/google/android/gms/internal/zzcy;
    .locals 1

    const-string v0, "getOnCustomClickListener must be called on the main UI thread."

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzx;->zzci(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzn;->zzot:Lcom/google/android/gms/ads/internal/zzq;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzq;->zzqz:Lcom/google/android/gms/internal/zzmi;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/zzmi;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzcy;

    return-object v0
.end method
