.class Lcom/nianticlabs/nia/location/NianticLocationManager$3;
.super Ljava/lang/Object;
.source "NianticLocationManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nianticlabs/nia/location/NianticLocationManager;->configureLocationParameters(DII)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nianticlabs/nia/location/NianticLocationManager;

.field final synthetic val$gps_update_time_ms:I

.field final synthetic val$net_update_time_ms:I

.field final synthetic val$update_distance:D


# direct methods
.method constructor <init>(Lcom/nianticlabs/nia/location/NianticLocationManager;IDI)V
    .locals 1
    .param p1, "this$0"    # Lcom/nianticlabs/nia/location/NianticLocationManager;

    .prologue
    .line 180
    iput-object p1, p0, Lcom/nianticlabs/nia/location/NianticLocationManager$3;->this$0:Lcom/nianticlabs/nia/location/NianticLocationManager;

    iput p2, p0, Lcom/nianticlabs/nia/location/NianticLocationManager$3;->val$gps_update_time_ms:I

    iput-wide p3, p0, Lcom/nianticlabs/nia/location/NianticLocationManager$3;->val$update_distance:D

    iput p5, p0, Lcom/nianticlabs/nia/location/NianticLocationManager$3;->val$net_update_time_ms:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 183
    iget-object v0, p0, Lcom/nianticlabs/nia/location/NianticLocationManager$3;->this$0:Lcom/nianticlabs/nia/location/NianticLocationManager;

    # getter for: Lcom/nianticlabs/nia/location/NianticLocationManager;->started:Z
    invoke-static {v0}, Lcom/nianticlabs/nia/location/NianticLocationManager;->access$400(Lcom/nianticlabs/nia/location/NianticLocationManager;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 184
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Already started."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 187
    :cond_0
    iget-object v0, p0, Lcom/nianticlabs/nia/location/NianticLocationManager$3;->this$0:Lcom/nianticlabs/nia/location/NianticLocationManager;

    iget v1, p0, Lcom/nianticlabs/nia/location/NianticLocationManager$3;->val$gps_update_time_ms:I

    # setter for: Lcom/nianticlabs/nia/location/NianticLocationManager;->gpsUpdateTimeMs:I
    invoke-static {v0, v1}, Lcom/nianticlabs/nia/location/NianticLocationManager;->access$502(Lcom/nianticlabs/nia/location/NianticLocationManager;I)I

    .line 188
    iget-object v0, p0, Lcom/nianticlabs/nia/location/NianticLocationManager$3;->this$0:Lcom/nianticlabs/nia/location/NianticLocationManager;

    iget-wide v2, p0, Lcom/nianticlabs/nia/location/NianticLocationManager$3;->val$update_distance:D

    double-to-float v1, v2

    # setter for: Lcom/nianticlabs/nia/location/NianticLocationManager;->gpsUpdateDistanceM:F
    invoke-static {v0, v1}, Lcom/nianticlabs/nia/location/NianticLocationManager;->access$602(Lcom/nianticlabs/nia/location/NianticLocationManager;F)F

    .line 189
    iget-object v0, p0, Lcom/nianticlabs/nia/location/NianticLocationManager$3;->this$0:Lcom/nianticlabs/nia/location/NianticLocationManager;

    iget v1, p0, Lcom/nianticlabs/nia/location/NianticLocationManager$3;->val$net_update_time_ms:I

    # setter for: Lcom/nianticlabs/nia/location/NianticLocationManager;->netUpdateTimeMs:I
    invoke-static {v0, v1}, Lcom/nianticlabs/nia/location/NianticLocationManager;->access$702(Lcom/nianticlabs/nia/location/NianticLocationManager;I)I

    .line 190
    iget-object v0, p0, Lcom/nianticlabs/nia/location/NianticLocationManager$3;->this$0:Lcom/nianticlabs/nia/location/NianticLocationManager;

    iget-wide v2, p0, Lcom/nianticlabs/nia/location/NianticLocationManager$3;->val$update_distance:D

    double-to-float v1, v2

    # setter for: Lcom/nianticlabs/nia/location/NianticLocationManager;->netUpdateDistanceM:F
    invoke-static {v0, v1}, Lcom/nianticlabs/nia/location/NianticLocationManager;->access$802(Lcom/nianticlabs/nia/location/NianticLocationManager;F)F

    .line 191
    iget-object v0, p0, Lcom/nianticlabs/nia/location/NianticLocationManager$3;->this$0:Lcom/nianticlabs/nia/location/NianticLocationManager;

    # invokes: Lcom/nianticlabs/nia/location/NianticLocationManager;->doStart()V
    invoke-static {v0}, Lcom/nianticlabs/nia/location/NianticLocationManager;->access$900(Lcom/nianticlabs/nia/location/NianticLocationManager;)V

    .line 192
    return-void
.end method
