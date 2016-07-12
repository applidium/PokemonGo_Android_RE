.class Lcom/upsight/android/analytics/internal/dispatcher/routing/Router$1;
.super Ljava/lang/Object;
.source "Router.java"

# interfaces
.implements Lrx/functions/Action0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/upsight/android/analytics/internal/dispatcher/routing/Router;->onDelivery(Lcom/upsight/android/analytics/internal/dispatcher/routing/Packet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/upsight/android/analytics/internal/dispatcher/routing/Router;

.field final synthetic val$packet:Lcom/upsight/android/analytics/internal/dispatcher/routing/Packet;


# direct methods
.method constructor <init>(Lcom/upsight/android/analytics/internal/dispatcher/routing/Router;Lcom/upsight/android/analytics/internal/dispatcher/routing/Packet;)V
    .locals 0

    .prologue
    .line 105
    iput-object p1, p0, Lcom/upsight/android/analytics/internal/dispatcher/routing/Router$1;->this$0:Lcom/upsight/android/analytics/internal/dispatcher/routing/Router;

    iput-object p2, p0, Lcom/upsight/android/analytics/internal/dispatcher/routing/Router$1;->val$packet:Lcom/upsight/android/analytics/internal/dispatcher/routing/Packet;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 108
    iget-object v1, p0, Lcom/upsight/android/analytics/internal/dispatcher/routing/Router$1;->val$packet:Lcom/upsight/android/analytics/internal/dispatcher/routing/Packet;

    invoke-virtual {v1}, Lcom/upsight/android/analytics/internal/dispatcher/routing/Packet;->getState()Lcom/upsight/android/analytics/internal/dispatcher/routing/Packet$State;

    move-result-object v0

    .line 109
    .local v0, "state":Lcom/upsight/android/analytics/internal/dispatcher/routing/Packet$State;
    sget-object v1, Lcom/upsight/android/analytics/internal/dispatcher/routing/Router$3;->$SwitchMap$com$upsight$android$analytics$internal$dispatcher$routing$Packet$State:[I

    invoke-virtual {v0}, Lcom/upsight/android/analytics/internal/dispatcher/routing/Packet$State;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 130
    :goto_0
    return-void

    .line 111
    :pswitch_0
    iget-object v1, p0, Lcom/upsight/android/analytics/internal/dispatcher/routing/Router$1;->val$packet:Lcom/upsight/android/analytics/internal/dispatcher/routing/Packet;

    invoke-virtual {v1}, Lcom/upsight/android/analytics/internal/dispatcher/routing/Packet;->hasMoreOptionsToTry()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 112
    iget-object v1, p0, Lcom/upsight/android/analytics/internal/dispatcher/routing/Router$1;->val$packet:Lcom/upsight/android/analytics/internal/dispatcher/routing/Packet;

    invoke-virtual {v1}, Lcom/upsight/android/analytics/internal/dispatcher/routing/Packet;->routeToNext()V

    goto :goto_0

    .line 114
    :cond_0
    iget-object v1, p0, Lcom/upsight/android/analytics/internal/dispatcher/routing/Router$1;->this$0:Lcom/upsight/android/analytics/internal/dispatcher/routing/Router;

    # getter for: Lcom/upsight/android/analytics/internal/dispatcher/routing/Router;->mRoutingListener:Lcom/upsight/android/analytics/internal/dispatcher/routing/RoutingListener;
    invoke-static {v1}, Lcom/upsight/android/analytics/internal/dispatcher/routing/Router;->access$000(Lcom/upsight/android/analytics/internal/dispatcher/routing/Router;)Lcom/upsight/android/analytics/internal/dispatcher/routing/RoutingListener;

    move-result-object v1

    iget-object v2, p0, Lcom/upsight/android/analytics/internal/dispatcher/routing/Router$1;->val$packet:Lcom/upsight/android/analytics/internal/dispatcher/routing/Packet;

    invoke-virtual {v2}, Lcom/upsight/android/analytics/internal/dispatcher/routing/Packet;->getRecord()Lcom/upsight/android/analytics/internal/DataStoreRecord;

    move-result-object v2

    iget-object v3, p0, Lcom/upsight/android/analytics/internal/dispatcher/routing/Router$1;->val$packet:Lcom/upsight/android/analytics/internal/dispatcher/routing/Packet;

    invoke-virtual {v3}, Lcom/upsight/android/analytics/internal/dispatcher/routing/Packet;->getDeliveryHistory()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v4, v4, v3}, Lcom/upsight/android/analytics/internal/dispatcher/routing/RoutingListener;->onDelivery(Lcom/upsight/android/analytics/internal/DataStoreRecord;ZZLjava/lang/String;)V

    .line 115
    iget-object v1, p0, Lcom/upsight/android/analytics/internal/dispatcher/routing/Router$1;->this$0:Lcom/upsight/android/analytics/internal/dispatcher/routing/Router;

    # invokes: Lcom/upsight/android/analytics/internal/dispatcher/routing/Router;->finishPacket()V
    invoke-static {v1}, Lcom/upsight/android/analytics/internal/dispatcher/routing/Router;->access$100(Lcom/upsight/android/analytics/internal/dispatcher/routing/Router;)V

    goto :goto_0

    .line 120
    :pswitch_1
    iget-object v1, p0, Lcom/upsight/android/analytics/internal/dispatcher/routing/Router$1;->this$0:Lcom/upsight/android/analytics/internal/dispatcher/routing/Router;

    # getter for: Lcom/upsight/android/analytics/internal/dispatcher/routing/Router;->mRoutingListener:Lcom/upsight/android/analytics/internal/dispatcher/routing/RoutingListener;
    invoke-static {v1}, Lcom/upsight/android/analytics/internal/dispatcher/routing/Router;->access$000(Lcom/upsight/android/analytics/internal/dispatcher/routing/Router;)Lcom/upsight/android/analytics/internal/dispatcher/routing/RoutingListener;

    move-result-object v1

    iget-object v2, p0, Lcom/upsight/android/analytics/internal/dispatcher/routing/Router$1;->val$packet:Lcom/upsight/android/analytics/internal/dispatcher/routing/Packet;

    invoke-virtual {v2}, Lcom/upsight/android/analytics/internal/dispatcher/routing/Packet;->getRecord()Lcom/upsight/android/analytics/internal/DataStoreRecord;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v1, v2, v5, v4, v3}, Lcom/upsight/android/analytics/internal/dispatcher/routing/RoutingListener;->onDelivery(Lcom/upsight/android/analytics/internal/DataStoreRecord;ZZLjava/lang/String;)V

    .line 121
    iget-object v1, p0, Lcom/upsight/android/analytics/internal/dispatcher/routing/Router$1;->this$0:Lcom/upsight/android/analytics/internal/dispatcher/routing/Router;

    # invokes: Lcom/upsight/android/analytics/internal/dispatcher/routing/Router;->finishPacket()V
    invoke-static {v1}, Lcom/upsight/android/analytics/internal/dispatcher/routing/Router;->access$100(Lcom/upsight/android/analytics/internal/dispatcher/routing/Router;)V

    goto :goto_0

    .line 125
    :pswitch_2
    iget-object v1, p0, Lcom/upsight/android/analytics/internal/dispatcher/routing/Router$1;->this$0:Lcom/upsight/android/analytics/internal/dispatcher/routing/Router;

    # getter for: Lcom/upsight/android/analytics/internal/dispatcher/routing/Router;->mRoutingListener:Lcom/upsight/android/analytics/internal/dispatcher/routing/RoutingListener;
    invoke-static {v1}, Lcom/upsight/android/analytics/internal/dispatcher/routing/Router;->access$000(Lcom/upsight/android/analytics/internal/dispatcher/routing/Router;)Lcom/upsight/android/analytics/internal/dispatcher/routing/RoutingListener;

    move-result-object v1

    iget-object v2, p0, Lcom/upsight/android/analytics/internal/dispatcher/routing/Router$1;->val$packet:Lcom/upsight/android/analytics/internal/dispatcher/routing/Packet;

    invoke-virtual {v2}, Lcom/upsight/android/analytics/internal/dispatcher/routing/Packet;->getRecord()Lcom/upsight/android/analytics/internal/DataStoreRecord;

    move-result-object v2

    iget-object v3, p0, Lcom/upsight/android/analytics/internal/dispatcher/routing/Router$1;->val$packet:Lcom/upsight/android/analytics/internal/dispatcher/routing/Packet;

    invoke-virtual {v3}, Lcom/upsight/android/analytics/internal/dispatcher/routing/Packet;->getDeliveryHistory()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v4, v5, v3}, Lcom/upsight/android/analytics/internal/dispatcher/routing/RoutingListener;->onDelivery(Lcom/upsight/android/analytics/internal/DataStoreRecord;ZZLjava/lang/String;)V

    .line 126
    iget-object v1, p0, Lcom/upsight/android/analytics/internal/dispatcher/routing/Router$1;->this$0:Lcom/upsight/android/analytics/internal/dispatcher/routing/Router;

    # invokes: Lcom/upsight/android/analytics/internal/dispatcher/routing/Router;->finishPacket()V
    invoke-static {v1}, Lcom/upsight/android/analytics/internal/dispatcher/routing/Router;->access$100(Lcom/upsight/android/analytics/internal/dispatcher/routing/Router;)V

    goto :goto_0

    .line 109
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
