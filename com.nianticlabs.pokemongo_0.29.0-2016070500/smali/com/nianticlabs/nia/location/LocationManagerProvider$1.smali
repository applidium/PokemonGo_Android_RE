.class Lcom/nianticlabs/nia/location/LocationManagerProvider$1;
.super Ljava/lang/Object;
.source "LocationManagerProvider.java"

# interfaces
.implements Landroid/location/LocationListener;


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
    .line 99
    iput-object p1, p0, Lcom/nianticlabs/nia/location/LocationManagerProvider$1;->this$0:Lcom/nianticlabs/nia/location/LocationManagerProvider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLocationChanged(Landroid/location/Location;)V
    .locals 1
    .param p1, "location"    # Landroid/location/Location;

    .prologue
    .line 107
    iget-object v0, p0, Lcom/nianticlabs/nia/location/LocationManagerProvider$1;->this$0:Lcom/nianticlabs/nia/location/LocationManagerProvider;

    # getter for: Lcom/nianticlabs/nia/location/LocationManagerProvider;->running:Z
    invoke-static {v0}, Lcom/nianticlabs/nia/location/LocationManagerProvider;->access$000(Lcom/nianticlabs/nia/location/LocationManagerProvider;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 108
    iget-object v0, p0, Lcom/nianticlabs/nia/location/LocationManagerProvider$1;->this$0:Lcom/nianticlabs/nia/location/LocationManagerProvider;

    # invokes: Lcom/nianticlabs/nia/location/LocationManagerProvider;->updateLocation(Landroid/location/Location;)V
    invoke-static {v0, p1}, Lcom/nianticlabs/nia/location/LocationManagerProvider;->access$100(Lcom/nianticlabs/nia/location/LocationManagerProvider;Landroid/location/Location;)V

    .line 110
    :cond_0
    return-void
.end method

.method public onProviderDisabled(Ljava/lang/String;)V
    .locals 2
    .param p1, "provider"    # Ljava/lang/String;

    .prologue
    .line 135
    iget-object v0, p0, Lcom/nianticlabs/nia/location/LocationManagerProvider$1;->this$0:Lcom/nianticlabs/nia/location/LocationManagerProvider;

    sget-object v1, Lcom/nianticlabs/nia/contextservice/ServiceStatus;->PERMISSION_DENIED:Lcom/nianticlabs/nia/contextservice/ServiceStatus;

    # invokes: Lcom/nianticlabs/nia/location/LocationManagerProvider;->updateStatus(Lcom/nianticlabs/nia/contextservice/ServiceStatus;)V
    invoke-static {v0, v1}, Lcom/nianticlabs/nia/location/LocationManagerProvider;->access$200(Lcom/nianticlabs/nia/location/LocationManagerProvider;Lcom/nianticlabs/nia/contextservice/ServiceStatus;)V

    .line 136
    return-void
.end method

.method public onProviderEnabled(Ljava/lang/String;)V
    .locals 2
    .param p1, "provider"    # Ljava/lang/String;

    .prologue
    .line 126
    iget-object v0, p0, Lcom/nianticlabs/nia/location/LocationManagerProvider$1;->this$0:Lcom/nianticlabs/nia/location/LocationManagerProvider;

    sget-object v1, Lcom/nianticlabs/nia/contextservice/ServiceStatus;->RUNNING:Lcom/nianticlabs/nia/contextservice/ServiceStatus;

    # invokes: Lcom/nianticlabs/nia/location/LocationManagerProvider;->updateStatus(Lcom/nianticlabs/nia/contextservice/ServiceStatus;)V
    invoke-static {v0, v1}, Lcom/nianticlabs/nia/location/LocationManagerProvider;->access$200(Lcom/nianticlabs/nia/location/LocationManagerProvider;Lcom/nianticlabs/nia/contextservice/ServiceStatus;)V

    .line 127
    return-void
.end method

.method public onStatusChanged(Ljava/lang/String;ILandroid/os/Bundle;)V
    .locals 0
    .param p1, "provider"    # Ljava/lang/String;
    .param p2, "status"    # I
    .param p3, "extras"    # Landroid/os/Bundle;

    .prologue
    .line 118
    return-void
.end method
