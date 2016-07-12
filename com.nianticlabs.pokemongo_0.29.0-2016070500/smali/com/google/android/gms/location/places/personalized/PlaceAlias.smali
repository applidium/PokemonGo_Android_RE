.class public Lcom/google/android/gms/location/places/personalized/PlaceAlias;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Lcom/google/android/gms/location/places/personalized/zzc;

.field public static final zzaHY:Lcom/google/android/gms/location/places/personalized/PlaceAlias;

.field public static final zzaHZ:Lcom/google/android/gms/location/places/personalized/PlaceAlias;


# instance fields
.field final mVersionCode:I

.field private final zzaIa:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v2, 0x0

    new-instance v0, Lcom/google/android/gms/location/places/personalized/zzc;

    invoke-direct {v0}, Lcom/google/android/gms/location/places/personalized/zzc;-><init>()V

    sput-object v0, Lcom/google/android/gms/location/places/personalized/PlaceAlias;->CREATOR:Lcom/google/android/gms/location/places/personalized/zzc;

    new-instance v0, Lcom/google/android/gms/location/places/personalized/PlaceAlias;

    const-string v1, "Home"

    invoke-direct {v0, v2, v1}, Lcom/google/android/gms/location/places/personalized/PlaceAlias;-><init>(ILjava/lang/String;)V

    sput-object v0, Lcom/google/android/gms/location/places/personalized/PlaceAlias;->zzaHY:Lcom/google/android/gms/location/places/personalized/PlaceAlias;

    new-instance v0, Lcom/google/android/gms/location/places/personalized/PlaceAlias;

    const-string v1, "Work"

    invoke-direct {v0, v2, v1}, Lcom/google/android/gms/location/places/personalized/PlaceAlias;-><init>(ILjava/lang/String;)V

    sput-object v0, Lcom/google/android/gms/location/places/personalized/PlaceAlias;->zzaHZ:Lcom/google/android/gms/location/places/personalized/PlaceAlias;

    return-void
.end method

.method constructor <init>(ILjava/lang/String;)V
    .locals 0
    .param p1, "versionCode"    # I
    .param p2, "alias"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/location/places/personalized/PlaceAlias;->mVersionCode:I

    iput-object p2, p0, Lcom/google/android/gms/location/places/personalized/PlaceAlias;->zzaIa:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    sget-object v0, Lcom/google/android/gms/location/places/personalized/PlaceAlias;->CREATOR:Lcom/google/android/gms/location/places/personalized/zzc;

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "object"    # Ljava/lang/Object;

    .prologue
    if-ne p0, p1, :cond_0

    const/4 v0, 0x1

    .end local p1    # "object":Ljava/lang/Object;
    :goto_0
    return v0

    .restart local p1    # "object":Ljava/lang/Object;
    :cond_0
    instance-of v0, p1, Lcom/google/android/gms/location/places/personalized/PlaceAlias;

    if-nez v0, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    check-cast p1, Lcom/google/android/gms/location/places/personalized/PlaceAlias;

    .end local p1    # "object":Ljava/lang/Object;
    iget-object v0, p0, Lcom/google/android/gms/location/places/personalized/PlaceAlias;->zzaIa:Ljava/lang/String;

    iget-object v1, p1, Lcom/google/android/gms/location/places/personalized/PlaceAlias;->zzaIa:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/zzw;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/google/android/gms/location/places/personalized/PlaceAlias;->zzaIa:Ljava/lang/String;

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzw;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    invoke-static {p0}, Lcom/google/android/gms/common/internal/zzw;->zzv(Ljava/lang/Object;)Lcom/google/android/gms/common/internal/zzw$zza;

    move-result-object v0

    const-string v1, "alias"

    iget-object v2, p0, Lcom/google/android/gms/location/places/personalized/PlaceAlias;->zzaIa:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/zzw$zza;->zzg(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/zzw$zza;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/common/internal/zzw$zza;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "parcel"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    sget-object v0, Lcom/google/android/gms/location/places/personalized/PlaceAlias;->CREATOR:Lcom/google/android/gms/location/places/personalized/zzc;

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/location/places/personalized/zzc;->zza(Lcom/google/android/gms/location/places/personalized/PlaceAlias;Landroid/os/Parcel;I)V

    return-void
.end method

.method public zzxq()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/location/places/personalized/PlaceAlias;->zzaIa:Ljava/lang/String;

    return-object v0
.end method
