.class public abstract Lcom/google/android/gms/ads/internal/zza;
.super Lcom/google/android/gms/ads/internal/client/zzs$zza;

# interfaces
.implements Lcom/google/android/gms/ads/internal/client/zza;
.implements Lcom/google/android/gms/ads/internal/overlay/zzn;
.implements Lcom/google/android/gms/ads/internal/request/zza$zza;
.implements Lcom/google/android/gms/internal/zzdg;
.implements Lcom/google/android/gms/internal/zzgg$zza;
.implements Lcom/google/android/gms/internal/zzhw;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzgr;
.end annotation


# instance fields
.field protected zzoo:Lcom/google/android/gms/internal/zzcg;

.field protected zzop:Lcom/google/android/gms/internal/zzce;

.field protected zzoq:Lcom/google/android/gms/internal/zzce;

.field zzor:Z

.field protected final zzos:Lcom/google/android/gms/ads/internal/zzo;

.field protected final zzot:Lcom/google/android/gms/ads/internal/zzq;

.field protected transient zzou:Lcom/google/android/gms/ads/internal/client/AdRequestParcel;

.field protected final zzov:Lcom/google/android/gms/internal/zzay;

.field protected final zzow:Lcom/google/android/gms/ads/internal/zzd;


# direct methods
.method constructor <init>(Lcom/google/android/gms/ads/internal/zzq;Lcom/google/android/gms/ads/internal/zzo;Lcom/google/android/gms/ads/internal/zzd;)V
    .locals 3

    invoke-direct {p0}, Lcom/google/android/gms/ads/internal/client/zzs$zza;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/ads/internal/zza;->zzor:Z

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/zza;->zzot:Lcom/google/android/gms/ads/internal/zzq;

    if-eqz p2, :cond_0

    :goto_0
    iput-object p2, p0, Lcom/google/android/gms/ads/internal/zza;->zzos:Lcom/google/android/gms/ads/internal/zzo;

    iput-object p3, p0, Lcom/google/android/gms/ads/internal/zza;->zzow:Lcom/google/android/gms/ads/internal/zzd;

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzp;->zzbv()Lcom/google/android/gms/internal/zzid;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/zza;->zzot:Lcom/google/android/gms/ads/internal/zzq;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/zzq;->context:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzid;->zzI(Landroid/content/Context;)Z

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzp;->zzby()Lcom/google/android/gms/internal/zzhu;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/zza;->zzot:Lcom/google/android/gms/ads/internal/zzq;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/zzq;->context:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/zza;->zzot:Lcom/google/android/gms/ads/internal/zzq;

    iget-object v2, v2, Lcom/google/android/gms/ads/internal/zzq;->zzqj:Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/zzhu;->zzb(Landroid/content/Context;Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;)V

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzp;->zzby()Lcom/google/android/gms/internal/zzhu;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzhu;->zzgt()Lcom/google/android/gms/internal/zzay;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/ads/internal/zza;->zzov:Lcom/google/android/gms/internal/zzay;

    return-void

    :cond_0
    new-instance p2, Lcom/google/android/gms/ads/internal/zzo;

    invoke-direct {p2, p0}, Lcom/google/android/gms/ads/internal/zzo;-><init>(Lcom/google/android/gms/ads/internal/zza;)V

    goto :goto_0
.end method

