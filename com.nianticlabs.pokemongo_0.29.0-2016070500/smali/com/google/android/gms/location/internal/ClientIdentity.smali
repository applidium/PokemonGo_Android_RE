.class public Lcom/google/android/gms/location/internal/ClientIdentity;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Lcom/google/android/gms/location/internal/zzc;


# instance fields
.field private final mVersionCode:I

.field public final packageName:Ljava/lang/String;

.field public final uid:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/location/internal/zzc;

    invoke-direct {v0}, Lcom/google/android/gms/location/internal/zzc;-><init>()V

    sput-object v0, Lcom/google/android/gms/location/internal/ClientIdentity;->CREATOR:Lcom/google/android/gms/location/internal/zzc;

    return-void
.end method

.method constructor <init>(IILjava/lang/String;)V
    .locals 0
    .param p1, "versionCode"    # I
    .param p2, "uid"    # I
    .param p3, "packageName"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/location/internal/ClientIdentity;->mVersionCode:I

    iput p2, p0, Lcom/google/android/gms/location/internal/ClientIdentity;->uid:I

    iput-object p3, p0, Lcom/google/android/gms/location/internal/ClientIdentity;->packageName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p1, p0, :cond_1

    .end local p1    # "o":Ljava/lang/Object;
    :cond_0
    :goto_0
    return v0

    .restart local p1    # "o":Ljava/lang/Object;
    :cond_1
    if-eqz p1, :cond_2

    instance-of v2, p1, Lcom/google/android/gms/location/internal/ClientIdentity;

    if-nez v2, :cond_3

    :cond_2
    move v0, v1

    goto :goto_0

    :cond_3
    check-cast p1, Lcom/google/android/gms/location/internal/ClientIdentity;

    .end local p1    # "o":Ljava/lang/Object;
    iget v2, p1, Lcom/google/android/gms/location/internal/ClientIdentity;->uid:I

    iget v3, p0, Lcom/google/android/gms/location/internal/ClientIdentity;->uid:I

    if-ne v2, v3, :cond_4

    iget-object v2, p1, Lcom/google/android/gms/location/internal/ClientIdentity;->packageName:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/gms/location/internal/ClientIdentity;->packageName:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/google/android/gms/common/internal/zzw;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_4
    move v0, v1

    goto :goto_0
.end method

.method getVersionCode()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/location/internal/ClientIdentity;->mVersionCode:I

    return v0
.end method

.method public hashCode()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/location/internal/ClientIdentity;->uid:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    const-string v0, "%d:%s"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget v3, p0, Lcom/google/android/gms/location/internal/ClientIdentity;->uid:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/google/android/gms/location/internal/ClientIdentity;->packageName:Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0
    .param p1, "parcel"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    invoke-static {p0, p1, p2}, Lcom/google/android/gms/location/internal/zzc;->zza(Lcom/google/android/gms/location/internal/ClientIdentity;Landroid/os/Parcel;I)V

    return-void
.end method
