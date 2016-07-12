.class public Lcom/google/android/gms/ads/internal/zzf;
.super Lcom/google/android/gms/ads/internal/zzc;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzgr;
.end annotation


# instance fields
.field private zzoN:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/ads/internal/client/AdSizeParcel;Ljava/lang/String;Lcom/google/android/gms/internal/zzem;Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;Lcom/google/android/gms/ads/internal/zzd;)V
    .locals 0

    invoke-direct/range {p0 .. p6}, Lcom/google/android/gms/ads/internal/zzc;-><init>(Landroid/content/Context;Lcom/google/android/gms/ads/internal/client/AdSizeParcel;Ljava/lang/String;Lcom/google/android/gms/internal/zzem;Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;Lcom/google/android/gms/ads/internal/zzd;)V

    return-void
.end method

.method private zzb(Lcom/google/android/gms/internal/zzhs$zza;)Lcom/google/android/gms/ads/internal/client/AdSizeParcel;
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    iget-object v0, p1, Lcom/google/android/gms/internal/zzhs$zza;->zzHD:Lcom/google/android/gms/ads/internal/request/AdResponseParcel;

    iget-boolean v0, v0, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;->zzti:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzf;->zzot:Lcom/google/android/gms/ads/internal/zzq;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzq;->zzqn:Lcom/google/android/gms/ads/internal/client/AdSizeParcel;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p1, Lcom/google/android/gms/internal/zzhs$zza;->zzHD:Lcom/google/android/gms/ads/internal/request/AdResponseParcel;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;->zzEN:Ljava/lang/String;

    if-eqz v0, :cond_1

    const-string v1, "[xX]"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    aget-object v1, v0, v2

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v2

    aget-object v1, v0, v3

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v3

    aget-object v1, v0, v2

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    aget-object v0, v0, v3

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    new-instance v0, Lcom/google/android/gms/ads/AdSize;

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/ads/AdSize;-><init>(II)V

    :goto_1
    new-instance v1, Lcom/google/android/gms/ads/internal/client/AdSizeParcel;

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/zzf;->zzot:Lcom/google/android/gms/ads/internal/zzq;

    iget-object v2, v2, Lcom/google/android/gms/ads/internal/zzq;->context:Landroid/content/Context;

    invoke-direct {v1, v2, v0}, Lcom/google/android/gms/ads/internal/client/AdSizeParcel;-><init>(Landroid/content/Context;Lcom/google/android/gms/ads/AdSize;)V

    move-object v0, v1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzf;->zzot:Lcom/google/android/gms/ads/internal/zzq;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzq;->zzqn:Lcom/google/android/gms/ads/internal/client/AdSizeParcel;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/client/AdSizeParcel;->zzcD()Lcom/google/android/gms/ads/AdSize;

    move-result-object v0

    goto :goto_1
.end method