.method private zza(Lcom/google/android/gms/ads/internal/client/AdRequestParcel;)Lcom/google/android/gms/ads/internal/client/AdRequestParcel;
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zza;->zzot:Lcom/google/android/gms/ads/internal/zzq;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzq;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/gms/common/GooglePlayServicesUtil;->zzag(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/google/android/gms/ads/internal/client/AdRequestParcel;->zzsJ:Landroid/location/Location;

    if-eqz v0, :cond_0

    new-instance v0, Lcom/google/android/gms/ads/internal/client/zzf;

    invoke-direct {v0, p1}, Lcom/google/android/gms/ads/internal/client/zzf;-><init>(Lcom/google/android/gms/ads/internal/client/AdRequestParcel;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/internal/client/zzf;->zza(Landroid/location/Location;)Lcom/google/android/gms/ads/internal/client/zzf;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/client/zzf;->zzcA()Lcom/google/android/gms/ads/internal/client/AdRequestParcel;

    move-result-object p1

    :cond_0
    return-object p1
.end method

.method private zzaR()Z
    .locals 3

    const/4 v0, 0x0

    const-string v1, "Ad leaving application."

    invoke-static {v1}, Lcom/google/android/gms/ads/internal/util/client/zzb;->zzaG(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/zza;->zzot:Lcom/google/android/gms/ads/internal/zzq;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/zzq;->zzqs:Lcom/google/android/gms/ads/internal/client/zzo;

    if-nez v1, :cond_0

    :goto_0
    return v0

    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/ads/internal/zza;->zzot:Lcom/google/android/gms/ads/internal/zzq;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/zzq;->zzqs:Lcom/google/android/gms/ads/internal/client/zzo;

    invoke-interface {v1}, Lcom/google/android/gms/ads/internal/client/zzo;->onAdLeftApplication()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "Could not call AdListener.onAdLeftApplication()."

    invoke-static {v2, v1}, Lcom/google/android/gms/ads/internal/util/client/zzb;->zzd(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method


# virtual methods
.method public destroy()V
    .locals 2

    const-string v0, "destroy must be called on the main UI thread."

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzx;->zzci(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zza;->zzos:Lcom/google/android/gms/ads/internal/zzo;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/zzo;->cancel()V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zza;->zzov:Lcom/google/android/gms/internal/zzay;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/zza;->zzot:Lcom/google/android/gms/ads/internal/zzq;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/zzq;->zzqo:Lcom/google/android/gms/internal/zzhs;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzay;->zzf(Lcom/google/android/gms/internal/zzhs;)V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zza;->zzot:Lcom/google/android/gms/ads/internal/zzq;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/zzq;->destroy()V

    return-void
.end method

.method public isLoading()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/ads/internal/zza;->zzor:Z

    return v0
.end method

.method public isReady()Z
    .locals 1

    const-string v0, "isLoaded must be called on the main UI thread."

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzx;->zzci(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zza;->zzot:Lcom/google/android/gms/ads/internal/zzq;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzq;->zzql:Lcom/google/android/gms/internal/zzhz;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zza;->zzot:Lcom/google/android/gms/ads/internal/zzq;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzq;->zzqm:Lcom/google/android/gms/internal/zzgh;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zza;->zzot:Lcom/google/android/gms/ads/internal/zzq;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzq;->zzqo:Lcom/google/android/gms/internal/zzhs;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onAdClicked()V
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zza;->zzot:Lcom/google/android/gms/ads/internal/zzq;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzq;->zzqo:Lcom/google/android/gms/internal/zzhs;

    if-nez v0, :cond_1

    const-string v0, "Ad state was null when trying to ping click URLs."

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/client/zzb;->zzaH(Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v0, "Pinging click URLs."

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/client/zzb;->zzaF(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zza;->zzot:Lcom/google/android/gms/ads/internal/zzq;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzq;->zzqq:Lcom/google/android/gms/internal/zzht;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzht;->zzgg()V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zza;->zzot:Lcom/google/android/gms/ads/internal/zzq;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzq;->zzqo:Lcom/google/android/gms/internal/zzhs;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzhs;->zzyY:Ljava/util/List;

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzp;->zzbv()Lcom/google/android/gms/internal/zzid;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/zza;->zzot:Lcom/google/android/gms/ads/internal/zzq;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/zzq;->context:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/zza;->zzot:Lcom/google/android/gms/ads/internal/zzq;

    iget-object v2, v2, Lcom/google/android/gms/ads/internal/zzq;->zzqj:Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

    iget-object v2, v2, Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;->zzJu:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/gms/ads/internal/zza;->zzot:Lcom/google/android/gms/ads/internal/zzq;

    iget-object v3, v3, Lcom/google/android/gms/ads/internal/zzq;->zzqo:Lcom/google/android/gms/internal/zzhs;

    iget-object v3, v3, Lcom/google/android/gms/internal/zzhs;->zzyY:Ljava/util/List;

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/gms/internal/zzid;->zza(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;)V

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zza;->zzot:Lcom/google/android/gms/ads/internal/zzq;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzq;->zzqr:Lcom/google/android/gms/ads/internal/client/zzn;

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zza;->zzot:Lcom/google/android/gms/ads/internal/zzq;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzq;->zzqr:Lcom/google/android/gms/ads/internal/client/zzn;

    invoke-interface {v0}, Lcom/google/android/gms/ads/internal/client/zzn;->onAdClicked()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "Could not notify onAdClicked event."

    invoke-static {v1, v0}, Lcom/google/android/gms/ads/internal/util/client/zzb;->zzd(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public onAppEvent(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "info"    # Ljava/lang/String;

    .prologue
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zza;->zzot:Lcom/google/android/gms/ads/internal/zzq;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzq;->zzqt:Lcom/google/android/gms/ads/internal/client/zzu;

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zza;->zzot:Lcom/google/android/gms/ads/internal/zzq;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzq;->zzqt:Lcom/google/android/gms/ads/internal/client/zzu;

    invoke-interface {v0, p1, p2}, Lcom/google/android/gms/ads/internal/client/zzu;->onAppEvent(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "Could not call the AppEventListener."

    invoke-static {v1, v0}, Lcom/google/android/gms/ads/internal/util/client/zzb;->zzd(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public pause()V
    .locals 1

    const-string v0, "pause must be called on the main UI thread."

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzx;->zzci(Ljava/lang/String;)V

    return-void
.end method

.method protected recordImpression()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zza;->zzot:Lcom/google/android/gms/ads/internal/zzq;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzq;->zzqo:Lcom/google/android/gms/internal/zzhs;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/ads/internal/zza;->zzc(Lcom/google/android/gms/internal/zzhs;)V

    return-void
.end method

.method public resume()V
    .locals 1

    const-string v0, "resume must be called on the main UI thread."

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzx;->zzci(Ljava/lang/String;)V

    return-void
.end method

.method public setManualImpressionsEnabled(Z)V
    .locals 2
    .param p1, "enabled"    # Z

    .prologue
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Attempt to call setManualImpressionsEnabled for an unsupported ad type."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public stopLoading()V
    .locals 2

    const-string v0, "stopLoading must be called on the main UI thread."

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzx;->zzci(Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/ads/internal/zza;->zzor:Z

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zza;->zzot:Lcom/google/android/gms/ads/internal/zzq;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/internal/zzq;->zzf(Z)V

    return-void
.end method

.method zza(Lcom/google/android/gms/internal/zzbk;)Landroid/os/Bundle;
    .locals 6

    const/4 v5, 0x1

    const/4 v0, 0x0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzbk;->zzcx()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzbk;->wakeup()V

    :cond_2
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzbk;->zzcv()Lcom/google/android/gms/internal/zzbh;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzbh;->zzcm()Ljava/lang/String;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "In AdManger: loadAd, "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzbh;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/gms/ads/internal/util/client/zzb;->zzaF(Ljava/lang/String;)V

    :goto_1
    if-eqz v1, :cond_0

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0, v5}, Landroid/os/Bundle;-><init>(I)V

    const-string v2, "fingerprint"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "v"

    invoke-virtual {v0, v1, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_0

    :cond_3
    move-object v1, v0

    goto :goto_1
.end method

.method public zza(Lcom/google/android/gms/ads/internal/client/AdSizeParcel;)V
    .locals 2

    const-string v0, "setAdSize must be called on the main UI thread."

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzx;->zzci(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zza;->zzot:Lcom/google/android/gms/ads/internal/zzq;

    iput-object p1, v0, Lcom/google/android/gms/ads/internal/zzq;->zzqn:Lcom/google/android/gms/ads/internal/client/AdSizeParcel;

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zza;->zzot:Lcom/google/android/gms/ads/internal/zzq;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzq;->zzqo:Lcom/google/android/gms/internal/zzhs;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zza;->zzot:Lcom/google/android/gms/ads/internal/zzq;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzq;->zzqo:Lcom/google/android/gms/internal/zzhs;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzhs;->zzBD:Lcom/google/android/gms/internal/zziz;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zza;->zzot:Lcom/google/android/gms/ads/internal/zzq;

    iget v0, v0, Lcom/google/android/gms/ads/internal/zzq;->zzqH:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zza;->zzot:Lcom/google/android/gms/ads/internal/zzq;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzq;->zzqo:Lcom/google/android/gms/internal/zzhs;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzhs;->zzBD:Lcom/google/android/gms/internal/zziz;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/zziz;->zza(Lcom/google/android/gms/ads/internal/client/AdSizeParcel;)V

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zza;->zzot:Lcom/google/android/gms/ads/internal/zzq;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzq;->zzqk:Lcom/google/android/gms/ads/internal/zzq$zza;

    if-nez v0, :cond_1

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zza;->zzot:Lcom/google/android/gms/ads/internal/zzq;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzq;->zzqk:Lcom/google/android/gms/ads/internal/zzq$zza;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/zzq$zza;->getChildCount()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zza;->zzot:Lcom/google/android/gms/ads/internal/zzq;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzq;->zzqk:Lcom/google/android/gms/ads/internal/zzq$zza;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/zza;->zzot:Lcom/google/android/gms/ads/internal/zzq;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/zzq;->zzqk:Lcom/google/android/gms/ads/internal/zzq$zza;

    invoke-virtual {v1}, Lcom/google/android/gms/ads/internal/zzq$zza;->getNextView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/internal/zzq$zza;->removeView(Landroid/view/View;)V

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zza;->zzot:Lcom/google/android/gms/ads/internal/zzq;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzq;->zzqk:Lcom/google/android/gms/ads/internal/zzq$zza;

    iget v1, p1, Lcom/google/android/gms/ads/internal/client/AdSizeParcel;->widthPixels:I

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/internal/zzq$zza;->setMinimumWidth(I)V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zza;->zzot:Lcom/google/android/gms/ads/internal/zzq;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzq;->zzqk:Lcom/google/android/gms/ads/internal/zzq$zza;

    iget v1, p1, Lcom/google/android/gms/ads/internal/client/AdSizeParcel;->heightPixels:I

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/internal/zzq$zza;->setMinimumHeight(I)V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zza;->zzot:Lcom/google/android/gms/ads/internal/zzq;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzq;->zzqk:Lcom/google/android/gms/ads/internal/zzq$zza;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/zzq$zza;->requestLayout()V

    goto :goto_0
.end method

.method public zza(Lcom/google/android/gms/ads/internal/client/zzn;)V
    .locals 1

    const-string v0, "setAdListener must be called on the main UI thread."

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzx;->zzci(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zza;->zzot:Lcom/google/android/gms/ads/internal/zzq;

    iput-object p1, v0, Lcom/google/android/gms/ads/internal/zzq;->zzqr:Lcom/google/android/gms/ads/internal/client/zzn;

    return-void
.end method

.method public zza(Lcom/google/android/gms/ads/internal/client/zzo;)V
    .locals 1

    const-string v0, "setAdListener must be called on the main UI thread."

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzx;->zzci(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zza;->zzot:Lcom/google/android/gms/ads/internal/zzq;

    iput-object p1, v0, Lcom/google/android/gms/ads/internal/zzq;->zzqs:Lcom/google/android/gms/ads/internal/client/zzo;

    return-void
.end method

.method public zza(Lcom/google/android/gms/ads/internal/client/zzu;)V
    .locals 1

    const-string v0, "setAppEventListener must be called on the main UI thread."

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzx;->zzci(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zza;->zzot:Lcom/google/android/gms/ads/internal/zzq;

    iput-object p1, v0, Lcom/google/android/gms/ads/internal/zzq;->zzqt:Lcom/google/android/gms/ads/internal/client/zzu;

    return-void
.end method

.method public zza(Lcom/google/android/gms/ads/internal/client/zzv;)V
    .locals 1

    const-string v0, "setCorrelationIdProvider must be called on the main UI thread"

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzx;->zzci(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zza;->zzot:Lcom/google/android/gms/ads/internal/zzq;

    iput-object p1, v0, Lcom/google/android/gms/ads/internal/zzq;->zzqu:Lcom/google/android/gms/ads/internal/client/zzv;

    return-void
.end method

.method public zza(Lcom/google/android/gms/internal/zzck;)V
    .locals 2

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "setOnCustomRenderedAdLoadedListener is not supported for current ad type"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public zza(Lcom/google/android/gms/internal/zzfs;)V
    .locals 2

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "setInAppPurchaseListener is not supported for current ad type"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public zza(Lcom/google/android/gms/internal/zzfw;Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "setPlayStorePurchaseParams is not supported for current ad type"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public zza(Lcom/google/android/gms/internal/zzhs$zza;)V
    .locals 8

    const-wide/16 v2, -0x1

    const/4 v7, 0x1

    const/4 v6, 0x0

    iget-object v0, p1, Lcom/google/android/gms/internal/zzhs$zza;->zzHD:Lcom/google/android/gms/ads/internal/request/AdResponseParcel;

    iget-wide v0, v0, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;->zzEO:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/google/android/gms/internal/zzhs$zza;->zzHD:Lcom/google/android/gms/ads/internal/request/AdResponseParcel;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;->zzEY:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p1, Lcom/google/android/gms/internal/zzhs$zza;->zzHD:Lcom/google/android/gms/ads/internal/request/AdResponseParcel;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;->zzEY:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/ads/internal/zza;->zzo(Ljava/lang/String;)J

    move-result-wide v0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/zza;->zzoo:Lcom/google/android/gms/internal/zzcg;

    iget-object v3, p1, Lcom/google/android/gms/internal/zzhs$zza;->zzHD:Lcom/google/android/gms/ads/internal/request/AdResponseParcel;

    iget-wide v4, v3, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;->zzEO:J

    add-long/2addr v0, v4

    invoke-virtual {v2, v0, v1}, Lcom/google/android/gms/internal/zzcg;->zzb(J)Lcom/google/android/gms/internal/zzce;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/zza;->zzoo:Lcom/google/android/gms/internal/zzcg;

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "stc"

    aput-object v3, v2, v6

    invoke-virtual {v1, v0, v2}, Lcom/google/android/gms/internal/zzcg;->zza(Lcom/google/android/gms/internal/zzce;[Ljava/lang/String;)Z

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zza;->zzoo:Lcom/google/android/gms/internal/zzcg;

    iget-object v1, p1, Lcom/google/android/gms/internal/zzhs$zza;->zzHD:Lcom/google/android/gms/ads/internal/request/AdResponseParcel;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;->zzEY:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzcg;->zzT(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zza;->zzoo:Lcom/google/android/gms/internal/zzcg;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/zza;->zzop:Lcom/google/android/gms/internal/zzce;

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "arf"

    aput-object v3, v2, v6

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/zzcg;->zza(Lcom/google/android/gms/internal/zzce;[Ljava/lang/String;)Z

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zza;->zzoo:Lcom/google/android/gms/internal/zzcg;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcg;->zzdn()Lcom/google/android/gms/internal/zzce;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/ads/internal/zza;->zzoq:Lcom/google/android/gms/internal/zzce;

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zza;->zzoo:Lcom/google/android/gms/internal/zzcg;

    const-string v1, "gqi"

    iget-object v2, p1, Lcom/google/android/gms/internal/zzhs$zza;->zzHD:Lcom/google/android/gms/ads/internal/request/AdResponseParcel;

    iget-object v2, v2, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;->zzEZ:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/zzcg;->zze(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zza;->zzot:Lcom/google/android/gms/ads/internal/zzq;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/google/android/gms/ads/internal/zzq;->zzql:Lcom/google/android/gms/internal/zzhz;

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zza;->zzot:Lcom/google/android/gms/ads/internal/zzq;

    iput-object p1, v0, Lcom/google/android/gms/ads/internal/zzq;->zzqp:Lcom/google/android/gms/internal/zzhs$zza;

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zza;->zzoo:Lcom/google/android/gms/internal/zzcg;

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/ads/internal/zza;->zza(Lcom/google/android/gms/internal/zzhs$zza;Lcom/google/android/gms/internal/zzcg;)V

    return-void
.end method

.method protected abstract zza(Lcom/google/android/gms/internal/zzhs$zza;Lcom/google/android/gms/internal/zzcg;)V
.end method

.method public zza(Ljava/util/HashSet;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashSet",
            "<",
            "Lcom/google/android/gms/internal/zzht;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zza;->zzot:Lcom/google/android/gms/ads/internal/zzq;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/ads/internal/zzq;->zza(Ljava/util/HashSet;)V

    return-void
.end method

.method protected abstract zza(Lcom/google/android/gms/ads/internal/client/AdRequestParcel;Lcom/google/android/gms/internal/zzcg;)Z
.end method

.method zza(Lcom/google/android/gms/internal/zzhs;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected abstract zza(Lcom/google/android/gms/internal/zzhs;Lcom/google/android/gms/internal/zzhs;)Z
.end method

.method zzaL()V
    .locals 8

    const-wide/16 v6, -0x1

    const/4 v4, 0x0

    new-instance v1, Lcom/google/android/gms/internal/zzcg;

    sget-object v0, Lcom/google/android/gms/internal/zzby;->zzuQ:Lcom/google/android/gms/internal/zzbu;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzbu;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const-string v2, "load_ad"

    iget-object v3, p0, Lcom/google/android/gms/ads/internal/zza;->zzot:Lcom/google/android/gms/ads/internal/zzq;

    iget-object v3, v3, Lcom/google/android/gms/ads/internal/zzq;->zzqn:Lcom/google/android/gms/ads/internal/client/AdSizeParcel;

    iget-object v3, v3, Lcom/google/android/gms/ads/internal/client/AdSizeParcel;->zzte:Ljava/lang/String;

    invoke-direct {v1, v0, v2, v3}, Lcom/google/android/gms/internal/zzcg;-><init>(ZLjava/lang/String;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/google/android/gms/ads/internal/zza;->zzoo:Lcom/google/android/gms/internal/zzcg;

    new-instance v0, Lcom/google/android/gms/internal/zzce;

    invoke-direct {v0, v6, v7, v4, v4}, Lcom/google/android/gms/internal/zzce;-><init>(JLjava/lang/String;Lcom/google/android/gms/internal/zzce;)V

    iput-object v0, p0, Lcom/google/android/gms/ads/internal/zza;->zzop:Lcom/google/android/gms/internal/zzce;

    new-instance v0, Lcom/google/android/gms/internal/zzce;

    invoke-direct {v0, v6, v7, v4, v4}, Lcom/google/android/gms/internal/zzce;-><init>(JLjava/lang/String;Lcom/google/android/gms/internal/zzce;)V

    iput-object v0, p0, Lcom/google/android/gms/ads/internal/zza;->zzoq:Lcom/google/android/gms/internal/zzce;

    return-void
.end method

.method public zzaM()Lcom/google/android/gms/dynamic/zzd;
    .locals 1

    const-string v0, "getAdFrame must be called on the main UI thread."

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzx;->zzci(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zza;->zzot:Lcom/google/android/gms/ads/internal/zzq;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzq;->zzqk:Lcom/google/android/gms/ads/internal/zzq$zza;

    invoke-static {v0}, Lcom/google/android/gms/dynamic/zze;->zzy(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/zzd;

    move-result-object v0

    return-object v0
.end method

.method public zzaN()Lcom/google/android/gms/ads/internal/client/AdSizeParcel;
    .locals 2

    const-string v0, "getAdSize must be called on the main UI thread."

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzx;->zzci(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zza;->zzot:Lcom/google/android/gms/ads/internal/zzq;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzq;->zzqn:Lcom/google/android/gms/ads/internal/client/AdSizeParcel;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/google/android/gms/ads/internal/client/ThinAdSizeParcel;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/zza;->zzot:Lcom/google/android/gms/ads/internal/zzq;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/zzq;->zzqn:Lcom/google/android/gms/ads/internal/client/AdSizeParcel;

    invoke-direct {v0, v1}, Lcom/google/android/gms/ads/internal/client/ThinAdSizeParcel;-><init>(Lcom/google/android/gms/ads/internal/client/AdSizeParcel;)V

    goto :goto_0
.end method

.method public zzaO()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/ads/internal/zza;->zzaR()Z

    return-void
.end method

.method public zzaP()V
    .locals 4

    const-string v0, "recordManualImpression must be called on the main UI thread."

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzx;->zzci(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zza;->zzot:Lcom/google/android/gms/ads/internal/zzq;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzq;->zzqo:Lcom/google/android/gms/internal/zzhs;

    if-nez v0, :cond_1

    const-string v0, "Ad state was null when trying to ping manual tracking URLs."

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/client/zzb;->zzaH(Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v0, "Pinging manual tracking URLs."

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/client/zzb;->zzaF(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zza;->zzot:Lcom/google/android/gms/ads/internal/zzq;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzq;->zzqo:Lcom/google/android/gms/internal/zzhs;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzhs;->zzEM:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzp;->zzbv()Lcom/google/android/gms/internal/zzid;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/zza;->zzot:Lcom/google/android/gms/ads/internal/zzq;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/zzq;->context:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/zza;->zzot:Lcom/google/android/gms/ads/internal/zzq;

    iget-object v2, v2, Lcom/google/android/gms/ads/internal/zzq;->zzqj:Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

    iget-object v2, v2, Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;->zzJu:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/gms/ads/internal/zza;->zzot:Lcom/google/android/gms/ads/internal/zzq;

    iget-object v3, v3, Lcom/google/android/gms/ads/internal/zzq;->zzqo:Lcom/google/android/gms/internal/zzhs;

    iget-object v3, v3, Lcom/google/android/gms/internal/zzhs;->zzEM:Ljava/util/List;

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/gms/internal/zzid;->zza(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;)V

    goto :goto_0
.end method

.method protected zzaQ()Z
    .locals 3

    const/4 v0, 0x0

    const-string v1, "Ad closing."

    invoke-static {v1}, Lcom/google/android/gms/ads/internal/util/client/zzb;->v(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/zza;->zzot:Lcom/google/android/gms/ads/internal/zzq;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/zzq;->zzqs:Lcom/google/android/gms/ads/internal/client/zzo;

    if-nez v1, :cond_0

    :goto_0
    return v0

    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/ads/internal/zza;->zzot:Lcom/google/android/gms/ads/internal/zzq;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/zzq;->zzqs:Lcom/google/android/gms/ads/internal/client/zzo;

    invoke-interface {v1}, Lcom/google/android/gms/ads/internal/client/zzo;->onAdClosed()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "Could not call AdListener.onAdClosed()."

    invoke-static {v2, v1}, Lcom/google/android/gms/ads/internal/util/client/zzb;->zzd(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method protected zzaS()Z
    .locals 3

    const/4 v0, 0x0

    const-string v1, "Ad opening."

    invoke-static {v1}, Lcom/google/android/gms/ads/internal/util/client/zzb;->zzaG(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/zza;->zzot:Lcom/google/android/gms/ads/internal/zzq;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/zzq;->zzqs:Lcom/google/android/gms/ads/internal/client/zzo;

    if-nez v1, :cond_0

    :goto_0
    return v0

    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/ads/internal/zza;->zzot:Lcom/google/android/gms/ads/internal/zzq;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/zzq;->zzqs:Lcom/google/android/gms/ads/internal/client/zzo;

    invoke-interface {v1}, Lcom/google/android/gms/ads/internal/client/zzo;->onAdOpened()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "Could not call AdListener.onAdOpened()."

    invoke-static {v2, v1}, Lcom/google/android/gms/ads/internal/util/client/zzb;->zzd(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method protected zzaT()Z
    .locals 3

    const/4 v0, 0x0

    const-string v1, "Ad finished loading."

    invoke-static {v1}, Lcom/google/android/gms/ads/internal/util/client/zzb;->zzaG(Ljava/lang/String;)V

    iput-boolean v0, p0, Lcom/google/android/gms/ads/internal/zza;->zzor:Z

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/zza;->zzot:Lcom/google/android/gms/ads/internal/zzq;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/zzq;->zzqs:Lcom/google/android/gms/ads/internal/client/zzo;

    if-nez v1, :cond_0

    :goto_0
    return v0

    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/ads/internal/zza;->zzot:Lcom/google/android/gms/ads/internal/zzq;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/zzq;->zzqs:Lcom/google/android/gms/ads/internal/client/zzo;

    invoke-interface {v1}, Lcom/google/android/gms/ads/internal/client/zzo;->onAdLoaded()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "Could not call AdListener.onAdLoaded()."

    invoke-static {v2, v1}, Lcom/google/android/gms/ads/internal/util/client/zzb;->zzd(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method protected zzb(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zza;->zzot:Lcom/google/android/gms/ads/internal/zzq;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzq;->zzqk:Lcom/google/android/gms/ads/internal/zzq$zza;

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzp;->zzbx()Lcom/google/android/gms/internal/zzie;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzie;->zzgJ()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/google/android/gms/ads/internal/zzq$zza;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public zzb(Lcom/google/android/gms/internal/zzhs;)V
    .locals 7

    const/4 v6, 0x1

    const/4 v5, -0x2

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zza;->zzoo:Lcom/google/android/gms/internal/zzcg;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/zza;->zzoq:Lcom/google/android/gms/internal/zzce;

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "awr"

    aput-object v3, v2, v4

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/zzcg;->zza(Lcom/google/android/gms/internal/zzce;[Ljava/lang/String;)Z

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zza;->zzot:Lcom/google/android/gms/ads/internal/zzq;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/google/android/gms/ads/internal/zzq;->zzqm:Lcom/google/android/gms/internal/zzgh;

    iget v0, p1, Lcom/google/android/gms/internal/zzhs;->errorCode:I

    if-eq v0, v5, :cond_0

    iget v0, p1, Lcom/google/android/gms/internal/zzhs;->errorCode:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzp;->zzby()Lcom/google/android/gms/internal/zzhu;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/zza;->zzot:Lcom/google/android/gms/ads/internal/zzq;

    invoke-virtual {v1}, Lcom/google/android/gms/ads/internal/zzq;->zzbJ()Ljava/util/HashSet;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzhu;->zzb(Ljava/util/HashSet;)V

    :cond_0
    iget v0, p1, Lcom/google/android/gms/internal/zzhs;->errorCode:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_2

    iput-boolean v4, p0, Lcom/google/android/gms/ads/internal/zza;->zzor:Z

    :cond_1
    :goto_0
    return-void

    :cond_2
    invoke-virtual {p0, p1}, Lcom/google/android/gms/ads/internal/zza;->zza(Lcom/google/android/gms/internal/zzhs;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "Ad refresh scheduled."

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/client/zzb;->zzaF(Ljava/lang/String;)V

    :cond_3
    iget v0, p1, Lcom/google/android/gms/internal/zzhs;->errorCode:I

    if-eq v0, v5, :cond_4

    iget v0, p1, Lcom/google/android/gms/internal/zzhs;->errorCode:I

    invoke-virtual {p0, v0}, Lcom/google/android/gms/ads/internal/zza;->zze(I)Z

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zza;->zzot:Lcom/google/android/gms/ads/internal/zzq;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzq;->zzqF:Lcom/google/android/gms/internal/zzhx;

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zza;->zzot:Lcom/google/android/gms/ads/internal/zzq;

    new-instance v1, Lcom/google/android/gms/internal/zzhx;

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/zza;->zzot:Lcom/google/android/gms/ads/internal/zzq;

    iget-object v2, v2, Lcom/google/android/gms/ads/internal/zzq;->zzqh:Ljava/lang/String;

    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/zzhx;-><init>(Ljava/lang/String;)V

    iput-object v1, v0, Lcom/google/android/gms/ads/internal/zzq;->zzqF:Lcom/google/android/gms/internal/zzhx;

    :cond_5
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zza;->zzov:Lcom/google/android/gms/internal/zzay;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/zza;->zzot:Lcom/google/android/gms/ads/internal/zzq;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/zzq;->zzqo:Lcom/google/android/gms/internal/zzhs;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzay;->zze(Lcom/google/android/gms/internal/zzhs;)V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zza;->zzot:Lcom/google/android/gms/ads/internal/zzq;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzq;->zzqo:Lcom/google/android/gms/internal/zzhs;

    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/ads/internal/zza;->zza(Lcom/google/android/gms/internal/zzhs;Lcom/google/android/gms/internal/zzhs;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zza;->zzot:Lcom/google/android/gms/ads/internal/zzq;

    iput-object p1, v0, Lcom/google/android/gms/ads/internal/zzq;->zzqo:Lcom/google/android/gms/internal/zzhs;

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zza;->zzot:Lcom/google/android/gms/ads/internal/zzq;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/zzq;->zzbS()V

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/zza;->zzoo:Lcom/google/android/gms/internal/zzcg;

    const-string v2, "is_mraid"

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zza;->zzot:Lcom/google/android/gms/ads/internal/zzq;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzq;->zzqo:Lcom/google/android/gms/internal/zzhs;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzhs;->zzbY()Z

    move-result v0

    if-eqz v0, :cond_8

    const-string v0, "1"

    :goto_1
    invoke-virtual {v1, v2, v0}, Lcom/google/android/gms/internal/zzcg;->zze(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/zza;->zzoo:Lcom/google/android/gms/internal/zzcg;

    const-string v2, "is_mediation"

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zza;->zzot:Lcom/google/android/gms/ads/internal/zzq;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzq;->zzqo:Lcom/google/android/gms/internal/zzhs;

    iget-boolean v0, v0, Lcom/google/android/gms/internal/zzhs;->zzEK:Z

    if-eqz v0, :cond_9

    const-string v0, "1"

    :goto_2
    invoke-virtual {v1, v2, v0}, Lcom/google/android/gms/internal/zzcg;->zze(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zza;->zzot:Lcom/google/android/gms/ads/internal/zzq;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzq;->zzqo:Lcom/google/android/gms/internal/zzhs;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzhs;->zzBD:Lcom/google/android/gms/internal/zziz;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zza;->zzot:Lcom/google/android/gms/ads/internal/zzq;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzq;->zzqo:Lcom/google/android/gms/internal/zzhs;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzhs;->zzBD:Lcom/google/android/gms/internal/zziz;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zziz;->zzhe()Lcom/google/android/gms/internal/zzja;

    move-result-object v0

    if-eqz v0, :cond_6

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/zza;->zzoo:Lcom/google/android/gms/internal/zzcg;

    const-string v2, "is_video"

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zza;->zzot:Lcom/google/android/gms/ads/internal/zzq;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzq;->zzqo:Lcom/google/android/gms/internal/zzhs;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzhs;->zzBD:Lcom/google/android/gms/internal/zziz;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zziz;->zzhe()Lcom/google/android/gms/internal/zzja;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzja;->zzhr()Z

    move-result v0

    if-eqz v0, :cond_a

    const-string v0, "1"

    :goto_3
    invoke-virtual {v1, v2, v0}, Lcom/google/android/gms/internal/zzcg;->zze(Ljava/lang/String;Ljava/lang/String;)V

    :cond_6
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zza;->zzoo:Lcom/google/android/gms/internal/zzcg;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/zza;->zzop:Lcom/google/android/gms/internal/zzce;

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "ttc"

    aput-object v3, v2, v4

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/zzcg;->zza(Lcom/google/android/gms/internal/zzce;[Ljava/lang/String;)Z

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzp;->zzby()Lcom/google/android/gms/internal/zzhu;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzhu;->zzgo()Lcom/google/android/gms/internal/zzca;

    move-result-object v0

    if-eqz v0, :cond_7

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzp;->zzby()Lcom/google/android/gms/internal/zzhu;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzhu;->zzgo()Lcom/google/android/gms/internal/zzca;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/zza;->zzoo:Lcom/google/android/gms/internal/zzcg;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzca;->zza(Lcom/google/android/gms/internal/zzcg;)Z

    :cond_7
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zza;->zzot:Lcom/google/android/gms/ads/internal/zzq;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/zzq;->zzbN()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/google/android/gms/ads/internal/zza;->zzaT()Z

    goto/16 :goto_0

    :cond_8
    const-string v0, "0"

    goto :goto_1

    :cond_9
    const-string v0, "0"

    goto :goto_2

    :cond_a
    const-string v0, "0"

    goto :goto_3
.end method

.method public zzb(Lcom/google/android/gms/ads/internal/client/AdRequestParcel;)Z
    .locals 4

    const-string v0, "loadAd must be called on the main UI thread."

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzx;->zzci(Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/google/android/gms/ads/internal/zza;->zza(Lcom/google/android/gms/ads/internal/client/AdRequestParcel;)Lcom/google/android/gms/ads/internal/client/AdRequestParcel;

    move-result-object v0

    iget-boolean v1, p0, Lcom/google/android/gms/ads/internal/zza;->zzor:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/zza;->zzou:Lcom/google/android/gms/ads/internal/client/AdRequestParcel;

    if-eqz v1, :cond_0

    const-string v1, "Aborting last ad request since another ad request is already in progress. The current request object will still be cached for future refreshes."

    invoke-static {v1}, Lcom/google/android/gms/ads/internal/util/client/zzb;->zzaH(Ljava/lang/String;)V

    :cond_0
    iput-object v0, p0, Lcom/google/android/gms/ads/internal/zza;->zzou:Lcom/google/android/gms/ads/internal/client/AdRequestParcel;

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    const-string v1, "Starting ad request."

    invoke-static {v1}, Lcom/google/android/gms/ads/internal/util/client/zzb;->zzaG(Ljava/lang/String;)V

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/google/android/gms/ads/internal/zza;->zzor:Z

    invoke-virtual {p0}, Lcom/google/android/gms/ads/internal/zza;->zzaL()V

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/zza;->zzoo:Lcom/google/android/gms/internal/zzcg;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzcg;->zzdn()Lcom/google/android/gms/internal/zzce;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gms/ads/internal/zza;->zzop:Lcom/google/android/gms/internal/zzce;

    iget-boolean v1, v0, Lcom/google/android/gms/ads/internal/client/AdRequestParcel;->zzsE:Z

    if-nez v1, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Use AdRequest.Builder.addTestDevice(\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzl;->zzcF()Lcom/google/android/gms/ads/internal/util/client/zza;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gms/ads/internal/zza;->zzot:Lcom/google/android/gms/ads/internal/zzq;

    iget-object v3, v3, Lcom/google/android/gms/ads/internal/zzq;->context:Landroid/content/Context;

    invoke-virtual {v2, v3}, Lcom/google/android/gms/ads/internal/util/client/zza;->zzQ(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\") to get test ads on this device."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/ads/internal/util/client/zzb;->zzaG(Ljava/lang/String;)V

    :cond_2
    iget-object v1, p0, Lcom/google/android/gms/ads/internal/zza;->zzoo:Lcom/google/android/gms/internal/zzcg;

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/ads/internal/zza;->zza(Lcom/google/android/gms/ads/internal/client/AdRequestParcel;Lcom/google/android/gms/internal/zzcg;)Z

    move-result v0

    goto :goto_0
.end method

.method protected zzc(Lcom/google/android/gms/internal/zzhs;)V
    .locals 4

    if-nez p1, :cond_1

    const-string v0, "Ad state was null when trying to ping impression URLs."

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/client/zzb;->zzaH(Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v0, "Pinging Impression URLs."

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/client/zzb;->zzaF(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zza;->zzot:Lcom/google/android/gms/ads/internal/zzq;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzq;->zzqq:Lcom/google/android/gms/internal/zzht;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzht;->zzgf()V

    iget-object v0, p1, Lcom/google/android/gms/internal/zzhs;->zzyZ:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzp;->zzbv()Lcom/google/android/gms/internal/zzid;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/zza;->zzot:Lcom/google/android/gms/ads/internal/zzq;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/zzq;->context:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/zza;->zzot:Lcom/google/android/gms/ads/internal/zzq;

    iget-object v2, v2, Lcom/google/android/gms/ads/internal/zzq;->zzqj:Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

    iget-object v2, v2, Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;->zzJu:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/gms/internal/zzhs;->zzyZ:Ljava/util/List;

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/gms/internal/zzid;->zza(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;)V

    goto :goto_0
.end method

.method protected zzc(Lcom/google/android/gms/ads/internal/client/AdRequestParcel;)Z
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zza;->zzot:Lcom/google/android/gms/ads/internal/zzq;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzq;->zzqk:Lcom/google/android/gms/ads/internal/zzq$zza;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/zzq$zza;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v1, v0, Landroid/view/View;

    if-eqz v1, :cond_0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->isShown()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzp;->zzbv()Lcom/google/android/gms/internal/zzid;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzid;->zzgB()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public zzd(Lcom/google/android/gms/ads/internal/client/AdRequestParcel;)V
    .locals 1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/ads/internal/zza;->zzc(Lcom/google/android/gms/ads/internal/client/AdRequestParcel;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/google/android/gms/ads/internal/zza;->zzb(Lcom/google/android/gms/ads/internal/client/AdRequestParcel;)Z

    :goto_0
    return-void

    :cond_0
    const-string v0, "Ad is not visible. Not refreshing ad."

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/client/zzb;->zzaG(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zza;->zzos:Lcom/google/android/gms/ads/internal/zzo;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/ads/internal/zzo;->zzg(Lcom/google/android/gms/ads/internal/client/AdRequestParcel;)V

    goto :goto_0
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

    iput-boolean v0, p0, Lcom/google/android/gms/ads/internal/zza;->zzor:Z

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/zza;->zzot:Lcom/google/android/gms/ads/internal/zzq;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/zzq;->zzqs:Lcom/google/android/gms/ads/internal/client/zzo;

    if-nez v1, :cond_0

    :goto_0
    return v0

    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/ads/internal/zza;->zzot:Lcom/google/android/gms/ads/internal/zzq;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/zzq;->zzqs:Lcom/google/android/gms/ads/internal/client/zzo;

    invoke-interface {v1, p1}, Lcom/google/android/gms/ads/internal/client/zzo;->onAdFailedToLoad(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "Could not call AdListener.onAdFailedToLoad()."

    invoke-static {v2, v1}, Lcom/google/android/gms/ads/internal/util/client/zzb;->zzd(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method zzo(Ljava/lang/String;)J
    .locals 3

    const-string v0, "ufe"

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    const/16 v0, 0x2c

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->indexOf(II)I

    move-result v0

    const/4 v2, -0x1

    if-ne v0, v2, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    :cond_0
    add-int/lit8 v1, v1, 0x4

    :try_start_0
    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-wide v0

    :goto_0
    return-wide v0

    :catch_0
    move-exception v0

    const-string v0, "Invalid index for Url fetch time in CSI latency info."

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/client/zzb;->zzaH(Ljava/lang/String;)V

    :goto_1
    const-wide/16 v0, -0x1

    goto :goto_0

    :catch_1
    move-exception v0

    const-string v0, "Cannot find valid format of Url fetch time in CSI latency info."

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/client/zzb;->zzaH(Ljava/lang/String;)V

    goto :goto_1
.end method
