.class Lcom/nianticlabs/nia/location/FusedLocationProvider$1;
.super Ljava/lang/Object;
.source "FusedLocationProvider.java"

# interfaces
.implements Lcom/nianticlabs/nia/contextservice/GoogleApiManager$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nianticlabs/nia/location/FusedLocationProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nianticlabs/nia/location/FusedLocationProvider;


# direct methods
.method constructor <init>(Lcom/nianticlabs/nia/location/FusedLocationProvider;)V
    .locals 0
    .param p1, "this$0"    # Lcom/nianticlabs/nia/location/FusedLocationProvider;

    .prologue
    .line 62
    iput-object p1, p0, Lcom/nianticlabs/nia/location/FusedLocationProvider$1;->this$0:Lcom/nianticlabs/nia/location/FusedLocationProvider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onConnected()V
    .locals 2

    .prologue
    .line 69
    iget-object v0, p0, Lcom/nianticlabs/nia/location/FusedLocationProvider$1;->this$0:Lcom/nianticlabs/nia/location/FusedLocationProvider;

    sget-object v1, Lcom/nianticlabs/nia/location/FusedLocationProvider$GoogleApiState;->STARTED:Lcom/nianticlabs/nia/location/FusedLocationProvider$GoogleApiState;

    # setter for: Lcom/nianticlabs/nia/location/FusedLocationProvider;->googleApiState:Lcom/nianticlabs/nia/location/FusedLocationProvider$GoogleApiState;
    invoke-static {v0, v1}, Lcom/nianticlabs/nia/location/FusedLocationProvider;->access$002(Lcom/nianticlabs/nia/location/FusedLocationProvider;Lcom/nianticlabs/nia/location/FusedLocationProvider$GoogleApiState;)Lcom/nianticlabs/nia/location/FusedLocationProvider$GoogleApiState;

    .line 71
    iget-object v0, p0, Lcom/nianticlabs/nia/location/FusedLocationProvider$1;->this$0:Lcom/nianticlabs/nia/location/FusedLocationProvider;

    sget-object v1, Lcom/nianticlabs/nia/contextservice/ServiceStatus;->INITIALIZED:Lcom/nianticlabs/nia/contextservice/ServiceStatus;

    # invokes: Lcom/nianticlabs/nia/location/FusedLocationProvider;->updateStatus(Lcom/nianticlabs/nia/contextservice/ServiceStatus;)V
    invoke-static {v0, v1}, Lcom/nianticlabs/nia/location/FusedLocationProvider;->access$100(Lcom/nianticlabs/nia/location/FusedLocationProvider;Lcom/nianticlabs/nia/contextservice/ServiceStatus;)V

    .line 73
    iget-object v0, p0, Lcom/nianticlabs/nia/location/FusedLocationProvider$1;->this$0:Lcom/nianticlabs/nia/location/FusedLocationProvider;

    # getter for: Lcom/nianticlabs/nia/location/FusedLocationProvider;->appState:Lcom/nianticlabs/nia/location/FusedLocationProvider$AppState;
    invoke-static {v0}, Lcom/nianticlabs/nia/location/FusedLocationProvider;->access$200(Lcom/nianticlabs/nia/location/FusedLocationProvider;)Lcom/nianticlabs/nia/location/FusedLocationProvider$AppState;

    move-result-object v0

    sget-object v1, Lcom/nianticlabs/nia/location/FusedLocationProvider$AppState;->RESUME:Lcom/nianticlabs/nia/location/FusedLocationProvider$AppState;

    if-ne v0, v1, :cond_0

    .line 74
    iget-object v0, p0, Lcom/nianticlabs/nia/location/FusedLocationProvider$1;->this$0:Lcom/nianticlabs/nia/location/FusedLocationProvider;

    # invokes: Lcom/nianticlabs/nia/location/FusedLocationProvider;->startProvider()V
    invoke-static {v0}, Lcom/nianticlabs/nia/location/FusedLocationProvider;->access$300(Lcom/nianticlabs/nia/location/FusedLocationProvider;)V

    .line 76
    :cond_0
    return-void
.end method

