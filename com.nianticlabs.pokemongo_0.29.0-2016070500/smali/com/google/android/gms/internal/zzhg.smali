.class public Lcom/google/android/gms/internal/zzhg;
.super Lcom/google/android/gms/ads/internal/zzb;

# interfaces
.implements Lcom/google/android/gms/internal/zzhk;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzgr;
.end annotation


# instance fields
.field private zzGX:Lcom/google/android/gms/ads/internal/reward/client/zzd;

.field private zzGY:Ljava/lang/String;

.field private zzGZ:Z

.field private zzHa:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/zzhh;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/ads/internal/client/AdSizeParcel;Lcom/google/android/gms/internal/zzem;Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;)V
    .locals 7

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, v3

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/ads/internal/zzb;-><init>(Landroid/content/Context;Lcom/google/android/gms/ads/internal/client/AdSizeParcel;Ljava/lang/String;Lcom/google/android/gms/internal/zzem;Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;Lcom/google/android/gms/ads/internal/zzd;)V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzhg;->zzHa:Ljava/util/HashMap;

    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 4

    const-string v0, "destroy must be called on the main UI thread."

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzx;->zzci(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzhg;->zzHa:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/zzhg;->zzHa:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/zzhh;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzhh;->zzgc()Lcom/google/android/gms/internal/zzen;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzhh;->zzgc()Lcom/google/android/gms/internal/zzen;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/android/gms/internal/zzen;->destroy()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Fail to destroy adapter: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/client/zzb;->zzaH(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public isLoaded()Z
    .locals 1

    const-string v0, "isLoaded must be called on the main UI thread."

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzx;->zzci(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzhg;->zzot:Lcom/google/android/gms/ads/internal/zzq;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzq;->zzql:Lcom/google/android/gms/internal/zzhz;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzhg;->zzot:Lcom/google/android/gms/ads/internal/zzq;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzq;->zzqm:Lcom/google/android/gms/internal/zzgh;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzhg;->zzot:Lcom/google/android/gms/ads/internal/zzq;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzq;->zzqo:Lcom/google/android/gms/internal/zzhs;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzhg;->zzGZ:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onRewardedVideoAdClosed()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzhg;->zzGX:Lcom/google/android/gms/ads/internal/reward/client/zzd;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzhg;->zzGX:Lcom/google/android/gms/ads/internal/reward/client/zzd;

    invoke-interface {v0}, Lcom/google/android/gms/ads/internal/reward/client/zzd;->onRewardedVideoAdClosed()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "Could not call RewardedVideoAdListener.onAdClosed()."

    invoke-static {v1, v0}, Lcom/google/android/gms/ads/internal/util/client/zzb;->zzd(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public onRewardedVideoAdLeftApplication()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzhg;->zzGX:Lcom/google/android/gms/ads/internal/reward/client/zzd;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzhg;->zzGX:Lcom/google/android/gms/ads/internal/reward/client/zzd;

    invoke-interface {v0}, Lcom/google/android/gms/ads/internal/reward/client/zzd;->onRewardedVideoAdLeftApplication()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "Could not call RewardedVideoAdListener.onAdLeftApplication()."

    invoke-static {v1, v0}, Lcom/google/android/gms/ads/internal/util/client/zzb;->zzd(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public onRewardedVideoAdOpened()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzhg;->zzot:Lcom/google/android/gms/ads/internal/zzq;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzq;->zzqo:Lcom/google/android/gms/internal/zzhs;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/zzhg;->zza(Lcom/google/android/gms/internal/zzhs;Z)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzhg;->zzGX:Lcom/google/android/gms/ads/internal/reward/client/zzd;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzhg;->zzGX:Lcom/google/android/gms/ads/internal/reward/client/zzd;

    invoke-interface {v0}, Lcom/google/android/gms/ads/internal/reward/client/zzd;->onRewardedVideoAdOpened()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "Could not call RewardedVideoAdListener.onAdOpened()."

    invoke-static {v1, v0}, Lcom/google/android/gms/ads/internal/util/client/zzb;->zzd(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public onRewardedVideoStarted()V
    .locals 7

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzp;->zzbH()Lcom/google/android/gms/internal/zzej;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzhg;->zzot:Lcom/google/android/gms/ads/internal/zzq;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/zzq;->context:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzhg;->zzot:Lcom/google/android/gms/ads/internal/zzq;

    iget-object v2, v2, Lcom/google/android/gms/ads/internal/zzq;->zzqj:Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

    iget-object v2, v2, Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;->zzJu:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/gms/internal/zzhg;->zzot:Lcom/google/android/gms/ads/internal/zzq;

    iget-object v3, v3, Lcom/google/android/gms/ads/internal/zzq;->zzqo:Lcom/google/android/gms/internal/zzhs;

    iget-object v4, p0, Lcom/google/android/gms/internal/zzhg;->zzot:Lcom/google/android/gms/ads/internal/zzq;

    iget-object v4, v4, Lcom/google/android/gms/ads/internal/zzq;->zzqh:Ljava/lang/String;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/google/android/gms/internal/zzhg;->zzot:Lcom/google/android/gms/ads/internal/zzq;

    iget-object v6, v6, Lcom/google/android/gms/ads/internal/zzq;->zzqo:Lcom/google/android/gms/internal/zzhs;

    iget-object v6, v6, Lcom/google/android/gms/internal/zzhs;->zzzu:Lcom/google/android/gms/internal/zzed;

    iget-object v6, v6, Lcom/google/android/gms/internal/zzed;->zzyU:Ljava/util/List;

    invoke-virtual/range {v0 .. v6}, Lcom/google/android/gms/internal/zzej;->zza(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/internal/zzhs;Ljava/lang/String;ZLjava/util/List;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzhg;->zzGX:Lcom/google/android/gms/ads/internal/reward/client/zzd;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzhg;->zzGX:Lcom/google/android/gms/ads/internal/reward/client/zzd;

    invoke-interface {v0}, Lcom/google/android/gms/ads/internal/reward/client/zzd;->onRewardedVideoStarted()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "Could not call RewardedVideoAdListener.onVideoStarted()."

    invoke-static {v1, v0}, Lcom/google/android/gms/ads/internal/util/client/zzb;->zzd(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public pause()V
    .locals 4

    const-string v0, "pause must be called on the main UI thread."

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzx;->zzci(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzhg;->zzHa:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/zzhg;->zzHa:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/zzhh;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzhh;->zzgc()Lcom/google/android/gms/internal/zzen;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzhh;->zzgc()Lcom/google/android/gms/internal/zzen;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/android/gms/internal/zzen;->pause()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Fail to pause adapter: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/client/zzb;->zzaH(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public resume()V
    .locals 4

    const-string v0, "resume must be called on the main UI thread."

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzx;->zzci(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzhg;->zzHa:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/zzhg;->zzHa:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/zzhh;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzhh;->zzgc()Lcom/google/android/gms/internal/zzen;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzhh;->zzgc()Lcom/google/android/gms/internal/zzen;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/android/gms/internal/zzen;->resume()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Fail to resume adapter: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/client/zzb;->zzaH(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public setUserId(Ljava/lang/String;)V
    .locals 1
    .param p1, "userId"    # Ljava/lang/String;

    .prologue
    const-string v0, "setUserId must be called on the main UI thread."

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzx;->zzci(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzhg;->zzGY:Ljava/lang/String;

    return-void
.end method

.method public zza(Lcom/google/android/gms/ads/internal/reward/client/RewardedVideoAdRequestParcel;)V
    .locals 2

    const-string v0, "loadAd must be called on the main UI thread."

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzx;->zzci(Ljava/lang/String;)V

    iget-object v0, p1, Lcom/google/android/gms/ads/internal/reward/client/RewardedVideoAdRequestParcel;->zzqh:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "Invalid ad unit id. Aborting."

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/client/zzb;->zzaH(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzhg;->zzGZ:Z

    iget-object v0, p0, Lcom/google/android/gms/internal/zzhg;->zzot:Lcom/google/android/gms/ads/internal/zzq;

    iget-object v1, p1, Lcom/google/android/gms/ads/internal/reward/client/RewardedVideoAdRequestParcel;->zzqh:Ljava/lang/String;

    iput-object v1, v0, Lcom/google/android/gms/ads/internal/zzq;->zzqh:Ljava/lang/String;

    iget-object v0, p1, Lcom/google/android/gms/ads/internal/reward/client/RewardedVideoAdRequestParcel;->zzEn:Lcom/google/android/gms/ads/internal/client/AdRequestParcel;

    invoke-super {p0, v0}, Lcom/google/android/gms/ads/internal/zzb;->zzb(Lcom/google/android/gms/ads/internal/client/AdRequestParcel;)Z

    goto :goto_0
.end method

.method public zza(Lcom/google/android/gms/ads/internal/reward/client/zzd;)V
    .locals 1

    const-string v0, "setRewardedVideoAdListener must be called on the main UI thread."

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzx;->zzci(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzhg;->zzGX:Lcom/google/android/gms/ads/internal/reward/client/zzd;

    return-void
.end method

.method public zza(Lcom/google/android/gms/ads/internal/reward/mediation/client/RewardItemParcel;)V
    .locals 7

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzp;->zzbH()Lcom/google/android/gms/internal/zzej;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzhg;->zzot:Lcom/google/android/gms/ads/internal/zzq;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/zzq;->context:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzhg;->zzot:Lcom/google/android/gms/ads/internal/zzq;

    iget-object v2, v2, Lcom/google/android/gms/ads/internal/zzq;->zzqj:Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

    iget-object v2, v2, Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;->zzJu:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/gms/internal/zzhg;->zzot:Lcom/google/android/gms/ads/internal/zzq;

    iget-object v3, v3, Lcom/google/android/gms/ads/internal/zzq;->zzqo:Lcom/google/android/gms/internal/zzhs;

    iget-object v4, p0, Lcom/google/android/gms/internal/zzhg;->zzot:Lcom/google/android/gms/ads/internal/zzq;

    iget-object v4, v4, Lcom/google/android/gms/ads/internal/zzq;->zzqh:Ljava/lang/String;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/google/android/gms/internal/zzhg;->zzot:Lcom/google/android/gms/ads/internal/zzq;

    iget-object v6, v6, Lcom/google/android/gms/ads/internal/zzq;->zzqo:Lcom/google/android/gms/internal/zzhs;

    iget-object v6, v6, Lcom/google/android/gms/internal/zzhs;->zzzu:Lcom/google/android/gms/internal/zzed;

    iget-object v6, v6, Lcom/google/android/gms/internal/zzed;->zzyV:Ljava/util/List;

    invoke-virtual/range {v0 .. v6}, Lcom/google/android/gms/internal/zzej;->zza(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/internal/zzhs;Ljava/lang/String;ZLjava/util/List;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzhg;->zzGX:Lcom/google/android/gms/ads/internal/reward/client/zzd;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzhg;->zzot:Lcom/google/android/gms/ads/internal/zzq;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzq;->zzqo:Lcom/google/android/gms/internal/zzhs;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzhg;->zzot:Lcom/google/android/gms/ads/internal/zzq;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzq;->zzqo:Lcom/google/android/gms/internal/zzhs;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzhs;->zzHx:Lcom/google/android/gms/internal/zzee;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzhg;->zzot:Lcom/google/android/gms/ads/internal/zzq;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzq;->zzqo:Lcom/google/android/gms/internal/zzhs;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzhs;->zzHx:Lcom/google/android/gms/internal/zzee;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzee;->zzzd:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzhg;->zzGX:Lcom/google/android/gms/ads/internal/reward/client/zzd;

    new-instance v1, Lcom/google/android/gms/internal/zzhe;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzhg;->zzot:Lcom/google/android/gms/ads/internal/zzq;

    iget-object v2, v2, Lcom/google/android/gms/ads/internal/zzq;->zzqo:Lcom/google/android/gms/internal/zzhs;

    iget-object v2, v2, Lcom/google/android/gms/internal/zzhs;->zzHx:Lcom/google/android/gms/internal/zzee;

    iget-object v2, v2, Lcom/google/android/gms/internal/zzee;->zzzd:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/gms/internal/zzhg;->zzot:Lcom/google/android/gms/ads/internal/zzq;

    iget-object v3, v3, Lcom/google/android/gms/ads/internal/zzq;->zzqo:Lcom/google/android/gms/internal/zzhs;

    iget-object v3, v3, Lcom/google/android/gms/internal/zzhs;->zzHx:Lcom/google/android/gms/internal/zzee;

    iget v3, v3, Lcom/google/android/gms/internal/zzee;->zzze:I

    invoke-direct {v1, v2, v3}, Lcom/google/android/gms/internal/zzhe;-><init>(Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/ads/internal/reward/client/zzd;->zza(Lcom/google/android/gms/ads/internal/reward/client/zza;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "Could not call RewardedVideoAdListener.onRewarded()."

    invoke-static {v1, v0}, Lcom/google/android/gms/ads/internal/util/client/zzb;->zzd(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/internal/zzhg;->zzGX:Lcom/google/android/gms/ads/internal/reward/client/zzd;

    new-instance v1, Lcom/google/android/gms/internal/zzhe;

    iget-object v2, p1, Lcom/google/android/gms/ads/internal/reward/mediation/client/RewardItemParcel;->type:Ljava/lang/String;

    iget v3, p1, Lcom/google/android/gms/ads/internal/reward/mediation/client/RewardItemParcel;->zzHv:I

    invoke-direct {v1, v2, v3}, Lcom/google/android/gms/internal/zzhe;-><init>(Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/ads/internal/reward/client/zzd;->zza(Lcom/google/android/gms/ads/internal/reward/client/zza;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public zza(Lcom/google/android/gms/internal/zzhs$zza;Lcom/google/android/gms/internal/zzcg;)V
    .locals 4

    iget v0, p1, Lcom/google/android/gms/internal/zzhs$zza;->errorCode:I

    const/4 v1, -0x2

    if-eq v0, v1, :cond_0

    sget-object v0, Lcom/google/android/gms/internal/zzid;->zzIE:Landroid/os/Handler;

    new-instance v1, Lcom/google/android/gms/internal/zzhg$1;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/zzhg$1;-><init>(Lcom/google/android/gms/internal/zzhg;Lcom/google/android/gms/internal/zzhs$zza;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzhg;->zzot:Lcom/google/android/gms/ads/internal/zzq;

    const/4 v1, 0x0

    iput v1, v0, Lcom/google/android/gms/ads/internal/zzq;->zzqH:I

    iget-object v0, p0, Lcom/google/android/gms/internal/zzhg;->zzot:Lcom/google/android/gms/ads/internal/zzq;

    new-instance v1, Lcom/google/android/gms/internal/zzhn;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzhg;->zzot:Lcom/google/android/gms/ads/internal/zzq;

    iget-object v2, v2, Lcom/google/android/gms/ads/internal/zzq;->context:Landroid/content/Context;

    iget-object v3, p0, Lcom/google/android/gms/internal/zzhg;->zzGY:Ljava/lang/String;

    invoke-direct {v1, v2, v3, p1, p0}, Lcom/google/android/gms/internal/zzhn;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/internal/zzhs$zza;Lcom/google/android/gms/internal/zzhg;)V

    iput-object v1, v0, Lcom/google/android/gms/ads/internal/zzq;->zzqm:Lcom/google/android/gms/internal/zzgh;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AdRenderer: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzhg;->zzot:Lcom/google/android/gms/ads/internal/zzq;

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

    iget-object v0, p0, Lcom/google/android/gms/internal/zzhg;->zzot:Lcom/google/android/gms/ads/internal/zzq;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzq;->zzqm:Lcom/google/android/gms/internal/zzgh;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzgh;->zzfu()Ljava/lang/Object;

    goto :goto_0
.end method

.method public zza(Lcom/google/android/gms/internal/zzhs;Lcom/google/android/gms/internal/zzhs;)Z
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzhg;->zzGX:Lcom/google/android/gms/ads/internal/reward/client/zzd;

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzhg;->zzGX:Lcom/google/android/gms/ads/internal/reward/client/zzd;

    invoke-interface {v0}, Lcom/google/android/gms/ads/internal/reward/client/zzd;->onRewardedVideoAdLoaded()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    const/4 v0, 0x1

    return v0

    :catch_0
    move-exception v0

    const-string v1, "Could not call RewardedVideoAdListener.onAdLoaded()."

    invoke-static {v1, v0}, Lcom/google/android/gms/ads/internal/util/client/zzb;->zzd(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public zzau(Ljava/lang/String;)Lcom/google/android/gms/internal/zzhh;
    .locals 5

    iget-object v0, p0, Lcom/google/android/gms/internal/zzhg;->zzHa:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzhh;

    if-nez v0, :cond_0

    :try_start_0
    new-instance v1, Lcom/google/android/gms/internal/zzhh;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzhg;->zzox:Lcom/google/android/gms/internal/zzem;

    invoke-interface {v2, p1}, Lcom/google/android/gms/internal/zzem;->zzae(Ljava/lang/String;)Lcom/google/android/gms/internal/zzen;

    move-result-object v2

    invoke-direct {v1, v2, p0}, Lcom/google/android/gms/internal/zzhh;-><init>(Lcom/google/android/gms/internal/zzen;Lcom/google/android/gms/internal/zzhk;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/internal/zzhg;->zzHa:Ljava/util/HashMap;

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-object v0, v1

    :cond_0
    :goto_0
    return-object v0

    :catch_0
    move-exception v1

    :goto_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Fail to instantiate adapter "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/google/android/gms/ads/internal/util/client/zzb;->zzd(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :catch_1
    move-exception v0

    move-object v4, v0

    move-object v0, v1

    move-object v1, v4

    goto :goto_1
.end method

.method protected zze(I)Z
    .locals 3

    const/4 v0, 0x0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to load ad: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/ads/internal/util/client/zzb;->zzaH(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/zzhg;->zzGX:Lcom/google/android/gms/ads/internal/reward/client/zzd;

    if-nez v1, :cond_0

    :goto_0
    return v0

    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/zzhg;->zzGX:Lcom/google/android/gms/ads/internal/reward/client/zzd;

    invoke-interface {v1, p1}, Lcom/google/android/gms/ads/internal/reward/client/zzd;->onRewardedVideoAdFailedToLoad(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "Could not call RewardedVideoAdListener.onAdFailedToLoad()."

    invoke-static {v2, v1}, Lcom/google/android/gms/ads/internal/util/client/zzb;->zzd(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public zzga()V
    .locals 2

    const-string v0, "showAd must be called on the main UI thread."

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzx;->zzci(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzhg;->isLoaded()Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "The reward video has not loaded."

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/client/zzb;->zzaH(Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzhg;->zzGZ:Z

    iget-object v0, p0, Lcom/google/android/gms/internal/zzhg;->zzot:Lcom/google/android/gms/ads/internal/zzq;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzq;->zzqo:Lcom/google/android/gms/internal/zzhs;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzhs;->zzzw:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/zzhg;->zzau(Ljava/lang/String;)Lcom/google/android/gms/internal/zzhh;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzhh;->zzgc()Lcom/google/android/gms/internal/zzen;

    move-result-object v1

    if-eqz v1, :cond_0

    :try_start_0
    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzhh;->zzgc()Lcom/google/android/gms/internal/zzen;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzen;->showVideo()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "Could not call showVideo."

    invoke-static {v1, v0}, Lcom/google/android/gms/ads/internal/util/client/zzb;->zzd(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public zzgb()V
    .locals 0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzhg;->onAdClicked()V

    return-void
.end method
