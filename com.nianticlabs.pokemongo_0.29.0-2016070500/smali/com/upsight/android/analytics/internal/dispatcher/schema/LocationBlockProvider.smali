.class public Lcom/upsight/android/analytics/internal/dispatcher/schema/LocationBlockProvider;
.super Lcom/upsight/android/analytics/provider/UpsightDataProvider;
.source "LocationBlockProvider.java"


# static fields
.field public static final LATITUDE_KEY:Ljava/lang/String; = "location.lat"

.field public static final LONGITUDE_KEY:Ljava/lang/String; = "location.lon"

.field public static final TIME_ZONE_KEY:Ljava/lang/String; = "location.tz"


# instance fields
.field private mUpsight:Lcom/upsight/android/UpsightContext;


# direct methods
.method constructor <init>(Lcom/upsight/android/UpsightContext;)V
    .locals 0
    .param p1, "upsight"    # Lcom/upsight/android/UpsightContext;

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/upsight/android/analytics/provider/UpsightDataProvider;-><init>()V

    .line 51
    iput-object p1, p0, Lcom/upsight/android/analytics/internal/dispatcher/schema/LocationBlockProvider;->mUpsight:Lcom/upsight/android/UpsightContext;

    .line 52
    return-void
.end method

.method private fetchLatestLocation()Lcom/upsight/android/analytics/provider/UpsightLocationTracker$Data;
    .locals 2

    .prologue
    .line 55
    iget-object v0, p0, Lcom/upsight/android/analytics/internal/dispatcher/schema/LocationBlockProvider;->mUpsight:Lcom/upsight/android/UpsightContext;

    invoke-virtual {v0}, Lcom/upsight/android/UpsightContext;->getDataStore()Lcom/upsight/android/persistence/UpsightDataStore;

    move-result-object v0

    const-class v1, Lcom/upsight/android/analytics/provider/UpsightLocationTracker$Data;

    invoke-interface {v0, v1}, Lcom/upsight/android/persistence/UpsightDataStore;->fetchObservable(Ljava/lang/Class;)Lrx/Observable;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lrx/Observable;->lastOrDefault(Ljava/lang/Object;)Lrx/Observable;

    move-result-object v0

    invoke-virtual {v0}, Lrx/Observable;->toBlocking()Lrx/observables/BlockingObservable;

    move-result-object v0

    invoke-virtual {v0}, Lrx/observables/BlockingObservable;->first()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/upsight/android/analytics/provider/UpsightLocationTracker$Data;

    return-object v0
.end method


# virtual methods
.method public availableKeys()Ljava/util/Set;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 82
    new-instance v0, Ljava/util/HashSet;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "location.tz"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "location.lat"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string v3, "location.lon"

    aput-object v3, v1, v2

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public declared-synchronized get(Ljava/lang/String;)Ljava/lang/Object;
    .locals 4
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 63
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/upsight/android/analytics/internal/dispatcher/schema/LocationBlockProvider;->fetchLatestLocation()Lcom/upsight/android/analytics/provider/UpsightLocationTracker$Data;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 64
    .local v0, "latestLocation":Lcom/upsight/android/analytics/provider/UpsightLocationTracker$Data;
    if-nez v0, :cond_0

    .line 65
    const/4 v1, 0x0

    .line 76
    :goto_0
    monitor-exit p0

    return-object v1

    .line 68
    :cond_0
    const/4 v2, -0x1

    :try_start_1
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    :cond_1
    move v1, v2

    :goto_1
    packed-switch v1, :pswitch_data_0

    .line 76
    invoke-super {p0, p1}, Lcom/upsight/android/analytics/provider/UpsightDataProvider;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    goto :goto_0

    .line 68
    :sswitch_0
    const-string v3, "location.tz"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_1

    :sswitch_1
    const-string v1, "location.lat"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    goto :goto_1

    :sswitch_2
    const-string v1, "location.lon"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x2

    goto :goto_1

    .line 70
    :pswitch_0
    invoke-virtual {v0}, Lcom/upsight/android/analytics/provider/UpsightLocationTracker$Data;->getTimeZone()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 72
    :pswitch_1
    invoke-virtual {v0}, Lcom/upsight/android/analytics/provider/UpsightLocationTracker$Data;->getLatitude()D

    move-result-wide v2

    const/4 v1, 0x0

    invoke-static {v2, v3, v1}, Landroid/location/Location;->convert(DI)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 74
    :pswitch_2
    invoke-virtual {v0}, Lcom/upsight/android/analytics/provider/UpsightLocationTracker$Data;->getLongitude()D

    move-result-wide v2

    const/4 v1, 0x0

    invoke-static {v2, v3, v1}, Landroid/location/Location;->convert(DI)Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v1

    goto :goto_0

    .line 63
    .end local v0    # "latestLocation":Lcom/upsight/android/analytics/provider/UpsightLocationTracker$Data;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 68
    nop

    :sswitch_data_0
    .sparse-switch
        -0x38ab81a -> :sswitch_1
        -0x38ab66e -> :sswitch_2
        0x20eb035f -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
