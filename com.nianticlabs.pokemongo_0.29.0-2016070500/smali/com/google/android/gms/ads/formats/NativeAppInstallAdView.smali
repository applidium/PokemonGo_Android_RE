.class public final Lcom/google/android/gms/ads/formats/NativeAppInstallAdView;
.super Lcom/google/android/gms/ads/formats/NativeAdView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    invoke-direct {p0, p1}, Lcom/google/android/gms/ads/formats/NativeAdView;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/ads/formats/NativeAdView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/gms/ads/formats/NativeAdView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .prologue
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/android/gms/ads/formats/NativeAdView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method


# virtual methods
.method public final getBodyView()Landroid/view/View;
    .locals 1

    const-string v0, "2004"

    invoke-super {p0, v0}, Lcom/google/android/gms/ads/formats/NativeAdView;->zzm(Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public final getCallToActionView()Landroid/view/View;
    .locals 1

    const-string v0, "2002"

    invoke-super {p0, v0}, Lcom/google/android/gms/ads/formats/NativeAdView;->zzm(Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public final getHeadlineView()Landroid/view/View;
    .locals 1

    const-string v0, "2001"

    invoke-super {p0, v0}, Lcom/google/android/gms/ads/formats/NativeAdView;->zzm(Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public final getIconView()Landroid/view/View;
    .locals 1

    const-string v0, "2003"

    invoke-super {p0, v0}, Lcom/google/android/gms/ads/formats/NativeAdView;->zzm(Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public final getImageView()Landroid/view/View;
    .locals 1

    const-string v0, "2007"

    invoke-super {p0, v0}, Lcom/google/android/gms/ads/formats/NativeAdView;->zzm(Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public final getPriceView()Landroid/view/View;
    .locals 1

    const-string v0, "2006"

    invoke-super {p0, v0}, Lcom/google/android/gms/ads/formats/NativeAdView;->zzm(Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public final getStarRatingView()Landroid/view/View;
    .locals 1

    const-string v0, "2008"

    invoke-super {p0, v0}, Lcom/google/android/gms/ads/formats/NativeAdView;->zzm(Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public final getStoreView()Landroid/view/View;
    .locals 1

    const-string v0, "2005"

    invoke-super {p0, v0}, Lcom/google/android/gms/ads/formats/NativeAdView;->zzm(Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public final setBodyView(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const-string v0, "2004"

    invoke-super {p0, v0, p1}, Lcom/google/android/gms/ads/formats/NativeAdView;->zza(Ljava/lang/String;Landroid/view/View;)V

    return-void
.end method

.method public final setCallToActionView(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const-string v0, "2002"

    invoke-super {p0, v0, p1}, Lcom/google/android/gms/ads/formats/NativeAdView;->zza(Ljava/lang/String;Landroid/view/View;)V

    return-void
.end method

.method public final setHeadlineView(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const-string v0, "2001"

    invoke-super {p0, v0, p1}, Lcom/google/android/gms/ads/formats/NativeAdView;->zza(Ljava/lang/String;Landroid/view/View;)V

    return-void
.end method

.method public final setIconView(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const-string v0, "2003"

    invoke-super {p0, v0, p1}, Lcom/google/android/gms/ads/formats/NativeAdView;->zza(Ljava/lang/String;Landroid/view/View;)V

    return-void
.end method

.method public final setImageView(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const-string v0, "2007"

    invoke-super {p0, v0, p1}, Lcom/google/android/gms/ads/formats/NativeAdView;->zza(Ljava/lang/String;Landroid/view/View;)V

    return-void
.end method

.method public final setPriceView(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const-string v0, "2006"

    invoke-super {p0, v0, p1}, Lcom/google/android/gms/ads/formats/NativeAdView;->zza(Ljava/lang/String;Landroid/view/View;)V

    return-void
.end method

.method public final setStarRatingView(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const-string v0, "2008"

    invoke-super {p0, v0, p1}, Lcom/google/android/gms/ads/formats/NativeAdView;->zza(Ljava/lang/String;Landroid/view/View;)V

    return-void
.end method

.method public final setStoreView(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const-string v0, "2005"

    invoke-super {p0, v0, p1}, Lcom/google/android/gms/ads/formats/NativeAdView;->zza(Ljava/lang/String;Landroid/view/View;)V

    return-void
.end method
