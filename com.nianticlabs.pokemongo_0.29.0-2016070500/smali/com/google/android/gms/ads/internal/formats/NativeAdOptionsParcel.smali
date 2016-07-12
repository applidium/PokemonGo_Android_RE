.class public Lcom/google/android/gms/ads/internal/formats/NativeAdOptionsParcel;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzgr;
.end annotation


# static fields
.field public static final CREATOR:Lcom/google/android/gms/ads/internal/formats/zzi;


# instance fields
.field public final versionCode:I

.field public final zzwR:Z

.field public final zzwS:I

.field public final zzwT:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/ads/internal/formats/zzi;

    invoke-direct {v0}, Lcom/google/android/gms/ads/internal/formats/zzi;-><init>()V

    sput-object v0, Lcom/google/android/gms/ads/internal/formats/NativeAdOptionsParcel;->CREATOR:Lcom/google/android/gms/ads/internal/formats/zzi;

    return-void
.end method

.method public constructor <init>(IZIZ)V
    .locals 0
    .param p1, "versionCode"    # I
    .param p2, "shouldReturnUrlsForImageAssets"    # Z
    .param p3, "imageOrientation"    # I
    .param p4, "shouldRequestMultipleImages"    # Z

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/ads/internal/formats/NativeAdOptionsParcel;->versionCode:I

    iput-boolean p2, p0, Lcom/google/android/gms/ads/internal/formats/NativeAdOptionsParcel;->zzwR:Z

    iput p3, p0, Lcom/google/android/gms/ads/internal/formats/NativeAdOptionsParcel;->zzwS:I

    iput-boolean p4, p0, Lcom/google/android/gms/ads/internal/formats/NativeAdOptionsParcel;->zzwT:Z

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/ads/formats/NativeAdOptions;)V
    .locals 4
    .param p1, "options"    # Lcom/google/android/gms/ads/formats/NativeAdOptions;

    .prologue
    const/4 v0, 0x1

    invoke-virtual {p1}, Lcom/google/android/gms/ads/formats/NativeAdOptions;->shouldReturnUrlsForImageAssets()Z

    move-result v1

    invoke-virtual {p1}, Lcom/google/android/gms/ads/formats/NativeAdOptions;->getImageOrientation()I

    move-result v2

    invoke-virtual {p1}, Lcom/google/android/gms/ads/formats/NativeAdOptions;->shouldRequestMultipleImages()Z

    move-result v3

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/google/android/gms/ads/internal/formats/NativeAdOptionsParcel;-><init>(IZIZ)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    invoke-static {p0, p1, p2}, Lcom/google/android/gms/ads/internal/formats/zzi;->zza(Lcom/google/android/gms/ads/internal/formats/NativeAdOptionsParcel;Landroid/os/Parcel;I)V

    return-void
.end method
