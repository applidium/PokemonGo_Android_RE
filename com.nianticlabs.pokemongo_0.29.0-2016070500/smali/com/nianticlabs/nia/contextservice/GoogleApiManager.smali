.class public Lcom/nianticlabs/nia/contextservice/GoogleApiManager;
.super Ljava/lang/Object;
.source "GoogleApiManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nianticlabs/nia/contextservice/GoogleApiManager$State;,
        Lcom/nianticlabs/nia/contextservice/GoogleApiManager$AppState;,
        Lcom/nianticlabs/nia/contextservice/GoogleApiManager$Listener;
    }
.end annotation


# static fields
.field private static final ENABLE_VERBOSE_LOGS:Z = true

.field private static final TAG:Ljava/lang/String; = "GoogleApiManager"


# instance fields
.field private appState:Lcom/nianticlabs/nia/contextservice/GoogleApiManager$AppState;

.field private final connectionCallbacks:Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;

.field private final connectionFailedListener:Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;

.field private final googleApiBuilder:Lcom/google/android/gms/common/api/GoogleApiClient$Builder;

.field private googleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

.field private listener:Lcom/nianticlabs/nia/contextservice/GoogleApiManager$Listener;

.field private state:Lcom/nianticlabs/nia/contextservice/GoogleApiManager$State;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 119
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    sget-object v0, Lcom/nianticlabs/nia/contextservice/GoogleApiManager$State;->STOPPED:Lcom/nianticlabs/nia/contextservice/GoogleApiManager$State;

    iput-object v0, p0, Lcom/nianticlabs/nia/contextservice/GoogleApiManager;->state:Lcom/nianticlabs/nia/contextservice/GoogleApiManager$State;

    .line 55
    sget-object v0, Lcom/nianticlabs/nia/contextservice/GoogleApiManager$AppState;->STOP:Lcom/nianticlabs/nia/contextservice/GoogleApiManager$AppState;

    iput-object v0, p0, Lcom/nianticlabs/nia/contextservice/GoogleApiManager;->appState:Lcom/nianticlabs/nia/contextservice/GoogleApiManager$AppState;

    .line 57
    iput-object v1, p0, Lcom/nianticlabs/nia/contextservice/GoogleApiManager;->listener:Lcom/nianticlabs/nia/contextservice/GoogleApiManager$Listener;

    .line 59
    iput-object v1, p0, Lcom/nianticlabs/nia/contextservice/GoogleApiManager;->googleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    .line 63
    new-instance v0, Lcom/nianticlabs/nia/contextservice/GoogleApiManager$1;

    invoke-direct {v0, p0}, Lcom/nianticlabs/nia/contextservice/GoogleApiManager$1;-><init>(Lcom/nianticlabs/nia/contextservice/GoogleApiManager;)V

    iput-object v0, p0, Lcom/nianticlabs/nia/contextservice/GoogleApiManager;->connectionCallbacks:Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;

    .line 108
    new-instance v0, Lcom/nianticlabs/nia/contextservice/GoogleApiManager$2;

    invoke-direct {v0, p0}, Lcom/nianticlabs/nia/contextservice/GoogleApiManager$2;-><init>(Lcom/nianticlabs/nia/contextservice/GoogleApiManager;)V

    iput-object v0, p0, Lcom/nianticlabs/nia/contextservice/GoogleApiManager;->connectionFailedListener:Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;

    .line 120
    iget-object v0, p0, Lcom/nianticlabs/nia/contextservice/GoogleApiManager;->googleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    iput-object v0, p0, Lcom/nianticlabs/nia/contextservice/GoogleApiManager;->googleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    .line 122
    new-instance v0, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;

    invoke-direct {v0, p1}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/nianticlabs/nia/contextservice/GoogleApiManager;->connectionCallbacks:Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;

    .line 123
    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->addConnectionCallbacks(Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;)Lcom/google/android/gms/common/api/GoogleApiClient$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/nianticlabs/nia/contextservice/GoogleApiManager;->connectionFailedListener:Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;

    .line 124
    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->addOnConnectionFailedListener(Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;)Lcom/google/android/gms/common/api/GoogleApiClient$Builder;

    move-result-object v0

    .line 125
    invoke-static {}, Lcom/nianticlabs/nia/contextservice/ContextService;->getServiceHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->setHandler(Landroid/os/Handler;)Lcom/google/android/gms/common/api/GoogleApiClient$Builder;

    move-result-object v0

    iput-object v0, p0, Lcom/nianticlabs/nia/contextservice/GoogleApiManager;->googleApiBuilder:Lcom/google/android/gms/common/api/GoogleApiClient$Builder;

    .line 126
    return-void