.method private zzb(Lcom/google/android/gms/internal/zzhs;Lcom/google/android/gms/internal/zzhs;)Z
    .locals 6

    const/4 v4, 0x1

    const/4 v3, 0x0

    iget-boolean v0, p2, Lcom/google/android/gms/internal/zzhs;->zzEK:Z

    if-eqz v0, :cond_7

    :try_start_0
    iget-object v0, p2, Lcom/google/android/gms/internal/zzhs;->zzzv:Lcom/google/android/gms/internal/zzen;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzen;->getView()Lcom/google/android/gms/dynamic/zzd;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "View in mediation adapter is null."

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/client/zzb;->zzaH(Ljava/lang/String;)V

    move v0, v3

    :goto_0
    return v0

    :cond_0
    invoke-static {v0}, Lcom/google/android/gms/dynamic/zze;->zzp(Lcom/google/android/gms/dynamic/zzd;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/zzf;->zzot:Lcom/google/android/gms/ads/internal/zzq;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/zzq;->zzqk:Lcom/google/android/gms/ads/internal/zzq$zza;

    invoke-virtual {v1}, Lcom/google/android/gms/ads/internal/zzq$zza;->getNextView()Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_2

    instance-of v1, v2, Lcom/google/android/gms/internal/zziz;

    if-eqz v1, :cond_1

    move-object v1, v2

    check-cast v1, Lcom/google/android/gms/internal/zziz;

    invoke-interface {v1}, Lcom/google/android/gms/internal/zziz;->destroy()V

    :cond_1
    iget-object v1, p0, Lcom/google/android/gms/ads/internal/zzf;->zzot:Lcom/google/android/gms/ads/internal/zzq;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/zzq;->zzqk:Lcom/google/android/gms/ads/internal/zzq$zza;

    invoke-virtual {v1, v2}, Lcom/google/android/gms/ads/internal/zzq$zza;->removeView(Landroid/view/View;)V

    :cond_2
    :try_start_1
    invoke-virtual {p0, v0}, Lcom/google/android/gms/ads/internal/zzf;->zzb(Landroid/view/View;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzf;->zzot:Lcom/google/android/gms/ads/internal/zzq;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzq;->zzqk:Lcom/google/android/gms/ads/internal/zzq$zza;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/zzq$zza;->getChildCount()I

    move-result v0

    if-le v0, v4, :cond_4

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzf;->zzot:Lcom/google/android/gms/ads/internal/zzq;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzq;->zzqk:Lcom/google/android/gms/ads/internal/zzq$zza;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/zzq$zza;->showNext()V

    :cond_4
    if-eqz p1, :cond_6

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzf;->zzot:Lcom/google/android/gms/ads/internal/zzq;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzq;->zzqk:Lcom/google/android/gms/ads/internal/zzq$zza;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/zzq$zza;->getNextView()Landroid/view/View;

    move-result-object v0

    instance-of v1, v0, Lcom/google/android/gms/internal/zziz;

    if-eqz v1, :cond_8

    check-cast v0, Lcom/google/android/gms/internal/zziz;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/zzf;->zzot:Lcom/google/android/gms/ads/internal/zzq;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/zzq;->context:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/zzf;->zzot:Lcom/google/android/gms/ads/internal/zzq;

    iget-object v2, v2, Lcom/google/android/gms/ads/internal/zzq;->zzqn:Lcom/google/android/gms/ads/internal/client/AdSizeParcel;

    iget-object v5, p0, Lcom/google/android/gms/ads/internal/zzf;->zzoo:Lcom/google/android/gms/internal/zzcg;

    invoke-interface {v0, v1, v2, v5}, Lcom/google/android/gms/internal/zziz;->zza(Landroid/content/Context;Lcom/google/android/gms/ads/internal/client/AdSizeParcel;Lcom/google/android/gms/internal/zzcg;)V

    :cond_5
    :goto_2
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzf;->zzot:Lcom/google/android/gms/ads/internal/zzq;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/zzq;->zzbM()V

    :cond_6
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzf;->zzot:Lcom/google/android/gms/ads/internal/zzq;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzq;->zzqk:Lcom/google/android/gms/ads/internal/zzq$zza;

    invoke-virtual {v0, v3}, Lcom/google/android/gms/ads/internal/zzq$zza;->setVisibility(I)V

    move v0, v4

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "Could not get View from mediation adapter."

    invoke-static {v1, v0}, Lcom/google/android/gms/ads/internal/util/client/zzb;->zzd(Ljava/lang/String;Ljava/lang/Throwable;)V

    move v0, v3

    goto :goto_0

    :catch_1
    move-exception v0

    const-string v1, "Could not add mediation view to view hierarchy."

    invoke-static {v1, v0}, Lcom/google/android/gms/ads/internal/util/client/zzb;->zzd(Ljava/lang/String;Ljava/lang/Throwable;)V

    move v0, v3

    goto :goto_0

    :cond_7
    iget-object v0, p2, Lcom/google/android/gms/internal/zzhs;->zzHy:Lcom/google/android/gms/ads/internal/client/AdSizeParcel;

    if-eqz v0, :cond_3

    iget-object v0, p2, Lcom/google/android/gms/internal/zzhs;->zzBD:Lcom/google/android/gms/internal/zziz;

    if-eqz v0, :cond_3

    iget-object v0, p2, Lcom/google/android/gms/internal/zzhs;->zzBD:Lcom/google/android/gms/internal/zziz;

    iget-object v1, p2, Lcom/google/android/gms/internal/zzhs;->zzHy:Lcom/google/android/gms/ads/internal/client/AdSizeParcel;

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/zziz;->zza(Lcom/google/android/gms/ads/internal/client/AdSizeParcel;)V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzf;->zzot:Lcom/google/android/gms/ads/internal/zzq;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzq;->zzqk:Lcom/google/android/gms/ads/internal/zzq$zza;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/zzq$zza;->removeAllViews()V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzf;->zzot:Lcom/google/android/gms/ads/internal/zzq;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzq;->zzqk:Lcom/google/android/gms/ads/internal/zzq$zza;

    iget-object v1, p2, Lcom/google/android/gms/internal/zzhs;->zzHy:Lcom/google/android/gms/ads/internal/client/AdSizeParcel;

    iget v1, v1, Lcom/google/android/gms/ads/internal/client/AdSizeParcel;->widthPixels:I

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/internal/zzq$zza;->setMinimumWidth(I)V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzf;->zzot:Lcom/google/android/gms/ads/internal/zzq;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzq;->zzqk:Lcom/google/android/gms/ads/internal/zzq$zza;

    iget-object v1, p2, Lcom/google/android/gms/internal/zzhs;->zzHy:Lcom/google/android/gms/ads/internal/client/AdSizeParcel;

    iget v1, v1, Lcom/google/android/gms/ads/internal/client/AdSizeParcel;->heightPixels:I

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/internal/zzq$zza;->setMinimumHeight(I)V

    iget-object v0, p2, Lcom/google/android/gms/internal/zzhs;->zzBD:Lcom/google/android/gms/internal/zziz;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zziz;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/ads/internal/zzf;->zzb(Landroid/view/View;)V

    goto/16 :goto_1

    :cond_8
    if-eqz v0, :cond_5

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/zzf;->zzot:Lcom/google/android/gms/ads/internal/zzq;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/zzq;->zzqk:Lcom/google/android/gms/ads/internal/zzq$zza;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/ads/internal/zzq$zza;->removeView(Landroid/view/View;)V

    goto :goto_2
.end method


# virtual methods
.method public setManualImpressionsEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    const-string v0, "setManualImpressionsEnabled must be called from the main thread."

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzx;->zzci(Ljava/lang/String;)V

    iput-boolean p1, p0, Lcom/google/android/gms/ads/internal/zzf;->zzoN:Z

    return-void
.end method

.method public showInterstitial()V
    .locals 2

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Interstitial is NOT supported by BannerAdManager."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected zza(Lcom/google/android/gms/internal/zzhs$zza;Lcom/google/android/gms/ads/internal/zze;)Lcom/google/android/gms/internal/zziz;
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzf;->zzot:Lcom/google/android/gms/ads/internal/zzq;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzq;->zzqn:Lcom/google/android/gms/ads/internal/client/AdSizeParcel;

    iget-boolean v0, v0, Lcom/google/android/gms/ads/internal/client/AdSizeParcel;->zzti:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzf;->zzot:Lcom/google/android/gms/ads/internal/zzq;

    invoke-direct {p0, p1}, Lcom/google/android/gms/ads/internal/zzf;->zzb(Lcom/google/android/gms/internal/zzhs$zza;)Lcom/google/android/gms/ads/internal/client/AdSizeParcel;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/gms/ads/internal/zzq;->zzqn:Lcom/google/android/gms/ads/internal/client/AdSizeParcel;

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/google/android/gms/ads/internal/zzc;->zza(Lcom/google/android/gms/internal/zzhs$zza;Lcom/google/android/gms/ads/internal/zze;)Lcom/google/android/gms/internal/zziz;

    move-result-object v0

    return-object v0
.end method

.method public zza(Lcom/google/android/gms/internal/zzhs;Lcom/google/android/gms/internal/zzhs;)Z
    .locals 3

    const/4 v0, 0x0

    invoke-super {p0, p1, p2}, Lcom/google/android/gms/ads/internal/zzc;->zza(Lcom/google/android/gms/internal/zzhs;Lcom/google/android/gms/internal/zzhs;)Z

    move-result v1

    if-nez v1, :cond_0

    :goto_0
    return v0

    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/ads/internal/zzf;->zzot:Lcom/google/android/gms/ads/internal/zzq;

    invoke-virtual {v1}, Lcom/google/android/gms/ads/internal/zzq;->zzbN()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/ads/internal/zzf;->zzb(Lcom/google/android/gms/internal/zzhs;Lcom/google/android/gms/internal/zzhs;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p0, v0}, Lcom/google/android/gms/ads/internal/zzf;->zze(I)Z

    goto :goto_0

    :cond_1
    invoke-virtual {p0, p2, v0}, Lcom/google/android/gms/ads/internal/zzf;->zza(Lcom/google/android/gms/internal/zzhs;Z)V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzf;->zzot:Lcom/google/android/gms/ads/internal/zzq;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/zzq;->zzbN()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p2, Lcom/google/android/gms/internal/zzhs;->zzBD:Lcom/google/android/gms/internal/zziz;

    if-eqz v0, :cond_3

    iget-object v0, p2, Lcom/google/android/gms/internal/zzhs;->zzHw:Lorg/json/JSONObject;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzf;->zzov:Lcom/google/android/gms/internal/zzay;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/zzf;->zzot:Lcom/google/android/gms/ads/internal/zzq;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/zzq;->zzqn:Lcom/google/android/gms/ads/internal/client/AdSizeParcel;

    invoke-virtual {v0, v1, p2}, Lcom/google/android/gms/internal/zzay;->zza(Lcom/google/android/gms/ads/internal/client/AdSizeParcel;Lcom/google/android/gms/internal/zzhs;)Lcom/google/android/gms/internal/zzaz;

    :cond_2
    invoke-virtual {p2}, Lcom/google/android/gms/internal/zzhs;->zzbY()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzf;->zzov:Lcom/google/android/gms/internal/zzay;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/zzf;->zzot:Lcom/google/android/gms/ads/internal/zzq;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/zzq;->zzqn:Lcom/google/android/gms/ads/internal/client/AdSizeParcel;

    invoke-virtual {v0, v1, p2}, Lcom/google/android/gms/internal/zzay;->zza(Lcom/google/android/gms/ads/internal/client/AdSizeParcel;Lcom/google/android/gms/internal/zzhs;)Lcom/google/android/gms/internal/zzaz;

    move-result-object v0

    iget-object v1, p2, Lcom/google/android/gms/internal/zzhs;->zzBD:Lcom/google/android/gms/internal/zziz;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzaz;->zza(Lcom/google/android/gms/internal/zzaw;)V

    :cond_3
    :goto_1
    const/4 v0, 0x1

    goto :goto_0

    :cond_4
    iget-object v0, p2, Lcom/google/android/gms/internal/zzhs;->zzBD:Lcom/google/android/gms/internal/zziz;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zziz;->zzhe()Lcom/google/android/gms/internal/zzja;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/ads/internal/zzf$1;

    invoke-direct {v1, p0, p2}, Lcom/google/android/gms/ads/internal/zzf$1;-><init>(Lcom/google/android/gms/ads/internal/zzf;Lcom/google/android/gms/internal/zzhs;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzja;->zza(Lcom/google/android/gms/internal/zzja$zzb;)V

    goto :goto_1

    :cond_5
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzf;->zzot:Lcom/google/android/gms/ads/internal/zzq;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzq;->zzqG:Landroid/view/View;

    if-eqz v0, :cond_3

    iget-object v0, p2, Lcom/google/android/gms/internal/zzhs;->zzHw:Lorg/json/JSONObject;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzf;->zzov:Lcom/google/android/gms/internal/zzay;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/zzf;->zzot:Lcom/google/android/gms/ads/internal/zzq;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/zzq;->zzqn:Lcom/google/android/gms/ads/internal/client/AdSizeParcel;

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/zzf;->zzot:Lcom/google/android/gms/ads/internal/zzq;

    iget-object v2, v2, Lcom/google/android/gms/ads/internal/zzq;->zzqG:Landroid/view/View;

    invoke-virtual {v0, v1, p2, v2}, Lcom/google/android/gms/internal/zzay;->zza(Lcom/google/android/gms/ads/internal/client/AdSizeParcel;Lcom/google/android/gms/internal/zzhs;Landroid/view/View;)Lcom/google/android/gms/internal/zzaz;

    goto :goto_1
.end method

.method protected zzaU()Z
    .locals 6

    const/4 v1, 0x0

    const/4 v0, 0x1

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzp;->zzbv()Lcom/google/android/gms/internal/zzid;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gms/ads/internal/zzf;->zzot:Lcom/google/android/gms/ads/internal/zzq;

    iget-object v3, v3, Lcom/google/android/gms/ads/internal/zzq;->context:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/gms/ads/internal/zzf;->zzot:Lcom/google/android/gms/ads/internal/zzq;

    iget-object v4, v4, Lcom/google/android/gms/ads/internal/zzq;->context:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "android.permission.INTERNET"

    invoke-virtual {v2, v3, v4, v5}, Lcom/google/android/gms/internal/zzid;->zza(Landroid/content/pm/PackageManager;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzl;->zzcF()Lcom/google/android/gms/ads/internal/util/client/zza;

    move-result-object v0

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/zzf;->zzot:Lcom/google/android/gms/ads/internal/zzq;

    iget-object v2, v2, Lcom/google/android/gms/ads/internal/zzq;->zzqk:Lcom/google/android/gms/ads/internal/zzq$zza;

    iget-object v3, p0, Lcom/google/android/gms/ads/internal/zzf;->zzot:Lcom/google/android/gms/ads/internal/zzq;

    iget-object v3, v3, Lcom/google/android/gms/ads/internal/zzq;->zzqn:Lcom/google/android/gms/ads/internal/client/AdSizeParcel;

    const-string v4, "Missing internet permission in AndroidManifest.xml."

    const-string v5, "Missing internet permission in AndroidManifest.xml. You must have the following declaration: <uses-permission android:name=\"android.permission.INTERNET\" />"

    invoke-virtual {v0, v2, v3, v4, v5}, Lcom/google/android/gms/ads/internal/util/client/zza;->zza(Landroid/view/ViewGroup;Lcom/google/android/gms/ads/internal/client/AdSizeParcel;Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    :cond_0
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzp;->zzbv()Lcom/google/android/gms/internal/zzid;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gms/ads/internal/zzf;->zzot:Lcom/google/android/gms/ads/internal/zzq;

    iget-object v3, v3, Lcom/google/android/gms/ads/internal/zzq;->context:Landroid/content/Context;

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/zzid;->zzH(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzl;->zzcF()Lcom/google/android/gms/ads/internal/util/client/zza;

    move-result-object v0

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/zzf;->zzot:Lcom/google/android/gms/ads/internal/zzq;

    iget-object v2, v2, Lcom/google/android/gms/ads/internal/zzq;->zzqk:Lcom/google/android/gms/ads/internal/zzq$zza;

    iget-object v3, p0, Lcom/google/android/gms/ads/internal/zzf;->zzot:Lcom/google/android/gms/ads/internal/zzq;

    iget-object v3, v3, Lcom/google/android/gms/ads/internal/zzq;->zzqn:Lcom/google/android/gms/ads/internal/client/AdSizeParcel;

    const-string v4, "Missing AdActivity with android:configChanges in AndroidManifest.xml."

    const-string v5, "Missing AdActivity with android:configChanges in AndroidManifest.xml. You must have the following declaration within the <application> element: <activity android:name=\"com.google.android.gms.ads.AdActivity\" android:configChanges=\"keyboard|keyboardHidden|orientation|screenLayout|uiMode|screenSize|smallestScreenSize\" />"

    invoke-virtual {v0, v2, v3, v4, v5}, Lcom/google/android/gms/ads/internal/util/client/zza;->zza(Landroid/view/ViewGroup;Lcom/google/android/gms/ads/internal/client/AdSizeParcel;Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    :cond_1
    if-nez v0, :cond_2

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/zzf;->zzot:Lcom/google/android/gms/ads/internal/zzq;

    iget-object v2, v2, Lcom/google/android/gms/ads/internal/zzq;->zzqk:Lcom/google/android/gms/ads/internal/zzq$zza;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/zzf;->zzot:Lcom/google/android/gms/ads/internal/zzq;

    iget-object v2, v2, Lcom/google/android/gms/ads/internal/zzq;->zzqk:Lcom/google/android/gms/ads/internal/zzq$zza;

    invoke-virtual {v2, v1}, Lcom/google/android/gms/ads/internal/zzq$zza;->setVisibility(I)V

    :cond_2
    return v0
.end method

.method public zzb(Lcom/google/android/gms/ads/internal/client/AdRequestParcel;)Z
    .locals 1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/ads/internal/zzf;->zze(Lcom/google/android/gms/ads/internal/client/AdRequestParcel;)Lcom/google/android/gms/ads/internal/client/AdRequestParcel;

    move-result-object v0

    invoke-super {p0, v0}, Lcom/google/android/gms/ads/internal/zzc;->zzb(Lcom/google/android/gms/ads/internal/client/AdRequestParcel;)Z

    move-result v0

    return v0
.end method

.method zze(Lcom/google/android/gms/ads/internal/client/AdRequestParcel;)Lcom/google/android/gms/ads/internal/client/AdRequestParcel;
    .locals 21

    move-object/from16 v0, p1

    iget-boolean v2, v0, Lcom/google/android/gms/ads/internal/client/AdRequestParcel;->zzsG:Z

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/google/android/gms/ads/internal/zzf;->zzoN:Z

    if-ne v2, v3, :cond_0

    :goto_0
    return-object p1

    :cond_0
    new-instance v2, Lcom/google/android/gms/ads/internal/client/AdRequestParcel;

    move-object/from16 v0, p1

    iget v3, v0, Lcom/google/android/gms/ads/internal/client/AdRequestParcel;->versionCode:I

    move-object/from16 v0, p1

    iget-wide v4, v0, Lcom/google/android/gms/ads/internal/client/AdRequestParcel;->zzsB:J

    move-object/from16 v0, p1

    iget-object v6, v0, Lcom/google/android/gms/ads/internal/client/AdRequestParcel;->extras:Landroid/os/Bundle;

    move-object/from16 v0, p1

    iget v7, v0, Lcom/google/android/gms/ads/internal/client/AdRequestParcel;->zzsC:I

    move-object/from16 v0, p1

    iget-object v8, v0, Lcom/google/android/gms/ads/internal/client/AdRequestParcel;->zzsD:Ljava/util/List;

    move-object/from16 v0, p1

    iget-boolean v9, v0, Lcom/google/android/gms/ads/internal/client/AdRequestParcel;->zzsE:Z

    move-object/from16 v0, p1

    iget v10, v0, Lcom/google/android/gms/ads/internal/client/AdRequestParcel;->zzsF:I

    move-object/from16 v0, p1

    iget-boolean v11, v0, Lcom/google/android/gms/ads/internal/client/AdRequestParcel;->zzsG:Z

    if-nez v11, :cond_1

    move-object/from16 v0, p0

    iget-boolean v11, v0, Lcom/google/android/gms/ads/internal/zzf;->zzoN:Z

    if-eqz v11, :cond_2

    :cond_1
    const/4 v11, 0x1

    :goto_1
    move-object/from16 v0, p1

    iget-object v12, v0, Lcom/google/android/gms/ads/internal/client/AdRequestParcel;->zzsH:Ljava/lang/String;

    move-object/from16 v0, p1

    iget-object v13, v0, Lcom/google/android/gms/ads/internal/client/AdRequestParcel;->zzsI:Lcom/google/android/gms/ads/internal/client/SearchAdRequestParcel;

    move-object/from16 v0, p1

    iget-object v14, v0, Lcom/google/android/gms/ads/internal/client/AdRequestParcel;->zzsJ:Landroid/location/Location;

    move-object/from16 v0, p1

    iget-object v15, v0, Lcom/google/android/gms/ads/internal/client/AdRequestParcel;->zzsK:Ljava/lang/String;

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/client/AdRequestParcel;->zzsL:Landroid/os/Bundle;

    move-object/from16 v16, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/client/AdRequestParcel;->zzsM:Landroid/os/Bundle;

    move-object/from16 v17, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/client/AdRequestParcel;->zzsN:Ljava/util/List;

    move-object/from16 v18, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/client/AdRequestParcel;->zzsO:Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/client/AdRequestParcel;->zzsP:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-direct/range {v2 .. v20}, Lcom/google/android/gms/ads/internal/client/AdRequestParcel;-><init>(IJLandroid/os/Bundle;ILjava/util/List;ZIZLjava/lang/String;Lcom/google/android/gms/ads/internal/client/SearchAdRequestParcel;Landroid/location/Location;Ljava/lang/String;Landroid/os/Bundle;Landroid/os/Bundle;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 p1, v2

    goto :goto_0

    :cond_2
    const/4 v11, 0x0

    goto :goto_1
.end method
