.class public Lcom/nianticlabs/nia/useractivity/NianticActivityManager;
.super Lcom/nianticlabs/nia/contextservice/ContextService;
.source "NianticActivityManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nianticlabs/nia/useractivity/NianticActivityManager$GoogleApiState;,
        Lcom/nianticlabs/nia/useractivity/NianticActivityManager$AppState;
    }
.end annotation


# static fields
.field private static final ACTIVITY_DETECTION_INTERVAL_MS:J = 0x1388L

.field private static final TAG:Ljava/lang/String; = "NianticActivityManager"

.field private static instance:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/nianticlabs/nia/useractivity/NianticActivityManager;",
            ">;"
        }
    .end annotation
.end field

.field private static instanceLock:Ljava/lang/Object;


# instance fields
.field private final activityRecognitionIntent:Landroid/app/PendingIntent;

.field private appState:Lcom/nianticlabs/nia/useractivity/NianticActivityManager$AppState;

.field googleApiListener:Lcom/nianticlabs/nia/contextservice/GoogleApiManager$Listener;

.field private final googleApiManager:Lcom/nianticlabs/nia/contextservice/GoogleApiManager;

.field private googleApiState:Lcom/nianticlabs/nia/useractivity/NianticActivityManager$GoogleApiState;

.field private status:Lcom/nianticlabs/nia/contextservice/ServiceStatus;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 51
    const/4 v0, 0x0

    sput-object v0, Lcom/nianticlabs/nia/useractivity/NianticActivityManager;->instance:Ljava/lang/ref/WeakReference;

    .line 52
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/nianticlabs/nia/useractivity/NianticActivityManager;->instanceLock:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;J)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "nativeClassPointer"    # J

    .prologue
    .line 75
    invoke-direct {p0, p1, p2, p3}, Lcom/nianticlabs/nia/contextservice/ContextService;-><init>(Landroid/content/Context;J)V

    .line 47
    sget-object v0, Lcom/nianticlabs/nia/useractivity/NianticActivityManager$GoogleApiState;->STOPPED:Lcom/nianticlabs/nia/useractivity/NianticActivityManager$GoogleApiState;

    iput-object v0, p0, Lcom/nianticlabs/nia/useractivity/NianticActivityManager;->googleApiState:Lcom/nianticlabs/nia/useractivity/NianticActivityManager$GoogleApiState;

    .line 48
    sget-object v0, Lcom/nianticlabs/nia/useractivity/NianticActivityManager$AppState;->STOP:Lcom/nianticlabs/nia/useractivity/NianticActivityManager$AppState;

    iput-object v0, p0, Lcom/nianticlabs/nia/useractivity/NianticActivityManager;->appState:Lcom/nianticlabs/nia/useractivity/NianticActivityManager$AppState;

    .line 91
    new-instance v0, Lcom/nianticlabs/nia/useractivity/NianticActivityManager$1;

    invoke-direct {v0, p0}, Lcom/nianticlabs/nia/useractivity/NianticActivityManager$1;-><init>(Lcom/nianticlabs/nia/useractivity/NianticActivityManager;)V

    iput-object v0, p0, Lcom/nianticlabs/nia/useractivity/NianticActivityManager;->googleApiListener:Lcom/nianticlabs/nia/contextservice/GoogleApiManager$Listener;

    .line 77
    new-instance v0, Lcom/nianticlabs/nia/contextservice/GoogleApiManager;

    invoke-direct {v0, p1}, Lcom/nianticlabs/nia/contextservice/GoogleApiManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/nianticlabs/nia/useractivity/NianticActivityManager;->googleApiManager:Lcom/nianticlabs/nia/contextservice/GoogleApiManager;

    .line 79
    iget-object v0, p0, Lcom/nianticlabs/nia/useractivity/NianticActivityManager;->googleApiManager:Lcom/nianticlabs/nia/contextservice/GoogleApiManager;

    iget-object v1, p0, Lcom/nianticlabs/nia/useractivity/NianticActivityManager;->googleApiListener:Lcom/nianticlabs/nia/contextservice/GoogleApiManager$Listener;

    invoke-virtual {v0, v1}, Lcom/nianticlabs/nia/contextservice/GoogleApiManager;->setListener(Lcom/nianticlabs/nia/contextservice/GoogleApiManager$Listener;)V

    .line 81
    iget-object v0, p0, Lcom/nianticlabs/nia/useractivity/NianticActivityManager;->googleApiManager:Lcom/nianticlabs/nia/contextservice/GoogleApiManager;

    invoke-virtual {v0}, Lcom/nianticlabs/nia/contextservice/GoogleApiManager;->builder()Lcom/google/android/gms/common/api/GoogleApiClient$Builder;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/location/ActivityRecognition;->API:Lcom/google/android/gms/common/api/Api;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->addApi(Lcom/google/android/gms/common/api/Api;)Lcom/google/android/gms/common/api/GoogleApiClient$Builder;

    .line 82
    iget-object v0, p0, Lcom/nianticlabs/nia/useractivity/NianticActivityManager;->googleApiManager:Lcom/nianticlabs/nia/contextservice/GoogleApiManager;

    invoke-virtual {v0}, Lcom/nianticlabs/nia/contextservice/GoogleApiManager;->build()V

    .line 84
    invoke-static {p1}, Lcom/nianticlabs/nia/useractivity/NianticActivityManager;->createPendingIntent(Landroid/content/Context;)Landroid/app/PendingIntent;

    move-result-object v0

    iput-object v0, p0, Lcom/nianticlabs/nia/useractivity/NianticActivityManager;->activityRecognitionIntent:Landroid/app/PendingIntent;

    .line 86
    sget-object v1, Lcom/nianticlabs/nia/useractivity/NianticActivityManager;->instanceLock:Ljava/lang/Object;

    monitor-enter v1

    .line 87
    :try_start_0
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lcom/nianticlabs/nia/useractivity/NianticActivityManager;->instance:Ljava/lang/ref/WeakReference;

    .line 88
    monitor-exit v1

    .line 89
    return-void

    .line 88
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method static synthetic access$000(Lcom/nianticlabs/nia/useractivity/NianticActivityManager;)Lcom/nianticlabs/nia/useractivity/NianticActivityManager$AppState;
    .locals 1
    .param p0, "x0"    # Lcom/nianticlabs/nia/useractivity/NianticActivityManager;

    .prologue
    .line 25
    iget-object v0, p0, Lcom/nianticlabs/nia/useractivity/NianticActivityManager;->appState:Lcom/nianticlabs/nia/useractivity/NianticActivityManager$AppState;

    return-object v0
