.class public final Lcom/google/android/gms/ads/formats/NativeAdOptions;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/ads/formats/NativeAdOptions$1;,
        Lcom/google/android/gms/ads/formats/NativeAdOptions$Builder;
    }
.end annotation


# static fields
.field public static final ORIENTATION_ANY:I = 0x0

.field public static final ORIENTATION_LANDSCAPE:I = 0x2

.field public static final ORIENTATION_PORTRAIT:I = 0x1


# instance fields
.field private final zznW:Z

.field private final zznX:I

.field private final zznY:Z


# direct methods
.method private constructor <init>(Lcom/google/android/gms/ads/formats/NativeAdOptions$Builder;)V
    .locals 1
    .param p1, "builder"    # Lcom/google/android/gms/ads/formats/NativeAdOptions$Builder;

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/google/android/gms/ads/formats/NativeAdOptions$Builder;->zza(Lcom/google/android/gms/ads/formats/NativeAdOptions$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/gms/ads/formats/NativeAdOptions;->zznW:Z

    invoke-static {p1}, Lcom/google/android/gms/ads/formats/NativeAdOptions$Builder;->zzb(Lcom/google/android/gms/ads/formats/NativeAdOptions$Builder;)I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/ads/formats/NativeAdOptions;->zznX:I

    invoke-static {p1}, Lcom/google/android/gms/ads/formats/NativeAdOptions$Builder;->zzc(Lcom/google/android/gms/ads/formats/NativeAdOptions$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/gms/ads/formats/NativeAdOptions;->zznY:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/ads/formats/NativeAdOptions$Builder;Lcom/google/android/gms/ads/formats/NativeAdOptions$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/google/android/gms/ads/formats/NativeAdOptions$Builder;
    .param p2, "x1"    # Lcom/google/android/gms/ads/formats/NativeAdOptions$1;

    .prologue
    invoke-direct {p0, p1}, Lcom/google/android/gms/ads/formats/NativeAdOptions;-><init>(Lcom/google/android/gms/ads/formats/NativeAdOptions$Builder;)V

    return-void
.end method


# virtual methods
.method public getImageOrientation()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/ads/formats/NativeAdOptions;->zznX:I

    return v0
.end method

.method public shouldRequestMultipleImages()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/ads/formats/NativeAdOptions;->zznY:Z

    return v0
.end method

.method public shouldReturnUrlsForImageAssets()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/ads/formats/NativeAdOptions;->zznW:Z

    return v0
.end method
