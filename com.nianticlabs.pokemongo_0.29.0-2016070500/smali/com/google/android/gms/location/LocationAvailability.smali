.class public final Lcom/google/android/gms/location/LocationAvailability;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Lcom/google/android/gms/location/LocationAvailabilityCreator;


# instance fields
.field private final mVersionCode:I

.field zzaEA:I

.field zzaEB:I

.field zzaEC:J

.field zzaED:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/location/LocationAvailabilityCreator;

    invoke-direct {v0}, Lcom/google/android/gms/location/LocationAvailabilityCreator;-><init>()V

    sput-object v0, Lcom/google/android/gms/location/LocationAvailability;->CREATOR:Lcom/google/android/gms/location/LocationAvailabilityCreator;

    return-void
.end method

.method constructor <init>(IIIIJ)V
    .locals 1
    .param p1, "versionCode"    # I
    .param p2, "locationStatus"    # I
    .param p3, "cellStatus"    # I
    .param p4, "wifiStatus"    # I
    .param p5, "elapsedRealtimeNs"    # J

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/location/LocationAvailability;->mVersionCode:I

    iput p2, p0, Lcom/google/android/gms/location/LocationAvailability;->zzaED:I

    iput p3, p0, Lcom/google/android/gms/location/LocationAvailability;->zzaEA:I

    iput p4, p0, Lcom/google/android/gms/location/LocationAvailability;->zzaEB:I

    iput-wide p5, p0, Lcom/google/android/gms/location/LocationAvailability;->zzaEC:J

    return-void
.end method

.method public static extractLocationAvailability(Landroid/content/Intent;)Lcom/google/android/gms/location/LocationAvailability;
    .locals 2
    .param p0, "intent"    # Landroid/content/Intent;

    .prologue
    invoke-static {p0}, Lcom/google/android/gms/location/LocationAvailability;->hasLocationAvailability(Landroid/content/Intent;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "com.google.android.gms.location.EXTRA_LOCATION_AVAILABILITY"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/location/LocationAvailability;

    goto :goto_0
.end method

.method public static hasLocationAvailability(Landroid/content/Intent;)Z
    .locals 1
    .param p0, "intent"    # Landroid/content/Intent;

    .prologue
    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const-string v0, "com.google.android.gms.location.EXTRA_LOCATION_AVAILABILITY"

    invoke-virtual {p0, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6
    .param p1, "other"    # Ljava/lang/Object;

    .prologue
    const/4 v0, 0x0

    instance-of v1, p1, Lcom/google/android/gms/location/LocationAvailability;

    if-nez v1, :cond_1

    .end local p1    # "other":Ljava/lang/Object;
    :cond_0
    :goto_0
    return v0

    .restart local p1    # "other":Ljava/lang/Object;
    :cond_1
    check-cast p1, Lcom/google/android/gms/location/LocationAvailability;

    .end local p1    # "other":Ljava/lang/Object;
    iget v1, p0, Lcom/google/android/gms/location/LocationAvailability;->zzaED:I

    iget v2, p1, Lcom/google/android/gms/location/LocationAvailability;->zzaED:I

    if-ne v1, v2, :cond_0

    iget v1, p0, Lcom/google/android/gms/location/LocationAvailability;->zzaEA:I

    iget v2, p1, Lcom/google/android/gms/location/LocationAvailability;->zzaEA:I

    if-ne v1, v2, :cond_0

    iget v1, p0, Lcom/google/android/gms/location/LocationAvailability;->zzaEB:I

    iget v2, p1, Lcom/google/android/gms/location/LocationAvailability;->zzaEB:I

    if-ne v1, v2, :cond_0

    iget-wide v2, p0, Lcom/google/android/gms/location/LocationAvailability;->zzaEC:J

    iget-wide v4, p1, Lcom/google/android/gms/location/LocationAvailability;->zzaEC:J

    cmp-long v1, v2, v4

    if-nez v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method getVersionCode()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/location/LocationAvailability;->mVersionCode:I

    return v0
.end method

.method public hashCode()I
    .locals 4

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget v2, p0, Lcom/google/android/gms/location/LocationAvailability;->zzaED:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget v2, p0, Lcom/google/android/gms/location/LocationAvailability;->zzaEA:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget v2, p0, Lcom/google/android/gms/location/LocationAvailability;->zzaEB:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x3

    iget-wide v2, p0, Lcom/google/android/gms/location/LocationAvailability;->zzaEC:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzw;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public isLocationAvailable()Z
    .locals 2

    iget v0, p0, Lcom/google/android/gms/location/LocationAvailability;->zzaED:I

    const/16 v1, 0x3e8

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "LocationAvailability[isLocationAvailable: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/gms/location/LocationAvailability;->isLocationAvailable()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0
    .param p1, "parcel"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    invoke-static {p0, p1, p2}, Lcom/google/android/gms/location/LocationAvailabilityCreator;->zza(Lcom/google/android/gms/location/LocationAvailability;Landroid/os/Parcel;I)V

    return-void
.end method
