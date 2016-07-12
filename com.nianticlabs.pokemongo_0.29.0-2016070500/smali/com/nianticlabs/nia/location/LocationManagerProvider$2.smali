.class Lcom/nianticlabs/nia/location/LocationManagerProvider$2;
.super Ljava/lang/Object;
.source "LocationManagerProvider.java"

# interfaces
.implements Landroid/location/GpsStatus$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nianticlabs/nia/location/LocationManagerProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nianticlabs/nia/location/LocationManagerProvider;


# direct methods
.method constructor <init>(Lcom/nianticlabs/nia/location/LocationManagerProvider;)V
    .locals 0
    .param p1, "this$0"    # Lcom/nianticlabs/nia/location/LocationManagerProvider;

    .prologue
    .line 139
    iput-object p1, p0, Lcom/nianticlabs/nia/location/LocationManagerProvider$2;->this$0:Lcom/nianticlabs/nia/location/LocationManagerProvider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private getSatellites(Landroid/location/GpsStatus;)[Landroid/location/GpsSatellite;
    .locals 4
    .param p1, "gpsStatus"    # Landroid/location/GpsStatus;

    .prologue
    .line 141
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 142
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Landroid/location/GpsSatellite;>;"
    invoke-virtual {p1}, Landroid/location/GpsStatus;->getSatellites()Ljava/lang/Iterable;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/location/GpsSatellite;

    .line 143
    .local v1, "sat":Landroid/location/GpsSatellite;
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 145
    .end local v1    # "sat":Landroid/location/GpsSatellite;
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [Landroid/location/GpsSatellite;

    invoke-interface {v0, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/location/GpsSatellite;

    check-cast v2, [Landroid/location/GpsSatellite;

    return-object v2
.end method


# virtual methods
.method public onGpsStatusChanged(I)V
    .locals 4
    .param p1, "event"    # I

    .prologue
    .line 154
    iget-object v1, p0, Lcom/nianticlabs/nia/location/LocationManagerProvider$2;->this$0:Lcom/nianticlabs/nia/location/LocationManagerProvider;

    # getter for: Lcom/nianticlabs/nia/location/LocationManagerProvider;->running:Z
    invoke-static {v1}, Lcom/nianticlabs/nia/location/LocationManagerProvider;->access$000(Lcom/nianticlabs/nia/location/LocationManagerProvider;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 155
    iget-object v1, p0, Lcom/nianticlabs/nia/location/LocationManagerProvider$2;->this$0:Lcom/nianticlabs/nia/location/LocationManagerProvider;

    # getter for: Lcom/nianticlabs/nia/location/LocationManagerProvider;->locationManager:Landroid/location/LocationManager;
    invoke-static {v1}, Lcom/nianticlabs/nia/location/LocationManagerProvider;->access$300(Lcom/nianticlabs/nia/location/LocationManagerProvider;)Landroid/location/LocationManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/location/LocationManager;->getGpsStatus(Landroid/location/GpsStatus;)Landroid/location/GpsStatus;

    move-result-object v0

    .line 156
    .local v0, "status":Landroid/location/GpsStatus;
    iget-object v1, p0, Lcom/nianticlabs/nia/location/LocationManagerProvider$2;->this$0:Lcom/nianticlabs/nia/location/LocationManagerProvider;

    invoke-virtual {v0}, Landroid/location/GpsStatus;->getTimeToFirstFix()I

    move-result v2

    invoke-direct {p0, v0}, Lcom/nianticlabs/nia/location/LocationManagerProvider$2;->getSatellites(Landroid/location/GpsStatus;)[Landroid/location/GpsSatellite;

    move-result-object v3

    # invokes: Lcom/nianticlabs/nia/location/LocationManagerProvider;->updateGpsStatus(I[Landroid/location/GpsSatellite;)V
    invoke-static {v1, v2, v3}, Lcom/nianticlabs/nia/location/LocationManagerProvider;->access$400(Lcom/nianticlabs/nia/location/LocationManagerProvider;I[Landroid/location/GpsSatellite;)V

    .line 158
    .end local v0    # "status":Landroid/location/GpsStatus;
    :cond_0
    return-void
.end method
