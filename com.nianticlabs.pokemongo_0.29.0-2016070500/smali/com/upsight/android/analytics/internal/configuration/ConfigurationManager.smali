.class public final Lcom/upsight/android/analytics/internal/configuration/ConfigurationManager;
.super Ljava/lang/Object;
.source "ConfigurationManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/upsight/android/analytics/internal/configuration/ConfigurationManager$Config;
    }
.end annotation


# static fields
.field public static final CONFIGURATION_RESPONSE_SUBTYPE:Ljava/lang/String; = "upsight.configuration"

.field public static final CONFIGURATION_SUBTYPE:Ljava/lang/String; = "upsight.configuration.configurationManager"

.field private static final LOG_TAG:Ljava/lang/String; = "Configurator"


# instance fields
.field private final mConfigParser:Lcom/upsight/android/analytics/internal/configuration/ManagerConfigParser;

.field private mCurrentConfig:Lcom/upsight/android/analytics/internal/configuration/ConfigurationManager$Config;

.field private final mDataStore:Lcom/upsight/android/persistence/UpsightDataStore;

.field private mDataStoreSubscription:Lcom/upsight/android/persistence/UpsightSubscription;

.field private mIsLaunched:Z

.field private mIsOutOfSync:Z

.field private final mLogger:Lcom/upsight/android/logger/UpsightLogger;

.field private final mResponseParser:Lcom/upsight/android/analytics/internal/configuration/ConfigurationResponseParser;

.field private mSyncAction:Lrx/functions/Action0;

.field private final mUpsight:Lcom/upsight/android/UpsightContext;

.field private final mWorker:Lrx/Scheduler$Worker;

.field private mWorkerSubscription:Lrx/Subscription;


# direct methods
.method constructor <init>(Lcom/upsight/android/UpsightContext;Lcom/upsight/android/persistence/UpsightDataStore;Lcom/upsight/android/analytics/internal/configuration/ConfigurationResponseParser;Lcom/upsight/android/analytics/internal/configuration/ManagerConfigParser;Lrx/Scheduler;Lcom/upsight/android/logger/UpsightLogger;)V
    .locals 1
    .param p1, "upsight"    # Lcom/upsight/android/UpsightContext;
    .param p2, "dataStore"    # Lcom/upsight/android/persistence/UpsightDataStore;
    .param p3, "responseParser"    # Lcom/upsight/android/analytics/internal/configuration/ConfigurationResponseParser;
    .param p4, "managerConfigParser"    # Lcom/upsight/android/analytics/internal/configuration/ManagerConfigParser;
    .param p5, "scheduler"    # Lrx/Scheduler;
    .param p6, "logger"    # Lcom/upsight/android/logger/UpsightLogger;

    .prologue
    .line 111
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 86
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/upsight/android/analytics/internal/configuration/ConfigurationManager;->mIsLaunched:Z

    .line 231
    new-instance v0, Lcom/upsight/android/analytics/internal/configuration/ConfigurationManager$2;

    invoke-direct {v0, p0}, Lcom/upsight/android/analytics/internal/configuration/ConfigurationManager$2;-><init>(Lcom/upsight/android/analytics/internal/configuration/ConfigurationManager;)V

    iput-object v0, p0, Lcom/upsight/android/analytics/internal/configuration/ConfigurationManager;->mSyncAction:Lrx/functions/Action0;

    .line 112
    iput-object p1, p0, Lcom/upsight/android/analytics/internal/configuration/ConfigurationManager;->mUpsight:Lcom/upsight/android/UpsightContext;

    .line 113
    iput-object p2, p0, Lcom/upsight/android/analytics/internal/configuration/ConfigurationManager;->mDataStore:Lcom/upsight/android/persistence/UpsightDataStore;

    .line 114
    iput-object p3, p0, Lcom/upsight/android/analytics/internal/configuration/ConfigurationManager;->mResponseParser:Lcom/upsight/android/analytics/internal/configuration/ConfigurationResponseParser;

    .line 115
    iput-object p4, p0, Lcom/upsight/android/analytics/internal/configuration/ConfigurationManager;->mConfigParser:Lcom/upsight/android/analytics/internal/configuration/ManagerConfigParser;

    .line 116
    iput-object p6, p0, Lcom/upsight/android/analytics/internal/configuration/ConfigurationManager;->mLogger:Lcom/upsight/android/logger/UpsightLogger;

    .line 117
    invoke-virtual {p5}, Lrx/Scheduler;->createWorker()Lrx/Scheduler$Worker;

    move-result-object v0

    iput-object v0, p0, Lcom/upsight/android/analytics/internal/configuration/ConfigurationManager;->mWorker:Lrx/Scheduler$Worker;

    .line 118
    return-void
