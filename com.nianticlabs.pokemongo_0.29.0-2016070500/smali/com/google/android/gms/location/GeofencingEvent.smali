.class public Lcom/google/android/gms/location/GeofencingEvent;
.super Ljava/lang/Object;


# instance fields
.field private final zzDv:I

.field private final zzaEq:I

.field private final zzaEr:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/location/Geofence;",
            ">;"
        }
    .end annotation
.end field

.field private final zzaEs:Landroid/location/Location;


# direct methods
.method private constructor <init>(IILjava/util/List;Landroid/location/Location;)V
    .locals 0
    .param p1, "errorCode"    # I
    .param p2, "transitionType"    # I
    .param p4, "triggeringLocaton"    # Landroid/location/Location;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/location/Geofence;",
            ">;",
            "Landroid/location/Location;",
            ")V"
        }
    .end annotation

    .prologue
    .local p3, "triggeringGeofences":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/gms/location/Geofence;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/location/GeofencingEvent;->zzDv:I

    iput p2, p0, Lcom/google/android/gms/location/GeofencingEvent;->zzaEq:I

    iput-object p3, p0, Lcom/google/android/gms/location/GeofencingEvent;->zzaEr:Ljava/util/List;

    iput-object p4, p0, Lcom/google/android/gms/location/GeofencingEvent;->zzaEs:Landroid/location/Location;

    return-void
.end method

.method public static fromIntent(Landroid/content/Intent;)Lcom/google/android/gms/location/GeofencingEvent;
    .locals 5
    .param p0, "intent"    # Landroid/content/Intent;

    .prologue
    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "gms_error_code"

    const/4 v1, -0x1

    invoke-virtual {p0, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    invoke-static {p0}, Lcom/google/android/gms/location/GeofencingEvent;->zzs(Landroid/content/Intent;)I

    move-result v3

    invoke-static {p0}, Lcom/google/android/gms/location/GeofencingEvent;->zzt(Landroid/content/Intent;)Ljava/util/List;

    move-result-object v4

    const-string v0, "com.google.android.location.intent.extra.triggering_location"

    invoke-virtual {p0, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/location/Location;

    new-instance v1, Lcom/google/android/gms/location/GeofencingEvent;

    invoke-direct {v1, v2, v3, v4, v0}, Lcom/google/android/gms/location/GeofencingEvent;-><init>(IILjava/util/List;Landroid/location/Location;)V

    move-object v0, v1

    goto :goto_0
.end method

.method private static zzs(Landroid/content/Intent;)I
    .locals 3

    const/4 v0, -0x1

    const-string v1, "com.google.android.location.intent.extra.transition"

    invoke-virtual {p0, v1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v0, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v2, 0x1

    if-eq v1, v2, :cond_2

    const/4 v2, 0x2

    if-eq v1, v2, :cond_2

    const/4 v2, 0x4

    if-ne v1, v2, :cond_0

    :cond_2
    move v0, v1

    goto :goto_0
.end method

.method private static zzt(Landroid/content/Intent;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/location/Geofence;",
            ">;"
        }
    .end annotation

    const-string v0, "com.google.android.location.intent.extra.geofence_list"

    invoke-virtual {p0, v0}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    invoke-static {v0}, Lcom/google/android/gms/location/internal/ParcelableGeofence;->zzn([B)Lcom/google/android/gms/location/internal/ParcelableGeofence;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    move-object v0, v1

    goto :goto_0
.end method


# virtual methods
.method public getErrorCode()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/location/GeofencingEvent;->zzDv:I

    return v0
.end method

.method public getGeofenceTransition()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/location/GeofencingEvent;->zzaEq:I

    return v0
.end method

.method public getTriggeringGeofences()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/location/Geofence;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/location/GeofencingEvent;->zzaEr:Ljava/util/List;

    return-object v0
.end method

.method public getTriggeringLocation()Landroid/location/Location;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/location/GeofencingEvent;->zzaEs:Landroid/location/Location;

    return-object v0
.end method

.method public hasError()Z
    .locals 2

    iget v0, p0, Lcom/google/android/gms/location/GeofencingEvent;->zzDv:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
