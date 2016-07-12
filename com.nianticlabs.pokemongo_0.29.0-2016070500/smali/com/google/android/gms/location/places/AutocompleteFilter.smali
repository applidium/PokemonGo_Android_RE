.class public Lcom/google/android/gms/location/places/AutocompleteFilter;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Lcom/google/android/gms/location/places/zzc;


# instance fields
.field final mVersionCode:I

.field final zzaFW:Z

.field final zzaFX:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final zzaFY:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/location/places/zzc;

    invoke-direct {v0}, Lcom/google/android/gms/location/places/zzc;-><init>()V

    sput-object v0, Lcom/google/android/gms/location/places/AutocompleteFilter;->CREATOR:Lcom/google/android/gms/location/places/zzc;

    return-void
.end method

.method constructor <init>(IZLjava/util/Collection;)V
    .locals 2
    .param p1, "versionCode"    # I
    .param p2, "restrictToPlaces"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IZ",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p3, "placeTypes":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/Integer;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/location/places/AutocompleteFilter;->mVersionCode:I

    iput-boolean p2, p0, Lcom/google/android/gms/location/places/AutocompleteFilter;->zzaFW:Z

    if-nez p3, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lcom/google/android/gms/location/places/AutocompleteFilter;->zzaFX:Ljava/util/List;

    iget-object v0, p0, Lcom/google/android/gms/location/places/AutocompleteFilter;->zzaFX:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/location/places/AutocompleteFilter;->zzaFY:Ljava/util/Set;

    :goto_1
    return-void

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/util/HashSet;

    iget-object v1, p0, Lcom/google/android/gms/location/places/AutocompleteFilter;->zzaFX:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/location/places/AutocompleteFilter;->zzaFY:Ljava/util/Set;

    goto :goto_1
.end method

.method public static create(Ljava/util/Collection;)Lcom/google/android/gms/location/places/AutocompleteFilter;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/Integer;",
            ">;)",
            "Lcom/google/android/gms/location/places/AutocompleteFilter;"
        }
    .end annotation

    .prologue
    .local p0, "placeTypes":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/Integer;>;"
    const/4 v0, 0x1

    invoke-static {v0, p0}, Lcom/google/android/gms/location/places/AutocompleteFilter;->zza(ZLjava/util/Collection;)Lcom/google/android/gms/location/places/AutocompleteFilter;

    move-result-object v0

    return-object v0
.end method

.method public static zza(ZLjava/util/Collection;)Lcom/google/android/gms/location/places/AutocompleteFilter;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/Integer;",
            ">;)",
            "Lcom/google/android/gms/location/places/AutocompleteFilter;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/location/places/AutocompleteFilter;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p0, p1}, Lcom/google/android/gms/location/places/AutocompleteFilter;-><init>(IZLjava/util/Collection;)V

    return-object v0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    sget-object v0, Lcom/google/android/gms/location/places/AutocompleteFilter;->CREATOR:Lcom/google/android/gms/location/places/zzc;

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
    instance-of v2, p1, Lcom/google/android/gms/location/places/AutocompleteFilter;

    if-nez v2, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    check-cast p1, Lcom/google/android/gms/location/places/AutocompleteFilter;

    .end local p1    # "object":Ljava/lang/Object;
    iget-object v2, p0, Lcom/google/android/gms/location/places/AutocompleteFilter;->zzaFY:Ljava/util/Set;

    iget-object v3, p1, Lcom/google/android/gms/location/places/AutocompleteFilter;->zzaFY:Ljava/util/Set;

    invoke-interface {v2, v3}, Ljava/util/Set;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-boolean v2, p0, Lcom/google/android/gms/location/places/AutocompleteFilter;->zzaFW:Z

    iget-boolean v3, p1, Lcom/google/android/gms/location/places/AutocompleteFilter;->zzaFW:Z

    if-eq v2, v3, :cond_0

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method public getPlaceTypes()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/location/places/AutocompleteFilter;->zzaFY:Ljava/util/Set;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-boolean v2, p0, Lcom/google/android/gms/location/places/AutocompleteFilter;->zzaFW:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/android/gms/location/places/AutocompleteFilter;->zzaFY:Ljava/util/Set;

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzw;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    invoke-static {p0}, Lcom/google/android/gms/common/internal/zzw;->zzv(Ljava/lang/Object;)Lcom/google/android/gms/common/internal/zzw$zza;

    move-result-object v0

    iget-boolean v1, p0, Lcom/google/android/gms/location/places/AutocompleteFilter;->zzaFW:Z

    if-nez v1, :cond_0

    const-string v1, "restrictedToPlaces"

    iget-boolean v2, p0, Lcom/google/android/gms/location/places/AutocompleteFilter;->zzaFW:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/zzw$zza;->zzg(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/zzw$zza;

    :cond_0
    const-string v1, "placeTypes"

    iget-object v2, p0, Lcom/google/android/gms/location/places/AutocompleteFilter;->zzaFY:Ljava/util/Set;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/zzw$zza;->zzg(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/zzw$zza;

    invoke-virtual {v0}, Lcom/google/android/gms/common/internal/zzw$zza;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "parcel"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    sget-object v0, Lcom/google/android/gms/location/places/AutocompleteFilter;->CREATOR:Lcom/google/android/gms/location/places/zzc;

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/location/places/zzc;->zza(Lcom/google/android/gms/location/places/AutocompleteFilter;Landroid/os/Parcel;I)V

    return-void
.end method

.method public zzwM()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/location/places/AutocompleteFilter;->zzaFW:Z

    return v0
.end method