.end method

.method static synthetic access$100(Lcom/nianticlabs/nia/useractivity/NianticActivityManager;)V
    .locals 0
    .param p0, "x0"    # Lcom/nianticlabs/nia/useractivity/NianticActivityManager;

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/nianticlabs/nia/useractivity/NianticActivityManager;->requestActivityUpdates()V

    return-void
.end method

.method static synthetic access$202(Lcom/nianticlabs/nia/useractivity/NianticActivityManager;Lcom/nianticlabs/nia/useractivity/NianticActivityManager$GoogleApiState;)Lcom/nianticlabs/nia/useractivity/NianticActivityManager$GoogleApiState;
    .locals 0
    .param p0, "x0"    # Lcom/nianticlabs/nia/useractivity/NianticActivityManager;
    .param p1, "x1"    # Lcom/nianticlabs/nia/useractivity/NianticActivityManager$GoogleApiState;

    .prologue
    .line 25
    iput-object p1, p0, Lcom/nianticlabs/nia/useractivity/NianticActivityManager;->googleApiState:Lcom/nianticlabs/nia/useractivity/NianticActivityManager$GoogleApiState;

    return-object p1
.end method

.method static synthetic access$300(Lcom/nianticlabs/nia/useractivity/NianticActivityManager;)Lcom/nianticlabs/nia/contextservice/ServiceStatus;
    .locals 1
    .param p0, "x0"    # Lcom/nianticlabs/nia/useractivity/NianticActivityManager;

    .prologue
    .line 25
    iget-object v0, p0, Lcom/nianticlabs/nia/useractivity/NianticActivityManager;->status:Lcom/nianticlabs/nia/contextservice/ServiceStatus;

    return-object v0
