.class public Lcom/google/android/gms/location/places/internal/zzr;
.super Lcom/google/android/gms/location/places/internal/zzu;

# interfaces
.implements Lcom/google/android/gms/location/places/PlacePhotoMetadata;


# instance fields
.field private final zzaHL:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/data/DataHolder;I)V
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/location/places/internal/zzu;-><init>(Lcom/google/android/gms/common/data/DataHolder;I)V

    const-string v0, "photo_fife_url"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/location/places/internal/zzr;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/location/places/internal/zzr;->zzaHL:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public synthetic freeze()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/location/places/internal/zzr;->zzxp()Lcom/google/android/gms/location/places/PlacePhotoMetadata;

    move-result-object v0

    return-object v0
.end method

.method public getAttributions()Ljava/lang/CharSequence;
    .locals 2

    const-string v0, "photo_attributions"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/location/places/internal/zzr;->zzF(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMaxHeight()I
    .locals 2

    const-string v0, "photo_max_height"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/location/places/internal/zzr;->zzz(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getMaxWidth()I
    .locals 2

    const-string v0, "photo_max_width"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/location/places/internal/zzr;->zzz(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getPhoto(Lcom/google/android/gms/common/api/GoogleApiClient;)Lcom/google/android/gms/common/api/PendingResult;
    .locals 2
    .param p1, "client"    # Lcom/google/android/gms/common/api/GoogleApiClient;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/GoogleApiClient;",
            ")",
            "Lcom/google/android/gms/common/api/PendingResult",
            "<",
            "Lcom/google/android/gms/location/places/PlacePhotoResult;",
            ">;"
        }
    .end annotation

    .prologue
    invoke-virtual {p0}, Lcom/google/android/gms/location/places/internal/zzr;->getMaxWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/google/android/gms/location/places/internal/zzr;->getMaxHeight()I

    move-result v1

    invoke-virtual {p0, p1, v0, v1}, Lcom/google/android/gms/location/places/internal/zzr;->getScaledPhoto(Lcom/google/android/gms/common/api/GoogleApiClient;II)Lcom/google/android/gms/common/api/PendingResult;

    move-result-object v0

    return-object v0
.end method

.method public getScaledPhoto(Lcom/google/android/gms/common/api/GoogleApiClient;II)Lcom/google/android/gms/common/api/PendingResult;
    .locals 1
    .param p1, "client"    # Lcom/google/android/gms/common/api/GoogleApiClient;
    .param p2, "width"    # I
    .param p3, "height"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/GoogleApiClient;",
            "II)",
            "Lcom/google/android/gms/common/api/PendingResult",
            "<",
            "Lcom/google/android/gms/location/places/PlacePhotoResult;",
            ">;"
        }
    .end annotation

    .prologue
    invoke-virtual {p0}, Lcom/google/android/gms/location/places/internal/zzr;->zzxp()Lcom/google/android/gms/location/places/PlacePhotoMetadata;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lcom/google/android/gms/location/places/PlacePhotoMetadata;->getScaledPhoto(Lcom/google/android/gms/common/api/GoogleApiClient;II)Lcom/google/android/gms/common/api/PendingResult;

    move-result-object v0

    return-object v0
.end method

.method public zzxp()Lcom/google/android/gms/location/places/PlacePhotoMetadata;
    .locals 6

    new-instance v0, Lcom/google/android/gms/location/places/internal/zzq;

    iget-object v1, p0, Lcom/google/android/gms/location/places/internal/zzr;->zzaHL:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/google/android/gms/location/places/internal/zzr;->getMaxWidth()I

    move-result v2

    invoke-virtual {p0}, Lcom/google/android/gms/location/places/internal/zzr;->getMaxHeight()I

    move-result v3

    invoke-virtual {p0}, Lcom/google/android/gms/location/places/internal/zzr;->getAttributions()Ljava/lang/CharSequence;

    move-result-object v4

    iget v5, p0, Lcom/google/android/gms/location/places/internal/zzr;->zzadl:I

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/location/places/internal/zzq;-><init>(Ljava/lang/String;IILjava/lang/CharSequence;I)V

    return-object v0
.end method