.method public onConnectionFailed(Lcom/google/android/gms/common/ConnectionResult;)V
    .locals 3
    .param p1, "connectionResult"    # Lcom/google/android/gms/common/ConnectionResult;

    .prologue
    .line 93
    iget-object v1, p0, Lcom/nianticlabs/nia/location/FusedLocationProvider$1;->this$0:Lcom/nianticlabs/nia/location/FusedLocationProvider;

    sget-object v2, Lcom/nianticlabs/nia/location/FusedLocationProvider$GoogleApiState;->STOPPED:Lcom/nianticlabs/nia/location/FusedLocationProvider$GoogleApiState;

    # setter for: Lcom/nianticlabs/nia/location/FusedLocationProvider;->googleApiState:Lcom/nianticlabs/nia/location/FusedLocationProvider$GoogleApiState;
    invoke-static {v1, v2}, Lcom/nianticlabs/nia/location/FusedLocationProvider;->access$002(Lcom/nianticlabs/nia/location/FusedLocationProvider;Lcom/nianticlabs/nia/location/FusedLocationProvider$GoogleApiState;)Lcom/nianticlabs/nia/location/FusedLocationProvider$GoogleApiState;

    .line 95
    if-eqz p1, :cond_0

    .line 96
    invoke-virtual {p1}, Lcom/google/android/gms/common/ConnectionResult;->getErrorCode()I

    move-result v0

    .line 97
    .local v0, "code":I
    packed-switch v0, :pswitch_data_0

    .line 102
    iget-object v1, p0, Lcom/nianticlabs/nia/location/FusedLocationProvider$1;->this$0:Lcom/nianticlabs/nia/location/FusedLocationProvider;

    sget-object v2, Lcom/nianticlabs/nia/contextservice/ServiceStatus;->FAILED:Lcom/nianticlabs/nia/contextservice/ServiceStatus;

    # invokes: Lcom/nianticlabs/nia/location/FusedLocationProvider;->updateStatus(Lcom/nianticlabs/nia/contextservice/ServiceStatus;)V
    invoke-static {v1, v2}, Lcom/nianticlabs/nia/location/FusedLocationProvider;->access$100(Lcom/nianticlabs/nia/location/FusedLocationProvider;Lcom/nianticlabs/nia/contextservice/ServiceStatus;)V

    .line 107
    .end local v0    # "code":I
    :goto_0
    return-void

    .line 99
    .restart local v0    # "code":I
    :pswitch_0
    iget-object v1, p0, Lcom/nianticlabs/nia/location/FusedLocationProvider$1;->this$0:Lcom/nianticlabs/nia/location/FusedLocationProvider;

    sget-object v2, Lcom/nianticlabs/nia/contextservice/ServiceStatus;->PERMISSION_DENIED:Lcom/nianticlabs/nia/contextservice/ServiceStatus;

    # invokes: Lcom/nianticlabs/nia/location/FusedLocationProvider;->updateStatus(Lcom/nianticlabs/nia/contextservice/ServiceStatus;)V
    invoke-static {v1, v2}, Lcom/nianticlabs/nia/location/FusedLocationProvider;->access$100(Lcom/nianticlabs/nia/location/FusedLocationProvider;Lcom/nianticlabs/nia/contextservice/ServiceStatus;)V

    goto :goto_0

    .line 105
    .end local v0    # "code":I
    :cond_0
    iget-object v1, p0, Lcom/nianticlabs/nia/location/FusedLocationProvider$1;->this$0:Lcom/nianticlabs/nia/location/FusedLocationProvider;

    sget-object v2, Lcom/nianticlabs/nia/contextservice/ServiceStatus;->FAILED:Lcom/nianticlabs/nia/contextservice/ServiceStatus;

    # invokes: Lcom/nianticlabs/nia/location/FusedLocationProvider;->updateStatus(Lcom/nianticlabs/nia/contextservice/ServiceStatus;)V
    invoke-static {v1, v2}, Lcom/nianticlabs/nia/location/FusedLocationProvider;->access$100(Lcom/nianticlabs/nia/location/FusedLocationProvider;Lcom/nianticlabs/nia/contextservice/ServiceStatus;)V

    goto :goto_0

    .line 97
    :pswitch_data_0
    .packed-switch 0x13
        :pswitch_0
    .end packed-switch
.end method

.method public onDisconnected()V
    .locals 2

    .prologue
    .line 84
    iget-object v0, p0, Lcom/nianticlabs/nia/location/FusedLocationProvider$1;->this$0:Lcom/nianticlabs/nia/location/FusedLocationProvider;

    sget-object v1, Lcom/nianticlabs/nia/location/FusedLocationProvider$GoogleApiState;->STOPPED:Lcom/nianticlabs/nia/location/FusedLocationProvider$GoogleApiState;

    # setter for: Lcom/nianticlabs/nia/location/FusedLocationProvider;->googleApiState:Lcom/nianticlabs/nia/location/FusedLocationProvider$GoogleApiState;
    invoke-static {v0, v1}, Lcom/nianticlabs/nia/location/FusedLocationProvider;->access$002(Lcom/nianticlabs/nia/location/FusedLocationProvider;Lcom/nianticlabs/nia/location/FusedLocationProvider$GoogleApiState;)Lcom/nianticlabs/nia/location/FusedLocationProvider$GoogleApiState;

    .line 85
    return-void
.end method
