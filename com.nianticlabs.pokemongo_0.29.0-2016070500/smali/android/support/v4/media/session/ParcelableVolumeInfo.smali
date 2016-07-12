.class public Landroid/support/v4/media/session/ParcelableVolumeInfo;
.super Ljava/lang/Object;
.source "ParcelableVolumeInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/support/v4/media/session/ParcelableVolumeInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public audioStream:I

.field public controlType:I

.field public currentVolume:I

.field public maxVolume:I

.field public volumeType:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 65
    new-instance v0, Landroid/support/v4/media/session/ParcelableVolumeInfo$1;

    invoke-direct {v0}, Landroid/support/v4/media/session/ParcelableVolumeInfo$1;-><init>()V

    sput-object v0, Landroid/support/v4/media/session/ParcelableVolumeInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(IIIII)V
    .locals 0
    .param p1, "volumeType"    # I
    .param p2, "audioStream"    # I
    .param p3, "controlType"    # I
    .param p4, "maxVolume"    # I
    .param p5, "currentVolume"    # I

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput p1, p0, Landroid/support/v4/media/session/ParcelableVolumeInfo;->volumeType:I

    .line 36
    iput p2, p0, Landroid/support/v4/media/session/ParcelableVolumeInfo;->audioStream:I

    .line 37
    iput p3, p0, Landroid/support/v4/media/session/ParcelableVolumeInfo;->controlType:I

    .line 38
    iput p4, p0, Landroid/support/v4/media/session/ParcelableVolumeInfo;->maxVolume:I

    .line 39
    iput p5, p0, Landroid/support/v4/media/session/ParcelableVolumeInfo;->currentVolume:I

    .line 40
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "from"    # Landroid/os/Parcel;

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/support/v4/media/session/ParcelableVolumeInfo;->volumeType:I

    .line 44
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/support/v4/media/session/ParcelableVolumeInfo;->controlType:I

    .line 45
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/support/v4/media/session/ParcelableVolumeInfo;->maxVolume:I

    .line 46
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/support/v4/media/session/ParcelableVolumeInfo;->currentVolume:I

    .line 47
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/support/v4/media/session/ParcelableVolumeInfo;->audioStream:I

    .line 48
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 52
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 57
    iget v0, p0, Landroid/support/v4/media/session/ParcelableVolumeInfo;->volumeType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 58
    iget v0, p0, Landroid/support/v4/media/session/ParcelableVolumeInfo;->controlType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 59
    iget v0, p0, Landroid/support/v4/media/session/ParcelableVolumeInfo;->maxVolume:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 60
    iget v0, p0, Landroid/support/v4/media/session/ParcelableVolumeInfo;->currentVolume:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 61
    iget v0, p0, Landroid/support/v4/media/session/ParcelableVolumeInfo;->audioStream:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 62
    return-void
.end method
