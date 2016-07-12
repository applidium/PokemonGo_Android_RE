.class final Lcom/unity3d/player/r;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/location/LocationListener;


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Lcom/unity3d/player/UnityPlayer;

.field private c:Landroid/location/Location;

.field private d:F

.field private e:Z

.field private f:I

.field private g:Z

.field private h:I


# direct methods
.method protected constructor <init>(Landroid/content/Context;Lcom/unity3d/player/UnityPlayer;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/unity3d/player/r;->d:F

    iput-boolean v1, p0, Lcom/unity3d/player/r;->e:Z

    iput v1, p0, Lcom/unity3d/player/r;->f:I

    iput-boolean v1, p0, Lcom/unity3d/player/r;->g:Z

    iput v1, p0, Lcom/unity3d/player/r;->h:I

    iput-object p1, p0, Lcom/unity3d/player/r;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/unity3d/player/r;->b:Lcom/unity3d/player/UnityPlayer;

    return-void
.end method

.method private a(I)V
    .locals 1

    iput p1, p0, Lcom/unity3d/player/r;->h:I

    iget-object v0, p0, Lcom/unity3d/player/r;->b:Lcom/unity3d/player/UnityPlayer;

    invoke-virtual {v0, p1}, Lcom/unity3d/player/UnityPlayer;->nativeSetLocationStatus(I)V

    return-void
.end method

.method private a(Landroid/location/Location;)V
    .locals 10

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/unity3d/player/r;->c:Landroid/location/Location;

    invoke-static {p1, v0}, Lcom/unity3d/player/r;->a(Landroid/location/Location;Landroid/location/Location;)Z

    move-result v0

    if-eqz v0, :cond_0

    iput-object p1, p0, Lcom/unity3d/player/r;->c:Landroid/location/Location;

    new-instance v0, Landroid/hardware/GeomagneticField;

    iget-object v1, p0, Lcom/unity3d/player/r;->c:Landroid/location/Location;

    invoke-virtual {v1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v2

    double-to-float v1, v2

    iget-object v2, p0, Lcom/unity3d/player/r;->c:Landroid/location/Location;

    invoke-virtual {v2}, Landroid/location/Location;->getLongitude()D

    move-result-wide v2

    double-to-float v2, v2

    iget-object v3, p0, Lcom/unity3d/player/r;->c:Landroid/location/Location;

    invoke-virtual {v3}, Landroid/location/Location;->getAltitude()D

    move-result-wide v4

    double-to-float v3, v4

    iget-object v4, p0, Lcom/unity3d/player/r;->c:Landroid/location/Location;

    invoke-virtual {v4}, Landroid/location/Location;->getTime()J

    move-result-wide v4

    invoke-direct/range {v0 .. v5}, Landroid/hardware/GeomagneticField;-><init>(FFFJ)V

    iget-object v1, p0, Lcom/unity3d/player/r;->b:Lcom/unity3d/player/UnityPlayer;

    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v2

    double-to-float v2, v2

    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v4

    double-to-float v3, v4

    invoke-virtual {p1}, Landroid/location/Location;->getAltitude()D

    move-result-wide v4

    double-to-float v4, v4

    invoke-virtual {p1}, Landroid/location/Location;->getAccuracy()F

    move-result v5

    invoke-virtual {p1}, Landroid/location/Location;->getTime()J

    move-result-wide v6

    long-to-double v6, v6

    const-wide v8, 0x408f400000000000L    # 1000.0

    div-double/2addr v6, v8

    invoke-virtual {v0}, Landroid/hardware/GeomagneticField;->getDeclination()F

    move-result v8

    invoke-virtual/range {v1 .. v8}, Lcom/unity3d/player/UnityPlayer;->nativeSetLocation(FFFFDF)V

    goto :goto_0
.end method

.method private static a(Landroid/location/Location;Landroid/location/Location;)Z
    .locals 8

    const/4 v2, 0x0

    const/4 v1, 0x1

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    invoke-virtual {p0}, Landroid/location/Location;->getTime()J

    move-result-wide v4

    invoke-virtual {p1}, Landroid/location/Location;->getTime()J

    move-result-wide v6

    sub-long/2addr v4, v6

    const-wide/32 v6, 0x1d4c0

    cmp-long v0, v4, v6

    if-lez v0, :cond_2

    move v3, v1

    :goto_1
    const-wide/32 v6, -0x1d4c0

    cmp-long v0, v4, v6

    if-gez v0, :cond_3

    move v0, v1

    :goto_2
    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-lez v4, :cond_4

    move v6, v1

    :goto_3
    if-nez v3, :cond_0

    if-eqz v0, :cond_5

    move v1, v2

    goto :goto_0

    :cond_2
    move v3, v2

    goto :goto_1

    :cond_3
    move v0, v2

    goto :goto_2

    :cond_4
    move v6, v2

    goto :goto_3

    :cond_5
    invoke-virtual {p0}, Landroid/location/Location;->getAccuracy()F

    move-result v0

    invoke-virtual {p1}, Landroid/location/Location;->getAccuracy()F

    move-result v3

    sub-float/2addr v0, v3

    float-to-int v0, v0

    if-lez v0, :cond_8

    move v5, v1

    :goto_4
    if-gez v0, :cond_9

    move v4, v1

    :goto_5
    const/16 v3, 0xc8

    if-le v0, v3, :cond_a

    move v0, v1

    :goto_6
    invoke-virtual {p0}, Landroid/location/Location;->getAccuracy()F

    move-result v3

    const/4 v7, 0x0

    cmpl-float v3, v3, v7

    if-nez v3, :cond_b

    move v3, v1

    :goto_7
    or-int/2addr v0, v3

    invoke-virtual {p0}, Landroid/location/Location;->getProvider()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Landroid/location/Location;->getProvider()Ljava/lang/String;

    move-result-object v7

    invoke-static {v3, v7}, Lcom/unity3d/player/r;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-nez v4, :cond_0

    if-eqz v6, :cond_6

    if-eqz v5, :cond_0

    :cond_6
    if-eqz v6, :cond_7

    if-nez v0, :cond_7

    if-nez v3, :cond_0

    :cond_7
    move v1, v2

    goto :goto_0

    :cond_8
    move v5, v2

    goto :goto_4

    :cond_9
    move v4, v2

    goto :goto_5

    :cond_a
    move v0, v2

    goto :goto_6

    :cond_b
    move v3, v2

    goto :goto_7
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    if-nez p0, :cond_1

    if-nez p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method


# virtual methods
.method public final a(F)V
    .locals 0

    iput p1, p0, Lcom/unity3d/player/r;->d:F

    return-void
.end method

.method public final a()Z
    .locals 3

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/unity3d/player/r;->a:Landroid/content/Context;

    const-string v2, "location"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    new-instance v2, Landroid/location/Criteria;

    invoke-direct {v2}, Landroid/location/Criteria;-><init>()V

    invoke-virtual {v0, v2, v1}, Landroid/location/LocationManager;->getProviders(Landroid/location/Criteria;Z)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final b()V
    .locals 10

    const/4 v2, 0x3

    const/4 v6, 0x2

    const/4 v9, 0x1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/unity3d/player/r;->g:Z

    iget-boolean v0, p0, Lcom/unity3d/player/r;->e:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x5

    const-string v1, "Location_StartUpdatingLocation already started!"

    invoke-static {v0, v1}, Lcom/unity3d/player/m;->Log(ILjava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/unity3d/player/r;->a()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-direct {p0, v2}, Lcom/unity3d/player/r;->a(I)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/unity3d/player/r;->a:Landroid/content/Context;

    const-string v1, "location"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    invoke-direct {p0, v9}, Lcom/unity3d/player/r;->a(I)V

    invoke-virtual {v0, v9}, Landroid/location/LocationManager;->getProviders(Z)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-direct {p0, v2}, Lcom/unity3d/player/r;->a(I)V

    goto :goto_0

    :cond_3
    const/4 v2, 0x0

    iget v1, p0, Lcom/unity3d/player/r;->f:I

    if-ne v1, v6, :cond_7

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_4
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->getProvider(Ljava/lang/String;)Landroid/location/LocationProvider;

    move-result-object v1

    invoke-virtual {v1}, Landroid/location/LocationProvider;->getAccuracy()I

    move-result v5

    if-ne v5, v6, :cond_4

    move-object v7, v1

    :goto_1
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_5
    :goto_2
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-eqz v7, :cond_6

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->getProvider(Ljava/lang/String;)Landroid/location/LocationProvider;

    move-result-object v2

    invoke-virtual {v2}, Landroid/location/LocationProvider;->getAccuracy()I

    move-result v2

    if-eq v2, v9, :cond_5

    :cond_6
    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/unity3d/player/r;->a(Landroid/location/Location;)V

    const-wide/16 v2, 0x0

    iget v4, p0, Lcom/unity3d/player/r;->d:F

    iget-object v5, p0, Lcom/unity3d/player/r;->a:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v6

    move-object v5, p0

    invoke-virtual/range {v0 .. v6}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;Landroid/os/Looper;)V

    iput-boolean v9, p0, Lcom/unity3d/player/r;->e:Z

    goto :goto_2

    :cond_7
    move-object v7, v2

    goto :goto_1
.end method

.method public final b(F)V
    .locals 2

    const/4 v1, 0x1

    const/high16 v0, 0x42c80000    # 100.0f

    cmpg-float v0, p1, v0

    if-gez v0, :cond_0

    iput v1, p0, Lcom/unity3d/player/r;->f:I

    :goto_0
    return-void

    :cond_0
    const/high16 v0, 0x43fa0000    # 500.0f

    cmpg-float v0, p1, v0

    if-gez v0, :cond_1

    iput v1, p0, Lcom/unity3d/player/r;->f:I

    goto :goto_0

    :cond_1
    const/4 v0, 0x2

    iput v0, p0, Lcom/unity3d/player/r;->f:I

    goto :goto_0
.end method

.method public final c()V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/unity3d/player/r;->a:Landroid/content/Context;

    const-string v1, "location"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    invoke-virtual {v0, p0}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    iput-boolean v2, p0, Lcom/unity3d/player/r;->e:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/unity3d/player/r;->c:Landroid/location/Location;

    invoke-direct {p0, v2}, Lcom/unity3d/player/r;->a(I)V

    return-void
.end method

.method public final d()V
    .locals 3

    const/4 v2, 0x1

    iget v0, p0, Lcom/unity3d/player/r;->h:I

    if-eq v0, v2, :cond_0

    iget v0, p0, Lcom/unity3d/player/r;->h:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    :cond_0
    iput-boolean v2, p0, Lcom/unity3d/player/r;->g:Z

    invoke-virtual {p0}, Lcom/unity3d/player/r;->c()V

    :cond_1
    return-void
.end method

.method public final e()V
    .locals 1

    iget-boolean v0, p0, Lcom/unity3d/player/r;->g:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/unity3d/player/r;->b()V

    :cond_0
    return-void
.end method

.method public final onLocationChanged(Landroid/location/Location;)V
    .locals 1

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/unity3d/player/r;->a(I)V

    invoke-direct {p0, p1}, Lcom/unity3d/player/r;->a(Landroid/location/Location;)V

    return-void
.end method

.method public final onProviderDisabled(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/unity3d/player/r;->c:Landroid/location/Location;

    return-void
.end method

.method public final onProviderEnabled(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public final onStatusChanged(Ljava/lang/String;ILandroid/os/Bundle;)V
    .locals 0

    return-void
.end method
