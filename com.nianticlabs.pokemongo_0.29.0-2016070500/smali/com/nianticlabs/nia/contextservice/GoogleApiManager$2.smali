.class Lcom/nianticlabs/nia/contextservice/GoogleApiManager$2;
.super Ljava/lang/Object;
.source "GoogleApiManager.java"

# interfaces
.implements Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;


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
    .line 109
    iput-object p1, p0, Lcom/nianticlabs/nia/contextservice/GoogleApiManager$2;->this$0:Lcom/nianticlabs/nia/contextservice/GoogleApiManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onConnectionFailed(Lcom/google/android/gms/common/ConnectionResult;)V
    .locals 1
    .param p1, "connectionResult"    # Lcom/google/android/gms/common/ConnectionResult;

    .prologue
    .line 113
    invoke-static {}, Lcom/nianticlabs/nia/contextservice/ContextService;->assertOnServiceThread()V

    .line 115
    iget-object v0, p0, Lcom/nianticlabs/nia/contextservice/GoogleApiManager$2;->this$0:Lcom/nianticlabs/nia/contextservice/GoogleApiManager;

    # invokes: Lcom/nianticlabs/nia/contextservice/GoogleApiManager;->requestStateStartFailed(Lcom/google/android/gms/common/ConnectionResult;)V
    invoke-static {v0, p1}, Lcom/nianticlabs/nia/contextservice/GoogleApiManager;->access$300(Lcom/nianticlabs/nia/contextservice/GoogleApiManager;Lcom/google/android/gms/common/ConnectionResult;)V

    .line 116
    return-void
.end method
