.class Lcom/google/android/gms/internal/zzjc;
.super Landroid/widget/FrameLayout;

# interfaces
.implements Lcom/google/android/gms/internal/zziz;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzgr;
.end annotation


# instance fields
.field private final zzKk:Lcom/google/android/gms/internal/zziz;

.field private final zzKl:Lcom/google/android/gms/internal/zziy;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/zziz;)V
    .locals 2

    invoke-interface {p1}, Lcom/google/android/gms/internal/zziz;->zzha()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzjc;->zzKk:Lcom/google/android/gms/internal/zziz;

    new-instance v0, Lcom/google/android/gms/internal/zziy;

    invoke-interface {p1}, Lcom/google/android/gms/internal/zziz;->zzha()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p0, p0}, Lcom/google/android/gms/internal/zziy;-><init>(Landroid/content/Context;Landroid/view/ViewGroup;Lcom/google/android/gms/internal/zziz;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzjc;->zzKl:Lcom/google/android/gms/internal/zziy;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzjc;->zzKk:Lcom/google/android/gms/internal/zziz;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zziz;->zzhe()Lcom/google/android/gms/internal/zzja;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/zzja;->zze(Lcom/google/android/gms/internal/zziz;)V

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzjc;->zzKk:Lcom/google/android/gms/internal/zziz;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zziz;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/zzjc;->addView(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public clearCache(Z)V
    .locals 1
    .param p1, "includeDiskFiles"    # Z

    .prologue
    iget-object v0, p0, Lcom/google/android/gms/internal/zzjc;->zzKk:Lcom/google/android/gms/internal/zziz;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/zziz;->clearCache(Z)V

    return-void
.end method

.method public destroy()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzjc;->zzKk:Lcom/google/android/gms/internal/zziz;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zziz;->destroy()V

    return-void
.end method

.method public getRequestId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzjc;->zzKk:Lcom/google/android/gms/internal/zziz;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zziz;->getRequestId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRequestedOrientation()I
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzjc;->zzKk:Lcom/google/android/gms/internal/zziz;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zziz;->getRequestedOrientation()I

    move-result v0

    return v0
.end method

.method public getView()Landroid/view/View;
    .locals 0

    return-object p0
.end method

.method public getWebView()Landroid/webkit/WebView;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzjc;->zzKk:Lcom/google/android/gms/internal/zziz;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zziz;->getWebView()Landroid/webkit/WebView;

    move-result-object v0

    return-object v0
.end method

.method public isDestroyed()Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzjc;->zzKk:Lcom/google/android/gms/internal/zziz;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zziz;->isDestroyed()Z

    move-result v0

    return v0
.end method

.method public loadData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "data"    # Ljava/lang/String;
    .param p2, "mimeType"    # Ljava/lang/String;
    .param p3, "encoding"    # Ljava/lang/String;

    .prologue
    iget-object v0, p0, Lcom/google/android/gms/internal/zzjc;->zzKk:Lcom/google/android/gms/internal/zziz;

    invoke-interface {v0, p1, p2, p3}, Lcom/google/android/gms/internal/zziz;->loadData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "baseUrl"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .param p3, "mimeType"    # Ljava/lang/String;
    .param p4, "encoding"    # Ljava/lang/String;
    .param p5, "historyUrl"    # Ljava/lang/String;

    .prologue
    iget-object v0, p0, Lcom/google/android/gms/internal/zzjc;->zzKk:Lcom/google/android/gms/internal/zziz;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-interface/range {v0 .. v5}, Lcom/google/android/gms/internal/zziz;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public loadUrl(Ljava/lang/String;)V
    .locals 1
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    iget-object v0, p0, Lcom/google/android/gms/internal/zzjc;->zzKk:Lcom/google/android/gms/internal/zziz;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/zziz;->loadUrl(Ljava/lang/String;)V

    return-void
.end method

.method public setBackgroundColor(I)V
    .locals 1
    .param p1, "color"    # I

    .prologue
    iget-object v0, p0, Lcom/google/android/gms/internal/zzjc;->zzKk:Lcom/google/android/gms/internal/zziz;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/zziz;->setBackgroundColor(I)V

    return-void
.end method

.method public setContext(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    iget-object v0, p0, Lcom/google/android/gms/internal/zzjc;->zzKk:Lcom/google/android/gms/internal/zziz;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/zziz;->setContext(Landroid/content/Context;)V

    return-void
.end method

.method public setOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/view/View$OnClickListener;

    .prologue
    iget-object v0, p0, Lcom/google/android/gms/internal/zzjc;->zzKk:Lcom/google/android/gms/internal/zziz;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/zziz;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public setOnTouchListener(Landroid/view/View$OnTouchListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/view/View$OnTouchListener;

    .prologue
    iget-object v0, p0, Lcom/google/android/gms/internal/zzjc;->zzKk:Lcom/google/android/gms/internal/zziz;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/zziz;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method

.method public setRequestedOrientation(I)V
    .locals 1
    .param p1, "requestedOrientation"    # I

    .prologue
    iget-object v0, p0, Lcom/google/android/gms/internal/zzjc;->zzKk:Lcom/google/android/gms/internal/zziz;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/zziz;->setRequestedOrientation(I)V

    return-void
.end method

.method public setWebChromeClient(Landroid/webkit/WebChromeClient;)V
    .locals 1
    .param p1, "client"    # Landroid/webkit/WebChromeClient;

    .prologue
    iget-object v0, p0, Lcom/google/android/gms/internal/zzjc;->zzKk:Lcom/google/android/gms/internal/zziz;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/zziz;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    return-void
.end method

.method public setWebViewClient(Landroid/webkit/WebViewClient;)V
    .locals 1
    .param p1, "client"    # Landroid/webkit/WebViewClient;

    .prologue
    iget-object v0, p0, Lcom/google/android/gms/internal/zzjc;->zzKk:Lcom/google/android/gms/internal/zziz;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/zziz;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    return-void
.end method

.method public stopLoading()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzjc;->zzKk:Lcom/google/android/gms/internal/zziz;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zziz;->stopLoading()V

    return-void
.end method

.method public zzC(Z)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzjc;->zzKk:Lcom/google/android/gms/internal/zziz;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/zziz;->zzC(Z)V

    return-void
.end method

.method public zzD(Z)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzjc;->zzKk:Lcom/google/android/gms/internal/zziz;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/zziz;->zzD(Z)V

    return-void
.end method

.method public zzE(Z)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzjc;->zzKk:Lcom/google/android/gms/internal/zziz;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/zziz;->zzE(Z)V

    return-void
.end method

.method public zza(Landroid/content/Context;Lcom/google/android/gms/ads/internal/client/AdSizeParcel;Lcom/google/android/gms/internal/zzcg;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzjc;->zzKk:Lcom/google/android/gms/internal/zziz;

    invoke-interface {v0, p1, p2, p3}, Lcom/google/android/gms/internal/zziz;->zza(Landroid/content/Context;Lcom/google/android/gms/ads/internal/client/AdSizeParcel;Lcom/google/android/gms/internal/zzcg;)V

    return-void
.end method

.method public zza(Lcom/google/android/gms/ads/internal/client/AdSizeParcel;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzjc;->zzKk:Lcom/google/android/gms/internal/zziz;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/zziz;->zza(Lcom/google/android/gms/ads/internal/client/AdSizeParcel;)V

    return-void
.end method

.method public zza(Lcom/google/android/gms/internal/zzaz;Z)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzjc;->zzKk:Lcom/google/android/gms/internal/zziz;

    invoke-interface {v0, p1, p2}, Lcom/google/android/gms/internal/zziz;->zza(Lcom/google/android/gms/internal/zzaz;Z)V

    return-void
.end method

.method public zza(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzjc;->zzKk:Lcom/google/android/gms/internal/zziz;

    invoke-interface {v0, p1, p2}, Lcom/google/android/gms/internal/zziz;->zza(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public zza(Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzjc;->zzKk:Lcom/google/android/gms/internal/zziz;

    invoke-interface {v0, p1, p2}, Lcom/google/android/gms/internal/zziz;->zza(Ljava/lang/String;Lorg/json/JSONObject;)V

    return-void
.end method

.method public zzaI(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzjc;->zzKk:Lcom/google/android/gms/internal/zziz;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/zziz;->zzaI(Ljava/lang/String;)V

    return-void
.end method

.method public zzaJ(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzjc;->zzKk:Lcom/google/android/gms/internal/zziz;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/zziz;->zzaJ(Ljava/lang/String;)V

    return-void
.end method

.method public zzaN()Lcom/google/android/gms/ads/internal/client/AdSizeParcel;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzjc;->zzKk:Lcom/google/android/gms/internal/zziz;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zziz;->zzaN()Lcom/google/android/gms/ads/internal/client/AdSizeParcel;

    move-result-object v0

    return-object v0
.end method

.method public zzb(Lcom/google/android/gms/ads/internal/overlay/zzd;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzjc;->zzKk:Lcom/google/android/gms/internal/zziz;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/zziz;->zzb(Lcom/google/android/gms/ads/internal/overlay/zzd;)V

    return-void
.end method

.method public zzb(Ljava/lang/String;Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "*>;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzjc;->zzKk:Lcom/google/android/gms/internal/zziz;

    invoke-interface {v0, p1, p2}, Lcom/google/android/gms/internal/zziz;->zzb(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public zzb(Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzjc;->zzKk:Lcom/google/android/gms/internal/zziz;

    invoke-interface {v0, p1, p2}, Lcom/google/android/gms/internal/zziz;->zzb(Ljava/lang/String;Lorg/json/JSONObject;)V

    return-void
.end method

.method public zzc(Lcom/google/android/gms/ads/internal/overlay/zzd;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzjc;->zzKk:Lcom/google/android/gms/internal/zziz;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/zziz;->zzc(Lcom/google/android/gms/ads/internal/overlay/zzd;)V

    return-void
.end method

.method public zzeJ()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzjc;->zzKk:Lcom/google/android/gms/internal/zziz;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zziz;->zzeJ()V

    return-void
.end method

.method public zzgY()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzjc;->zzKk:Lcom/google/android/gms/internal/zziz;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zziz;->zzgY()V

    return-void
.end method

.method public zzgZ()Landroid/app/Activity;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzjc;->zzKk:Lcom/google/android/gms/internal/zziz;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zziz;->zzgZ()Landroid/app/Activity;

    move-result-object v0

    return-object v0
.end method

.method public zzha()Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzjc;->zzKk:Lcom/google/android/gms/internal/zziz;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zziz;->zzha()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public zzhb()Lcom/google/android/gms/ads/internal/zzd;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzjc;->zzKk:Lcom/google/android/gms/internal/zziz;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zziz;->zzhb()Lcom/google/android/gms/ads/internal/zzd;

    move-result-object v0

    return-object v0
.end method

.method public zzhc()Lcom/google/android/gms/ads/internal/overlay/zzd;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzjc;->zzKk:Lcom/google/android/gms/internal/zziz;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zziz;->zzhc()Lcom/google/android/gms/ads/internal/overlay/zzd;

    move-result-object v0

    return-object v0
.end method

.method public zzhd()Lcom/google/android/gms/ads/internal/overlay/zzd;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzjc;->zzKk:Lcom/google/android/gms/internal/zziz;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zziz;->zzhd()Lcom/google/android/gms/ads/internal/overlay/zzd;

    move-result-object v0

    return-object v0
.end method

.method public zzhe()Lcom/google/android/gms/internal/zzja;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzjc;->zzKk:Lcom/google/android/gms/internal/zziz;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zziz;->zzhe()Lcom/google/android/gms/internal/zzja;

    move-result-object v0

    return-object v0
.end method

.method public zzhf()Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzjc;->zzKk:Lcom/google/android/gms/internal/zziz;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zziz;->zzhf()Z

    move-result v0

    return v0
.end method

.method public zzhg()Lcom/google/android/gms/internal/zzan;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzjc;->zzKk:Lcom/google/android/gms/internal/zziz;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zziz;->zzhg()Lcom/google/android/gms/internal/zzan;

    move-result-object v0

    return-object v0
.end method

.method public zzhh()Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzjc;->zzKk:Lcom/google/android/gms/internal/zziz;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zziz;->zzhh()Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

    move-result-object v0

    return-object v0
.end method

.method public zzhi()Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzjc;->zzKk:Lcom/google/android/gms/internal/zziz;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zziz;->zzhi()Z

    move-result v0

    return v0
.end method

.method public zzhj()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzjc;->zzKl:Lcom/google/android/gms/internal/zziy;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zziy;->onDestroy()V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzjc;->zzKk:Lcom/google/android/gms/internal/zziz;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zziz;->zzhj()V

    return-void
.end method

.method public zzhk()Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzjc;->zzKk:Lcom/google/android/gms/internal/zziz;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zziz;->zzhk()Z

    move-result v0

    return v0
.end method

.method public zzhl()Lcom/google/android/gms/internal/zziy;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzjc;->zzKl:Lcom/google/android/gms/internal/zziy;

    return-object v0
.end method

.method public zzhm()Lcom/google/android/gms/internal/zzce;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzjc;->zzKk:Lcom/google/android/gms/internal/zziz;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zziz;->zzhm()Lcom/google/android/gms/internal/zzce;

    move-result-object v0

    return-object v0
.end method

.method public zzhn()Lcom/google/android/gms/internal/zzcf;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzjc;->zzKk:Lcom/google/android/gms/internal/zziz;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zziz;->zzhn()Lcom/google/android/gms/internal/zzcf;

    move-result-object v0

    return-object v0
.end method

.method public zzho()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzjc;->zzKk:Lcom/google/android/gms/internal/zziz;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zziz;->zzho()V

    return-void
.end method

.method public zzhp()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzjc;->zzKk:Lcom/google/android/gms/internal/zziz;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zziz;->zzhp()V

    return-void
.end method

.method public zzv(I)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzjc;->zzKk:Lcom/google/android/gms/internal/zziz;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/zziz;->zzv(I)V

    return-void
.end method
