.class public final Lcom/google/android/gms/location/LocationSettingsRequest;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/location/LocationSettingsRequest$1;,
        Lcom/google/android/gms/location/LocationSettingsRequest$Builder;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/gms/location/LocationSettingsRequest;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mVersionCode:I

.field private final zzaEL:Z

.field private final zzaEM:Z

.field private final zzaEN:Z

.field private final zzasK:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/location/LocationRequest;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/location/zzf;

    invoke-direct {v0}, Lcom/google/android/gms/location/zzf;-><init>()V

    sput-object v0, Lcom/google/android/gms/location/LocationSettingsRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(ILjava/util/List;ZZZ)V
    .locals 0
    .param p1, "version"    # I
    .param p3, "alwaysShow"    # Z
    .param p4, "needBle"    # Z
    .param p5, "optInUserLocationReporting"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/location/LocationRequest;",
            ">;ZZZ)V"
        }
    .end annotation

    .prologue
    .local p2, "locationRequests":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/gms/location/LocationRequest;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/location/LocationSettingsRequest;->mVersionCode:I

    iput-object p2, p0, Lcom/google/android/gms/location/LocationSettingsRequest;->zzasK:Ljava/util/List;

    iput-boolean p3, p0, Lcom/google/android/gms/location/LocationSettingsRequest;->zzaEL:Z

    iput-boolean p4, p0, Lcom/google/android/gms/location/LocationSettingsRequest;->zzaEM:Z

    iput-boolean p5, p0, Lcom/google/android/gms/location/LocationSettingsRequest;->zzaEN:Z

    return-void
.end method

.method private constructor <init>(Ljava/util/List;ZZZ)V
    .locals 6
    .param p2, "alwaysShow"    # Z
    .param p3, "needBle"    # Z
    .param p4, "optInUserLocationReporting"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/location/LocationRequest;",
            ">;ZZZ)V"
        }
    .end annotation

    .prologue
    .local p1, "locationRequests":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/gms/location/LocationRequest;>;"
    const/4 v1, 0x2

    move-object v0, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/location/LocationSettingsRequest;-><init>(ILjava/util/List;ZZZ)V

    return-void
.end method

.method synthetic constructor <init>(Ljava/util/List;ZZZLcom/google/android/gms/location/LocationSettingsRequest$1;)V
    .locals 0
    .param p1, "x0"    # Ljava/util/List;
    .param p2, "x1"    # Z
    .param p3, "x2"    # Z
    .param p4, "x3"    # Z
    .param p5, "x4"    # Lcom/google/android/gms/location/LocationSettingsRequest$1;

    .prologue
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/android/gms/location/LocationSettingsRequest;-><init>(Ljava/util/List;ZZZ)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getVersionCode()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/location/LocationSettingsRequest;->mVersionCode:I

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    invoke-static {p0, p1, p2}, Lcom/google/android/gms/location/zzf;->zza(Lcom/google/android/gms/location/LocationSettingsRequest;Landroid/os/Parcel;I)V

    return-void
.end method

.method public zztd()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/location/LocationRequest;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/location/LocationSettingsRequest;->zzasK:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public zzwx()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/location/LocationSettingsRequest;->zzaEL:Z

    return v0
.end method

.method public zzwy()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/location/LocationSettingsRequest;->zzaEM:Z

    return v0
.end method

.method public zzwz()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/location/LocationSettingsRequest;->zzaEN:Z

    return v0
.end method
