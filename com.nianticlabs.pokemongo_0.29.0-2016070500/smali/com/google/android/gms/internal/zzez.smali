.class public final Lcom/google/android/gms/internal/zzez;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/ads/mediation/MediationBannerListener;
.implements Lcom/google/ads/mediation/MediationInterstitialListener;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzgr;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<NETWORK_EXTRAS::",
        "Lcom/google/ads/mediation/NetworkExtras;",
        "SERVER_PARAMETERS:",
        "Lcom/google/ads/mediation/MediationServerParameters;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/google/ads/mediation/MediationBannerListener;",
        "Lcom/google/ads/mediation/MediationInterstitialListener;"
    }
.end annotation


# instance fields
.field private final zzzL:Lcom/google/android/gms/internal/zzeo;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/zzeo;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzez;->zzzL:Lcom/google/android/gms/internal/zzeo;

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/zzez;)Lcom/google/android/gms/internal/zzeo;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzez;->zzzL:Lcom/google/android/gms/internal/zzeo;

    return-object v0
.end method


# virtual methods
.method public onClick(Lcom/google/ads/mediation/MediationBannerAdapter;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/ads/mediation/MediationBannerAdapter",
            "<**>;)V"
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/google/android/gms/internal/zzez;, "Lcom/google/android/gms/internal/zzez<TNETWORK_EXTRAS;TSERVER_PARAMETERS;>;"
    .local p1, "adapter":Lcom/google/ads/mediation/MediationBannerAdapter;, "Lcom/google/ads/mediation/MediationBannerAdapter<**>;"
    const-string v0, "Adapter called onClick."

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/client/zzb;->zzaF(Ljava/lang/String;)V

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzl;->zzcF()Lcom/google/android/gms/ads/internal/util/client/zza;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/util/client/zza;->zzgT()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "onClick must be called on the main UI thread."

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/client/zzb;->zzaH(Ljava/lang/String;)V

    sget-object v0, Lcom/google/android/gms/ads/internal/util/client/zza;->zzJt:Landroid/os/Handler;

    new-instance v1, Lcom/google/android/gms/internal/zzez$1;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/zzez$1;-><init>(Lcom/google/android/gms/internal/zzez;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_0
    return-void

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzez;->zzzL:Lcom/google/android/gms/internal/zzeo;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzeo;->onAdClicked()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "Could not call onAdClicked."

    invoke-static {v1, v0}, Lcom/google/android/gms/ads/internal/util/client/zzb;->zzd(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public onDismissScreen(Lcom/google/ads/mediation/MediationBannerAdapter;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/ads/mediation/MediationBannerAdapter",
            "<**>;)V"
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/google/android/gms/internal/zzez;, "Lcom/google/android/gms/internal/zzez<TNETWORK_EXTRAS;TSERVER_PARAMETERS;>;"
    .local p1, "adapter":Lcom/google/ads/mediation/MediationBannerAdapter;, "Lcom/google/ads/mediation/MediationBannerAdapter<**>;"
    const-string v0, "Adapter called onDismissScreen."

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/client/zzb;->zzaF(Ljava/lang/String;)V

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzl;->zzcF()Lcom/google/android/gms/ads/internal/util/client/zza;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/util/client/zza;->zzgT()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "onDismissScreen must be called on the main UI thread."

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/client/zzb;->zzaH(Ljava/lang/String;)V

    sget-object v0, Lcom/google/android/gms/ads/internal/util/client/zza;->zzJt:Landroid/os/Handler;

    new-instance v1, Lcom/google/android/gms/internal/zzez$4;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/zzez$4;-><init>(Lcom/google/android/gms/internal/zzez;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_0
    return-void

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzez;->zzzL:Lcom/google/android/gms/internal/zzeo;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzeo;->onAdClosed()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "Could not call onAdClosed."

    invoke-static {v1, v0}, Lcom/google/android/gms/ads/internal/util/client/zzb;->zzd(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public onDismissScreen(Lcom/google/ads/mediation/MediationInterstitialAdapter;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/ads/mediation/MediationInterstitialAdapter",
            "<**>;)V"
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/google/android/gms/internal/zzez;, "Lcom/google/android/gms/internal/zzez<TNETWORK_EXTRAS;TSERVER_PARAMETERS;>;"
    .local p1, "adapter":Lcom/google/ads/mediation/MediationInterstitialAdapter;, "Lcom/google/ads/mediation/MediationInterstitialAdapter<**>;"
    const-string v0, "Adapter called onDismissScreen."

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/client/zzb;->zzaF(Ljava/lang/String;)V

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzl;->zzcF()Lcom/google/android/gms/ads/internal/util/client/zza;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/util/client/zza;->zzgT()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "onDismissScreen must be called on the main UI thread."

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/client/zzb;->zzaH(Ljava/lang/String;)V

    sget-object v0, Lcom/google/android/gms/ads/internal/util/client/zza;->zzJt:Landroid/os/Handler;

    new-instance v1, Lcom/google/android/gms/internal/zzez$9;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/zzez$9;-><init>(Lcom/google/android/gms/internal/zzez;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_0
    return-void

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzez;->zzzL:Lcom/google/android/gms/internal/zzeo;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzeo;->onAdClosed()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "Could not call onAdClosed."

    invoke-static {v1, v0}, Lcom/google/android/gms/ads/internal/util/client/zzb;->zzd(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public onFailedToReceiveAd(Lcom/google/ads/mediation/MediationBannerAdapter;Lcom/google/ads/AdRequest$ErrorCode;)V
    .locals 2
    .param p2, "errorCode"    # Lcom/google/ads/AdRequest$ErrorCode;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/ads/mediation/MediationBannerAdapter",
            "<**>;",
            "Lcom/google/ads/AdRequest$ErrorCode;",
            ")V"
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/google/android/gms/internal/zzez;, "Lcom/google/android/gms/internal/zzez<TNETWORK_EXTRAS;TSERVER_PARAMETERS;>;"
    .local p1, "adapter":Lcom/google/ads/mediation/MediationBannerAdapter;, "Lcom/google/ads/mediation/MediationBannerAdapter<**>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Adapter called onFailedToReceiveAd with error. "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/client/zzb;->zzaF(Ljava/lang/String;)V

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzl;->zzcF()Lcom/google/android/gms/ads/internal/util/client/zza;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/util/client/zza;->zzgT()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "onFailedToReceiveAd must be called on the main UI thread."

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/client/zzb;->zzaH(Ljava/lang/String;)V

    sget-object v0, Lcom/google/android/gms/ads/internal/util/client/zza;->zzJt:Landroid/os/Handler;

    new-instance v1, Lcom/google/android/gms/internal/zzez$5;

    invoke-direct {v1, p0, p2}, Lcom/google/android/gms/internal/zzez$5;-><init>(Lcom/google/android/gms/internal/zzez;Lcom/google/ads/AdRequest$ErrorCode;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_0
    return-void

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzez;->zzzL:Lcom/google/android/gms/internal/zzeo;

    invoke-static {p2}, Lcom/google/android/gms/internal/zzfa;->zza(Lcom/google/ads/AdRequest$ErrorCode;)I

    move-result v1

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/zzeo;->onAdFailedToLoad(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "Could not call onAdFailedToLoad."

    invoke-static {v1, v0}, Lcom/google/android/gms/ads/internal/util/client/zzb;->zzd(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public onFailedToReceiveAd(Lcom/google/ads/mediation/MediationInterstitialAdapter;Lcom/google/ads/AdRequest$ErrorCode;)V
    .locals 2
    .param p2, "errorCode"    # Lcom/google/ads/AdRequest$ErrorCode;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/ads/mediation/MediationInterstitialAdapter",
            "<**>;",
            "Lcom/google/ads/AdRequest$ErrorCode;",
            ")V"
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/google/android/gms/internal/zzez;, "Lcom/google/android/gms/internal/zzez<TNETWORK_EXTRAS;TSERVER_PARAMETERS;>;"
    .local p1, "adapter":Lcom/google/ads/mediation/MediationInterstitialAdapter;, "Lcom/google/ads/mediation/MediationInterstitialAdapter<**>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Adapter called onFailedToReceiveAd with error "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/client/zzb;->zzaF(Ljava/lang/String;)V

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzl;->zzcF()Lcom/google/android/gms/ads/internal/util/client/zza;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/util/client/zza;->zzgT()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "onFailedToReceiveAd must be called on the main UI thread."

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/client/zzb;->zzaH(Ljava/lang/String;)V

    sget-object v0, Lcom/google/android/gms/ads/internal/util/client/zza;->zzJt:Landroid/os/Handler;

    new-instance v1, Lcom/google/android/gms/internal/zzez$10;

    invoke-direct {v1, p0, p2}, Lcom/google/android/gms/internal/zzez$10;-><init>(Lcom/google/android/gms/internal/zzez;Lcom/google/ads/AdRequest$ErrorCode;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_0
    return-void

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzez;->zzzL:Lcom/google/android/gms/internal/zzeo;

    invoke-static {p2}, Lcom/google/android/gms/internal/zzfa;->zza(Lcom/google/ads/AdRequest$ErrorCode;)I

    move-result v1

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/zzeo;->onAdFailedToLoad(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "Could not call onAdFailedToLoad."

    invoke-static {v1, v0}, Lcom/google/android/gms/ads/internal/util/client/zzb;->zzd(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public onLeaveApplication(Lcom/google/ads/mediation/MediationBannerAdapter;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/ads/mediation/MediationBannerAdapter",
            "<**>;)V"
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/google/android/gms/internal/zzez;, "Lcom/google/android/gms/internal/zzez<TNETWORK_EXTRAS;TSERVER_PARAMETERS;>;"
    .local p1, "adapter":Lcom/google/ads/mediation/MediationBannerAdapter;, "Lcom/google/ads/mediation/MediationBannerAdapter<**>;"
    const-string v0, "Adapter called onLeaveApplication."

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/client/zzb;->zzaF(Ljava/lang/String;)V

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzl;->zzcF()Lcom/google/android/gms/ads/internal/util/client/zza;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/util/client/zza;->zzgT()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "onLeaveApplication must be called on the main UI thread."

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/client/zzb;->zzaH(Ljava/lang/String;)V

    sget-object v0, Lcom/google/android/gms/ads/internal/util/client/zza;->zzJt:Landroid/os/Handler;

    new-instance v1, Lcom/google/android/gms/internal/zzez$6;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/zzez$6;-><init>(Lcom/google/android/gms/internal/zzez;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_0
    return-void

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzez;->zzzL:Lcom/google/android/gms/internal/zzeo;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzeo;->onAdLeftApplication()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "Could not call onAdLeftApplication."

    invoke-static {v1, v0}, Lcom/google/android/gms/ads/internal/util/client/zzb;->zzd(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public onLeaveApplication(Lcom/google/ads/mediation/MediationInterstitialAdapter;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/ads/mediation/MediationInterstitialAdapter",
            "<**>;)V"
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/google/android/gms/internal/zzez;, "Lcom/google/android/gms/internal/zzez<TNETWORK_EXTRAS;TSERVER_PARAMETERS;>;"
    .local p1, "adapter":Lcom/google/ads/mediation/MediationInterstitialAdapter;, "Lcom/google/ads/mediation/MediationInterstitialAdapter<**>;"
    const-string v0, "Adapter called onLeaveApplication."

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/client/zzb;->zzaF(Ljava/lang/String;)V

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzl;->zzcF()Lcom/google/android/gms/ads/internal/util/client/zza;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/util/client/zza;->zzgT()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "onLeaveApplication must be called on the main UI thread."

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/client/zzb;->zzaH(Ljava/lang/String;)V

    sget-object v0, Lcom/google/android/gms/ads/internal/util/client/zza;->zzJt:Landroid/os/Handler;

    new-instance v1, Lcom/google/android/gms/internal/zzez$11;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/zzez$11;-><init>(Lcom/google/android/gms/internal/zzez;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_0
    return-void

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzez;->zzzL:Lcom/google/android/gms/internal/zzeo;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzeo;->onAdLeftApplication()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "Could not call onAdLeftApplication."

    invoke-static {v1, v0}, Lcom/google/android/gms/ads/internal/util/client/zzb;->zzd(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public onPresentScreen(Lcom/google/ads/mediation/MediationBannerAdapter;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/ads/mediation/MediationBannerAdapter",
            "<**>;)V"
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/google/android/gms/internal/zzez;, "Lcom/google/android/gms/internal/zzez<TNETWORK_EXTRAS;TSERVER_PARAMETERS;>;"
    .local p1, "adapter":Lcom/google/ads/mediation/MediationBannerAdapter;, "Lcom/google/ads/mediation/MediationBannerAdapter<**>;"
    const-string v0, "Adapter called onPresentScreen."

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/client/zzb;->zzaF(Ljava/lang/String;)V

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzl;->zzcF()Lcom/google/android/gms/ads/internal/util/client/zza;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/util/client/zza;->zzgT()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "onPresentScreen must be called on the main UI thread."

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/client/zzb;->zzaH(Ljava/lang/String;)V

    sget-object v0, Lcom/google/android/gms/ads/internal/util/client/zza;->zzJt:Landroid/os/Handler;

    new-instance v1, Lcom/google/android/gms/internal/zzez$7;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/zzez$7;-><init>(Lcom/google/android/gms/internal/zzez;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_0
    return-void

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzez;->zzzL:Lcom/google/android/gms/internal/zzeo;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzeo;->onAdOpened()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "Could not call onAdOpened."

    invoke-static {v1, v0}, Lcom/google/android/gms/ads/internal/util/client/zzb;->zzd(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public onPresentScreen(Lcom/google/ads/mediation/MediationInterstitialAdapter;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/ads/mediation/MediationInterstitialAdapter",
            "<**>;)V"
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/google/android/gms/internal/zzez;, "Lcom/google/android/gms/internal/zzez<TNETWORK_EXTRAS;TSERVER_PARAMETERS;>;"
    .local p1, "adapter":Lcom/google/ads/mediation/MediationInterstitialAdapter;, "Lcom/google/ads/mediation/MediationInterstitialAdapter<**>;"
    const-string v0, "Adapter called onPresentScreen."

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/client/zzb;->zzaF(Ljava/lang/String;)V

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzl;->zzcF()Lcom/google/android/gms/ads/internal/util/client/zza;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/util/client/zza;->zzgT()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "onPresentScreen must be called on the main UI thread."

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/client/zzb;->zzaH(Ljava/lang/String;)V

    sget-object v0, Lcom/google/android/gms/ads/internal/util/client/zza;->zzJt:Landroid/os/Handler;

    new-instance v1, Lcom/google/android/gms/internal/zzez$2;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/zzez$2;-><init>(Lcom/google/android/gms/internal/zzez;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_0
    return-void

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzez;->zzzL:Lcom/google/android/gms/internal/zzeo;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzeo;->onAdOpened()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "Could not call onAdOpened."

    invoke-static {v1, v0}, Lcom/google/android/gms/ads/internal/util/client/zzb;->zzd(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public onReceivedAd(Lcom/google/ads/mediation/MediationBannerAdapter;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/ads/mediation/MediationBannerAdapter",
            "<**>;)V"
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/google/android/gms/internal/zzez;, "Lcom/google/android/gms/internal/zzez<TNETWORK_EXTRAS;TSERVER_PARAMETERS;>;"
    .local p1, "adapter":Lcom/google/ads/mediation/MediationBannerAdapter;, "Lcom/google/ads/mediation/MediationBannerAdapter<**>;"
    const-string v0, "Adapter called onReceivedAd."

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/client/zzb;->zzaF(Ljava/lang/String;)V

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzl;->zzcF()Lcom/google/android/gms/ads/internal/util/client/zza;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/util/client/zza;->zzgT()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "onReceivedAd must be called on the main UI thread."

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/client/zzb;->zzaH(Ljava/lang/String;)V

    sget-object v0, Lcom/google/android/gms/ads/internal/util/client/zza;->zzJt:Landroid/os/Handler;

    new-instance v1, Lcom/google/android/gms/internal/zzez$8;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/zzez$8;-><init>(Lcom/google/android/gms/internal/zzez;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_0
    return-void

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzez;->zzzL:Lcom/google/android/gms/internal/zzeo;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzeo;->onAdLoaded()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "Could not call onAdLoaded."

    invoke-static {v1, v0}, Lcom/google/android/gms/ads/internal/util/client/zzb;->zzd(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public onReceivedAd(Lcom/google/ads/mediation/MediationInterstitialAdapter;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/ads/mediation/MediationInterstitialAdapter",
            "<**>;)V"
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/google/android/gms/internal/zzez;, "Lcom/google/android/gms/internal/zzez<TNETWORK_EXTRAS;TSERVER_PARAMETERS;>;"
    .local p1, "adapter":Lcom/google/ads/mediation/MediationInterstitialAdapter;, "Lcom/google/ads/mediation/MediationInterstitialAdapter<**>;"
    const-string v0, "Adapter called onReceivedAd."

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/client/zzb;->zzaF(Ljava/lang/String;)V

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzl;->zzcF()Lcom/google/android/gms/ads/internal/util/client/zza;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/util/client/zza;->zzgT()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "onReceivedAd must be called on the main UI thread."

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/client/zzb;->zzaH(Ljava/lang/String;)V

    sget-object v0, Lcom/google/android/gms/ads/internal/util/client/zza;->zzJt:Landroid/os/Handler;

    new-instance v1, Lcom/google/android/gms/internal/zzez$3;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/zzez$3;-><init>(Lcom/google/android/gms/internal/zzez;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_0
    return-void

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzez;->zzzL:Lcom/google/android/gms/internal/zzeo;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzeo;->onAdLoaded()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "Could not call onAdLoaded."

    invoke-static {v1, v0}, Lcom/google/android/gms/ads/internal/util/client/zzb;->zzd(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
