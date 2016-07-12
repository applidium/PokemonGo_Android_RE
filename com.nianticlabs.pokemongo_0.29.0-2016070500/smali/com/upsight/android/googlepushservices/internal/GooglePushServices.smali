.class public Lcom/upsight/android/googlepushservices/internal/GooglePushServices;
.super Ljava/lang/Object;
.source "GooglePushServices.java"

# interfaces
.implements Lcom/upsight/android/googlepushservices/UpsightGooglePushServicesApi;


# annotations
.annotation runtime Ljavax/inject/Singleton;
.end annotation


# static fields
.field private static final KEY_GCM:Ljava/lang/String; = "com.upsight.gcm"

.field private static final LOG_TAG:Ljava/lang/String;

.field private static final PREFERENCES_NAME:Ljava/lang/String; = "com.upsight.android.googleadvertisingid.internal.registration"

.field private static final PROPERTY_APP_VERSION:Ljava/lang/String; = "gcmApplicationVersion"

.field private static final PROPERTY_REG_ID:Ljava/lang/String; = "gcmRegistrationId"

.field static final PUSH_SCOPE:Ljava/lang/String; = "com_upsight_push_scope"


# instance fields
.field private final mComputationScheduler:Lrx/Scheduler;

.field private mLogger:Lcom/upsight/android/logger/UpsightLogger;

.field private final mPendingRegisterListeners:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/upsight/android/googlepushservices/UpsightGooglePushServices$OnRegisterListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mPendingUnregisterListeners:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/upsight/android/googlepushservices/UpsightGooglePushServices$OnUnregisterListener;",
            ">;"
        }
    .end annotation
.end field

.field private mPrefs:Landroid/content/SharedPreferences;

.field private mPushBillboard:Lcom/upsight/android/marketing/UpsightBillboard;

.field private mRegistrationIsInProgress:Z

.field private final mUiThreadHandler:Landroid/os/Handler;

.field private mUnregistrationIsInProgress:Z

.field private mUpsight:Lcom/upsight/android/UpsightContext;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 51
    const-class v0, Lcom/upsight/android/googlepushservices/internal/GooglePushServices;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/upsight/android/googlepushservices/internal/GooglePushServices;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Lcom/upsight/android/UpsightContext;)V
    .locals 3
    .param p1, "upsight"    # Lcom/upsight/android/UpsightContext;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    iput-object p1, p0, Lcom/upsight/android/googlepushservices/internal/GooglePushServices;->mUpsight:Lcom/upsight/android/UpsightContext;

    .line 80
    invoke-virtual {p1}, Lcom/upsight/android/UpsightContext;->getLogger()Lcom/upsight/android/logger/UpsightLogger;

    move-result-object v0

    iput-object v0, p0, Lcom/upsight/android/googlepushservices/internal/GooglePushServices;->mLogger:Lcom/upsight/android/logger/UpsightLogger;

    .line 82
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 83
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/upsight/android/googlepushservices/internal/GooglePushServices;->mUiThreadHandler:Landroid/os/Handler;

    .line 88
    :goto_0
    invoke-virtual {p1}, Lcom/upsight/android/UpsightContext;->getCoreComponent()Lcom/upsight/android/UpsightCoreComponent;

    move-result-object v0

    invoke-interface {v0}, Lcom/upsight/android/UpsightCoreComponent;->subscribeOnScheduler()Lrx/Scheduler;

    move-result-object v0

    iput-object v0, p0, Lcom/upsight/android/googlepushservices/internal/GooglePushServices;->mComputationScheduler:Lrx/Scheduler;

    .line 90
    iput-boolean v2, p0, Lcom/upsight/android/googlepushservices/internal/GooglePushServices;->mRegistrationIsInProgress:Z

    .line 91
    iput-boolean v2, p0, Lcom/upsight/android/googlepushservices/internal/GooglePushServices;->mUnregistrationIsInProgress:Z

    .line 93
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/upsight/android/googlepushservices/internal/GooglePushServices;->mPendingRegisterListeners:Ljava/util/Set;

    .line 94
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/upsight/android/googlepushservices/internal/GooglePushServices;->mPendingUnregisterListeners:Ljava/util/Set;

    .line 96
    iget-object v0, p0, Lcom/upsight/android/googlepushservices/internal/GooglePushServices;->mUpsight:Lcom/upsight/android/UpsightContext;

    const-string v1, "com.upsight.android.googleadvertisingid.internal.registration"

    invoke-virtual {v0, v1, v2}, Lcom/upsight/android/UpsightContext;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/upsight/android/googlepushservices/internal/GooglePushServices;->mPrefs:Landroid/content/SharedPreferences;

    .line 97
    return-void

    .line 85
    :cond_0
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/upsight/android/googlepushservices/internal/GooglePushServices;->mUiThreadHandler:Landroid/os/Handler;

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/upsight/android/googlepushservices/internal/GooglePushServices;)Lcom/upsight/android/UpsightContext;
    .locals 1
    .param p0, "x0"    # Lcom/upsight/android/googlepushservices/internal/GooglePushServices;

    .prologue
    .line 47
    iget-object v0, p0, Lcom/upsight/android/googlepushservices/internal/GooglePushServices;->mUpsight:Lcom/upsight/android/UpsightContext;

    return-object v0
