.class public final Lcom/google/android/gms/ads/formats/NativeAdOptions$Builder;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/ads/formats/NativeAdOptions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private zznW:Z

.field private zznX:I

.field private zznY:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v0, p0, Lcom/google/android/gms/ads/formats/NativeAdOptions$Builder;->zznW:Z

    iput v0, p0, Lcom/google/android/gms/ads/formats/NativeAdOptions$Builder;->zznX:I

    iput-boolean v0, p0, Lcom/google/android/gms/ads/formats/NativeAdOptions$Builder;->zznY:Z

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/ads/formats/NativeAdOptions$Builder;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/ads/formats/NativeAdOptions$Builder;->zznW:Z

    return v0
.end method

.method static synthetic zzb(Lcom/google/android/gms/ads/formats/NativeAdOptions$Builder;)I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/ads/formats/NativeAdOptions$Builder;->zznX:I

    return v0
.end method

.method static synthetic zzc(Lcom/google/android/gms/ads/formats/NativeAdOptions$Builder;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/ads/formats/NativeAdOptions$Builder;->zznY:Z

    return v0
.end method


# virtual methods
.method public build()Lcom/google/android/gms/ads/formats/NativeAdOptions;
    .locals 2

    new-instance v0, Lcom/google/android/gms/ads/formats/NativeAdOptions;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/ads/formats/NativeAdOptions;-><init>(Lcom/google/android/gms/ads/formats/NativeAdOptions$Builder;Lcom/google/android/gms/ads/formats/NativeAdOptions$1;)V

    return-object v0
.end method

.method public setImageOrientation(I)Lcom/google/android/gms/ads/formats/NativeAdOptions$Builder;
    .locals 0
    .param p1, "orientation"    # I

    .prologue
    iput p1, p0, Lcom/google/android/gms/ads/formats/NativeAdOptions$Builder;->zznX:I

    return-object p0
.end method

.method public setRequestMultipleImages(Z)Lcom/google/android/gms/ads/formats/NativeAdOptions$Builder;
    .locals 0
    .param p1, "shouldRequestMultipleImages"    # Z

    .prologue
    iput-boolean p1, p0, Lcom/google/android/gms/ads/formats/NativeAdOptions$Builder;->zznY:Z

    return-object p0
.end method

.method public setReturnUrlsForImageAssets(Z)Lcom/google/android/gms/ads/formats/NativeAdOptions$Builder;
    .locals 0
    .param p1, "shouldReturnUrls"    # Z

    .prologue
    iput-boolean p1, p0, Lcom/google/android/gms/ads/formats/NativeAdOptions$Builder;->zznW:Z

    return-object p0
.end method
