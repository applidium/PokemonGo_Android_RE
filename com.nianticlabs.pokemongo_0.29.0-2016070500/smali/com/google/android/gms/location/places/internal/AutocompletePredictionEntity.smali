.class public Lcom/google/android/gms/location/places/internal/AutocompletePredictionEntity;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;
.implements Lcom/google/android/gms/location/places/AutocompletePrediction;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/location/places/internal/AutocompletePredictionEntity$SubstringEntity;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/gms/location/places/internal/AutocompletePredictionEntity;",
            ">;"
        }
    .end annotation
.end field

.field private static final zzaGN:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/location/places/internal/AutocompletePredictionEntity$SubstringEntity;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field final mVersionCode:I

.field final zzaFT:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field final zzaGO:Ljava/lang/String;

.field final zzaGP:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/location/places/internal/AutocompletePredictionEntity$SubstringEntity;",
            ">;"
        }
    .end annotation
.end field

.field final zzaGQ:I

.field final zzaGR:Ljava/lang/String;

.field final zzaGS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/location/places/internal/AutocompletePredictionEntity$SubstringEntity;",
            ">;"
        }
    .end annotation
.end field

.field final zzaGT:Ljava/lang/String;

.field final zzaGU:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/location/places/internal/AutocompletePredictionEntity$SubstringEntity;",
            ">;"
        }
    .end annotation
.end field

.field final zzaGt:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/location/places/internal/zza;

    invoke-direct {v0}, Lcom/google/android/gms/location/places/internal/zza;-><init>()V

    sput-object v0, Lcom/google/android/gms/location/places/internal/AutocompletePredictionEntity;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/location/places/internal/AutocompletePredictionEntity;->zzaGN:Ljava/util/List;

    return-void
.end method

.method constructor <init>(ILjava/lang/String;Ljava/util/List;ILjava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/util/List;)V
    .locals 0
    .param p1, "versionCode"    # I
    .param p2, "placeId"    # Ljava/lang/String;
    .param p4, "personalizationType"    # I
    .param p5, "fullText"    # Ljava/lang/String;
    .param p7, "primaryText"    # Ljava/lang/String;
    .param p9, "secondaryText"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;I",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/location/places/internal/AutocompletePredictionEntity$SubstringEntity;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/location/places/internal/AutocompletePredictionEntity$SubstringEntity;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/location/places/internal/AutocompletePredictionEntity$SubstringEntity;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p3, "placeTypes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .local p6, "fullTextMatchedSubstrings":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/gms/location/places/internal/AutocompletePredictionEntity$SubstringEntity;>;"
    .local p8, "primaryTextMatchedSubstrings":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/gms/location/places/internal/AutocompletePredictionEntity$SubstringEntity;>;"
    .local p10, "secondaryTextMatchedSubstrings":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/gms/location/places/internal/AutocompletePredictionEntity$SubstringEntity;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/location/places/internal/AutocompletePredictionEntity;->mVersionCode:I

    iput-object p2, p0, Lcom/google/android/gms/location/places/internal/AutocompletePredictionEntity;->zzaGt:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/location/places/internal/AutocompletePredictionEntity;->zzaFT:Ljava/util/List;

    iput p4, p0, Lcom/google/android/gms/location/places/internal/AutocompletePredictionEntity;->zzaGQ:I

    iput-object p5, p0, Lcom/google/android/gms/location/places/internal/AutocompletePredictionEntity;->zzaGO:Ljava/lang/String;

    iput-object p6, p0, Lcom/google/android/gms/location/places/internal/AutocompletePredictionEntity;->zzaGP:Ljava/util/List;

    iput-object p7, p0, Lcom/google/android/gms/location/places/internal/AutocompletePredictionEntity;->zzaGR:Ljava/lang/String;

    iput-object p8, p0, Lcom/google/android/gms/location/places/internal/AutocompletePredictionEntity;->zzaGS:Ljava/util/List;

    iput-object p9, p0, Lcom/google/android/gms/location/places/internal/AutocompletePredictionEntity;->zzaGT:Ljava/lang/String;

    iput-object p10, p0, Lcom/google/android/gms/location/places/internal/AutocompletePredictionEntity;->zzaGU:Ljava/util/List;

    return-void
.end method