.end method

.method static synthetic access$000(Lcom/upsight/android/analytics/internal/configuration/ConfigurationManager;)Lcom/upsight/android/analytics/internal/configuration/ConfigurationManager$Config;
    .locals 1
    .param p0, "x0"    # Lcom/upsight/android/analytics/internal/configuration/ConfigurationManager;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/upsight/android/analytics/internal/configuration/ConfigurationManager;->mCurrentConfig:Lcom/upsight/android/analytics/internal/configuration/ConfigurationManager$Config;

    return-object v0
.end method

.method static synthetic access$100(Lcom/upsight/android/analytics/internal/configuration/ConfigurationManager;Ljava/lang/String;)Z
    .locals 1
    .param p0, "x0"    # Lcom/upsight/android/analytics/internal/configuration/ConfigurationManager;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 34
    invoke-direct {p0, p1}, Lcom/upsight/android/analytics/internal/configuration/ConfigurationManager;->applyConfiguration(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/upsight/android/analytics/internal/configuration/ConfigurationManager;)V
    .locals 0
    .param p0, "x0"    # Lcom/upsight/android/analytics/internal/configuration/ConfigurationManager;

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/upsight/android/analytics/internal/configuration/ConfigurationManager;->applyDefaultConfiguration()V

    return-void
.end method

.method static synthetic access$300(Lcom/upsight/android/analytics/internal/configuration/ConfigurationManager;)Lcom/upsight/android/logger/UpsightLogger;
    .locals 1
    .param p0, "x0"    # Lcom/upsight/android/analytics/internal/configuration/ConfigurationManager;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/upsight/android/analytics/internal/configuration/ConfigurationManager;->mLogger:Lcom/upsight/android/logger/UpsightLogger;

    return-object v0
.end method

.method static synthetic access$400(Lcom/upsight/android/analytics/internal/configuration/ConfigurationManager;)Lcom/upsight/android/UpsightContext;
    .locals 1
    .param p0, "x0"    # Lcom/upsight/android/analytics/internal/configuration/ConfigurationManager;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/upsight/android/analytics/internal/configuration/ConfigurationManager;->mUpsight:Lcom/upsight/android/UpsightContext;

    return-object v0
.end method

.method static synthetic access$500(Lcom/upsight/android/analytics/internal/configuration/ConfigurationManager;)Lcom/upsight/android/persistence/UpsightDataStore;
    .locals 1
    .param p0, "x0"    # Lcom/upsight/android/analytics/internal/configuration/ConfigurationManager;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/upsight/android/analytics/internal/configuration/ConfigurationManager;->mDataStore:Lcom/upsight/android/persistence/UpsightDataStore;

    return-object v0
.end method

