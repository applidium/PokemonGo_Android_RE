.class public Lcom/google/android/gms/location/places/internal/PlacesParams;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Lcom/google/android/gms/location/places/internal/zzt;

.field public static final zzaHQ:Lcom/google/android/gms/location/places/internal/PlacesParams;


# instance fields
.field public final versionCode:I

.field public final zzaGG:Ljava/lang/String;

.field public final zzaHR:Ljava/lang/String;

.field public final zzaHS:Ljava/lang/String;

.field public final zzaHT:Ljava/lang/String;

.field public final zzaHU:Ljava/lang/String;

.field public final zzaHV:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/google/android/gms/location/places/internal/PlacesParams;

    const-string v1, "com.google.android.gms"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gms/location/places/internal/PlacesParams;-><init>(Ljava/lang/String;Ljava/util/Locale;Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/gms/location/places/internal/PlacesParams;->zzaHQ:Lcom/google/android/gms/location/places/internal/PlacesParams;

    new-instance v0, Lcom/google/android/gms/location/places/internal/zzt;

    invoke-direct {v0}, Lcom/google/android/gms/location/places/internal/zzt;-><init>()V

    sput-object v0, Lcom/google/android/gms/location/places/internal/PlacesParams;->CREATOR:Lcom/google/android/gms/location/places/internal/zzt;

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0
    .param p1, "versionCode"    # I
    .param p2, "clientPackageName"    # Ljava/lang/String;
    .param p3, "localeString"    # Ljava/lang/String;
    .param p4, "accountName"    # Ljava/lang/String;
    .param p5, "gCoreClientName"    # Ljava/lang/String;
    .param p6, "chargedPackageName"    # Ljava/lang/String;
    .param p7, "gCoreClientJarVersion"    # I

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/location/places/internal/PlacesParams;->versionCode:I

    iput-object p2, p0, Lcom/google/android/gms/location/places/internal/PlacesParams;->zzaHR:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/location/places/internal/PlacesParams;->zzaHS:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/gms/location/places/internal/PlacesParams;->zzaHT:Ljava/lang/String;

    iput-object p5, p0, Lcom/google/android/gms/location/places/internal/PlacesParams;->zzaGG:Ljava/lang/String;

    iput-object p6, p0, Lcom/google/android/gms/location/places/internal/PlacesParams;->zzaHU:Ljava/lang/String;

    iput p7, p0, Lcom/google/android/gms/location/places/internal/PlacesParams;->zzaHV:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/util/Locale;Ljava/lang/String;)V
    .locals 8
    .param p1, "clientPackageName"    # Ljava/lang/String;
    .param p2, "locale"    # Ljava/util/Locale;
    .param p3, "accountName"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    const/4 v1, 0x1

    invoke-virtual {p2}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v3

    sget v7, Lcom/google/android/gms/common/GoogleApiAvailability;->GOOGLE_PLAY_SERVICES_VERSION_CODE:I

    move-object v0, p0

    move-object v2, p1

    move-object v4, p3

    move-object v6, v5

    invoke-direct/range {v0 .. v7}, Lcom/google/android/gms/location/places/internal/PlacesParams;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/util/Locale;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8
    .param p1, "clientPackageName"    # Ljava/lang/String;
    .param p2, "locale"    # Ljava/util/Locale;
    .param p3, "accountName"    # Ljava/lang/String;
    .param p4, "gCoreClientName"    # Ljava/lang/String;
    .param p5, "chargedPackageName"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x1

    invoke-virtual {p2}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v3

    sget v7, Lcom/google/android/gms/common/GoogleApiAvailability;->GOOGLE_PLAY_SERVICES_VERSION_CODE:I

    move-object v0, p0

    move-object v2, p1

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v7}, Lcom/google/android/gms/location/places/internal/PlacesParams;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    sget-object v0, Lcom/google/android/gms/location/places/internal/PlacesParams;->CREATOR:Lcom/google/android/gms/location/places/internal/zzt;

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
    if-eqz p1, :cond_2

    instance-of v2, p1, Lcom/google/android/gms/location/places/internal/PlacesParams;

    if-nez v2, :cond_3

    :cond_2
    move v0, v1

    goto :goto_0

    :cond_3
    check-cast p1, Lcom/google/android/gms/location/places/internal/PlacesParams;

    .end local p1    # "object":Ljava/lang/Object;
    iget-object v2, p0, Lcom/google/android/gms/location/places/internal/PlacesParams;->zzaHS:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/gms/location/places/internal/PlacesParams;->zzaHS:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/google/android/gms/location/places/internal/PlacesParams;->zzaHR:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/gms/location/places/internal/PlacesParams;->zzaHR:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/google/android/gms/location/places/internal/PlacesParams;->zzaHT:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/gms/location/places/internal/PlacesParams;->zzaHT:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/google/android/gms/common/internal/zzw;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/google/android/gms/location/places/internal/PlacesParams;->zzaGG:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/gms/location/places/internal/PlacesParams;->zzaGG:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/google/android/gms/common/internal/zzw;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/google/android/gms/location/places/internal/PlacesParams;->zzaHU:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/gms/location/places/internal/PlacesParams;->zzaHU:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/google/android/gms/common/internal/zzw;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_4
    move v0, v1

    goto :goto_0
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/google/android/gms/location/places/internal/PlacesParams;->zzaHR:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/android/gms/location/places/internal/PlacesParams;->zzaHS:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/android/gms/location/places/internal/PlacesParams;->zzaHT:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    iget-object v2, p0, Lcom/google/android/gms/location/places/internal/PlacesParams;->zzaGG:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    iget-object v2, p0, Lcom/google/android/gms/location/places/internal/PlacesParams;->zzaHU:Ljava/lang/String;

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzw;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    invoke-static {p0}, Lcom/google/android/gms/common/internal/zzw;->zzv(Ljava/lang/Object;)Lcom/google/android/gms/common/internal/zzw$zza;

    move-result-object v0

    const-string v1, "clientPackageName"

    iget-object v2, p0, Lcom/google/android/gms/location/places/internal/PlacesParams;->zzaHR:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/zzw$zza;->zzg(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/zzw$zza;

    move-result-object v0

    const-string v1, "locale"

    iget-object v2, p0, Lcom/google/android/gms/location/places/internal/PlacesParams;->zzaHS:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/zzw$zza;->zzg(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/zzw$zza;

    move-result-object v0

    const-string v1, "accountName"

    iget-object v2, p0, Lcom/google/android/gms/location/places/internal/PlacesParams;->zzaHT:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/zzw$zza;->zzg(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/zzw$zza;

    move-result-object v0

    const-string v1, "gCoreClientName"

    iget-object v2, p0, Lcom/google/android/gms/location/places/internal/PlacesParams;->zzaGG:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/zzw$zza;->zzg(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/zzw$zza;

    move-result-object v0

    const-string v1, "chargedPackageName"

    iget-object v2, p0, Lcom/google/android/gms/location/places/internal/PlacesParams;->zzaHU:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/zzw$zza;->zzg(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/zzw$zza;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/common/internal/zzw$zza;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    sget-object v0, Lcom/google/android/gms/location/places/internal/PlacesParams;->CREATOR:Lcom/google/android/gms/location/places/internal/zzt;

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/location/places/internal/zzt;->zza(Lcom/google/android/gms/location/places/internal/PlacesParams;Landroid/os/Parcel;I)V

    return-void
.end method
