.class public final Lcom/google/android/gms/location/places/PlaceFilter;
.super Lcom/google/android/gms/location/places/zza;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/location/places/PlaceFilter$1;,
        Lcom/google/android/gms/location/places/PlaceFilter$zza;
    }
.end annotation


# static fields
.field public static final CREATOR:Lcom/google/android/gms/location/places/zzg;


# instance fields
.field final mVersionCode:I

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

.field final zzaFZ:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final zzaGa:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/location/places/UserDataType;",
            ">;"
        }
    .end annotation
.end field

.field private final zzaGb:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final zzaGc:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/google/android/gms/location/places/UserDataType;",
            ">;"
        }
    .end annotation
.end field

.field final zzaGl:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/location/places/zzg;

    invoke-direct {v0}, Lcom/google/android/gms/location/places/zzg;-><init>()V

    sput-object v0, Lcom/google/android/gms/location/places/PlaceFilter;->CREATOR:Lcom/google/android/gms/location/places/zzg;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/google/android/gms/location/places/PlaceFilter;-><init>(ZLjava/util/Collection;)V

    return-void
.end method

.method constructor <init>(ILjava/util/List;ZLjava/util/List;Ljava/util/List;)V
    .locals 1
    .param p1, "versionCode"    # I
    .param p3, "requireOpenNow"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;Z",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/location/places/UserDataType;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p2, "placeTypesList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .local p4, "placeIdsList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p5, "requestedUserDataTypesList":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/gms/location/places/UserDataType;>;"
    invoke-direct {p0}, Lcom/google/android/gms/location/places/zza;-><init>()V

    iput p1, p0, Lcom/google/android/gms/location/places/PlaceFilter;->mVersionCode:I

    if-nez p2, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lcom/google/android/gms/location/places/PlaceFilter;->zzaFX:Ljava/util/List;

    iput-boolean p3, p0, Lcom/google/android/gms/location/places/PlaceFilter;->zzaGl:Z

    if-nez p5, :cond_1

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    :goto_1
    iput-object v0, p0, Lcom/google/android/gms/location/places/PlaceFilter;->zzaGa:Ljava/util/List;

    if-nez p4, :cond_2

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    :goto_2
    iput-object v0, p0, Lcom/google/android/gms/location/places/PlaceFilter;->zzaFZ:Ljava/util/List;

    iget-object v0, p0, Lcom/google/android/gms/location/places/PlaceFilter;->zzaFX:Ljava/util/List;

    invoke-static {v0}, Lcom/google/android/gms/location/places/PlaceFilter;->zzs(Ljava/util/List;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/location/places/PlaceFilter;->zzaFY:Ljava/util/Set;

    iget-object v0, p0, Lcom/google/android/gms/location/places/PlaceFilter;->zzaGa:Ljava/util/List;

    invoke-static {v0}, Lcom/google/android/gms/location/places/PlaceFilter;->zzs(Ljava/util/List;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/location/places/PlaceFilter;->zzaGc:Ljava/util/Set;

    iget-object v0, p0, Lcom/google/android/gms/location/places/PlaceFilter;->zzaFZ:Ljava/util/List;

    invoke-static {v0}, Lcom/google/android/gms/location/places/PlaceFilter;->zzs(Ljava/util/List;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/location/places/PlaceFilter;->zzaGb:Ljava/util/Set;

    return-void

    :cond_0
    invoke-static {p2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    goto :goto_0

    :cond_1
    invoke-static {p5}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    goto :goto_1

    :cond_2
    invoke-static {p4}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    goto :goto_2
.end method

.method public constructor <init>(Ljava/util/Collection;ZLjava/util/Collection;Ljava/util/Collection;)V
    .locals 6
    .param p2, "requireOpenNow"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/Integer;",
            ">;Z",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Collection",
            "<",
            "Lcom/google/android/gms/location/places/UserDataType;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "restrictToPlaceTypes":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/Integer;>;"
    .local p3, "restrictToPlaceIds":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    .local p4, "requestedUserDataTypes":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/google/android/gms/location/places/UserDataType;>;"
    const/4 v1, 0x0

    invoke-static {p1}, Lcom/google/android/gms/location/places/PlaceFilter;->zzf(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v2

    invoke-static {p3}, Lcom/google/android/gms/location/places/PlaceFilter;->zzf(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v4

    invoke-static {p4}, Lcom/google/android/gms/location/places/PlaceFilter;->zzf(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v5

    move-object v0, p0

    move v3, p2

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/location/places/PlaceFilter;-><init>(ILjava/util/List;ZLjava/util/List;Ljava/util/List;)V

    return-void
.end method

.method public constructor <init>(ZLjava/util/Collection;)V
    .locals 1
    .param p1, "requireOpenNow"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p2, "restrictToPlaceIds":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, p2, v0}, Lcom/google/android/gms/location/places/PlaceFilter;-><init>(Ljava/util/Collection;ZLjava/util/Collection;Ljava/util/Collection;)V

    return-void
.end method

.method public static zzwT()Lcom/google/android/gms/location/places/PlaceFilter;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    new-instance v0, Lcom/google/android/gms/location/places/PlaceFilter$zza;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/gms/location/places/PlaceFilter$zza;-><init>(Lcom/google/android/gms/location/places/PlaceFilter$1;)V

    invoke-virtual {v0}, Lcom/google/android/gms/location/places/PlaceFilter$zza;->zzwU()Lcom/google/android/gms/location/places/PlaceFilter;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    sget-object v0, Lcom/google/android/gms/location/places/PlaceFilter;->CREATOR:Lcom/google/android/gms/location/places/zzg;

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
    instance-of v2, p1, Lcom/google/android/gms/location/places/PlaceFilter;

    if-nez v2, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    check-cast p1, Lcom/google/android/gms/location/places/PlaceFilter;

    .end local p1    # "object":Ljava/lang/Object;
    iget-object v2, p0, Lcom/google/android/gms/location/places/PlaceFilter;->zzaFY:Ljava/util/Set;

    iget-object v3, p1, Lcom/google/android/gms/location/places/PlaceFilter;->zzaFY:Ljava/util/Set;

    invoke-interface {v2, v3}, Ljava/util/Set;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-boolean v2, p0, Lcom/google/android/gms/location/places/PlaceFilter;->zzaGl:Z

    iget-boolean v3, p1, Lcom/google/android/gms/location/places/PlaceFilter;->zzaGl:Z

    if-ne v2, v3, :cond_3

    iget-object v2, p0, Lcom/google/android/gms/location/places/PlaceFilter;->zzaGc:Ljava/util/Set;

    iget-object v3, p1, Lcom/google/android/gms/location/places/PlaceFilter;->zzaGc:Ljava/util/Set;

    invoke-interface {v2, v3}, Ljava/util/Set;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/google/android/gms/location/places/PlaceFilter;->zzaGb:Ljava/util/Set;

    iget-object v3, p1, Lcom/google/android/gms/location/places/PlaceFilter;->zzaGb:Ljava/util/Set;

    invoke-interface {v2, v3}, Ljava/util/Set;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method public getPlaceIds()Ljava/util/Set;
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

    iget-object v0, p0, Lcom/google/android/gms/location/places/PlaceFilter;->zzaGb:Ljava/util/Set;

    return-object v0
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

    iget-object v0, p0, Lcom/google/android/gms/location/places/PlaceFilter;->zzaFY:Ljava/util/Set;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/google/android/gms/location/places/PlaceFilter;->zzaFY:Ljava/util/Set;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-boolean v2, p0, Lcom/google/android/gms/location/places/PlaceFilter;->zzaGl:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/android/gms/location/places/PlaceFilter;->zzaGc:Ljava/util/Set;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    iget-object v2, p0, Lcom/google/android/gms/location/places/PlaceFilter;->zzaGb:Ljava/util/Set;

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzw;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public isRestrictedToPlacesOpenNow()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/location/places/PlaceFilter;->zzaGl:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    invoke-static {p0}, Lcom/google/android/gms/common/internal/zzw;->zzv(Ljava/lang/Object;)Lcom/google/android/gms/common/internal/zzw$zza;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/location/places/PlaceFilter;->zzaFY:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "types"

    iget-object v2, p0, Lcom/google/android/gms/location/places/PlaceFilter;->zzaFY:Ljava/util/Set;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/zzw$zza;->zzg(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/zzw$zza;

    :cond_0
    const-string v1, "requireOpenNow"

    iget-boolean v2, p0, Lcom/google/android/gms/location/places/PlaceFilter;->zzaGl:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/zzw$zza;->zzg(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/zzw$zza;

    iget-object v1, p0, Lcom/google/android/gms/location/places/PlaceFilter;->zzaGb:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "placeIds"

    iget-object v2, p0, Lcom/google/android/gms/location/places/PlaceFilter;->zzaGb:Ljava/util/Set;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/zzw$zza;->zzg(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/zzw$zza;

    :cond_1
    iget-object v1, p0, Lcom/google/android/gms/location/places/PlaceFilter;->zzaGc:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "requestedUserDataTypes"

    iget-object v2, p0, Lcom/google/android/gms/location/places/PlaceFilter;->zzaGc:Ljava/util/Set;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/zzw$zza;->zzg(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/zzw$zza;

    :cond_2
    invoke-virtual {v0}, Lcom/google/android/gms/common/internal/zzw$zza;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "parcel"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    sget-object v0, Lcom/google/android/gms/location/places/PlaceFilter;->CREATOR:Lcom/google/android/gms/location/places/zzg;

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/location/places/zzg;->zza(Lcom/google/android/gms/location/places/PlaceFilter;Landroid/os/Parcel;I)V

    return-void
.end method

.method public zzwS()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Lcom/google/android/gms/location/places/UserDataType;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/location/places/PlaceFilter;->zzaGc:Ljava/util/Set;

    return-object v0
.end method
