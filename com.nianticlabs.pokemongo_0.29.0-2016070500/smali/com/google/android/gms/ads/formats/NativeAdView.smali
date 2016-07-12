.class public abstract Lcom/google/android/gms/ads/formats/NativeAdView;
.super Landroid/widget/FrameLayout;


# instance fields
.field private final zznZ:Landroid/widget/FrameLayout;

.field private final zzoa:Lcom/google/android/gms/internal/zzco;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, p1}, Lcom/google/android/gms/ads/formats/NativeAdView;->zzm(Landroid/content/Context;)Landroid/widget/FrameLayout;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/ads/formats/NativeAdView;->zznZ:Landroid/widget/FrameLayout;

    invoke-direct {p0}, Lcom/google/android/gms/ads/formats/NativeAdView;->zzaI()Lcom/google/android/gms/internal/zzco;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/ads/formats/NativeAdView;->zzoa:Lcom/google/android/gms/internal/zzco;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-direct {p0, p1}, Lcom/google/android/gms/ads/formats/NativeAdView;->zzm(Landroid/content/Context;)Landroid/widget/FrameLayout;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/ads/formats/NativeAdView;->zznZ:Landroid/widget/FrameLayout;

    invoke-direct {p0}, Lcom/google/android/gms/ads/formats/NativeAdView;->zzaI()Lcom/google/android/gms/internal/zzco;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/ads/formats/NativeAdView;->zzoa:Lcom/google/android/gms/internal/zzco;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    invoke-direct {p0, p1}, Lcom/google/android/gms/ads/formats/NativeAdView;->zzm(Landroid/content/Context;)Landroid/widget/FrameLayout;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/ads/formats/NativeAdView;->zznZ:Landroid/widget/FrameLayout;

    invoke-direct {p0}, Lcom/google/android/gms/ads/formats/NativeAdView;->zzaI()Lcom/google/android/gms/internal/zzco;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/ads/formats/NativeAdView;->zzoa:Lcom/google/android/gms/internal/zzco;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .prologue
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    invoke-direct {p0, p1}, Lcom/google/android/gms/ads/formats/NativeAdView;->zzm(Landroid/content/Context;)Landroid/widget/FrameLayout;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/ads/formats/NativeAdView;->zznZ:Landroid/widget/FrameLayout;

    invoke-direct {p0}, Lcom/google/android/gms/ads/formats/NativeAdView;->zzaI()Lcom/google/android/gms/internal/zzco;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/ads/formats/NativeAdView;->zzoa:Lcom/google/android/gms/internal/zzco;

    return-void
.end method

.method private zzaI()Lcom/google/android/gms/internal/zzco;
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/ads/formats/NativeAdView;->zznZ:Landroid/widget/FrameLayout;

    const-string v1, "createDelegate must be called after mOverlayFrame has been created"

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/zzx;->zzb(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzl;->zzcJ()Lcom/google/android/gms/internal/zzda;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/ads/formats/NativeAdView;->zznZ:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/ads/formats/NativeAdView;->zznZ:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1, p0, v2}, Lcom/google/android/gms/internal/zzda;->zza(Landroid/content/Context;Landroid/widget/FrameLayout;Landroid/widget/FrameLayout;)Lcom/google/android/gms/internal/zzco;

    move-result-object v0

    return-object v0
.end method

.method private zzm(Landroid/content/Context;)Landroid/widget/FrameLayout;
    .locals 3

    const/4 v2, -0x1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/ads/formats/NativeAdView;->zzn(Landroid/content/Context;)Landroid/widget/FrameLayout;

    move-result-object v0

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v1, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p0, v0}, Lcom/google/android/gms/ads/formats/NativeAdView;->addView(Landroid/view/View;)V

    return-object v0
.end method


# virtual methods
.method public addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 1
    .param p1, "child"    # Landroid/view/View;
    .param p2, "index"    # I
    .param p3, "params"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    invoke-super {p0, p1, p2, p3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/google/android/gms/ads/formats/NativeAdView;->zznZ:Landroid/widget/FrameLayout;

    invoke-super {p0, v0}, Landroid/widget/FrameLayout;->bringChildToFront(Landroid/view/View;)V

    return-void
.end method

.method public bringChildToFront(Landroid/view/View;)V
    .locals 1
    .param p1, "child"    # Landroid/view/View;

    .prologue
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->bringChildToFront(Landroid/view/View;)V

    iget-object v0, p0, Lcom/google/android/gms/ads/formats/NativeAdView;->zznZ:Landroid/widget/FrameLayout;

    if-eq v0, p1, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/ads/formats/NativeAdView;->zznZ:Landroid/widget/FrameLayout;

    invoke-super {p0, v0}, Landroid/widget/FrameLayout;->bringChildToFront(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public removeAllViews()V
    .locals 1

    invoke-super {p0}, Landroid/widget/FrameLayout;->removeAllViews()V

    iget-object v0, p0, Lcom/google/android/gms/ads/formats/NativeAdView;->zznZ:Landroid/widget/FrameLayout;

    invoke-super {p0, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    return-void
.end method

.method public removeView(Landroid/view/View;)V
    .locals 1
    .param p1, "child"    # Landroid/view/View;

    .prologue
    iget-object v0, p0, Lcom/google/android/gms/ads/formats/NativeAdView;->zznZ:Landroid/widget/FrameLayout;

    if-ne v0, p1, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    goto :goto_0
.end method

.method public setNativeAd(Lcom/google/android/gms/ads/formats/NativeAd;)V
    .locals 2
    .param p1, "ad"    # Lcom/google/android/gms/ads/formats/NativeAd;

    .prologue
    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/ads/formats/NativeAdView;->zzoa:Lcom/google/android/gms/internal/zzco;

    invoke-virtual {p1}, Lcom/google/android/gms/ads/formats/NativeAd;->zzaH()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/dynamic/zzd;

    invoke-interface {v1, v0}, Lcom/google/android/gms/internal/zzco;->zzb(Lcom/google/android/gms/dynamic/zzd;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "Unable to call setNativeAd on delegate"

    invoke-static {v1, v0}, Lcom/google/android/gms/ads/internal/util/client/zzb;->zzb(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method protected zza(Ljava/lang/String;Landroid/view/View;)V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/ads/formats/NativeAdView;->zzoa:Lcom/google/android/gms/internal/zzco;

    invoke-static {p2}, Lcom/google/android/gms/dynamic/zze;->zzy(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/zzd;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Lcom/google/android/gms/internal/zzco;->zza(Ljava/lang/String;Lcom/google/android/gms/dynamic/zzd;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "Unable to call setAssetView on delegate"

    invoke-static {v1, v0}, Lcom/google/android/gms/ads/internal/util/client/zzb;->zzb(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method protected zzm(Ljava/lang/String;)Landroid/view/View;
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/ads/formats/NativeAdView;->zzoa:Lcom/google/android/gms/internal/zzco;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/zzco;->zzW(Ljava/lang/String;)Lcom/google/android/gms/dynamic/zzd;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/google/android/gms/dynamic/zze;->zzp(Lcom/google/android/gms/dynamic/zzd;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const-string v1, "Unable to call getAssetView on delegate"

    invoke-static {v1, v0}, Lcom/google/android/gms/ads/internal/util/client/zzb;->zzb(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method zzn(Landroid/content/Context;)Landroid/widget/FrameLayout;
    .locals 1

    new-instance v0, Landroid/widget/FrameLayout;

    invoke-direct {v0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    return-object v0
.end method
