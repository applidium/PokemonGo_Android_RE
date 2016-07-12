.class public final Lcom/google/android/gms/internal/zzex;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/ads/mediation/NativeMediationAdRequest;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzgr;
.end annotation


# instance fields
.field private final zzaT:Ljava/util/Date;

.field private final zzaV:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final zzaW:Z

.field private final zzaX:Landroid/location/Location;

.field private final zzoY:Lcom/google/android/gms/ads/internal/formats/NativeAdOptionsParcel;

.field private final zzoZ:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final zzsR:I

.field private final zzzI:I


# direct methods
.method public constructor <init>(Ljava/util/Date;ILjava/util/Set;Landroid/location/Location;ZILcom/google/android/gms/ads/internal/formats/NativeAdOptionsParcel;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Date;",
            "I",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/location/Location;",
            "ZI",
            "Lcom/google/android/gms/ads/internal/formats/NativeAdOptionsParcel;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzex;->zzaT:Ljava/util/Date;

    iput p2, p0, Lcom/google/android/gms/internal/zzex;->zzsR:I

    iput-object p3, p0, Lcom/google/android/gms/internal/zzex;->zzaV:Ljava/util/Set;

    iput-object p4, p0, Lcom/google/android/gms/internal/zzex;->zzaX:Landroid/location/Location;

    iput-boolean p5, p0, Lcom/google/android/gms/internal/zzex;->zzaW:Z

    iput p6, p0, Lcom/google/android/gms/internal/zzex;->zzzI:I

    iput-object p7, p0, Lcom/google/android/gms/internal/zzex;->zzoY:Lcom/google/android/gms/ads/internal/formats/NativeAdOptionsParcel;

    iput-object p8, p0, Lcom/google/android/gms/internal/zzex;->zzoZ:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public getBirthday()Ljava/util/Date;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzex;->zzaT:Ljava/util/Date;

    return-object v0
.end method

.method public getGender()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/zzex;->zzsR:I

    return v0
.end method

.method public getKeywords()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzex;->zzaV:Ljava/util/Set;

    return-object v0
.end method

.method public getLocation()Landroid/location/Location;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzex;->zzaX:Landroid/location/Location;

    return-object v0
.end method

.method public getNativeAdOptions()Lcom/google/android/gms/ads/formats/NativeAdOptions;
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzex;->zzoY:Lcom/google/android/gms/ads/internal/formats/NativeAdOptionsParcel;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/google/android/gms/ads/formats/NativeAdOptions$Builder;

    invoke-direct {v0}, Lcom/google/android/gms/ads/formats/NativeAdOptions$Builder;-><init>()V

    iget-object v1, p0, Lcom/google/android/gms/internal/zzex;->zzoY:Lcom/google/android/gms/ads/internal/formats/NativeAdOptionsParcel;

    iget-boolean v1, v1, Lcom/google/android/gms/ads/internal/formats/NativeAdOptionsParcel;->zzwR:Z

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/formats/NativeAdOptions$Builder;->setReturnUrlsForImageAssets(Z)Lcom/google/android/gms/ads/formats/NativeAdOptions$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzex;->zzoY:Lcom/google/android/gms/ads/internal/formats/NativeAdOptionsParcel;

    iget v1, v1, Lcom/google/android/gms/ads/internal/formats/NativeAdOptionsParcel;->zzwS:I

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/formats/NativeAdOptions$Builder;->setImageOrientation(I)Lcom/google/android/gms/ads/formats/NativeAdOptions$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzex;->zzoY:Lcom/google/android/gms/ads/internal/formats/NativeAdOptionsParcel;

    iget-boolean v1, v1, Lcom/google/android/gms/ads/internal/formats/NativeAdOptionsParcel;->zzwT:Z

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/formats/NativeAdOptions$Builder;->setRequestMultipleImages(Z)Lcom/google/android/gms/ads/formats/NativeAdOptions$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/ads/formats/NativeAdOptions$Builder;->build()Lcom/google/android/gms/ads/formats/NativeAdOptions;

    move-result-object v0

    goto :goto_0
.end method

.method public isAppInstallAdRequested()Z
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzex;->zzoZ:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzex;->zzoZ:Ljava/util/List;

    const-string v1, "2"

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isContentAdRequested()Z
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzex;->zzoZ:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzex;->zzoZ:Ljava/util/List;

    const-string v1, "1"

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isTesting()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzex;->zzaW:Z

    return v0
.end method

.method public taggedForChildDirectedTreatment()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/zzex;->zzzI:I

    return v0
.end method
