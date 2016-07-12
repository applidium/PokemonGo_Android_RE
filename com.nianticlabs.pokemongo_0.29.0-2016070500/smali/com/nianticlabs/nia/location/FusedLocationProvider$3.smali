.class Lcom/nianticlabs/nia/location/FusedLocationProvider$3;
.super Ljava/lang/Object;
.source "FusedLocationProvider.java"

# interfaces
.implements Lcom/google/android/gms/common/api/ResultCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nianticlabs/nia/location/FusedLocationProvider;->stopProvider()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/common/api/ResultCallback",
        "<",
        "Lcom/google/android/gms/common/api/Status;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nianticlabs/nia/location/FusedLocationProvider;


# direct methods
.method constructor <init>(Lcom/nianticlabs/nia/location/FusedLocationProvider;)V
    .locals 0
    .param p1, "this$0"    # Lcom/nianticlabs/nia/location/FusedLocationProvider;

    .prologue
    .line 200
    iput-object p1, p0, Lcom/nianticlabs/nia/location/FusedLocationProvider$3;->this$0:Lcom/nianticlabs/nia/location/FusedLocationProvider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onResult(Lcom/google/android/gms/common/api/Result;)V
    .locals 0

    .prologue
    .line 200
    check-cast p1, Lcom/google/android/gms/common/api/Status;

    invoke-virtual {p0, p1}, Lcom/nianticlabs/nia/location/FusedLocationProvider$3;->onResult(Lcom/google/android/gms/common/api/Status;)V

    return-void
.end method

.method public onResult(Lcom/google/android/gms/common/api/Status;)V
    .locals 2
    .param p1, "status"    # Lcom/google/android/gms/common/api/Status;

    .prologue
    .line 207
    invoke-virtual {p1}, Lcom/google/android/gms/common/api/Status;->isSuccess()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 208
    iget-object v0, p0, Lcom/nianticlabs/nia/location/FusedLocationProvider$3;->this$0:Lcom/nianticlabs/nia/location/FusedLocationProvider;

    sget-object v1, Lcom/nianticlabs/nia/contextservice/ServiceStatus;->STOPPED:Lcom/nianticlabs/nia/contextservice/ServiceStatus;

    # invokes: Lcom/nianticlabs/nia/location/FusedLocationProvider;->updateStatus(Lcom/nianticlabs/nia/contextservice/ServiceStatus;)V
    invoke-static {v0, v1}, Lcom/nianticlabs/nia/location/FusedLocationProvider;->access$100(Lcom/nianticlabs/nia/location/FusedLocationProvider;Lcom/nianticlabs/nia/contextservice/ServiceStatus;)V

    .line 210
    :cond_0
    return-void
.end method