.method private applyConfiguration(Ljava/lang/String;)Z
    .locals 11
    .param p1, "jsonConfiguration"    # Ljava/lang/String;

    .prologue
    const/4 v9, 0x1

    const/4 v10, 0x0

    .line 197
    :try_start_0
    iget-object v0, p0, Lcom/upsight/android/analytics/internal/configuration/ConfigurationManager;->mConfigParser:Lcom/upsight/android/analytics/internal/configuration/ManagerConfigParser;

    invoke-virtual {v0, p1}, Lcom/upsight/android/analytics/internal/configuration/ManagerConfigParser;->parse(Ljava/lang/String;)Lcom/upsight/android/analytics/internal/configuration/ConfigurationManager$Config;

    move-result-object v7

    .line 199
    .local v7, "config":Lcom/upsight/android/analytics/internal/configuration/ConfigurationManager$Config;
    if-eqz v7, :cond_0

    invoke-virtual {v7}, Lcom/upsight/android/analytics/internal/configuration/ConfigurationManager$Config;->isValid()Z

    move-result v0

    if-nez v0, :cond_1

    .line 200
    :cond_0
    iget-object v0, p0, Lcom/upsight/android/analytics/internal/configuration/ConfigurationManager;->mLogger:Lcom/upsight/android/logger/UpsightLogger;

    const-string v1, "Configurator"

    const-string v4, "Incoming config is invalid"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-interface {v0, v1, v4, v5}, Lcom/upsight/android/logger/UpsightLogger;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move v0, v10

    .line 224
    .end local v7    # "config":Lcom/upsight/android/analytics/internal/configuration/ConfigurationManager$Config;
    :goto_0
    return v0

    .line 204
    .restart local v7    # "config":Lcom/upsight/android/analytics/internal/configuration/ConfigurationManager$Config;
    :cond_1
    iget-object v0, p0, Lcom/upsight/android/analytics/internal/configuration/ConfigurationManager;->mCurrentConfig:Lcom/upsight/android/analytics/internal/configuration/ConfigurationManager$Config;

    invoke-virtual {v7, v0}, Lcom/upsight/android/analytics/internal/configuration/ConfigurationManager$Config;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 205
    iget-object v0, p0, Lcom/upsight/android/analytics/internal/configuration/ConfigurationManager;->mLogger:Lcom/upsight/android/logger/UpsightLogger;

    const-string v1, "Configurator"

    const-string v4, "Current config is equals to incoming config, rejecting"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-interface {v0, v1, v4, v5}, Lcom/upsight/android/logger/UpsightLogger;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move v0, v9

    .line 206
    goto :goto_0

    .line 209
    :cond_2
    iget-object v0, p0, Lcom/upsight/android/analytics/internal/configuration/ConfigurationManager;->mWorkerSubscription:Lrx/Subscription;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/upsight/android/analytics/internal/configuration/ConfigurationManager;->mWorkerSubscription:Lrx/Subscription;

    invoke-interface {v0}, Lrx/Subscription;->isUnsubscribed()Z

    move-result v0

    if-nez v0, :cond_3

    .line 210
    iget-object v0, p0, Lcom/upsight/android/analytics/internal/configuration/ConfigurationManager;->mWorkerSubscription:Lrx/Subscription;

    invoke-interface {v0}, Lrx/Subscription;->unsubscribe()V

    .line 214
    :cond_3
    iget-boolean v0, p0, Lcom/upsight/android/analytics/internal/configuration/ConfigurationManager;->mIsOutOfSync:Z

    if-eqz v0, :cond_4

    const-wide/16 v2, 0x0

    .line 215
    .local v2, "initialDelay":J
    :goto_1
    iget-object v0, p0, Lcom/upsight/android/analytics/internal/configuration/ConfigurationManager;->mWorker:Lrx/Scheduler$Worker;

    iget-object v1, p0, Lcom/upsight/android/analytics/internal/configuration/ConfigurationManager;->mSyncAction:Lrx/functions/Action0;

    iget-wide v4, v7, Lcom/upsight/android/analytics/internal/configuration/ConfigurationManager$Config;->requestInterval:J

    sget-object v6, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual/range {v0 .. v6}, Lrx/Scheduler$Worker;->schedulePeriodically(Lrx/functions/Action0;JJLjava/util/concurrent/TimeUnit;)Lrx/Subscription;

    move-result-object v0

    iput-object v0, p0, Lcom/upsight/android/analytics/internal/configuration/ConfigurationManager;->mWorkerSubscription:Lrx/Subscription;

    .line 217
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/upsight/android/analytics/internal/configuration/ConfigurationManager;->mIsOutOfSync:Z

    .line 219
    iput-object v7, p0, Lcom/upsight/android/analytics/internal/configuration/ConfigurationManager;->mCurrentConfig:Lcom/upsight/android/analytics/internal/configuration/ConfigurationManager$Config;

    move v0, v9

    .line 221
    goto :goto_0

    .line 214
    .end local v2    # "initialDelay":J
    :cond_4
    iget-wide v2, v7, Lcom/upsight/android/analytics/internal/configuration/ConfigurationManager$Config;->requestInterval:J
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 222
    .end local v7    # "config":Lcom/upsight/android/analytics/internal/configuration/ConfigurationManager$Config;
    :catch_0
    move-exception v8

    .line 223
    .local v8, "e":Ljava/io/IOException;
    iget-object v0, p0, Lcom/upsight/android/analytics/internal/configuration/ConfigurationManager;->mLogger:Lcom/upsight/android/logger/UpsightLogger;

    const-string v1, "Configurator"

    const-string v4, "Could not parse incoming configuration"

    new-array v5, v9, [Ljava/lang/Object;

    aput-object v8, v5, v10

    invoke-interface {v0, v1, v4, v5}, Lcom/upsight/android/logger/UpsightLogger;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move v0, v10

    .line 224
    goto :goto_0
.end method

.method private applyDefaultConfiguration()V
    .locals 7

    .prologue
    .line 180
    :try_start_0
    iget-object v2, p0, Lcom/upsight/android/analytics/internal/configuration/ConfigurationManager;->mUpsight:Lcom/upsight/android/UpsightContext;

    invoke-virtual {v2}, Lcom/upsight/android/UpsightContext;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/upsight/android/analytics/R$raw;->configurator_config:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v2

    invoke-static {v2}, Lorg/apache/commons/io/IOUtils;->toString(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v0

    .line 182
    .local v0, "config":Ljava/lang/String;
    invoke-direct {p0, v0}, Lcom/upsight/android/analytics/internal/configuration/ConfigurationManager;->applyConfiguration(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 186
    .end local v0    # "config":Ljava/lang/String;
    :goto_0
    return-void

    .line 183
    :catch_0
    move-exception v1

    .line 184
    .local v1, "e":Ljava/io/IOException;
    iget-object v2, p0, Lcom/upsight/android/analytics/internal/configuration/ConfigurationManager;->mLogger:Lcom/upsight/android/logger/UpsightLogger;

    const-string v3, "Configurator"

    const-string v4, "Could not read default config"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v1, v5, v6

    invoke-interface {v2, v3, v4, v5}, Lcom/upsight/android/logger/UpsightLogger;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private fetchCurrentConfig()V
    .locals 3

    .prologue
    .line 143
    iget-object v0, p0, Lcom/upsight/android/analytics/internal/configuration/ConfigurationManager;->mDataStore:Lcom/upsight/android/persistence/UpsightDataStore;

    const-class v1, Lcom/upsight/android/analytics/configuration/UpsightConfiguration;

    new-instance v2, Lcom/upsight/android/analytics/internal/configuration/ConfigurationManager$1;

    invoke-direct {v2, p0}, Lcom/upsight/android/analytics/internal/configuration/ConfigurationManager$1;-><init>(Lcom/upsight/android/analytics/internal/configuration/ConfigurationManager;)V

    invoke-interface {v0, v1, v2}, Lcom/upsight/android/persistence/UpsightDataStore;->fetch(Ljava/lang/Class;Lcom/upsight/android/persistence/UpsightDataStoreListener;)Lcom/upsight/android/persistence/UpsightSubscription;

    .line 173
    return-void
.end method


# virtual methods
.method public launch()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 124
    iget-boolean v0, p0, Lcom/upsight/android/analytics/internal/configuration/ConfigurationManager;->mIsLaunched:Z

    if-eqz v0, :cond_0

    .line 136
    :goto_0
    return-void

    .line 127
    :cond_0
    iput-boolean v1, p0, Lcom/upsight/android/analytics/internal/configuration/ConfigurationManager;->mIsLaunched:Z

    .line 130
    iput-boolean v1, p0, Lcom/upsight/android/analytics/internal/configuration/ConfigurationManager;->mIsOutOfSync:Z

    .line 131
    iput-object v2, p0, Lcom/upsight/android/analytics/internal/configuration/ConfigurationManager;->mCurrentConfig:Lcom/upsight/android/analytics/internal/configuration/ConfigurationManager$Config;

    .line 132
    iget-object v0, p0, Lcom/upsight/android/analytics/internal/configuration/ConfigurationManager;->mDataStore:Lcom/upsight/android/persistence/UpsightDataStore;

    invoke-interface {v0, p0}, Lcom/upsight/android/persistence/UpsightDataStore;->subscribe(Ljava/lang/Object;)Lcom/upsight/android/persistence/UpsightSubscription;

    move-result-object v0

    iput-object v0, p0, Lcom/upsight/android/analytics/internal/configuration/ConfigurationManager;->mDataStoreSubscription:Lcom/upsight/android/persistence/UpsightSubscription;

    .line 133
    iput-object v2, p0, Lcom/upsight/android/analytics/internal/configuration/ConfigurationManager;->mWorkerSubscription:Lrx/Subscription;

    .line 135
    invoke-direct {p0}, Lcom/upsight/android/analytics/internal/configuration/ConfigurationManager;->fetchCurrentConfig()V

    goto :goto_0
.end method

.method public onEndpointResponse(Lcom/upsight/android/analytics/dispatcher/EndpointResponse;)V
    .locals 9
    .param p1, "response"    # Lcom/upsight/android/analytics/dispatcher/EndpointResponse;
    .annotation runtime Lcom/upsight/android/persistence/annotation/Created;
    .end annotation

    .prologue
    .line 249
    const-string v4, "upsight.configuration"

    invoke-virtual {p1}, Lcom/upsight/android/analytics/dispatcher/EndpointResponse;->getType()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 282
    :cond_0
    :goto_0
    return-void

    .line 254
    :cond_1
    :try_start_0
    iget-object v4, p0, Lcom/upsight/android/analytics/internal/configuration/ConfigurationManager;->mResponseParser:Lcom/upsight/android/analytics/internal/configuration/ConfigurationResponseParser;

    invoke-virtual {p1}, Lcom/upsight/android/analytics/dispatcher/EndpointResponse;->getContent()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/upsight/android/analytics/internal/configuration/ConfigurationResponseParser;->parse(Ljava/lang/String;)Ljava/util/Collection;

    move-result-object v1

    .line 256
    .local v1, "configs":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/upsight/android/analytics/configuration/UpsightConfiguration;>;"
    iget-object v4, p0, Lcom/upsight/android/analytics/internal/configuration/ConfigurationManager;->mDataStore:Lcom/upsight/android/persistence/UpsightDataStore;

    const-class v5, Lcom/upsight/android/analytics/configuration/UpsightConfiguration;

    new-instance v6, Lcom/upsight/android/analytics/internal/configuration/ConfigurationManager$3;

    invoke-direct {v6, p0}, Lcom/upsight/android/analytics/internal/configuration/ConfigurationManager$3;-><init>(Lcom/upsight/android/analytics/internal/configuration/ConfigurationManager;)V

    invoke-interface {v4, v5, v6}, Lcom/upsight/android/persistence/UpsightDataStore;->fetch(Ljava/lang/Class;Lcom/upsight/android/persistence/UpsightDataStoreListener;)Lcom/upsight/android/persistence/UpsightSubscription;

    .line 270
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_2
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/upsight/android/analytics/configuration/UpsightConfiguration;

    .line 271
    .local v0, "config":Lcom/upsight/android/analytics/configuration/UpsightConfiguration;
    invoke-virtual {v0}, Lcom/upsight/android/analytics/configuration/UpsightConfiguration;->getScope()Ljava/lang/String;

    move-result-object v4

    const-string v5, "upsight.configuration.configurationManager"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 272
    invoke-virtual {v0}, Lcom/upsight/android/analytics/configuration/UpsightConfiguration;->getConfiguration()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/upsight/android/analytics/internal/configuration/ConfigurationManager;->applyConfiguration(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 273
    iget-object v4, p0, Lcom/upsight/android/analytics/internal/configuration/ConfigurationManager;->mDataStore:Lcom/upsight/android/persistence/UpsightDataStore;

    invoke-interface {v4, v0}, Lcom/upsight/android/persistence/UpsightDataStore;->store(Ljava/lang/Object;)Lcom/upsight/android/persistence/UpsightSubscription;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 279
    .end local v0    # "config":Lcom/upsight/android/analytics/configuration/UpsightConfiguration;
    .end local v1    # "configs":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/upsight/android/analytics/configuration/UpsightConfiguration;>;"
    .end local v3    # "i$":Ljava/util/Iterator;
    :catch_0
    move-exception v2

    .line 280
    .local v2, "e":Ljava/io/IOException;
    iget-object v4, p0, Lcom/upsight/android/analytics/internal/configuration/ConfigurationManager;->mLogger:Lcom/upsight/android/logger/UpsightLogger;

    const-string v5, "Configurator"

    const-string v6, "Could not parse incoming configurations"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v2, v7, v8

    invoke-interface {v4, v5, v6, v7}, Lcom/upsight/android/logger/UpsightLogger;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 276
    .end local v2    # "e":Ljava/io/IOException;
    .restart local v0    # "config":Lcom/upsight/android/analytics/configuration/UpsightConfiguration;
    .restart local v1    # "configs":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/upsight/android/analytics/configuration/UpsightConfiguration;>;"
    .restart local v3    # "i$":Ljava/util/Iterator;
    :cond_3
    :try_start_1
    iget-object v4, p0, Lcom/upsight/android/analytics/internal/configuration/ConfigurationManager;->mDataStore:Lcom/upsight/android/persistence/UpsightDataStore;

    invoke-interface {v4, v0}, Lcom/upsight/android/persistence/UpsightDataStore;->store(Ljava/lang/Object;)Lcom/upsight/android/persistence/UpsightSubscription;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method public terminate()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 288
    iget-object v0, p0, Lcom/upsight/android/analytics/internal/configuration/ConfigurationManager;->mDataStoreSubscription:Lcom/upsight/android/persistence/UpsightSubscription;

    if-eqz v0, :cond_0

    .line 289
    iget-object v0, p0, Lcom/upsight/android/analytics/internal/configuration/ConfigurationManager;->mDataStoreSubscription:Lcom/upsight/android/persistence/UpsightSubscription;

    invoke-interface {v0}, Lcom/upsight/android/persistence/UpsightSubscription;->unsubscribe()V

    .line 290
    iput-object v1, p0, Lcom/upsight/android/analytics/internal/configuration/ConfigurationManager;->mDataStoreSubscription:Lcom/upsight/android/persistence/UpsightSubscription;

    .line 292
    :cond_0
    iget-object v0, p0, Lcom/upsight/android/analytics/internal/configuration/ConfigurationManager;->mWorkerSubscription:Lrx/Subscription;

    if-eqz v0, :cond_1

    .line 293
    iget-object v0, p0, Lcom/upsight/android/analytics/internal/configuration/ConfigurationManager;->mWorkerSubscription:Lrx/Subscription;

    invoke-interface {v0}, Lrx/Subscription;->unsubscribe()V

    .line 294
    iput-object v1, p0, Lcom/upsight/android/analytics/internal/configuration/ConfigurationManager;->mWorkerSubscription:Lrx/Subscription;

    .line 296
    :cond_1
    iput-object v1, p0, Lcom/upsight/android/analytics/internal/configuration/ConfigurationManager;->mCurrentConfig:Lcom/upsight/android/analytics/internal/configuration/ConfigurationManager$Config;

    .line 298
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/upsight/android/analytics/internal/configuration/ConfigurationManager;->mIsLaunched:Z

    .line 299
    return-void
.end method