.end method

.method static synthetic access$100(Lcom/upsight/android/googlepushservices/internal/GooglePushServices;)Ljava/util/Set;
    .locals 1
    .param p0, "x0"    # Lcom/upsight/android/googlepushservices/internal/GooglePushServices;

    .prologue
    .line 47
    iget-object v0, p0, Lcom/upsight/android/googlepushservices/internal/GooglePushServices;->mPendingRegisterListeners:Ljava/util/Set;

    return-object v0
.end method

.method static synthetic access$202(Lcom/upsight/android/googlepushservices/internal/GooglePushServices;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/upsight/android/googlepushservices/internal/GooglePushServices;
    .param p1, "x1"    # Z

    .prologue
    .line 47
    iput-boolean p1, p0, Lcom/upsight/android/googlepushservices/internal/GooglePushServices;->mRegistrationIsInProgress:Z

    return p1
.end method

.method static synthetic access$300(Lcom/upsight/android/googlepushservices/internal/GooglePushServices;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/upsight/android/googlepushservices/internal/GooglePushServices;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 47
    invoke-direct {p0, p1}, Lcom/upsight/android/googlepushservices/internal/GooglePushServices;->storeRegistrationId(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$400(Lcom/upsight/android/googlepushservices/internal/GooglePushServices;)Ljava/util/Set;
    .locals 1
    .param p0, "x0"    # Lcom/upsight/android/googlepushservices/internal/GooglePushServices;

    .prologue
    .line 47
    iget-object v0, p0, Lcom/upsight/android/googlepushservices/internal/GooglePushServices;->mPendingUnregisterListeners:Ljava/util/Set;

    return-object v0
.end method

.method static synthetic access$502(Lcom/upsight/android/googlepushservices/internal/GooglePushServices;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/upsight/android/googlepushservices/internal/GooglePushServices;
    .param p1, "x1"    # Z

    .prologue
    .line 47
    iput-boolean p1, p0, Lcom/upsight/android/googlepushservices/internal/GooglePushServices;->mUnregistrationIsInProgress:Z

    return p1
.end method

.method private getAppVersion()I
    .locals 5

    .prologue
    .line 367
    :try_start_0
    iget-object v2, p0, Lcom/upsight/android/googlepushservices/internal/GooglePushServices;->mUpsight:Lcom/upsight/android/UpsightContext;

    invoke-virtual {v2}, Lcom/upsight/android/UpsightContext;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    iget-object v3, p0, Lcom/upsight/android/googlepushservices/internal/GooglePushServices;->mUpsight:Lcom/upsight/android/UpsightContext;

    invoke-virtual {v3}, Lcom/upsight/android/UpsightContext;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 369
    .local v1, "packageInfo":Landroid/content/pm/PackageInfo;
    iget v2, v1, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return v2

    .line 370
    .end local v1    # "packageInfo":Landroid/content/pm/PackageInfo;
    :catch_0
    move-exception v0

    .line 372
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Could not get package name: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private getRegistrationId()Ljava/lang/String;
    .locals 7

    .prologue
    const/4 v3, 0x0

    .line 336
    iget-object v4, p0, Lcom/upsight/android/googlepushservices/internal/GooglePushServices;->mPrefs:Landroid/content/SharedPreferences;

    const-string v5, "gcmRegistrationId"

    invoke-interface {v4, v5, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 337
    .local v2, "registrationId":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    move-object v2, v3

    .line 346
    .end local v2    # "registrationId":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object v2

    .line 341
    .restart local v2    # "registrationId":Ljava/lang/String;
    :cond_1
    iget-object v4, p0, Lcom/upsight/android/googlepushservices/internal/GooglePushServices;->mPrefs:Landroid/content/SharedPreferences;

    const-string v5, "gcmApplicationVersion"

    const/high16 v6, -0x80000000

    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 342
    .local v1, "registeredVersion":I
    invoke-direct {p0}, Lcom/upsight/android/googlepushservices/internal/GooglePushServices;->getAppVersion()I

    move-result v0

    .line 343
    .local v0, "currentVersion":I
    if-eq v1, v0, :cond_0

    move-object v2, v3

    .line 344
    goto :goto_0
.end method

.method private hasPlayServices()Z
    .locals 7

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 311
    iget-object v3, p0, Lcom/upsight/android/googlepushservices/internal/GooglePushServices;->mUpsight:Lcom/upsight/android/UpsightContext;

    invoke-static {v3}, Lcom/google/android/gms/common/GooglePlayServicesUtil;->isGooglePlayServicesAvailable(Landroid/content/Context;)I

    move-result v0

    .line 312
    .local v0, "resultCode":I
    if-eqz v0, :cond_0

    .line 313
    iget-object v3, p0, Lcom/upsight/android/googlepushservices/internal/GooglePushServices;->mLogger:Lcom/upsight/android/logger/UpsightLogger;

    sget-object v4, Lcom/upsight/android/googlepushservices/internal/GooglePushServices;->LOG_TAG:Ljava/lang/String;

    const-string v5, "Google play service is not available: "

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0}, Lcom/google/android/gms/common/GooglePlayServicesUtil;->getErrorString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v2, v1

    invoke-interface {v3, v4, v5, v2}, Lcom/upsight/android/logger/UpsightLogger;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 316
    :goto_0
    return v1

    :cond_0
    move v1, v2

    goto :goto_0
.end method

.method private isRegistered()Z
    .locals 1

    .prologue
    .line 324
    invoke-direct {p0}, Lcom/upsight/android/googlepushservices/internal/GooglePushServices;->getRegistrationId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private registerInBackground(Ljava/lang/String;)V
    .locals 3
    .param p1, "projectId"    # Ljava/lang/String;

    .prologue
    .line 162
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/upsight/android/googlepushservices/internal/GooglePushServices;->mRegistrationIsInProgress:Z

    .line 164
    new-instance v1, Lcom/upsight/android/googlepushservices/internal/GooglePushServices$1;

    invoke-direct {v1, p0, p1}, Lcom/upsight/android/googlepushservices/internal/GooglePushServices$1;-><init>(Lcom/upsight/android/googlepushservices/internal/GooglePushServices;Ljava/lang/String;)V

    invoke-static {v1}, Lrx/Observable;->create(Lrx/Observable$OnSubscribe;)Lrx/Observable;

    move-result-object v0

    .line 176
    .local v0, "observable":Lrx/Observable;, "Lrx/Observable<Ljava/lang/String;>;"
    iget-object v1, p0, Lcom/upsight/android/googlepushservices/internal/GooglePushServices;->mComputationScheduler:Lrx/Scheduler;

    invoke-virtual {v0, v1}, Lrx/Observable;->subscribeOn(Lrx/Scheduler;)Lrx/Observable;

    move-result-object v1

    iget-object v2, p0, Lcom/upsight/android/googlepushservices/internal/GooglePushServices;->mUiThreadHandler:Landroid/os/Handler;

    invoke-static {v2}, Lrx/android/schedulers/HandlerScheduler;->from(Landroid/os/Handler;)Lrx/android/schedulers/HandlerScheduler;

    move-result-object v2

    invoke-virtual {v1, v2}, Lrx/Observable;->observeOn(Lrx/Scheduler;)Lrx/Observable;

    move-result-object v1

    new-instance v2, Lcom/upsight/android/googlepushservices/internal/GooglePushServices$2;

    invoke-direct {v2, p0}, Lcom/upsight/android/googlepushservices/internal/GooglePushServices$2;-><init>(Lcom/upsight/android/googlepushservices/internal/GooglePushServices;)V

    invoke-virtual {v1, v2}, Lrx/Observable;->subscribe(Lrx/Observer;)Lrx/Subscription;

    .line 220
    return-void
.end method

.method private storeRegistrationId(Ljava/lang/String;)V
    .locals 3
    .param p1, "registrationId"    # Ljava/lang/String;

    .prologue
    .line 355
    invoke-direct {p0}, Lcom/upsight/android/googlepushservices/internal/GooglePushServices;->getAppVersion()I

    move-result v0

    .line 356
    .local v0, "appVersion":I
    iget-object v2, p0, Lcom/upsight/android/googlepushservices/internal/GooglePushServices;->mPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 357
    .local v1, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v2, "gcmRegistrationId"

    invoke-interface {v1, v2, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 358
    const-string v2, "gcmApplicationVersion"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 359
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 360
    return-void
.end method

.method private unregisterInBackground()V
    .locals 3

    .prologue
    .line 249
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/upsight/android/googlepushservices/internal/GooglePushServices;->mUnregistrationIsInProgress:Z

    .line 251
    new-instance v1, Lcom/upsight/android/googlepushservices/internal/GooglePushServices$3;

    invoke-direct {v1, p0}, Lcom/upsight/android/googlepushservices/internal/GooglePushServices$3;-><init>(Lcom/upsight/android/googlepushservices/internal/GooglePushServices;)V

    invoke-static {v1}, Lrx/Observable;->create(Lrx/Observable$OnSubscribe;)Lrx/Observable;

    move-result-object v0

    .line 263
    .local v0, "observable":Lrx/Observable;, "Lrx/Observable<Ljava/lang/String;>;"
    iget-object v1, p0, Lcom/upsight/android/googlepushservices/internal/GooglePushServices;->mComputationScheduler:Lrx/Scheduler;

    invoke-virtual {v0, v1}, Lrx/Observable;->subscribeOn(Lrx/Scheduler;)Lrx/Observable;

    move-result-object v1

    iget-object v2, p0, Lcom/upsight/android/googlepushservices/internal/GooglePushServices;->mUiThreadHandler:Landroid/os/Handler;

    invoke-static {v2}, Lrx/android/schedulers/HandlerScheduler;->from(Landroid/os/Handler;)Lrx/android/schedulers/HandlerScheduler;

    move-result-object v2

    invoke-virtual {v1, v2}, Lrx/Observable;->observeOn(Lrx/Scheduler;)Lrx/Observable;

    move-result-object v1

    new-instance v2, Lcom/upsight/android/googlepushservices/internal/GooglePushServices$4;

    invoke-direct {v2, p0}, Lcom/upsight/android/googlepushservices/internal/GooglePushServices$4;-><init>(Lcom/upsight/android/googlepushservices/internal/GooglePushServices;)V

    invoke-virtual {v1, v2}, Lrx/Observable;->subscribe(Lrx/Observer;)Lrx/Subscription;

    .line 305
    return-void
.end method


# virtual methods
.method public declared-synchronized createPushBillboard(Lcom/upsight/android/UpsightContext;Lcom/upsight/android/marketing/UpsightBillboard$Handler;)Lcom/upsight/android/marketing/UpsightBillboard;
    .locals 1
    .param p1, "upsight"    # Lcom/upsight/android/UpsightContext;
    .param p2, "handler"    # Lcom/upsight/android/marketing/UpsightBillboard$Handler;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 380
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/upsight/android/googlepushservices/internal/GooglePushServices;->mPushBillboard:Lcom/upsight/android/marketing/UpsightBillboard;

    if-eqz v0, :cond_0

    .line 381
    iget-object v0, p0, Lcom/upsight/android/googlepushservices/internal/GooglePushServices;->mPushBillboard:Lcom/upsight/android/marketing/UpsightBillboard;

    invoke-virtual {v0}, Lcom/upsight/android/marketing/UpsightBillboard;->destroy()V

    .line 382
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/upsight/android/googlepushservices/internal/GooglePushServices;->mPushBillboard:Lcom/upsight/android/marketing/UpsightBillboard;

    .line 384
    :cond_0
    const-string v0, "com_upsight_push_scope"

    invoke-static {p1, v0, p2}, Lcom/upsight/android/marketing/UpsightBillboard;->create(Lcom/upsight/android/UpsightContext;Ljava/lang/String;Lcom/upsight/android/marketing/UpsightBillboard$Handler;)Lcom/upsight/android/marketing/UpsightBillboard;

    move-result-object v0

    iput-object v0, p0, Lcom/upsight/android/googlepushservices/internal/GooglePushServices;->mPushBillboard:Lcom/upsight/android/marketing/UpsightBillboard;

    .line 385
    iget-object v0, p0, Lcom/upsight/android/googlepushservices/internal/GooglePushServices;->mPushBillboard:Lcom/upsight/android/marketing/UpsightBillboard;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 380
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized register(Lcom/upsight/android/googlepushservices/UpsightGooglePushServices$OnRegisterListener;)V
    .locals 11
    .param p1, "listener"    # Lcom/upsight/android/googlepushservices/UpsightGooglePushServices$OnRegisterListener;

    .prologue
    .line 101
    monitor-enter p0

    if-nez p1, :cond_0

    .line 102
    :try_start_0
    new-instance v6, Ljava/lang/IllegalArgumentException;

    const-string v7, "Listener could not be null"

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 101
    :catchall_0
    move-exception v6

    monitor-exit p0

    throw v6

    .line 105
    :cond_0
    :try_start_1
    invoke-direct {p0}, Lcom/upsight/android/googlepushservices/internal/GooglePushServices;->hasPlayServices()Z

    move-result v6

    if-nez v6, :cond_2

    .line 106
    new-instance v6, Lcom/upsight/android/UpsightException;

    const-string v7, "Google Play Services are not available"

    const/4 v8, 0x0

    new-array v8, v8, [Ljava/lang/Object;

    invoke-direct {v6, v7, v8}, Lcom/upsight/android/UpsightException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-interface {p1, v6}, Lcom/upsight/android/googlepushservices/UpsightGooglePushServices$OnRegisterListener;->onFailure(Lcom/upsight/android/UpsightException;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 154
    :cond_1
    :goto_0
    monitor-exit p0

    return-void

    .line 110
    :cond_2
    :try_start_2
    iget-boolean v6, p0, Lcom/upsight/android/googlepushservices/internal/GooglePushServices;->mUnregistrationIsInProgress:Z

    if-eqz v6, :cond_3

    .line 111
    new-instance v6, Lcom/upsight/android/UpsightException;

    const-string v7, "Unregistration is in progress, try later"

    const/4 v8, 0x0

    new-array v8, v8, [Ljava/lang/Object;

    invoke-direct {v6, v7, v8}, Lcom/upsight/android/UpsightException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-interface {p1, v6}, Lcom/upsight/android/googlepushservices/UpsightGooglePushServices$OnRegisterListener;->onFailure(Lcom/upsight/android/UpsightException;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 115
    :cond_3
    const/4 v3, 0x0

    .line 116
    .local v3, "gcmAuthority":Ljava/lang/String;
    const/4 v4, 0x0

    .line 118
    .local v4, "gcmSenderId":Ljava/lang/String;
    :try_start_3
    iget-object v6, p0, Lcom/upsight/android/googlepushservices/internal/GooglePushServices;->mUpsight:Lcom/upsight/android/UpsightContext;

    invoke-virtual {v6}, Lcom/upsight/android/UpsightContext;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    iget-object v7, p0, Lcom/upsight/android/googlepushservices/internal/GooglePushServices;->mUpsight:Lcom/upsight/android/UpsightContext;

    invoke-virtual {v7}, Lcom/upsight/android/UpsightContext;->getPackageName()Ljava/lang/String;

    move-result-object v7

    const/16 v8, 0x80

    invoke-virtual {v6, v7, v8}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v5

    .line 120
    .local v5, "info":Landroid/content/pm/ApplicationInfo;
    iget-object v0, v5, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    .line 121
    .local v0, "bundle":Landroid/os/Bundle;
    if-eqz v0, :cond_4

    .line 122
    const-string v6, "com.upsight.gcm"

    invoke-virtual {v0, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 125
    .local v2, "gcm":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_4

    .line 126
    const/4 v6, 0x0

    const/16 v7, 0x2e

    invoke-virtual {v2, v7}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v7

    invoke-virtual {v2, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 127
    const/16 v6, 0x2e

    invoke-virtual {v2, v6}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v6

    add-int/lit8 v6, v6, 0x1

    invoke-virtual {v2, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;
    :try_end_3
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-object v4

    .line 134
    .end local v0    # "bundle":Landroid/os/Bundle;
    .end local v2    # "gcm":Ljava/lang/String;
    .end local v5    # "info":Landroid/content/pm/ApplicationInfo;
    :cond_4
    :goto_1
    :try_start_4
    iget-object v6, p0, Lcom/upsight/android/googlepushservices/internal/GooglePushServices;->mUpsight:Lcom/upsight/android/UpsightContext;

    invoke-virtual {v6}, Lcom/upsight/android/UpsightContext;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 135
    :cond_5
    iget-object v6, p0, Lcom/upsight/android/googlepushservices/internal/GooglePushServices;->mLogger:Lcom/upsight/android/logger/UpsightLogger;

    sget-object v7, Lcom/upsight/android/googlepushservices/internal/GooglePushServices;->LOG_TAG:Ljava/lang/String;

    const-string v8, "Registration aborted, wrong or no value for com.upsight.gcm was defined"

    const/4 v9, 0x0

    new-array v9, v9, [Ljava/lang/Object;

    invoke-interface {v6, v7, v8, v9}, Lcom/upsight/android/logger/UpsightLogger;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 137
    iget-object v6, p0, Lcom/upsight/android/googlepushservices/internal/GooglePushServices;->mUpsight:Lcom/upsight/android/UpsightContext;

    invoke-virtual {v6}, Lcom/upsight/android/UpsightContext;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_6

    .line 138
    iget-object v6, p0, Lcom/upsight/android/googlepushservices/internal/GooglePushServices;->mLogger:Lcom/upsight/android/logger/UpsightLogger;

    sget-object v7, Lcom/upsight/android/googlepushservices/internal/GooglePushServices;->LOG_TAG:Ljava/lang/String;

    const-string v8, "Check that the package name of your application is specified correctly"

    const/4 v9, 0x0

    new-array v9, v9, [Ljava/lang/Object;

    invoke-interface {v6, v7, v8, v9}, Lcom/upsight/android/logger/UpsightLogger;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 140
    :cond_6
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 141
    iget-object v6, p0, Lcom/upsight/android/googlepushservices/internal/GooglePushServices;->mLogger:Lcom/upsight/android/logger/UpsightLogger;

    sget-object v7, Lcom/upsight/android/googlepushservices/internal/GooglePushServices;->LOG_TAG:Ljava/lang/String;

    const-string v8, "Check that your GCM sender id is specified correctly"

    const/4 v9, 0x0

    new-array v9, v9, [Ljava/lang/Object;

    invoke-interface {v6, v7, v8, v9}, Lcom/upsight/android/logger/UpsightLogger;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 144
    :cond_7
    new-instance v6, Lcom/upsight/android/UpsightException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "GCM properties must be set in the Android Manifest with <meta-data android:name=\"com.upsight.gcm\" android:value=\""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/upsight/android/googlepushservices/internal/GooglePushServices;->mUpsight:Lcom/upsight/android/UpsightContext;

    invoke-virtual {v8}, Lcom/upsight/android/UpsightContext;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ".GCM_SENDER_ID\" />"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    new-array v8, v8, [Ljava/lang/Object;

    invoke-direct {v6, v7, v8}, Lcom/upsight/android/UpsightException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-interface {p1, v6}, Lcom/upsight/android/googlepushservices/UpsightGooglePushServices$OnRegisterListener;->onFailure(Lcom/upsight/android/UpsightException;)V

    goto/16 :goto_0

    .line 130
    :catch_0
    move-exception v1

    .line 131
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    iget-object v6, p0, Lcom/upsight/android/googlepushservices/internal/GooglePushServices;->mLogger:Lcom/upsight/android/logger/UpsightLogger;

    const-string v7, "Upsight"

    const-string v8, "Unexpected error: Package name missing!?"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object v1, v9, v10

    invoke-interface {v6, v7, v8, v9}, Lcom/upsight/android/logger/UpsightLogger;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 149
    .end local v1    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_8
    iget-object v6, p0, Lcom/upsight/android/googlepushservices/internal/GooglePushServices;->mPendingRegisterListeners:Ljava/util/Set;

    invoke-interface {v6, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 151
    iget-boolean v6, p0, Lcom/upsight/android/googlepushservices/internal/GooglePushServices;->mRegistrationIsInProgress:Z

    if-nez v6, :cond_1

    .line 152
    invoke-direct {p0, v4}, Lcom/upsight/android/googlepushservices/internal/GooglePushServices;->registerInBackground(Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_0
.end method

.method public declared-synchronized unregister(Lcom/upsight/android/googlepushservices/UpsightGooglePushServices$OnUnregisterListener;)V
    .locals 3
    .param p1, "listener"    # Lcom/upsight/android/googlepushservices/UpsightGooglePushServices$OnUnregisterListener;

    .prologue
    .line 224
    monitor-enter p0

    if-nez p1, :cond_0

    .line 225
    :try_start_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Listener could not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 224
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 228
    :cond_0
    :try_start_1
    invoke-direct {p0}, Lcom/upsight/android/googlepushservices/internal/GooglePushServices;->isRegistered()Z

    move-result v0

    if-nez v0, :cond_2

    .line 229
    new-instance v0, Lcom/upsight/android/UpsightException;

    const-string v1, "Application is not registered to pushes yet"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-direct {v0, v1, v2}, Lcom/upsight/android/UpsightException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-interface {p1, v0}, Lcom/upsight/android/googlepushservices/UpsightGooglePushServices$OnUnregisterListener;->onFailure(Lcom/upsight/android/UpsightException;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 243
    :cond_1
    :goto_0
    monitor-exit p0

    return-void

    .line 233
    :cond_2
    :try_start_2
    iget-boolean v0, p0, Lcom/upsight/android/googlepushservices/internal/GooglePushServices;->mRegistrationIsInProgress:Z

    if-eqz v0, :cond_3

    .line 234
    new-instance v0, Lcom/upsight/android/UpsightException;

    const-string v1, "Registration is in progress, try later"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-direct {v0, v1, v2}, Lcom/upsight/android/UpsightException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-interface {p1, v0}, Lcom/upsight/android/googlepushservices/UpsightGooglePushServices$OnUnregisterListener;->onFailure(Lcom/upsight/android/UpsightException;)V

    goto :goto_0

    .line 238
    :cond_3
    iget-object v0, p0, Lcom/upsight/android/googlepushservices/internal/GooglePushServices;->mPendingUnregisterListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 240
    iget-boolean v0, p0, Lcom/upsight/android/googlepushservices/internal/GooglePushServices;->mUnregistrationIsInProgress:Z

    if-nez v0, :cond_1

    .line 241
    invoke-direct {p0}, Lcom/upsight/android/googlepushservices/internal/GooglePushServices;->unregisterInBackground()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method