.end method

.method static synthetic access$000(Lcom/nianticlabs/nia/contextservice/GoogleApiManager;)V
    .locals 0
    .param p0, "x0"    # Lcom/nianticlabs/nia/contextservice/GoogleApiManager;

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/nianticlabs/nia/contextservice/GoogleApiManager;->requestStateStarted()V

    return-void
.end method

.method static synthetic access$100(Lcom/nianticlabs/nia/contextservice/GoogleApiManager;)Lcom/nianticlabs/nia/contextservice/GoogleApiManager$State;
    .locals 1
    .param p0, "x0"    # Lcom/nianticlabs/nia/contextservice/GoogleApiManager;

    .prologue
    .line 19
    iget-object v0, p0, Lcom/nianticlabs/nia/contextservice/GoogleApiManager;->state:Lcom/nianticlabs/nia/contextservice/GoogleApiManager$State;

    return-object v0
.end method

.method static synthetic access$102(Lcom/nianticlabs/nia/contextservice/GoogleApiManager;Lcom/nianticlabs/nia/contextservice/GoogleApiManager$State;)Lcom/nianticlabs/nia/contextservice/GoogleApiManager$State;
    .locals 0
    .param p0, "x0"    # Lcom/nianticlabs/nia/contextservice/GoogleApiManager;
    .param p1, "x1"    # Lcom/nianticlabs/nia/contextservice/GoogleApiManager$State;

    .prologue
    .line 19
    iput-object p1, p0, Lcom/nianticlabs/nia/contextservice/GoogleApiManager;->state:Lcom/nianticlabs/nia/contextservice/GoogleApiManager$State;

    return-object p1
.end method

.method static synthetic access$200(Lcom/nianticlabs/nia/contextservice/GoogleApiManager;)V
    .locals 0
    .param p0, "x0"    # Lcom/nianticlabs/nia/contextservice/GoogleApiManager;

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/nianticlabs/nia/contextservice/GoogleApiManager;->requestStateStopped()V

    return-void
.end method

.method static synthetic access$300(Lcom/nianticlabs/nia/contextservice/GoogleApiManager;Lcom/google/android/gms/common/ConnectionResult;)V
    .locals 0
    .param p0, "x0"    # Lcom/nianticlabs/nia/contextservice/GoogleApiManager;
    .param p1, "x1"    # Lcom/google/android/gms/common/ConnectionResult;

    .prologue
    .line 19
    invoke-direct {p0, p1}, Lcom/nianticlabs/nia/contextservice/GoogleApiManager;->requestStateStartFailed(Lcom/google/android/gms/common/ConnectionResult;)V

    return-void
.end method

