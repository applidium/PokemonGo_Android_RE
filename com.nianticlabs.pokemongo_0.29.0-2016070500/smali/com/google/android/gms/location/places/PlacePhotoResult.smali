.class public Lcom/google/android/gms/location/places/PlacePhotoResult;
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
            "Lcom/google/android/gms/location/places/PlacePhotoResult;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mBitmap:Landroid/graphics/Bitmap;

.field final mVersionCode:I

.field private final zzSC:Lcom/google/android/gms/common/api/Status;

.field final zzaGs:Lcom/google/android/gms/common/data/BitmapTeleporter;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/location/places/zzi;

    invoke-direct {v0}, Lcom/google/android/gms/location/places/zzi;-><init>()V

    sput-object v0, Lcom/google/android/gms/location/places/PlacePhotoResult;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(ILcom/google/android/gms/common/api/Status;Lcom/google/android/gms/common/data/BitmapTeleporter;)V
    .locals 1
    .param p1, "versionCode"    # I
    .param p2, "status"    # Lcom/google/android/gms/common/api/Status;
    .param p3, "teleporter"    # Lcom/google/android/gms/common/data/BitmapTeleporter;

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/location/places/PlacePhotoResult;->mVersionCode:I

    iput-object p2, p0, Lcom/google/android/gms/location/places/PlacePhotoResult;->zzSC:Lcom/google/android/gms/common/api/Status;

    iput-object p3, p0, Lcom/google/android/gms/location/places/PlacePhotoResult;->zzaGs:Lcom/google/android/gms/common/data/BitmapTeleporter;

    iget-object v0, p0, Lcom/google/android/gms/location/places/PlacePhotoResult;->zzaGs:Lcom/google/android/gms/common/data/BitmapTeleporter;

    if-eqz v0, :cond_0

    invoke-virtual {p3}, Lcom/google/android/gms/common/data/BitmapTeleporter;->zzos()Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/location/places/PlacePhotoResult;->mBitmap:Landroid/graphics/Bitmap;

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/location/places/PlacePhotoResult;->mBitmap:Landroid/graphics/Bitmap;

    goto :goto_0
.end method

.method public constructor <init>(Lcom/google/android/gms/common/api/Status;Lcom/google/android/gms/common/data/BitmapTeleporter;)V
    .locals 1
    .param p1, "status"    # Lcom/google/android/gms/common/api/Status;
    .param p2, "teleporter"    # Lcom/google/android/gms/common/data/BitmapTeleporter;

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/location/places/PlacePhotoResult;->mVersionCode:I

    iput-object p1, p0, Lcom/google/android/gms/location/places/PlacePhotoResult;->zzSC:Lcom/google/android/gms/common/api/Status;

    iput-object p2, p0, Lcom/google/android/gms/location/places/PlacePhotoResult;->zzaGs:Lcom/google/android/gms/common/data/BitmapTeleporter;

    iget-object v0, p0, Lcom/google/android/gms/location/places/PlacePhotoResult;->zzaGs:Lcom/google/android/gms/common/data/BitmapTeleporter;

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Lcom/google/android/gms/common/data/BitmapTeleporter;->zzos()Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/location/places/PlacePhotoResult;->mBitmap:Landroid/graphics/Bitmap;

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/location/places/PlacePhotoResult;->mBitmap:Landroid/graphics/Bitmap;

    goto :goto_0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getBitmap()Landroid/graphics/Bitmap;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/location/places/PlacePhotoResult;->mBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getStatus()Lcom/google/android/gms/common/api/Status;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/location/places/PlacePhotoResult;->zzSC:Lcom/google/android/gms/common/api/Status;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    invoke-static {p0}, Lcom/google/android/gms/common/internal/zzw;->zzv(Ljava/lang/Object;)Lcom/google/android/gms/common/internal/zzw$zza;

    move-result-object v0

    const-string v1, "status"

    iget-object v2, p0, Lcom/google/android/gms/location/places/PlacePhotoResult;->zzSC:Lcom/google/android/gms/common/api/Status;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/zzw$zza;->zzg(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/zzw$zza;

    move-result-object v0

    const-string v1, "bitmap"

    iget-object v2, p0, Lcom/google/android/gms/location/places/PlacePhotoResult;->mBitmap:Landroid/graphics/Bitmap;

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
    invoke-static {p0, p1, p2}, Lcom/google/android/gms/location/places/zzi;->zza(Lcom/google/android/gms/location/places/PlacePhotoResult;Landroid/os/Parcel;I)V

    return-void
.end method
