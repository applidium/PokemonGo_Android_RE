.class public final Lcom/google/android/gms/location/places/personalized/HereContent$Action;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/location/places/personalized/HereContent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Action"
.end annotation


# static fields
.field public static final CREATOR:Lcom/google/android/gms/location/places/personalized/zza;


# instance fields
.field final mVersionCode:I

.field private final zzQg:Ljava/lang/String;

.field private final zzajf:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/location/places/personalized/zza;

    invoke-direct {v0}, Lcom/google/android/gms/location/places/personalized/zza;-><init>()V

    sput-object v0, Lcom/google/android/gms/location/places/personalized/HereContent$Action;->CREATOR:Lcom/google/android/gms/location/places/personalized/zza;

    return-void
.end method

.method constructor <init>(ILjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "versionCode"    # I
    .param p2, "title"    # Ljava/lang/String;
    .param p3, "uri"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/location/places/personalized/HereContent$Action;->mVersionCode:I

    iput-object p2, p0, Lcom/google/android/gms/location/places/personalized/HereContent$Action;->zzajf:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/location/places/personalized/HereContent$Action;->zzQg:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    sget-object v0, Lcom/google/android/gms/location/places/personalized/HereContent$Action;->CREATOR:Lcom/google/android/gms/location/places/personalized/zza;

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
    instance-of v2, p1, Lcom/google/android/gms/location/places/personalized/HereContent$Action;

    if-nez v2, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    check-cast p1, Lcom/google/android/gms/location/places/personalized/HereContent$Action;

    .end local p1    # "object":Ljava/lang/Object;
    iget-object v2, p0, Lcom/google/android/gms/location/places/personalized/HereContent$Action;->zzajf:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/gms/location/places/personalized/HereContent$Action;->zzajf:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/google/android/gms/common/internal/zzw;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/google/android/gms/location/places/personalized/HereContent$Action;->zzQg:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/gms/location/places/personalized/HereContent$Action;->zzQg:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/google/android/gms/common/internal/zzw;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/location/places/personalized/HereContent$Action;->zzajf:Ljava/lang/String;

    return-object v0
.end method

.method public getUri()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/location/places/personalized/HereContent$Action;->zzQg:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/google/android/gms/location/places/personalized/HereContent$Action;->zzajf:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/android/gms/location/places/personalized/HereContent$Action;->zzQg:Ljava/lang/String;

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzw;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    invoke-static {p0}, Lcom/google/android/gms/common/internal/zzw;->zzv(Ljava/lang/Object;)Lcom/google/android/gms/common/internal/zzw$zza;

    move-result-object v0

    const-string v1, "title"

    iget-object v2, p0, Lcom/google/android/gms/location/places/personalized/HereContent$Action;->zzajf:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/zzw$zza;->zzg(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/zzw$zza;

    move-result-object v0

    const-string v1, "uri"

    iget-object v2, p0, Lcom/google/android/gms/location/places/personalized/HereContent$Action;->zzQg:Ljava/lang/String;

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
    sget-object v0, Lcom/google/android/gms/location/places/personalized/HereContent$Action;->CREATOR:Lcom/google/android/gms/location/places/personalized/zza;

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/location/places/personalized/zza;->zza(Lcom/google/android/gms/location/places/personalized/HereContent$Action;Landroid/os/Parcel;I)V

    return-void
.end method