.method private requestStateStartFailed(Lcom/google/android/gms/common/ConnectionResult;)V
    .locals 3
    .param p1, "connectionResult"    # Lcom/google/android/gms/common/ConnectionResult;

    .prologue
    .line 219
    const-string v0, "GoogleApiManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "requestStateStartFailed "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/nianticlabs/nia/contextservice/GoogleApiManager;->appState:Lcom/nianticlabs/nia/contextservice/GoogleApiManager$AppState;

    invoke-virtual {v2}, Lcom/nianticlabs/nia/contextservice/GoogleApiManager$AppState;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/nianticlabs/nia/contextservice/GoogleApiManager;->state:Lcom/nianticlabs/nia/contextservice/GoogleApiManager$State;

    invoke-virtual {v2}, Lcom/nianticlabs/nia/contextservice/GoogleApiManager$State;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 222
    iget-object v0, p0, Lcom/nianticlabs/nia/contextservice/GoogleApiManager;->state:Lcom/nianticlabs/nia/contextservice/GoogleApiManager$State;

    sget-object v1, Lcom/nianticlabs/nia/contextservice/GoogleApiManager$State;->STARTING:Lcom/nianticlabs/nia/contextservice/GoogleApiManager$State;

    if-ne v0, v1, :cond_0

    .line 224
    const-string v0, "GoogleApiManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "State "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/nianticlabs/nia/contextservice/GoogleApiManager;->state:Lcom/nianticlabs/nia/contextservice/GoogleApiManager$State;

    invoke-virtual {v2}, Lcom/nianticlabs/nia/contextservice/GoogleApiManager$State;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " -> START_FAILED"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 226
    sget-object v0, Lcom/nianticlabs/nia/contextservice/GoogleApiManager$State;->START_FAILED:Lcom/nianticlabs/nia/contextservice/GoogleApiManager$State;

    iput-object v0, p0, Lcom/nianticlabs/nia/contextservice/GoogleApiManager;->state:Lcom/nianticlabs/nia/contextservice/GoogleApiManager$State;

    .line 228
    iget-object v0, p0, Lcom/nianticlabs/nia/contextservice/GoogleApiManager;->listener:Lcom/nianticlabs/nia/contextservice/GoogleApiManager$Listener;

    if-eqz v0, :cond_0

    .line 229
    iget-object v0, p0, Lcom/nianticlabs/nia/contextservice/GoogleApiManager;->listener:Lcom/nianticlabs/nia/contextservice/GoogleApiManager$Listener;

    invoke-interface {v0, p1}, Lcom/nianticlabs/nia/contextservice/GoogleApiManager$Listener;->onConnectionFailed(Lcom/google/android/gms/common/ConnectionResult;)V

    .line 232
    :cond_0
    return-void
.end method

