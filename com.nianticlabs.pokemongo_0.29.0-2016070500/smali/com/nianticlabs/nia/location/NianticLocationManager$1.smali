.class Lcom/nianticlabs/nia/location/NianticLocationManager$1;
.super Ljava/lang/Object;
.source "NianticLocationManager.java"

# interfaces
.implements Lcom/nianticlabs/nia/location/GpsProvider$GpsProviderListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nianticlabs/nia/location/NianticLocationManager;->addProvider(Ljava/lang/String;Lcom/nianticlabs/nia/location/Provider;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nianticlabs/nia/location/NianticLocationManager;

.field final synthetic val$name:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/nianticlabs/nia/location/NianticLocationManager;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/nianticlabs/nia/location/NianticLocationManager;

    .prologue
    .line 91
    iput-object p1, p0, Lcom/nianticlabs/nia/location/NianticLocationManager$1;->this$0:Lcom/nianticlabs/nia/location/NianticLocationManager;

    iput-object p2, p0, Lcom/nianticlabs/nia/location/NianticLocationManager$1;->val$name:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGpsStatusUpdate(I[Landroid/location/GpsSatellite;)V
    .locals 1
    .param p1, "timeToFix"    # I
    .param p2, "satellites"    # [Landroid/location/GpsSatellite;

    .prologue
    .line 94
    iget-object v0, p0, Lcom/nianticlabs/nia/location/NianticLocationManager$1;->this$0:Lcom/nianticlabs/nia/location/NianticLocationManager;

    # invokes: Lcom/nianticlabs/nia/location/NianticLocationManager;->gpsStatusUpdate(I[Landroid/location/GpsSatellite;)V
    invoke-static {v0, p1, p2}, Lcom/nianticlabs/nia/location/NianticLocationManager;->access$000(Lcom/nianticlabs/nia/location/NianticLocationManager;I[Landroid/location/GpsSatellite;)V

    .line 95
    return-void
.end method

.method public onProviderLocation(Landroid/location/Location;)V
    .locals 2
    .param p1, "location"    # Landroid/location/Location;

    .prologue
    .line 105
    iget-object v0, p0, Lcom/nianticlabs/nia/location/NianticLocationManager$1;->this$0:Lcom/nianticlabs/nia/location/NianticLocationManager;

    iget-object v1, p0, Lcom/nianticlabs/nia/location/NianticLocationManager$1;->this$0:Lcom/nianticlabs/nia/location/NianticLocationManager;

    # invokes: Lcom/nianticlabs/nia/location/NianticLocationManager;->statusArray()[I
    invoke-static {v1}, Lcom/nianticlabs/nia/location/NianticLocationManager;->access$200(Lcom/nianticlabs/nia/location/NianticLocationManager;)[I

    move-result-object v1

    # invokes: Lcom/nianticlabs/nia/location/NianticLocationManager;->locationUpdate(Landroid/location/Location;[I)V
    invoke-static {v0, p1, v1}, Lcom/nianticlabs/nia/location/NianticLocationManager;->access$300(Lcom/nianticlabs/nia/location/NianticLocationManager;Landroid/location/Location;[I)V

    .line 106
    return-void
.end method

.method public onProviderStatus(Lcom/nianticlabs/nia/contextservice/ServiceStatus;)V
    .locals 3
    .param p1, "status"    # Lcom/nianticlabs/nia/contextservice/ServiceStatus;

    .prologue
    .line 99
    iget-object v0, p0, Lcom/nianticlabs/nia/location/NianticLocationManager$1;->this$0:Lcom/nianticlabs/nia/location/NianticLocationManager;

    # getter for: Lcom/nianticlabs/nia/location/NianticLocationManager;->statusMap:Ljava/util/Map;
    invoke-static {v0}, Lcom/nianticlabs/nia/location/NianticLocationManager;->access$100(Lcom/nianticlabs/nia/location/NianticLocationManager;)Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lcom/nianticlabs/nia/location/NianticLocationManager$1;->val$name:Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    iget-object v0, p0, Lcom/nianticlabs/nia/location/NianticLocationManager$1;->this$0:Lcom/nianticlabs/nia/location/NianticLocationManager;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/nianticlabs/nia/location/NianticLocationManager$1;->this$0:Lcom/nianticlabs/nia/location/NianticLocationManager;

    # invokes: Lcom/nianticlabs/nia/location/NianticLocationManager;->statusArray()[I
    invoke-static {v2}, Lcom/nianticlabs/nia/location/NianticLocationManager;->access$200(Lcom/nianticlabs/nia/location/NianticLocationManager;)[I

    move-result-object v2

    # invokes: Lcom/nianticlabs/nia/location/NianticLocationManager;->locationUpdate(Landroid/location/Location;[I)V
    invoke-static {v0, v1, v2}, Lcom/nianticlabs/nia/location/NianticLocationManager;->access$300(Lcom/nianticlabs/nia/location/NianticLocationManager;Landroid/location/Location;[I)V

    .line 101
    return-void
.end method
