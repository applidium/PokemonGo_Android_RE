.class public Lcom/google/android/gms/location/places/PlacePhotoMetadataResult;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/api/Result;
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/gms/location/places/PlacePhotoMetadataResult;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field final mVersionCode:I

.field private final zzSC:Lcom/google/android/gms/common/api/Status;

.field final zzaGq:Lcom/google/android/gms/common/data/DataHolder;

.field private final zzaGr:Lcom/google/android/gms/location/places/PlacePhotoMetadataBuffer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/location/places/zzh;

    invoke-direct {v0}, Lcom/google/android/gms/location/places/zzh;-><init>()V

    sput-object v0, Lcom/google/android/gms/location/places/PlacePhotoMetadataResult;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(ILcom/google/android/gms/common/api/Status;Lcom/google/android/gms/common/data/DataHolder;)V
    .locals 2
    .param p1, "versionCode"    # I
    .param p2, "status"    # Lcom/google/android/gms/common/api/Status;
    .param p3, "dataHolder"    # Lcom/google/android/gms/common/data/DataHolder;

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/location/places/PlacePhotoMetadataResult;->mVersionCode:I

    iput-object p2, p0, Lcom/google/android/gms/location/places/PlacePhotoMetadataResult;->zzSC:Lcom/google/android/gms/common/api/Status;

    iput-object p3, p0, Lcom/google/android/gms/location/places/PlacePhotoMetadataResult;->zzaGq:Lcom/google/android/gms/common/data/DataHolder;

    if-nez p3, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/location/places/PlacePhotoMetadataResult;->zzaGr:Lcom/google/android/gms/location/places/PlacePhotoMetadataBuffer;

    :goto_0
    return-void

    :cond_0
    new-instance v0, Lcom/google/android/gms/location/places/PlacePhotoMetadataBuffer;

    iget-object v1, p0, Lcom/google/android/gms/location/places/PlacePhotoMetadataResult;->zzaGq:Lcom/google/android/gms/common/data/DataHolder;

    invoke-direct {v0, v1}, Lcom/google/android/gms/location/places/PlacePhotoMetadataBuffer;-><init>(Lcom/google/android/gms/common/data/DataHolder;)V

    iput-object v0, p0, Lcom/google/android/gms/location/places/PlacePhotoMetadataResult;->zzaGr:Lcom/google/android/gms/location/places/PlacePhotoMetadataBuffer;

    goto :goto_0
.end method

.method public constructor <init>(Lcom/google/android/gms/common/api/Status;Lcom/google/android/gms/common/data/DataHolder;)V
    .locals 1
    .param p1, "status"    # Lcom/google/android/gms/common/api/Status;
    .param p2, "dataHolder"    # Lcom/google/android/gms/common/data/DataHolder;

    .prologue
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, p2}, Lcom/google/android/gms/location/places/PlacePhotoMetadataResult;-><init>(ILcom/google/android/gms/common/api/Status;Lcom/google/android/gms/common/data/DataHolder;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getPhotoMetadata()Lcom/google/android/gms/location/places/PlacePhotoMetadataBuffer;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/location/places/PlacePhotoMetadataResult;->zzaGr:Lcom/google/android/gms/location/places/PlacePhotoMetadataBuffer;

    return-object v0
.end method

.method public getStatus()Lcom/google/android/gms/common/api/Status;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/location/places/PlacePhotoMetadataResult;->zzSC:Lcom/google/android/gms/common/api/Status;

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0
    .param p1, "parcel"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    invoke-static {p0, p1, p2}, Lcom/google/android/gms/location/places/zzh;->zza(Lcom/google/android/gms/location/places/PlacePhotoMetadataResult;Landroid/os/Parcel;I)V

    return-void
.end method
