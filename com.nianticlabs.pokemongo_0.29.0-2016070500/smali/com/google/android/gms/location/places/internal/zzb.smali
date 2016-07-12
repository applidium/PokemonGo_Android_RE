.class public Lcom/google/android/gms/location/places/internal/zzb;
.super Lcom/google/android/gms/location/places/internal/zzu;

# interfaces
.implements Lcom/google/android/gms/location/places/AutocompletePrediction;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/data/DataHolder;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/location/places/internal/zzu;-><init>(Lcom/google/android/gms/common/data/DataHolder;I)V

    return-void
.end method

.method private zzwX()Ljava/lang/String;
    .locals 2

    const-string v0, "ap_description"

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/location/places/internal/zzb;->zzF(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private zzwY()Ljava/lang/String;
    .locals 2

    const-string v0, "ap_primary_text"

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/location/places/internal/zzb;->zzF(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private zzwZ()Ljava/lang/String;
    .locals 2

    const-string v0, "ap_secondary_text"

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/location/places/internal/zzb;->zzF(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private zzxa()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/location/places/internal/AutocompletePredictionEntity$SubstringEntity;",
            ">;"
        }
    .end annotation

    const-string v0, "ap_matched_subscriptions"

    sget-object v1, Lcom/google/android/gms/location/places/internal/AutocompletePredictionEntity$SubstringEntity;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2}, Lcom/google/android/gms/location/places/internal/zzb;->zza(Ljava/lang/String;Landroid/os/Parcelable$Creator;Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private zzxb()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/location/places/internal/AutocompletePredictionEntity$SubstringEntity;",
            ">;"
        }
    .end annotation

    const-string v0, "ap_primary_text_matched"

    sget-object v1, Lcom/google/android/gms/location/places/internal/AutocompletePredictionEntity$SubstringEntity;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2}, Lcom/google/android/gms/location/places/internal/zzb;->zza(Ljava/lang/String;Landroid/os/Parcelable$Creator;Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private zzxc()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/location/places/internal/AutocompletePredictionEntity$SubstringEntity;",
            ">;"
        }
    .end annotation

    const-string v0, "ap_secondary_text_matched"

    sget-object v1, Lcom/google/android/gms/location/places/internal/AutocompletePredictionEntity$SubstringEntity;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2}, Lcom/google/android/gms/location/places/internal/zzb;->zza(Ljava/lang/String;Landroid/os/Parcelable$Creator;Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public synthetic freeze()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/location/places/internal/zzb;->zzwV()Lcom/google/android/gms/location/places/AutocompletePrediction;

    move-result-object v0

    return-object v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/location/places/internal/zzb;->zzwX()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFullText(Landroid/text/style/CharacterStyle;)Ljava/lang/CharSequence;
    .locals 2
    .param p1, "matchStyle"    # Landroid/text/style/CharacterStyle;

    .prologue
    invoke-direct {p0}, Lcom/google/android/gms/location/places/internal/zzb;->zzwX()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0}, Lcom/google/android/gms/location/places/internal/zzb;->zzxa()Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1, p1}, Lcom/google/android/gms/location/places/internal/zzc;->zza(Ljava/lang/String;Ljava/util/List;Landroid/text/style/CharacterStyle;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public getMatchedSubstrings()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/location/places/internal/AutocompletePredictionEntity$SubstringEntity;",
            ">;"
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/android/gms/location/places/internal/zzb;->zzxa()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getPlaceId()Ljava/lang/String;
    .locals 2

    const-string v0, "ap_place_id"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/location/places/internal/zzb;->zzF(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPlaceTypes()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    const-string v0, "ap_place_types"

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/location/places/internal/zzb;->zza(Ljava/lang/String;Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getPrimaryText(Landroid/text/style/CharacterStyle;)Ljava/lang/CharSequence;
    .locals 2
    .param p1, "matchStyle"    # Landroid/text/style/CharacterStyle;

    .prologue
    invoke-direct {p0}, Lcom/google/android/gms/location/places/internal/zzb;->zzwY()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0}, Lcom/google/android/gms/location/places/internal/zzb;->zzxb()Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1, p1}, Lcom/google/android/gms/location/places/internal/zzc;->zza(Ljava/lang/String;Ljava/util/List;Landroid/text/style/CharacterStyle;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public getSecondaryText(Landroid/text/style/CharacterStyle;)Ljava/lang/CharSequence;
    .locals 2
    .param p1, "matchStyle"    # Landroid/text/style/CharacterStyle;

    .prologue
    invoke-direct {p0}, Lcom/google/android/gms/location/places/internal/zzb;->zzwZ()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0}, Lcom/google/android/gms/location/places/internal/zzb;->zzxc()Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1, p1}, Lcom/google/android/gms/location/places/internal/zzc;->zza(Ljava/lang/String;Ljava/util/List;Landroid/text/style/CharacterStyle;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public zzwV()Lcom/google/android/gms/location/places/AutocompletePrediction;
    .locals 9

    invoke-virtual {p0}, Lcom/google/android/gms/location/places/internal/zzb;->getPlaceId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/gms/location/places/internal/zzb;->getPlaceTypes()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/android/gms/location/places/internal/zzb;->zzwW()I

    move-result v2

    invoke-direct {p0}, Lcom/google/android/gms/location/places/internal/zzb;->zzwX()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0}, Lcom/google/android/gms/location/places/internal/zzb;->zzxa()Ljava/util/List;

    move-result-object v4

    invoke-direct {p0}, Lcom/google/android/gms/location/places/internal/zzb;->zzwY()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0}, Lcom/google/android/gms/location/places/internal/zzb;->zzxb()Ljava/util/List;

    move-result-object v6

    invoke-direct {p0}, Lcom/google/android/gms/location/places/internal/zzb;->zzwZ()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0}, Lcom/google/android/gms/location/places/internal/zzb;->zzxc()Ljava/util/List;

    move-result-object v8

    invoke-static/range {v0 .. v8}, Lcom/google/android/gms/location/places/internal/AutocompletePredictionEntity;->zza(Ljava/lang/String;Ljava/util/List;ILjava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/util/List;)Lcom/google/android/gms/location/places/internal/AutocompletePredictionEntity;

    move-result-object v0

    return-object v0
.end method

.method public zzwW()I
    .locals 2

    const-string v0, "ap_personalization_type"

    const/4 v1, 0x6

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/location/places/internal/zzb;->zzz(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method