.method private requestStateStarted()V
    .locals 3

    .prologue
    .line 236
    const-string v0, "GoogleApiManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "requestStateStarted "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/nianticlabs/nia/contextservice/GoogleApiManager;->appState:Lcom/nianticlabs/nia/contextservice/GoogleApiManager$AppState;

    invoke-virtual {v2}, Lcom/nianticlabs/nia/contextservice/GoogleApiManager$AppState;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/nianticlabs/nia/contextservice/GoogleApiManager;->state:Lcom/nianticlabs/nia/contextservice/GoogleApiManager$State;

    invoke-virtual {v2}, Lcom/nianticlabs/nia/contextservice/GoogleApiManager$State;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 239
    iget-object v0, p0, Lcom/nianticlabs/nia/contextservice/GoogleApiManager;->state:Lcom/nianticlabs/nia/contextservice/GoogleApiManager$State;

    sget-object v1, Lcom/nianticlabs/nia/contextservice/GoogleApiManager$State;->STARTING:Lcom/nianticlabs/nia/contextservice/GoogleApiManager$State;

    if-ne v0, v1, :cond_1

    .line 241
    const-string v0, "GoogleApiManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "State "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/nianticlabs/nia/contextservice/GoogleApiManager;->state:Lcom/nianticlabs/nia/contextservice/GoogleApiManager$State;

    invoke-virtual {v2}, Lcom/nianticlabs/nia/contextservice/GoogleApiManager$State;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " -> STARTED"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 243
    sget-object v0, Lcom/nianticlabs/nia/contextservice/GoogleApiManager$State;->STARTED:Lcom/nianticlabs/nia/contextservice/GoogleApiManager$State;

    iput-object v0, p0, Lcom/nianticlabs/nia/contextservice/GoogleApiManager;->state:Lcom/nianticlabs/nia/contextservice/GoogleApiManager$State;

    .line 245
    iget-object v0, p0, Lcom/nianticlabs/nia/contextservice/GoogleApiManager;->listener:Lcom/nianticlabs/nia/contextservice/GoogleApiManager$Listener;

    if-eqz v0, :cond_0

    .line 246
    iget-object v0, p0, Lcom/nianticlabs/nia/contextservice/GoogleApiManager;->listener:Lcom/nianticlabs/nia/contextservice/GoogleApiManager$Listener;

    invoke-interface {v0}, Lcom/nianticlabs/nia/contextservice/GoogleApiManager$Listener;->onConnected()V

    .line 249
    :cond_0
    sget-object v0, Lcom/nianticlabs/nia/contextservice/GoogleApiManager$3;->$SwitchMap$com$nianticlabs$nia$contextservice$GoogleApiManager$AppState:[I

    iget-object v1, p0, Lcom/nianticlabs/nia/contextservice/GoogleApiManager;->appState:Lcom/nianticlabs/nia/contextservice/GoogleApiManager$AppState;

    invoke-virtual {v1}, Lcom/nianticlabs/nia/contextservice/GoogleApiManager$AppState;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 257
    :cond_1
    :goto_0
    return-void

    .line 251
    :pswitch_0
    invoke-direct {p0}, Lcom/nianticlabs/nia/contextservice/GoogleApiManager;->requestStateStopping()V

    goto :goto_0

    .line 249
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method private requestStateStarting()V
    .locals 3

    .prologue
    .line 197
    const-string v0, "GoogleApiManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "requestStateStarting "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/nianticlabs/nia/contextservice/GoogleApiManager;->appState:Lcom/nianticlabs/nia/contextservice/GoogleApiManager$AppState;

    invoke-virtual {v2}, Lcom/nianticlabs/nia/contextservice/GoogleApiManager$AppState;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/nianticlabs/nia/contextservice/GoogleApiManager;->state:Lcom/nianticlabs/nia/contextservice/GoogleApiManager$State;

    invoke-virtual {v2}, Lcom/nianticlabs/nia/contextservice/GoogleApiManager$State;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    iget-object v0, p0, Lcom/nianticlabs/nia/contextservice/GoogleApiManager;->appState:Lcom/nianticlabs/nia/contextservice/GoogleApiManager$AppState;

    sget-object v1, Lcom/nianticlabs/nia/contextservice/GoogleApiManager$AppState;->STOP:Lcom/nianticlabs/nia/contextservice/GoogleApiManager$AppState;

    if-eq v0, v1, :cond_0

    .line 201
    sget-object v0, Lcom/nianticlabs/nia/contextservice/GoogleApiManager$3;->$SwitchMap$com$nianticlabs$nia$contextservice$GoogleApiManager$State:[I

    iget-object v1, p0, Lcom/nianticlabs/nia/contextservice/GoogleApiManager;->state:Lcom/nianticlabs/nia/contextservice/GoogleApiManager$State;

    invoke-virtual {v1}, Lcom/nianticlabs/nia/contextservice/GoogleApiManager$State;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 215
    :cond_0
    :goto_0
    return-void

    .line 206
    :pswitch_0
    const-string v0, "GoogleApiManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "State "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/nianticlabs/nia/contextservice/GoogleApiManager;->state:Lcom/nianticlabs/nia/contextservice/GoogleApiManager$State;

    invoke-virtual {v2}, Lcom/nianticlabs/nia/contextservice/GoogleApiManager$State;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " -> STARTING"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 208
    sget-object v0, Lcom/nianticlabs/nia/contextservice/GoogleApiManager$State;->STARTING:Lcom/nianticlabs/nia/contextservice/GoogleApiManager$State;

    iput-object v0, p0, Lcom/nianticlabs/nia/contextservice/GoogleApiManager;->state:Lcom/nianticlabs/nia/contextservice/GoogleApiManager$State;

    .line 209
    iget-object v0, p0, Lcom/nianticlabs/nia/contextservice/GoogleApiManager;->googleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->connect()V

    goto :goto_0

    .line 201
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private requestStateStopped()V
    .locals 3

    .prologue
    .line 281
    const-string v0, "GoogleApiManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "requestStateStopped "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/nianticlabs/nia/contextservice/GoogleApiManager;->appState:Lcom/nianticlabs/nia/contextservice/GoogleApiManager$AppState;

    invoke-virtual {v2}, Lcom/nianticlabs/nia/contextservice/GoogleApiManager$AppState;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/nianticlabs/nia/contextservice/GoogleApiManager;->state:Lcom/nianticlabs/nia/contextservice/GoogleApiManager$State;

    invoke-virtual {v2}, Lcom/nianticlabs/nia/contextservice/GoogleApiManager$State;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 284
    iget-object v0, p0, Lcom/nianticlabs/nia/contextservice/GoogleApiManager;->state:Lcom/nianticlabs/nia/contextservice/GoogleApiManager$State;

    sget-object v1, Lcom/nianticlabs/nia/contextservice/GoogleApiManager$State;->STOPPING:Lcom/nianticlabs/nia/contextservice/GoogleApiManager$State;

    if-ne v0, v1, :cond_0

    .line 286
    const-string v0, "GoogleApiManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "State "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/nianticlabs/nia/contextservice/GoogleApiManager;->state:Lcom/nianticlabs/nia/contextservice/GoogleApiManager$State;

    invoke-virtual {v2}, Lcom/nianticlabs/nia/contextservice/GoogleApiManager$State;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " -> STOPPED"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 288
    sget-object v0, Lcom/nianticlabs/nia/contextservice/GoogleApiManager$State;->STOPPED:Lcom/nianticlabs/nia/contextservice/GoogleApiManager$State;

    iput-object v0, p0, Lcom/nianticlabs/nia/contextservice/GoogleApiManager;->state:Lcom/nianticlabs/nia/contextservice/GoogleApiManager$State;

    .line 290
    iget-object v0, p0, Lcom/nianticlabs/nia/contextservice/GoogleApiManager;->listener:Lcom/nianticlabs/nia/contextservice/GoogleApiManager$Listener;

    if-eqz v0, :cond_0

    .line 291
    iget-object v0, p0, Lcom/nianticlabs/nia/contextservice/GoogleApiManager;->listener:Lcom/nianticlabs/nia/contextservice/GoogleApiManager$Listener;

    invoke-interface {v0}, Lcom/nianticlabs/nia/contextservice/GoogleApiManager$Listener;->onDisconnected()V

    .line 294
    :cond_0
    return-void
.end method

.method private requestStateStopping()V
    .locals 3

    .prologue
    .line 261
    const-string v0, "GoogleApiManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "requestStateStopping "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/nianticlabs/nia/contextservice/GoogleApiManager;->appState:Lcom/nianticlabs/nia/contextservice/GoogleApiManager$AppState;

    invoke-virtual {v2}, Lcom/nianticlabs/nia/contextservice/GoogleApiManager$AppState;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/nianticlabs/nia/contextservice/GoogleApiManager;->state:Lcom/nianticlabs/nia/contextservice/GoogleApiManager$State;

    invoke-virtual {v2}, Lcom/nianticlabs/nia/contextservice/GoogleApiManager$State;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 264
    sget-object v0, Lcom/nianticlabs/nia/contextservice/GoogleApiManager$3;->$SwitchMap$com$nianticlabs$nia$contextservice$GoogleApiManager$State:[I

    iget-object v1, p0, Lcom/nianticlabs/nia/contextservice/GoogleApiManager;->state:Lcom/nianticlabs/nia/contextservice/GoogleApiManager$State;

    invoke-virtual {v1}, Lcom/nianticlabs/nia/contextservice/GoogleApiManager$State;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 277
    :goto_0
    return-void

    .line 267
    :pswitch_0
    const-string v0, "GoogleApiManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "State "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/nianticlabs/nia/contextservice/GoogleApiManager;->state:Lcom/nianticlabs/nia/contextservice/GoogleApiManager$State;

    invoke-virtual {v2}, Lcom/nianticlabs/nia/contextservice/GoogleApiManager$State;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " -> STOPPING"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 269
    sget-object v0, Lcom/nianticlabs/nia/contextservice/GoogleApiManager$State;->STOPPING:Lcom/nianticlabs/nia/contextservice/GoogleApiManager$State;

    iput-object v0, p0, Lcom/nianticlabs/nia/contextservice/GoogleApiManager;->state:Lcom/nianticlabs/nia/contextservice/GoogleApiManager$State;

    .line 271
    iget-object v0, p0, Lcom/nianticlabs/nia/contextservice/GoogleApiManager;->googleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->disconnect()V

    .line 272
    invoke-direct {p0}, Lcom/nianticlabs/nia/contextservice/GoogleApiManager;->requestStateStopped()V

    goto :goto_0

    .line 264
    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public build()V
    .locals 2

    .prologue
    .line 144
    iget-object v0, p0, Lcom/nianticlabs/nia/contextservice/GoogleApiManager;->googleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    if-eqz v0, :cond_0

    .line 145
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Calling build() after already built"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 148
    :cond_0
    iget-object v0, p0, Lcom/nianticlabs/nia/contextservice/GoogleApiManager;->googleApiBuilder:Lcom/google/android/gms/common/api/GoogleApiClient$Builder;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->build()Lcom/google/android/gms/common/api/GoogleApiClient;

    move-result-object v0

    iput-object v0, p0, Lcom/nianticlabs/nia/contextservice/GoogleApiManager;->googleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    .line 149
    return-void
.end method

.method public builder()Lcom/google/android/gms/common/api/GoogleApiClient$Builder;
    .locals 2

    .prologue
    .line 133
    iget-object v0, p0, Lcom/nianticlabs/nia/contextservice/GoogleApiManager;->googleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    if-eqz v0, :cond_0

    .line 134
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Calling builder() after already built"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 137
    :cond_0
    iget-object v0, p0, Lcom/nianticlabs/nia/contextservice/GoogleApiManager;->googleApiBuilder:Lcom/google/android/gms/common/api/GoogleApiClient$Builder;

    return-object v0
.end method

.method public getClient()Lcom/google/android/gms/common/api/GoogleApiClient;
    .locals 1

    .prologue
    .line 152
    iget-object v0, p0, Lcom/nianticlabs/nia/contextservice/GoogleApiManager;->googleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    return-object v0
.end method

.method public onPause()V
    .locals 3

    .prologue
    .line 189
    const-string v0, "GoogleApiManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPause "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/nianticlabs/nia/contextservice/GoogleApiManager;->appState:Lcom/nianticlabs/nia/contextservice/GoogleApiManager$AppState;

    invoke-virtual {v2}, Lcom/nianticlabs/nia/contextservice/GoogleApiManager$AppState;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/nianticlabs/nia/contextservice/GoogleApiManager;->state:Lcom/nianticlabs/nia/contextservice/GoogleApiManager$State;

    invoke-virtual {v2}, Lcom/nianticlabs/nia/contextservice/GoogleApiManager$State;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    invoke-static {}, Lcom/nianticlabs/nia/contextservice/ContextService;->assertOnServiceThread()V

    .line 192
    sget-object v0, Lcom/nianticlabs/nia/contextservice/GoogleApiManager$AppState;->PAUSE:Lcom/nianticlabs/nia/contextservice/GoogleApiManager$AppState;

    iput-object v0, p0, Lcom/nianticlabs/nia/contextservice/GoogleApiManager;->appState:Lcom/nianticlabs/nia/contextservice/GoogleApiManager$AppState;

    .line 193
    return-void
.end method

.method public onResume()V
    .locals 3

    .prologue
    .line 181
    const-string v0, "GoogleApiManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onResume "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/nianticlabs/nia/contextservice/GoogleApiManager;->appState:Lcom/nianticlabs/nia/contextservice/GoogleApiManager$AppState;

    invoke-virtual {v2}, Lcom/nianticlabs/nia/contextservice/GoogleApiManager$AppState;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/nianticlabs/nia/contextservice/GoogleApiManager;->state:Lcom/nianticlabs/nia/contextservice/GoogleApiManager$State;

    invoke-virtual {v2}, Lcom/nianticlabs/nia/contextservice/GoogleApiManager$State;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    invoke-static {}, Lcom/nianticlabs/nia/contextservice/ContextService;->assertOnServiceThread()V

    .line 184
    sget-object v0, Lcom/nianticlabs/nia/contextservice/GoogleApiManager$AppState;->RESUME:Lcom/nianticlabs/nia/contextservice/GoogleApiManager$AppState;

    iput-object v0, p0, Lcom/nianticlabs/nia/contextservice/GoogleApiManager;->appState:Lcom/nianticlabs/nia/contextservice/GoogleApiManager$AppState;

    .line 185
    return-void
.end method

.method public onStart()V
    .locals 3

    .prologue
    .line 161
    const-string v0, "GoogleApiManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onStart "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/nianticlabs/nia/contextservice/GoogleApiManager;->appState:Lcom/nianticlabs/nia/contextservice/GoogleApiManager$AppState;

    invoke-virtual {v2}, Lcom/nianticlabs/nia/contextservice/GoogleApiManager$AppState;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/nianticlabs/nia/contextservice/GoogleApiManager;->state:Lcom/nianticlabs/nia/contextservice/GoogleApiManager$State;

    invoke-virtual {v2}, Lcom/nianticlabs/nia/contextservice/GoogleApiManager$State;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    invoke-static {}, Lcom/nianticlabs/nia/contextservice/ContextService;->assertOnServiceThread()V

    .line 164
    sget-object v0, Lcom/nianticlabs/nia/contextservice/GoogleApiManager$AppState;->START:Lcom/nianticlabs/nia/contextservice/GoogleApiManager$AppState;

    iput-object v0, p0, Lcom/nianticlabs/nia/contextservice/GoogleApiManager;->appState:Lcom/nianticlabs/nia/contextservice/GoogleApiManager$AppState;

    .line 166
    invoke-direct {p0}, Lcom/nianticlabs/nia/contextservice/GoogleApiManager;->requestStateStarting()V

    .line 167
    return-void
.end method

.method public onStop()V
    .locals 3

    .prologue
    .line 171
    const-string v0, "GoogleApiManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onStop "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/nianticlabs/nia/contextservice/GoogleApiManager;->appState:Lcom/nianticlabs/nia/contextservice/GoogleApiManager$AppState;

    invoke-virtual {v2}, Lcom/nianticlabs/nia/contextservice/GoogleApiManager$AppState;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/nianticlabs/nia/contextservice/GoogleApiManager;->state:Lcom/nianticlabs/nia/contextservice/GoogleApiManager$State;

    invoke-virtual {v2}, Lcom/nianticlabs/nia/contextservice/GoogleApiManager$State;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    invoke-static {}, Lcom/nianticlabs/nia/contextservice/ContextService;->assertOnServiceThread()V

    .line 174
    sget-object v0, Lcom/nianticlabs/nia/contextservice/GoogleApiManager$AppState;->STOP:Lcom/nianticlabs/nia/contextservice/GoogleApiManager$AppState;

    iput-object v0, p0, Lcom/nianticlabs/nia/contextservice/GoogleApiManager;->appState:Lcom/nianticlabs/nia/contextservice/GoogleApiManager$AppState;

    .line 176
    invoke-direct {p0}, Lcom/nianticlabs/nia/contextservice/GoogleApiManager;->requestStateStopping()V

    .line 177
    return-void
.end method

.method public setListener(Lcom/nianticlabs/nia/contextservice/GoogleApiManager$Listener;)V
    .locals 0
    .param p1, "listener"    # Lcom/nianticlabs/nia/contextservice/GoogleApiManager$Listener;

    .prologue
    .line 156
    iput-object p1, p0, Lcom/nianticlabs/nia/contextservice/GoogleApiManager;->listener:Lcom/nianticlabs/nia/contextservice/GoogleApiManager$Listener;

    .line 157
    return-void
.end method
