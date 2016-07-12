.class public Lcom/nianticlabs/nia/useractivity/ActivityRecognitionService;
.super Landroid/app/IntentService;
.source "ActivityRecognitionService.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "NianticActivityManager"


# instance fields
.field private googleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 17
    const-string v0, "ActivityRecognitionService"

    invoke-direct {p0, v0}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    .line 39
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nianticlabs/nia/useractivity/ActivityRecognitionService;->googleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    .line 18
    return-void
.end method

.method static synthetic access$000(Lcom/nianticlabs/nia/useractivity/ActivityRecognitionService;)Lcom/google/android/gms/common/api/GoogleApiClient;
    .locals 1
    .param p0, "x0"    # Lcom/nianticlabs/nia/useractivity/ActivityRecognitionService;

    .prologue
    .line 13
    iget-object v0, p0, Lcom/nianticlabs/nia/useractivity/ActivityRecognitionService;->googleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    return-object v0
.end method

.method private unregisterIntent()V
    .locals 2

    .prologue
    .line 42
    new-instance v0, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;

    invoke-direct {v0, p0}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;-><init>(Landroid/content/Context;)V

    sget-object v1, Lcom/google/android/gms/location/ActivityRecognition;->API:Lcom/google/android/gms/common/api/Api;

    .line 43
    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->addApi(Lcom/google/android/gms/common/api/Api;)Lcom/google/android/gms/common/api/GoogleApiClient$Builder;

    move-result-object v0

    new-instance v1, Lcom/nianticlabs/nia/useractivity/ActivityRecognitionService$1;

    invoke-direct {v1, p0}, Lcom/nianticlabs/nia/useractivity/ActivityRecognitionService$1;-><init>(Lcom/nianticlabs/nia/useractivity/ActivityRecognitionService;)V

    .line 44
    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->addConnectionCallbacks(Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;)Lcom/google/android/gms/common/api/GoogleApiClient$Builder;

    move-result-object v0

    .line 68
    invoke-virtual {v0}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->build()Lcom/google/android/gms/common/api/GoogleApiClient;

    move-result-object v0

    iput-object v0, p0, Lcom/nianticlabs/nia/useractivity/ActivityRecognitionService;->googleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    .line 70
    iget-object v0, p0, Lcom/nianticlabs/nia/useractivity/ActivityRecognitionService;->googleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->connect()V

    .line 71
    return-void
.end method


# virtual methods
.method protected onHandleIntent(Landroid/content/Intent;)V
    .locals 5
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 22
    invoke-static {p1}, Lcom/google/android/gms/location/ActivityRecognitionResult;->extractResult(Landroid/content/Intent;)Lcom/google/android/gms/location/ActivityRecognitionResult;

    move-result-object v1

    .line 23
    .local v1, "result":Lcom/google/android/gms/location/ActivityRecognitionResult;
    const-string v2, "NianticActivityManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Got activity result"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Lcom/google/android/gms/location/ActivityRecognitionResult;->getMostProbableActivity()Lcom/google/android/gms/location/DetectedActivity;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 25
    invoke-static {}, Lcom/nianticlabs/nia/useractivity/NianticActivityManager;->getInstance()Lcom/nianticlabs/nia/useractivity/NianticActivityManager;

    move-result-object v0

    .line 27
    .local v0, "activityManager":Lcom/nianticlabs/nia/useractivity/NianticActivityManager;
    if-eqz v0, :cond_0

    .line 28
    invoke-virtual {v0, v1}, Lcom/nianticlabs/nia/useractivity/NianticActivityManager;->receiveUpdateActivity(Lcom/google/android/gms/location/ActivityRecognitionResult;)V

    .line 37
    :goto_0
    return-void

    .line 30
    :cond_0
    const-string v2, "NianticActivityManager"

    const-string v3, "The app has closed while the ActivityRecognitionService is still receiving updates and draining the phone\'s battery"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 35
    invoke-direct {p0}, Lcom/nianticlabs/nia/useractivity/ActivityRecognitionService;->unregisterIntent()V

    goto :goto_0
.end method