.method public static zza(Ljava/lang/String;Ljava/util/List;ILjava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/util/List;)Lcom/google/android/gms/location/places/internal/AutocompletePredictionEntity;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;I",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/location/places/internal/AutocompletePredictionEntity$SubstringEntity;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/location/places/internal/AutocompletePredictionEntity$SubstringEntity;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/location/places/internal/AutocompletePredictionEntity$SubstringEntity;",
            ">;)",
            "Lcom/google/android/gms/location/places/internal/AutocompletePredictionEntity;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/location/places/internal/AutocompletePredictionEntity;

    const/4 v1, 0x0

    invoke-static {p3}, Lcom/google/android/gms/common/internal/zzx;->zzw(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    move-object v2, p0

    move-object v3, p1

    move v4, p2

    move-object v6, p4

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    move-object/from16 v10, p8

    invoke-direct/range {v0 .. v10}, Lcom/google/android/gms/location/places/internal/AutocompletePredictionEntity;-><init>(ILjava/lang/String;Ljava/util/List;ILjava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/util/List;)V

    return-object v0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "object"    # Ljava/lang/Object;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p0, p1, :cond_1

    .end local p1    # "object":Ljava/lang/Object;
    :cond_0
    :goto_0
    return v0

    .restart local p1    # "object":Ljava/lang/Object;
    :cond_1
    instance-of v2, p1, Lcom/google/android/gms/location/places/internal/AutocompletePredictionEntity;

    if-nez v2, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    check-cast p1, Lcom/google/android/gms/location/places/internal/AutocompletePredictionEntity;

    .end local p1    # "object":Ljava/lang/Object;
    iget-object v2, p0, Lcom/google/android/gms/location/places/internal/AutocompletePredictionEntity;->zzaGt:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/gms/location/places/internal/AutocompletePredictionEntity;->zzaGt:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/google/android/gms/common/internal/zzw;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/google/android/gms/location/places/internal/AutocompletePredictionEntity;->zzaFT:Ljava/util/List;

    iget-object v3, p1, Lcom/google/android/gms/location/places/internal/AutocompletePredictionEntity;->zzaFT:Ljava/util/List;

    invoke-static {v2, v3}, Lcom/google/android/gms/common/internal/zzw;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget v2, p0, Lcom/google/android/gms/location/places/internal/AutocompletePredictionEntity;->zzaGQ:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p1, Lcom/google/android/gms/location/places/internal/AutocompletePredictionEntity;->zzaGQ:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/android/gms/common/internal/zzw;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/google/android/gms/location/places/internal/AutocompletePredictionEntity;->zzaGO:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/gms/location/places/internal/AutocompletePredictionEntity;->zzaGO:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/google/android/gms/common/internal/zzw;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/google/android/gms/location/places/internal/AutocompletePredictionEntity;->zzaGP:Ljava/util/List;

    iget-object v3, p1, Lcom/google/android/gms/location/places/internal/AutocompletePredictionEntity;->zzaGP:Ljava/util/List;

    invoke-static {v2, v3}, Lcom/google/android/gms/common/internal/zzw;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/google/android/gms/location/places/internal/AutocompletePredictionEntity;->zzaGR:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/gms/location/places/internal/AutocompletePredictionEntity;->zzaGR:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/google/android/gms/common/internal/zzw;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/google/android/gms/location/places/internal/AutocompletePredictionEntity;->zzaGS:Ljava/util/List;

    iget-object v3, p1, Lcom/google/android/gms/location/places/internal/AutocompletePredictionEntity;->zzaGS:Ljava/util/List;

    invoke-static {v2, v3}, Lcom/google/android/gms/common/internal/zzw;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/google/android/gms/location/places/internal/AutocompletePredictionEntity;->zzaGT:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/gms/location/places/internal/AutocompletePredictionEntity;->zzaGT:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/google/android/gms/common/internal/zzw;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/google/android/gms/location/places/internal/AutocompletePredictionEntity;->zzaGU:Ljava/util/List;

    iget-object v3, p1, Lcom/google/android/gms/location/places/internal/AutocompletePredictionEntity;->zzaGU:Ljava/util/List;

    invoke-static {v2, v3}, Lcom/google/android/gms/common/internal/zzw;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method public synthetic freeze()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/location/places/internal/AutocompletePredictionEntity;->zzwV()Lcom/google/android/gms/location/places/AutocompletePrediction;

    move-result-object v0

    return-object v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/location/places/internal/AutocompletePredictionEntity;->zzaGO:Ljava/lang/String;

    return-object v0
.end method

.method public getFullText(Landroid/text/style/CharacterStyle;)Ljava/lang/CharSequence;
    .locals 2
    .param p1, "matchStyle"    # Landroid/text/style/CharacterStyle;

    .prologue
    iget-object v0, p0, Lcom/google/android/gms/location/places/internal/AutocompletePredictionEntity;->zzaGO:Ljava/lang/String;

    iget-object v1, p0, Lcom/google/android/gms/location/places/internal/AutocompletePredictionEntity;->zzaGP:Ljava/util/List;

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
            "<+",
            "Lcom/google/android/gms/location/places/AutocompletePrediction$Substring;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/location/places/internal/AutocompletePredictionEntity;->zzaGP:Ljava/util/List;

    return-object v0
.end method

.method public getPlaceId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/location/places/internal/AutocompletePredictionEntity;->zzaGt:Ljava/lang/String;

    return-object v0
.end method

.method public getPlaceTypes()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/location/places/internal/AutocompletePredictionEntity;->zzaFT:Ljava/util/List;

    return-object v0
.end method

.method public getPrimaryText(Landroid/text/style/CharacterStyle;)Ljava/lang/CharSequence;
    .locals 2
    .param p1, "matchStyle"    # Landroid/text/style/CharacterStyle;

    .prologue
    iget-object v0, p0, Lcom/google/android/gms/location/places/internal/AutocompletePredictionEntity;->zzaGR:Ljava/lang/String;

    iget-object v1, p0, Lcom/google/android/gms/location/places/internal/AutocompletePredictionEntity;->zzaGS:Ljava/util/List;

    invoke-static {v0, v1, p1}, Lcom/google/android/gms/location/places/internal/zzc;->zza(Ljava/lang/String;Ljava/util/List;Landroid/text/style/CharacterStyle;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public getSecondaryText(Landroid/text/style/CharacterStyle;)Ljava/lang/CharSequence;
    .locals 2
    .param p1, "matchStyle"    # Landroid/text/style/CharacterStyle;

    .prologue
    iget-object v0, p0, Lcom/google/android/gms/location/places/internal/AutocompletePredictionEntity;->zzaGT:Ljava/lang/String;

    iget-object v1, p0, Lcom/google/android/gms/location/places/internal/AutocompletePredictionEntity;->zzaGU:Ljava/util/List;

    invoke-static {v0, v1, p1}, Lcom/google/android/gms/location/places/internal/zzc;->zza(Ljava/lang/String;Ljava/util/List;Landroid/text/style/CharacterStyle;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    const/16 v0, 0x9

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/google/android/gms/location/places/internal/AutocompletePredictionEntity;->zzaGt:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/android/gms/location/places/internal/AutocompletePredictionEntity;->zzaFT:Ljava/util/List;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget v2, p0, Lcom/google/android/gms/location/places/internal/AutocompletePredictionEntity;->zzaGQ:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x3

    iget-object v2, p0, Lcom/google/android/gms/location/places/internal/AutocompletePredictionEntity;->zzaGO:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    iget-object v2, p0, Lcom/google/android/gms/location/places/internal/AutocompletePredictionEntity;->zzaGP:Ljava/util/List;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    iget-object v2, p0, Lcom/google/android/gms/location/places/internal/AutocompletePredictionEntity;->zzaGR:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    iget-object v2, p0, Lcom/google/android/gms/location/places/internal/AutocompletePredictionEntity;->zzaGS:Ljava/util/List;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    iget-object v2, p0, Lcom/google/android/gms/location/places/internal/AutocompletePredictionEntity;->zzaGT:Ljava/lang/String;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    iget-object v2, p0, Lcom/google/android/gms/location/places/internal/AutocompletePredictionEntity;->zzaGU:Ljava/util/List;

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

.method public toString()Ljava/lang/String;
    .locals 3

    invoke-static {p0}, Lcom/google/android/gms/common/internal/zzw;->zzv(Ljava/lang/Object;)Lcom/google/android/gms/common/internal/zzw$zza;

    move-result-object v0

    const-string v1, "placeId"

    iget-object v2, p0, Lcom/google/android/gms/location/places/internal/AutocompletePredictionEntity;->zzaGt:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/zzw$zza;->zzg(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/zzw$zza;

    move-result-object v0

    const-string v1, "placeTypes"

    iget-object v2, p0, Lcom/google/android/gms/location/places/internal/AutocompletePredictionEntity;->zzaFT:Ljava/util/List;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/zzw$zza;->zzg(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/zzw$zza;

    move-result-object v0

    const-string v1, "fullText"

    iget-object v2, p0, Lcom/google/android/gms/location/places/internal/AutocompletePredictionEntity;->zzaGO:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/zzw$zza;->zzg(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/zzw$zza;

    move-result-object v0

    const-string v1, "fullTextMatchedSubstrings"

    iget-object v2, p0, Lcom/google/android/gms/location/places/internal/AutocompletePredictionEntity;->zzaGP:Ljava/util/List;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/zzw$zza;->zzg(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/zzw$zza;

    move-result-object v0

    const-string v1, "primaryText"

    iget-object v2, p0, Lcom/google/android/gms/location/places/internal/AutocompletePredictionEntity;->zzaGR:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/zzw$zza;->zzg(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/zzw$zza;

    move-result-object v0

    const-string v1, "primaryTextMatchedSubstrings"

    iget-object v2, p0, Lcom/google/android/gms/location/places/internal/AutocompletePredictionEntity;->zzaGS:Ljava/util/List;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/zzw$zza;->zzg(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/zzw$zza;

    move-result-object v0

    const-string v1, "secondaryText"

    iget-object v2, p0, Lcom/google/android/gms/location/places/internal/AutocompletePredictionEntity;->zzaGT:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/zzw$zza;->zzg(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/zzw$zza;

    move-result-object v0

    const-string v1, "secondaryTextMatchedSubstrings"

    iget-object v2, p0, Lcom/google/android/gms/location/places/internal/AutocompletePredictionEntity;->zzaGU:Ljava/util/List;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/zzw$zza;->zzg(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/zzw$zza;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/common/internal/zzw$zza;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0
    .param p1, "parcel"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    invoke-static {p0, p1, p2}, Lcom/google/android/gms/location/places/internal/zza;->zza(Lcom/google/android/gms/location/places/internal/AutocompletePredictionEntity;Landroid/os/Parcel;I)V

    return-void
.end method

.method public zzwV()Lcom/google/android/gms/location/places/AutocompletePrediction;
    .locals 0

    return-object p0
.end method
