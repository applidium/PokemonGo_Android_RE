.class public final Lcom/google/android/gms/location/LocationSettingsResult;
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
            "Lcom/google/android/gms/location/LocationSettingsResult;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mVersionCode:I

.field private final zzSC:Lcom/google/android/gms/common/api/Status;

.field private final zzaEP:Lcom/google/android/gms/location/LocationSettingsStates;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/location/zzg;

    invoke-direct {v0}, Lcom/google/android/gms/location/zzg;-><init>()V

    sput-object v0, Lcom/google/android/gms/location/LocationSettingsResult;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(ILcom/google/android/gms/common/api/Status;Lcom/google/android/gms/location/LocationSettingsStates;)V
    .locals 0
    .param p1, "version"    # I
    .param p2, "status"    # Lcom/google/android/gms/common/api/Status;
    .param p3, "states"    # Lcom/google/android/gms/location/LocationSettingsStates;

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/location/LocationSettingsResult;->mVersionCode:I

    iput-object p2, p0, Lcom/google/android/gms/location/LocationSettingsResult;->zzSC:Lcom/google/android/gms/common/api/Status;

    iput-object p3, p0, Lcom/google/android/gms/location/LocationSettingsResult;->zzaEP:Lcom/google/android/gms/location/LocationSettingsStates;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/common/api/Status;)V
    .locals 2
    .param p1, "status"    # Lcom/google/android/gms/common/api/Status;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, v1}, Lcom/google/android/gms/location/LocationSettingsResult;-><init>(ILcom/google/android/gms/common/api/Status;Lcom/google/android/gms/location/LocationSettingsStates;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getLocationSettingsStates()Lcom/google/android/gms/location/LocationSettingsStates;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/location/LocationSettingsResult;->zzaEP:Lcom/google/android/gms/location/LocationSettingsStates;

    return-object v0
.end method

.method public getStatus()Lcom/google/android/gms/common/api/Status;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/location/LocationSettingsResult;->zzSC:Lcom/google/android/gms/common/api/Status;

    return-object v0
.end method

.method public getVersionCode()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/location/LocationSettingsResult;->mVersionCode:I

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    invoke-static {p0, p1, p2}, Lcom/google/android/gms/location/zzg;->zza(Lcom/google/android/gms/location/LocationSettingsResult;Landroid/os/Parcel;I)V

    return-void
.end method
