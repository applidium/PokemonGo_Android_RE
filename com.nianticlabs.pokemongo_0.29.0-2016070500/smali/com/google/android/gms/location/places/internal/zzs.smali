.class public Lcom/google/android/gms/location/places/internal/zzs;
.super Lcom/google/android/gms/location/places/internal/zzu;

# interfaces
.implements Lcom/google/android/gms/location/places/Place;


# instance fields
.field private final zzaGt:Ljava/lang/String;

.field private zzaHu:Z

.field private final zzaHx:Lcom/google/android/gms/location/places/internal/zzp;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/data/DataHolder;ILandroid/content/Context;)V
    .locals 2

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/location/places/internal/zzu;-><init>(Lcom/google/android/gms/common/data/DataHolder;I)V

    if-eqz p3, :cond_0

    invoke-static {p3}, Lcom/google/android/gms/location/places/internal/zzp;->zzaF(Landroid/content/Context;)Lcom/google/android/gms/location/places/internal/zzp;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lcom/google/android/gms/location/places/internal/zzs;->zzaHx:Lcom/google/android/gms/location/places/internal/zzp;

    const-string v0, "place_is_logging_enabled"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/location/places/internal/zzs;->zzh(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/gms/location/places/internal/zzs;->zzaHu:Z

    const-string v0, "place_id"

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/location/places/internal/zzs;->zzF(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/location/places/internal/zzs;->zzaGt:Ljava/lang/String;

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private zzdz(Ljava/lang/String;)V
    .locals 2

    iget-boolean v0, p0, Lcom/google/android/gms/location/places/internal/zzs;->zzaHu:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/location/places/internal/zzs;->zzaHx:Lcom/google/android/gms/location/places/internal/zzp;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/location/places/internal/zzs;->zzaHx:Lcom/google/android/gms/location/places/internal/zzp;

    iget-object v1, p0, Lcom/google/android/gms/location/places/internal/zzs;->zzaGt:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Lcom/google/android/gms/location/places/internal/zzp;->zzE(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public synthetic freeze()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/location/places/internal/zzs;->zzxm()Lcom/google/android/gms/location/places/Place;

    move-result-object v0

    return-object v0
.end method

.method public getAddress()Ljava/lang/CharSequence;
    .locals 2

    const-string v0, "getAddress"

    invoke-direct {p0, v0}, Lcom/google/android/gms/location/places/internal/zzs;->zzdz(Ljava/lang/String;)V

    const-string v0, "place_address"

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/location/places/internal/zzs;->zzF(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    const-string v0, "getId"

    invoke-direct {p0, v0}, Lcom/google/android/gms/location/places/internal/zzs;->zzdz(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/location/places/internal/zzs;->zzaGt:Ljava/lang/String;

    return-object v0
.end method

.method public getLatLng()Lcom/google/android/gms/maps/model/LatLng;
    .locals 2

    const-string v0, "getLatLng"

    invoke-direct {p0, v0}, Lcom/google/android/gms/location/places/internal/zzs;->zzdz(Ljava/lang/String;)V

    const-string v0, "place_lat_lng"

    sget-object v1, Lcom/google/android/gms/maps/model/LatLng;->CREATOR:Lcom/google/android/gms/maps/model/zze;

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/location/places/internal/zzs;->zza(Ljava/lang/String;Landroid/os/Parcelable$Creator;)Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/maps/model/LatLng;

    return-object v0
.end method

.method public getLocale()Ljava/util/Locale;
    .locals 2

    const-string v0, "getLocale"

    invoke-direct {p0, v0}, Lcom/google/android/gms/location/places/internal/zzs;->zzdz(Ljava/lang/String;)V

    const-string v0, "place_locale"

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/location/places/internal/zzs;->zzF(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/Locale;

    invoke-direct {v0, v1}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    goto :goto_0
.end method

.method public getName()Ljava/lang/CharSequence;
    .locals 2

    const-string v0, "getName"

    invoke-direct {p0, v0}, Lcom/google/android/gms/location/places/internal/zzs;->zzdz(Ljava/lang/String;)V

    const-string v0, "place_name"

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/location/places/internal/zzs;->zzF(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPhoneNumber()Ljava/lang/CharSequence;
    .locals 2

    const-string v0, "getPhoneNumber"

    invoke-direct {p0, v0}, Lcom/google/android/gms/location/places/internal/zzs;->zzdz(Ljava/lang/String;)V

    const-string v0, "place_phone_number"

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/location/places/internal/zzs;->zzF(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPlaceTypes()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    const-string v0, "getPlaceTypes"

    invoke-direct {p0, v0}, Lcom/google/android/gms/location/places/internal/zzs;->zzdz(Ljava/lang/String;)V

    const-string v0, "place_types"

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/location/places/internal/zzs;->zza(Ljava/lang/String;Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getPriceLevel()I
    .locals 2

    const-string v0, "getPriceLevel"

    invoke-direct {p0, v0}, Lcom/google/android/gms/location/places/internal/zzs;->zzdz(Ljava/lang/String;)V

    const-string v0, "place_price_level"

    const/4 v1, -0x1

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/location/places/internal/zzs;->zzz(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getRating()F
    .locals 2

    const-string v0, "getRating"

    invoke-direct {p0, v0}, Lcom/google/android/gms/location/places/internal/zzs;->zzdz(Ljava/lang/String;)V

    const-string v0, "place_rating"

    const/high16 v1, -0x40800000    # -1.0f

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/location/places/internal/zzs;->zzb(Ljava/lang/String;F)F

    move-result v0

    return v0
.end method

.method public getViewport()Lcom/google/android/gms/maps/model/LatLngBounds;
    .locals 2

    const-string v0, "getViewport"

    invoke-direct {p0, v0}, Lcom/google/android/gms/location/places/internal/zzs;->zzdz(Ljava/lang/String;)V

    const-string v0, "place_viewport"

    sget-object v1, Lcom/google/android/gms/maps/model/LatLngBounds;->CREATOR:Lcom/google/android/gms/maps/model/zzd;

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/location/places/internal/zzs;->zza(Ljava/lang/String;Landroid/os/Parcelable$Creator;)Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/maps/model/LatLngBounds;

    return-object v0
.end method

.method public getWebsiteUri()Landroid/net/Uri;
    .locals 2

    const/4 v0, 0x0

    const-string v1, "getWebsiteUri"

    invoke-direct {p0, v1}, Lcom/google/android/gms/location/places/internal/zzs;->zzdz(Ljava/lang/String;)V

    const-string v1, "place_website_uri"

    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/location/places/internal/zzs;->zzF(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    goto :goto_0
.end method

.method public zzxe()F
    .locals 2

    const-string v0, "getLevelNumber"

    invoke-direct {p0, v0}, Lcom/google/android/gms/location/places/internal/zzs;->zzdz(Ljava/lang/String;)V

    const-string v0, "place_level_number"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/location/places/internal/zzs;->zzb(Ljava/lang/String;F)F

    move-result v0

    return v0
.end method

.method public zzxh()Z
    .locals 2

    const-string v0, "isPermanentlyClosed"

    invoke-direct {p0, v0}, Lcom/google/android/gms/location/places/internal/zzs;->zzdz(Ljava/lang/String;)V

    const-string v0, "place_is_permanently_closed"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/location/places/internal/zzs;->zzh(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public zzxm()Lcom/google/android/gms/location/places/Place;
    .locals 3

    new-instance v0, Lcom/google/android/gms/location/places/internal/PlaceImpl$zza;

    invoke-direct {v0}, Lcom/google/android/gms/location/places/internal/PlaceImpl$zza;-><init>()V

    iget-boolean v1, p0, Lcom/google/android/gms/location/places/internal/zzs;->zzaHu:Z

    invoke-virtual {v0, v1}, Lcom/google/android/gms/location/places/internal/PlaceImpl$zza;->zzaj(Z)Lcom/google/android/gms/location/places/internal/PlaceImpl$zza;

    move-result-object v0

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/google/android/gms/location/places/internal/zzs;->zzaHu:Z

    invoke-virtual {p0}, Lcom/google/android/gms/location/places/internal/zzs;->getAddress()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/location/places/internal/PlaceImpl$zza;->zzdC(Ljava/lang/String;)Lcom/google/android/gms/location/places/internal/PlaceImpl$zza;

    move-result-object v0

    const-string v1, "place_attributions"

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/google/android/gms/location/places/internal/zzs;->zzb(Ljava/lang/String;Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/location/places/internal/PlaceImpl$zza;->zzu(Ljava/util/List;)Lcom/google/android/gms/location/places/internal/PlaceImpl$zza;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/gms/location/places/internal/zzs;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/location/places/internal/PlaceImpl$zza;->zzdA(Ljava/lang/String;)Lcom/google/android/gms/location/places/internal/PlaceImpl$zza;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/gms/location/places/internal/zzs;->zzxh()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/location/places/internal/PlaceImpl$zza;->zzai(Z)Lcom/google/android/gms/location/places/internal/PlaceImpl$zza;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/gms/location/places/internal/zzs;->getLatLng()Lcom/google/android/gms/maps/model/LatLng;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/location/places/internal/PlaceImpl$zza;->zza(Lcom/google/android/gms/maps/model/LatLng;)Lcom/google/android/gms/location/places/internal/PlaceImpl$zza;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/gms/location/places/internal/zzs;->zzxe()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/location/places/internal/PlaceImpl$zza;->zzf(F)Lcom/google/android/gms/location/places/internal/PlaceImpl$zza;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/gms/location/places/internal/zzs;->getName()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/location/places/internal/PlaceImpl$zza;->zzdB(Ljava/lang/String;)Lcom/google/android/gms/location/places/internal/PlaceImpl$zza;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/gms/location/places/internal/zzs;->getPhoneNumber()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/location/places/internal/PlaceImpl$zza;->zzdD(Ljava/lang/String;)Lcom/google/android/gms/location/places/internal/PlaceImpl$zza;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/gms/location/places/internal/zzs;->getPriceLevel()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/location/places/internal/PlaceImpl$zza;->zzhs(I)Lcom/google/android/gms/location/places/internal/PlaceImpl$zza;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/gms/location/places/internal/zzs;->getRating()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/location/places/internal/PlaceImpl$zza;->zzg(F)Lcom/google/android/gms/location/places/internal/PlaceImpl$zza;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/gms/location/places/internal/zzs;->getPlaceTypes()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/location/places/internal/PlaceImpl$zza;->zzt(Ljava/util/List;)Lcom/google/android/gms/location/places/internal/PlaceImpl$zza;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/gms/location/places/internal/zzs;->getViewport()Lcom/google/android/gms/maps/model/LatLngBounds;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/location/places/internal/PlaceImpl$zza;->zza(Lcom/google/android/gms/maps/model/LatLngBounds;)Lcom/google/android/gms/location/places/internal/PlaceImpl$zza;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/gms/location/places/internal/zzs;->getWebsiteUri()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/location/places/internal/PlaceImpl$zza;->zzl(Landroid/net/Uri;)Lcom/google/android/gms/location/places/internal/PlaceImpl$zza;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/location/places/internal/PlaceImpl$zza;->zzxn()Lcom/google/android/gms/location/places/internal/PlaceImpl;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/gms/location/places/internal/zzs;->getLocale()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/location/places/internal/PlaceImpl;->setLocale(Ljava/util/Locale;)V

    iget-object v1, p0, Lcom/google/android/gms/location/places/internal/zzs;->zzaHx:Lcom/google/android/gms/location/places/internal/zzp;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/location/places/internal/PlaceImpl;->zza(Lcom/google/android/gms/location/places/internal/zzp;)V

    return-object v0
.end method
