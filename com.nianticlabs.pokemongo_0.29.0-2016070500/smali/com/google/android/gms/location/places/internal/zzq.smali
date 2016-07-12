.class public Lcom/google/android/gms/location/places/internal/zzq;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/location/places/PlacePhotoMetadata;


# instance fields
.field private mIndex:I

.field private final zzAG:I

.field private final zzAH:I

.field private final zzaHL:Ljava/lang/String;

.field private final zzaHM:Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>(Ljava/lang/String;IILjava/lang/CharSequence;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/location/places/internal/zzq;->zzaHL:Ljava/lang/String;

    iput p2, p0, Lcom/google/android/gms/location/places/internal/zzq;->zzAG:I

    iput p3, p0, Lcom/google/android/gms/location/places/internal/zzq;->zzAH:I

    iput-object p4, p0, Lcom/google/android/gms/location/places/internal/zzq;->zzaHM:Ljava/lang/CharSequence;

    iput p5, p0, Lcom/google/android/gms/location/places/internal/zzq;->mIndex:I

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/location/places/internal/zzq;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/location/places/internal/zzq;->zzaHL:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic zzb(Lcom/google/android/gms/location/places/internal/zzq;)I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/location/places/internal/zzq;->mIndex:I

    return v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "other"    # Ljava/lang/Object;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p1, p0, :cond_1

    .end local p1    # "other":Ljava/lang/Object;
    :cond_0
    :goto_0
    return v0

    .restart local p1    # "other":Ljava/lang/Object;
    :cond_1
    instance-of v2, p1, Lcom/google/android/gms/location/places/internal/zzq;

    if-nez v2, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    check-cast p1, Lcom/google/android/gms/location/places/internal/zzq;

    .end local p1    # "other":Ljava/lang/Object;
    iget v2, p1, Lcom/google/android/gms/location/places/internal/zzq;->zzAG:I

    iget v3, p0, Lcom/google/android/gms/location/places/internal/zzq;->zzAG:I

    if-ne v2, v3, :cond_3

    iget v2, p1, Lcom/google/android/gms/location/places/internal/zzq;->zzAH:I

    iget v3, p0, Lcom/google/android/gms/location/places/internal/zzq;->zzAH:I

    if-ne v2, v3, :cond_3

    iget-object v2, p1, Lcom/google/android/gms/location/places/internal/zzq;->zzaHL:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/gms/location/places/internal/zzq;->zzaHL:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/google/android/gms/common/internal/zzw;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p1, Lcom/google/android/gms/location/places/internal/zzq;->zzaHM:Ljava/lang/CharSequence;

    iget-object v3, p0, Lcom/google/android/gms/location/places/internal/zzq;->zzaHM:Ljava/lang/CharSequence;

    invoke-static {v2, v3}, Lcom/google/android/gms/common/internal/zzw;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method public synthetic freeze()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/location/places/internal/zzq;->zzxp()Lcom/google/android/gms/location/places/PlacePhotoMetadata;

    move-result-object v0

    return-object v0
.end method

.method public getAttributions()Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/location/places/internal/zzq;->zzaHM:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getMaxHeight()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/location/places/internal/zzq;->zzAH:I

    return v0
.end method

.method public getMaxWidth()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/location/places/internal/zzq;->zzAG:I

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
    invoke-virtual {p0}, Lcom/google/android/gms/location/places/internal/zzq;->getMaxWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/google/android/gms/location/places/internal/zzq;->getMaxHeight()I

    move-result v1

    invoke-virtual {p0, p1, v0, v1}, Lcom/google/android/gms/location/places/internal/zzq;->getScaledPhoto(Lcom/google/android/gms/common/api/GoogleApiClient;II)Lcom/google/android/gms/common/api/PendingResult;

    move-result-object v0

    return-object v0
.end method

.method public getScaledPhoto(Lcom/google/android/gms/common/api/GoogleApiClient;II)Lcom/google/android/gms/common/api/PendingResult;
    .locals 6
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
    new-instance v0, Lcom/google/android/gms/location/places/internal/zzq$1;

    sget-object v2, Lcom/google/android/gms/location/places/Places;->zzaGz:Lcom/google/android/gms/common/api/Api$zzc;

    move-object v1, p0

    move-object v3, p1

    move v4, p2

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/location/places/internal/zzq$1;-><init>(Lcom/google/android/gms/location/places/internal/zzq;Lcom/google/android/gms/common/api/Api$zzc;Lcom/google/android/gms/common/api/GoogleApiClient;II)V

    invoke-virtual {p1, v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->zza(Lcom/google/android/gms/internal/zzlb$zza;)Lcom/google/android/gms/internal/zzlb$zza;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget v2, p0, Lcom/google/android/gms/location/places/internal/zzq;->zzAG:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget v2, p0, Lcom/google/android/gms/location/places/internal/zzq;->zzAH:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/android/gms/location/places/internal/zzq;->zzaHL:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    iget-object v2, p0, Lcom/google/android/gms/location/places/internal/zzq;->zzaHM:Ljava/lang/CharSequence;

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzw;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public isDataValid()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public zzxp()Lcom/google/android/gms/location/places/PlacePhotoMetadata;
    .locals 0

    return-object p0
.end method
