.class Lcom/nianticlabs/nia/contextservice/GoogleApiManager$1;
.super Ljava/lang/Object;
.source "GoogleApiManager.java"

# interfaces
.implements Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nianticlabs/nia/contextservice/GoogleApiManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nianticlabs/nia/contextservice/GoogleApiManager;


# direct methods
.method constructor <init>(Lcom/nianticlabs/nia/contextservice/GoogleApiManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/nianticlabs/nia/contextservice/GoogleApiManager;

    .prologue
    .line 63
    iput-object p1, p0, Lcom/nianticlabs/nia/contextservice/GoogleApiManager$1;->this$0:Lcom/nianticlabs/nia/contextservice/GoogleApiManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onConnected(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 67
    invoke-static {}, Lcom/nianticlabs/nia/contextservice/ContextService;->assertOnServiceThread()V

    .line 68
    const-string v0, "GoogleApiManager"

    const-string v1, "onConnected"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    iget-object v0, p0, Lcom/nianticlabs/nia/contextservice/GoogleApiManager$1;->this$0:Lcom/nianticlabs/nia/contextservice/GoogleApiManager;

    # invokes: Lcom/nianticlabs/nia/contextservice/GoogleApiManager;->requestStateStarted()V
    invoke-static {v0}, Lcom/nianticlabs/nia/contextservice/GoogleApiManager;->access$000(Lcom/nianticlabs/nia/contextservice/GoogleApiManager;)V

    .line 72
    return-void
.end method

.method public onConnectionSuspended(I)V
    .locals 4
    .param p1, "cause"    # I

    .prologue
    .line 77
    invoke-static {}, Lcom/nianticlabs/nia/contextservice/ContextService;->assertOnServiceThread()V

    .line 78
    const-string v1, "GoogleApiManager"

    const-string v2, "onConnectionSuspended"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    const-string v1, "GoogleApiManager"

    const/4 v2, 0x3

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 82
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Connection to Google Play Services suspended. "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 83
    .local v0, "sb":Ljava/lang/StringBuilder;
    packed-switch p1, :pswitch_data_0

    .line 91
    const-string v1, "Unknown ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 92
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 93
    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 96
    :goto_0
    const-string v1, "GoogleApiManager"

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    .end local v0    # "sb":Ljava/lang/StringBuilder;
    :cond_0
    const-string v1, "GoogleApiManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "State "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/nianticlabs/nia/contextservice/GoogleApiManager$1;->this$0:Lcom/nianticlabs/nia/contextservice/GoogleApiManager;

    # getter for: Lcom/nianticlabs/nia/contextservice/GoogleApiManager;->state:Lcom/nianticlabs/nia/contextservice/GoogleApiManager$State;
    invoke-static {v3}, Lcom/nianticlabs/nia/contextservice/GoogleApiManager;->access$100(Lcom/nianticlabs/nia/contextservice/GoogleApiManager;)Lcom/nianticlabs/nia/contextservice/GoogleApiManager$State;

    move-result-object v3

    invoke-virtual {v3}, Lcom/nianticlabs/nia/contextservice/GoogleApiManager$State;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " -> STOPPED"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    iget-object v1, p0, Lcom/nianticlabs/nia/contextservice/GoogleApiManager$1;->this$0:Lcom/nianticlabs/nia/contextservice/GoogleApiManager;

    sget-object v2, Lcom/nianticlabs/nia/contextservice/GoogleApiManager$State;->STOPPING:Lcom/nianticlabs/nia/contextservice/GoogleApiManager$State;

    # setter for: Lcom/nianticlabs/nia/contextservice/GoogleApiManager;->state:Lcom/nianticlabs/nia/contextservice/GoogleApiManager$State;
    invoke-static {v1, v2}, Lcom/nianticlabs/nia/contextservice/GoogleApiManager;->access$102(Lcom/nianticlabs/nia/contextservice/GoogleApiManager;Lcom/nianticlabs/nia/contextservice/GoogleApiManager$State;)Lcom/nianticlabs/nia/contextservice/GoogleApiManager$State;

    .line 104
    iget-object v1, p0, Lcom/nianticlabs/nia/contextservice/GoogleApiManager$1;->this$0:Lcom/nianticlabs/nia/contextservice/GoogleApiManager;

    # invokes: Lcom/nianticlabs/nia/contextservice/GoogleApiManager;->requestStateStopped()V
    invoke-static {v1}, Lcom/nianticlabs/nia/contextservice/GoogleApiManager;->access$200(Lcom/nianticlabs/nia/contextservice/GoogleApiManager;)V

    .line 105
    return-void

    .line 85
    .restart local v0    # "sb":Ljava/lang/StringBuilder;
    :pswitch_0
    const-string v1, "CAUSE_NETWORK_LOST"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 88
    :pswitch_1
    const-string v1, "CAUSE_SERVICE_DISCONNECTED"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 83
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
