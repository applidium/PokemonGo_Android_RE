.class public final Lcom/google/android/gms/ads/internal/reward/client/RewardedVideoAdRequestParcel;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzgr;
.end annotation


# static fields
.field public static final CREATOR:Lcom/google/android/gms/ads/internal/reward/client/zzh;


# instance fields
.field public final versionCode:I

.field public final zzEn:Lcom/google/android/gms/ads/internal/client/AdRequestParcel;

.field public final zzqh:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/ads/internal/reward/client/zzh;

    invoke-direct {v0}, Lcom/google/android/gms/ads/internal/reward/client/zzh;-><init>()V

    sput-object v0, Lcom/google/android/gms/ads/internal/reward/client/RewardedVideoAdRequestParcel;->CREATOR:Lcom/google/android/gms/ads/internal/reward/client/zzh;

    return-void
.end method

.method public constructor <init>(ILcom/google/android/gms/ads/internal/client/AdRequestParcel;Ljava/lang/String;)V
    .locals 0
    .param p1, "versionCode"    # I
    .param p2, "adRequest"    # Lcom/google/android/gms/ads/internal/client/AdRequestParcel;
    .param p3, "adUnitId"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/ads/internal/reward/client/RewardedVideoAdRequestParcel;->versionCode:I

    iput-object p2, p0, Lcom/google/android/gms/ads/internal/reward/client/RewardedVideoAdRequestParcel;->zzEn:Lcom/google/android/gms/ads/internal/client/AdRequestParcel;

    iput-object p3, p0, Lcom/google/android/gms/ads/internal/reward/client/RewardedVideoAdRequestParcel;->zzqh:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/ads/internal/client/AdRequestParcel;Ljava/lang/String;)V
    .locals 1
    .param p1, "adRequest"    # Lcom/google/android/gms/ads/internal/client/AdRequestParcel;
    .param p2, "adUnitId"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x1

    invoke-direct {p0, v0, p1, p2}, Lcom/google/android/gms/ads/internal/reward/client/RewardedVideoAdRequestParcel;-><init>(ILcom/google/android/gms/ads/internal/client/AdRequestParcel;Ljava/lang/String;)V

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
    invoke-static {p0, p1, p2}, Lcom/google/android/gms/ads/internal/reward/client/zzh;->zza(Lcom/google/android/gms/ads/internal/reward/client/RewardedVideoAdRequestParcel;Landroid/os/Parcel;I)V

    return-void
.end method
