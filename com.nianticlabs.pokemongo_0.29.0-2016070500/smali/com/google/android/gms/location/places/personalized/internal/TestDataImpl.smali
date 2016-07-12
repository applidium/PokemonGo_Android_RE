.class public Lcom/google/android/gms/location/places/personalized/internal/TestDataImpl;
.super Lcom/google/android/gms/location/places/personalized/zzf;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Lcom/google/android/gms/location/places/personalized/internal/zza;


# instance fields
.field final mVersionCode:I

.field private final zzaIe:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/location/places/personalized/internal/zza;

    invoke-direct {v0}, Lcom/google/android/gms/location/places/personalized/internal/zza;-><init>()V

    sput-object v0, Lcom/google/android/gms/location/places/personalized/internal/TestDataImpl;->CREATOR:Lcom/google/android/gms/location/places/personalized/internal/zza;

    return-void
.end method

.method constructor <init>(ILjava/lang/String;)V
    .locals 0
    .param p1, "versionCode"    # I
    .param p2, "testName"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0}, Lcom/google/android/gms/location/places/personalized/zzf;-><init>()V

    iput p1, p0, Lcom/google/android/gms/location/places/personalized/internal/TestDataImpl;->mVersionCode:I

    iput-object p2, p0, Lcom/google/android/gms/location/places/personalized/internal/TestDataImpl;->zzaIe:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    sget-object v0, Lcom/google/android/gms/location/places/personalized/internal/TestDataImpl;->CREATOR:Lcom/google/android/gms/location/places/personalized/internal/zza;

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
    instance-of v0, p1, Lcom/google/android/gms/location/places/personalized/internal/TestDataImpl;

    if-nez v0, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    check-cast p1, Lcom/google/android/gms/location/places/personalized/internal/TestDataImpl;

    .end local p1    # "object":Ljava/lang/Object;
    iget-object v0, p0, Lcom/google/android/gms/location/places/personalized/internal/TestDataImpl;->zzaIe:Ljava/lang/String;

    iget-object v1, p1, Lcom/google/android/gms/location/places/personalized/internal/TestDataImpl;->zzaIe:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/location/places/personalized/internal/TestDataImpl;->zzaIe:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    invoke-static {p0}, Lcom/google/android/gms/common/internal/zzw;->zzv(Ljava/lang/Object;)Lcom/google/android/gms/common/internal/zzw$zza;

    move-result-object v0

    const-string v1, "testName"

    iget-object v2, p0, Lcom/google/android/gms/location/places/personalized/internal/TestDataImpl;->zzaIe:Ljava/lang/String;

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
    sget-object v0, Lcom/google/android/gms/location/places/personalized/internal/TestDataImpl;->CREATOR:Lcom/google/android/gms/location/places/personalized/internal/zza;

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/location/places/personalized/internal/zza;->zza(Lcom/google/android/gms/location/places/personalized/internal/TestDataImpl;Landroid/os/Parcel;I)V

    return-void
.end method

.method public zzxv()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/location/places/personalized/internal/TestDataImpl;->zzaIe:Ljava/lang/String;

    return-object v0
.end method