.end method

.method static synthetic access$302(Lcom/nianticlabs/nia/useractivity/NianticActivityManager;Lcom/nianticlabs/nia/contextservice/ServiceStatus;)Lcom/nianticlabs/nia/contextservice/ServiceStatus;
    .locals 0
    .param p0, "x0"    # Lcom/nianticlabs/nia/useractivity/NianticActivityManager;
    .param p1, "x1"    # Lcom/nianticlabs/nia/contextservice/ServiceStatus;

    .prologue
    .line 25
    iput-object p1, p0, Lcom/nianticlabs/nia/useractivity/NianticActivityManager;->status:Lcom/nianticlabs/nia/contextservice/ServiceStatus;

    return-object p1
.end method

.method static synthetic access$400(Lcom/nianticlabs/nia/useractivity/NianticActivityManager;[JI)V
    .locals 0
    .param p0, "x0"    # Lcom/nianticlabs/nia/useractivity/NianticActivityManager;
    .param p1, "x1"    # [J
    .param p2, "x2"    # I

    .prologue
    .line 25
    invoke-direct {p0, p1, p2}, Lcom/nianticlabs/nia/useractivity/NianticActivityManager;->safeUpdateActivity([JI)V

    return-void
.end method

.method public static createPendingIntent(Landroid/content/Context;)Landroid/app/PendingIntent;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 130
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/nianticlabs/nia/useractivity/ActivityRecognitionService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 131
    .local v0, "intent":Landroid/content/Intent;
    const/4 v1, 0x0

    const/high16 v2, 0x8000000

    invoke-static {p0, v1, v0, v2}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    return-object v1
.end method

.method public static getInstance()Lcom/nianticlabs/nia/useractivity/NianticActivityManager;
    .locals 2

    .prologue
    .line 59
    sget-object v1, Lcom/nianticlabs/nia/useractivity/NianticActivityManager;->instanceLock:Ljava/lang/Object;

    monitor-enter v1

    .line 60
    :try_start_0
    sget-object v0, Lcom/nianticlabs/nia/useractivity/NianticActivityManager;->instance:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    .line 61
    sget-object v0, Lcom/nianticlabs/nia/useractivity/NianticActivityManager;->instance:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nianticlabs/nia/useractivity/NianticActivityManager;

    monitor-exit v1

    .line 63
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    monitor-exit v1

    goto :goto_0

    .line 65
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static getInstanceLock()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 55
    sget-object v0, Lcom/nianticlabs/nia/useractivity/NianticActivityManager;->instanceLock:Ljava/lang/Object;

    return-object v0
.end method

.method private native nativeUpdateActivity([JI)V
    .param p1    # [J
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
.end method

.method private requestActivityUpdates()V
    .locals 8

    .prologue
    .line 135
    const/4 v1, 0x0

    .line 137
    .local v1, "result":Lcom/google/android/gms/common/api/PendingResult;, "Lcom/google/android/gms/common/api/PendingResult<Lcom/google/android/gms/common/api/Status;>;"
    :try_start_0
    sget-object v3, Lcom/google/android/gms/location/ActivityRecognition;->ActivityRecognitionApi:Lcom/google/android/gms/location/ActivityRecognitionApi;

    iget-object v4, p0, Lcom/nianticlabs/nia/useractivity/NianticActivityManager;->googleApiManager:Lcom/nianticlabs/nia/contextservice/GoogleApiManager;

    .line 138
    invoke-virtual {v4}, Lcom/nianticlabs/nia/contextservice/GoogleApiManager;->getClient()Lcom/google/android/gms/common/api/GoogleApiClient;

    move-result-object v4

    const-wide/16 v6, 0x1388

    iget-object v5, p0, Lcom/nianticlabs/nia/useractivity/NianticActivityManager;->activityRecognitionIntent:Landroid/app/PendingIntent;

    .line 137
    invoke-interface {v3, v4, v6, v7, v5}, Lcom/google/android/gms/location/ActivityRecognitionApi;->requestActivityUpdates(Lcom/google/android/gms/common/api/GoogleApiClient;JLandroid/app/PendingIntent;)Lcom/google/android/gms/common/api/PendingResult;

    move-result-object v1

    .line 139
    const-wide/16 v4, 0x0

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, v4, v5, v3}, Lcom/google/android/gms/common/api/PendingResult;->await(JLjava/util/concurrent/TimeUnit;)Lcom/google/android/gms/common/api/Result;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/common/api/Status;

    .line 140
    .local v2, "resultStatus":Lcom/google/android/gms/common/api/Status;
    invoke-virtual {v2}, Lcom/google/android/gms/common/api/Status;->isSuccess()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 141
    sget-object v3, Lcom/nianticlabs/nia/contextservice/ServiceStatus;->RUNNING:Lcom/nianticlabs/nia/contextservice/ServiceStatus;

    iput-object v3, p0, Lcom/nianticlabs/nia/useractivity/NianticActivityManager;->status:Lcom/nianticlabs/nia/contextservice/ServiceStatus;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 153
    .end local v2    # "resultStatus":Lcom/google/android/gms/common/api/Status;
    :goto_0
    const/4 v3, 0x0

    iget-object v4, p0, Lcom/nianticlabs/nia/useractivity/NianticActivityManager;->status:Lcom/nianticlabs/nia/contextservice/ServiceStatus;

    invoke-virtual {v4}, Lcom/nianticlabs/nia/contextservice/ServiceStatus;->ordinal()I

    move-result v4

    invoke-direct {p0, v3, v4}, Lcom/nianticlabs/nia/useractivity/NianticActivityManager;->safeUpdateActivity([JI)V

    .line 154
    return-void

    .line 143
    .restart local v2    # "resultStatus":Lcom/google/android/gms/common/api/Status;
    :cond_0
    :try_start_1
    sget-object v3, Lcom/nianticlabs/nia/contextservice/ServiceStatus;->FAILED:Lcom/nianticlabs/nia/contextservice/ServiceStatus;

    iput-object v3, p0, Lcom/nianticlabs/nia/useractivity/NianticActivityManager;->status:Lcom/nianticlabs/nia/contextservice/ServiceStatus;

    .line 144
    const-string v3, "NianticActivityManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Request updates failed "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Lcom/google/android/gms/common/api/Status;->getStatusMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    const-string v3, "NianticActivityManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Request status has resolution "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Lcom/google/android/gms/common/api/Status;->hasResolution()Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 147
    .end local v2    # "resultStatus":Lcom/google/android/gms/common/api/Status;
    :catch_0
    move-exception v0

    .line 148
    .local v0, "e":Ljava/lang/Exception;
    const-string v3, "NianticActivityManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "requestActivityUpdates throws"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 150
    sget-object v3, Lcom/nianticlabs/nia/contextservice/ServiceStatus;->FAILED:Lcom/nianticlabs/nia/contextservice/ServiceStatus;

    iput-object v3, p0, Lcom/nianticlabs/nia/useractivity/NianticActivityManager;->status:Lcom/nianticlabs/nia/contextservice/ServiceStatus;

    goto :goto_0
.end method

.method private safeUpdateActivity([JI)V
    .locals 2
    .param p1, "result"    # [J
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p2, "status"    # I

    .prologue
    .line 226
    iget-object v1, p0, Lcom/nianticlabs/nia/useractivity/NianticActivityManager;->callbackLock:Ljava/lang/Object;

    monitor-enter v1

    .line 227
    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/nianticlabs/nia/useractivity/NianticActivityManager;->nativeUpdateActivity([JI)V

    .line 228
    monitor-exit v1

    .line 229
    return-void

    .line 228
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private stopActivityUpdates()V
    .locals 3

    .prologue
    .line 157
    sget-object v0, Lcom/google/android/gms/location/ActivityRecognition;->ActivityRecognitionApi:Lcom/google/android/gms/location/ActivityRecognitionApi;

    iget-object v1, p0, Lcom/nianticlabs/nia/useractivity/NianticActivityManager;->googleApiManager:Lcom/nianticlabs/nia/contextservice/GoogleApiManager;

    invoke-virtual {v1}, Lcom/nianticlabs/nia/contextservice/GoogleApiManager;->getClient()Lcom/google/android/gms/common/api/GoogleApiClient;

    move-result-object v1

    iget-object v2, p0, Lcom/nianticlabs/nia/useractivity/NianticActivityManager;->activityRecognitionIntent:Landroid/app/PendingIntent;

    invoke-interface {v0, v1, v2}, Lcom/google/android/gms/location/ActivityRecognitionApi;->removeActivityUpdates(Lcom/google/android/gms/common/api/GoogleApiClient;Landroid/app/PendingIntent;)Lcom/google/android/gms/common/api/PendingResult;

    .line 159
    sget-object v0, Lcom/nianticlabs/nia/contextservice/ServiceStatus;->STOPPED:Lcom/nianticlabs/nia/contextservice/ServiceStatus;

    iput-object v0, p0, Lcom/nianticlabs/nia/useractivity/NianticActivityManager;->status:Lcom/nianticlabs/nia/contextservice/ServiceStatus;

    .line 161
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/nianticlabs/nia/useractivity/NianticActivityManager;->status:Lcom/nianticlabs/nia/contextservice/ServiceStatus;

    invoke-virtual {v1}, Lcom/nianticlabs/nia/contextservice/ServiceStatus;->ordinal()I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/nianticlabs/nia/useractivity/NianticActivityManager;->safeUpdateActivity([JI)V

    .line 162
    return-void
.end method


# virtual methods
.method public onPause()V
    .locals 2

    .prologue
    .line 216
    sget-object v0, Lcom/nianticlabs/nia/useractivity/NianticActivityManager$AppState;->PAUSE:Lcom/nianticlabs/nia/useractivity/NianticActivityManager$AppState;

    iput-object v0, p0, Lcom/nianticlabs/nia/useractivity/NianticActivityManager;->appState:Lcom/nianticlabs/nia/useractivity/NianticActivityManager$AppState;

    .line 218
    iget-object v0, p0, Lcom/nianticlabs/nia/useractivity/NianticActivityManager;->googleApiState:Lcom/nianticlabs/nia/useractivity/NianticActivityManager$GoogleApiState;

    sget-object v1, Lcom/nianticlabs/nia/useractivity/NianticActivityManager$GoogleApiState;->STARTED:Lcom/nianticlabs/nia/useractivity/NianticActivityManager$GoogleApiState;

    if-ne v0, v1, :cond_0

    .line 219
    invoke-direct {p0}, Lcom/nianticlabs/nia/useractivity/NianticActivityManager;->stopActivityUpdates()V

    .line 222
    :cond_0
    iget-object v0, p0, Lcom/nianticlabs/nia/useractivity/NianticActivityManager;->googleApiManager:Lcom/nianticlabs/nia/contextservice/GoogleApiManager;

    invoke-virtual {v0}, Lcom/nianticlabs/nia/contextservice/GoogleApiManager;->onPause()V

    .line 223
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 205
    sget-object v0, Lcom/nianticlabs/nia/useractivity/NianticActivityManager$AppState;->RESUME:Lcom/nianticlabs/nia/useractivity/NianticActivityManager$AppState;

    iput-object v0, p0, Lcom/nianticlabs/nia/useractivity/NianticActivityManager;->appState:Lcom/nianticlabs/nia/useractivity/NianticActivityManager$AppState;

    .line 207
    iget-object v0, p0, Lcom/nianticlabs/nia/useractivity/NianticActivityManager;->googleApiState:Lcom/nianticlabs/nia/useractivity/NianticActivityManager$GoogleApiState;

    sget-object v1, Lcom/nianticlabs/nia/useractivity/NianticActivityManager$GoogleApiState;->STARTED:Lcom/nianticlabs/nia/useractivity/NianticActivityManager$GoogleApiState;

    if-ne v0, v1, :cond_0

    .line 208
    invoke-direct {p0}, Lcom/nianticlabs/nia/useractivity/NianticActivityManager;->requestActivityUpdates()V

    .line 211
    :cond_0
    iget-object v0, p0, Lcom/nianticlabs/nia/useractivity/NianticActivityManager;->googleApiManager:Lcom/nianticlabs/nia/contextservice/GoogleApiManager;

    invoke-virtual {v0}, Lcom/nianticlabs/nia/contextservice/GoogleApiManager;->onResume()V

    .line 212
    return-void
.end method

.method public onStart()V
    .locals 1

    .prologue
    .line 191
    sget-object v0, Lcom/nianticlabs/nia/useractivity/NianticActivityManager$AppState;->START:Lcom/nianticlabs/nia/useractivity/NianticActivityManager$AppState;

    iput-object v0, p0, Lcom/nianticlabs/nia/useractivity/NianticActivityManager;->appState:Lcom/nianticlabs/nia/useractivity/NianticActivityManager$AppState;

    .line 193
    iget-object v0, p0, Lcom/nianticlabs/nia/useractivity/NianticActivityManager;->googleApiManager:Lcom/nianticlabs/nia/contextservice/GoogleApiManager;

    invoke-virtual {v0}, Lcom/nianticlabs/nia/contextservice/GoogleApiManager;->onStart()V

    .line 194
    return-void
.end method

.method public onStop()V
    .locals 1

    .prologue
    .line 198
    sget-object v0, Lcom/nianticlabs/nia/useractivity/NianticActivityManager$AppState;->STOP:Lcom/nianticlabs/nia/useractivity/NianticActivityManager$AppState;

    iput-object v0, p0, Lcom/nianticlabs/nia/useractivity/NianticActivityManager;->appState:Lcom/nianticlabs/nia/useractivity/NianticActivityManager$AppState;

    .line 200
    iget-object v0, p0, Lcom/nianticlabs/nia/useractivity/NianticActivityManager;->googleApiManager:Lcom/nianticlabs/nia/contextservice/GoogleApiManager;

    invoke-virtual {v0}, Lcom/nianticlabs/nia/contextservice/GoogleApiManager;->onStop()V

    .line 201
    return-void
.end method

.method public receiveUpdateActivity(Lcom/google/android/gms/location/ActivityRecognitionResult;)V
    .locals 1
    .param p1, "result"    # Lcom/google/android/gms/location/ActivityRecognitionResult;

    .prologue
    .line 165
    new-instance v0, Lcom/nianticlabs/nia/useractivity/NianticActivityManager$2;

    invoke-direct {v0, p0, p1}, Lcom/nianticlabs/nia/useractivity/NianticActivityManager$2;-><init>(Lcom/nianticlabs/nia/useractivity/NianticActivityManager;Lcom/google/android/gms/location/ActivityRecognitionResult;)V

    invoke-static {v0}, Lcom/nianticlabs/nia/contextservice/ContextService;->runOnServiceHandler(Ljava/lang/Runnable;)V

    .line 187
    return-void
.end method
