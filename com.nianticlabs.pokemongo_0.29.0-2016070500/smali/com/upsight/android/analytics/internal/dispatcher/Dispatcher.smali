.class public Lcom/upsight/android/analytics/internal/dispatcher/Dispatcher;
.super Ljava/lang/Object;
.source "Dispatcher.java"

# interfaces
.implements Lcom/upsight/android/analytics/internal/dispatcher/routing/RoutingListener;


# static fields
.field public static final CONFIGURATION_SUBTYPE:Ljava/lang/String; = "upsight.configuration.dispatcher"

.field static final DISPATCHER_CONFIGURATION_MAX_SESSIONS:I = 0x2

.field private static final LOG_TAG:Ljava/lang/String; = "Dispatcher"


# instance fields
.field private mConfigParser:Lcom/upsight/android/analytics/internal/dispatcher/ConfigParser;

.field private mContext:Lcom/upsight/android/analytics/internal/AnalyticsContext;

.field private mCurrentConfig:Lcom/upsight/android/analytics/internal/dispatcher/Config;

.field private volatile mCurrentRouter:Lcom/upsight/android/analytics/internal/dispatcher/routing/Router;

.field private mDataStoreSubscription:Lcom/upsight/android/persistence/UpsightSubscription;

.field private mExpiredRouters:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Lcom/upsight/android/analytics/internal/dispatcher/routing/Router;",
            ">;"
        }
    .end annotation
.end field

.field private mIsLaunched:Z

.field private mLogger:Lcom/upsight/android/logger/UpsightLogger;

.field private mPendingRecords:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/upsight/android/analytics/internal/DataStoreRecord;",
            ">;"
        }
    .end annotation
.end field

.field private mRouterBuilder:Lcom/upsight/android/analytics/internal/dispatcher/routing/RouterBuilder;

.field private mSchemaSelectorBuilder:Lcom/upsight/android/analytics/internal/dispatcher/schema/SchemaSelectorBuilder;

.field private mSessionManager:Lcom/upsight/android/analytics/internal/session/SessionManager;

.field private mUnroutedRecords:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Lcom/upsight/android/analytics/internal/DataStoreRecord;",
            ">;"
        }
    .end annotation
.end field

.field private mUpsightDataStore:Lcom/upsight/android/persistence/UpsightDataStore;


# direct methods
.method constructor <init>(Lcom/upsight/android/analytics/internal/AnalyticsContext;Lcom/upsight/android/analytics/internal/session/SessionManager;Lcom/upsight/android/persistence/UpsightDataStore;Lcom/upsight/android/analytics/internal/dispatcher/ConfigParser;Lcom/upsight/android/analytics/internal/dispatcher/routing/RouterBuilder;Lcom/upsight/android/analytics/internal/dispatcher/schema/SchemaSelectorBuilder;Lcom/upsight/android/logger/UpsightLogger;)V
    .locals 1
    .param p1, "context"    # Lcom/upsight/android/analytics/internal/AnalyticsContext;
    .param p2, "sessionManager"    # Lcom/upsight/android/analytics/internal/session/SessionManager;
    .param p3, "dataStore"    # Lcom/upsight/android/persistence/UpsightDataStore;
    .param p4, "configParser"    # Lcom/upsight/android/analytics/internal/dispatcher/ConfigParser;
    .param p5, "routerBuilder"    # Lcom/upsight/android/analytics/internal/dispatcher/routing/RouterBuilder;
    .param p6, "schemaSelectorBuilder"    # Lcom/upsight/android/analytics/internal/dispatcher/schema/SchemaSelectorBuilder;
    .param p7, "logger"    # Lcom/upsight/android/logger/UpsightLogger;

    .prologue
    .line 113
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/upsight/android/analytics/internal/dispatcher/Dispatcher;->mIsLaunched:Z

    .line 114
    iput-object p1, p0, Lcom/upsight/android/analytics/internal/dispatcher/Dispatcher;->mContext:Lcom/upsight/android/analytics/internal/AnalyticsContext;

    .line 115
    iput-object p2, p0, Lcom/upsight/android/analytics/internal/dispatcher/Dispatcher;->mSessionManager:Lcom/upsight/android/analytics/internal/session/SessionManager;

    .line 116
    iput-object p3, p0, Lcom/upsight/android/analytics/internal/dispatcher/Dispatcher;->mUpsightDataStore:Lcom/upsight/android/persistence/UpsightDataStore;

    .line 117
    iput-object p4, p0, Lcom/upsight/android/analytics/internal/dispatcher/Dispatcher;->mConfigParser:Lcom/upsight/android/analytics/internal/dispatcher/ConfigParser;

    .line 118
    iput-object p5, p0, Lcom/upsight/android/analytics/internal/dispatcher/Dispatcher;->mRouterBuilder:Lcom/upsight/android/analytics/internal/dispatcher/routing/RouterBuilder;

    .line 119
    iput-object p6, p0, Lcom/upsight/android/analytics/internal/dispatcher/Dispatcher;->mSchemaSelectorBuilder:Lcom/upsight/android/analytics/internal/dispatcher/schema/SchemaSelectorBuilder;

    .line 120
    iput-object p7, p0, Lcom/upsight/android/analytics/internal/dispatcher/Dispatcher;->mLogger:Lcom/upsight/android/logger/UpsightLogger;

    .line 121
    return-void
.end method

.method static synthetic access$000(Lcom/upsight/android/analytics/internal/dispatcher/Dispatcher;Lcom/upsight/android/analytics/internal/DataStoreRecord;)V
    .locals 0
    .param p0, "x0"    # Lcom/upsight/android/analytics/internal/dispatcher/Dispatcher;
    .param p1, "x1"    # Lcom/upsight/android/analytics/internal/DataStoreRecord;

    .prologue
    .line 39
    invoke-direct {p0, p1}, Lcom/upsight/android/analytics/internal/dispatcher/Dispatcher;->routeRecords(Lcom/upsight/android/analytics/internal/DataStoreRecord;)V

    return-void
.end method

.method static synthetic access$100(Lcom/upsight/android/analytics/internal/dispatcher/Dispatcher;)Lcom/upsight/android/logger/UpsightLogger;
    .locals 1
    .param p0, "x0"    # Lcom/upsight/android/analytics/internal/dispatcher/Dispatcher;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/upsight/android/analytics/internal/dispatcher/Dispatcher;->mLogger:Lcom/upsight/android/logger/UpsightLogger;

    return-object v0
.end method

.method static synthetic access$200(Lcom/upsight/android/analytics/internal/dispatcher/Dispatcher;)Lcom/upsight/android/analytics/internal/dispatcher/Config;
    .locals 1
    .param p0, "x0"    # Lcom/upsight/android/analytics/internal/dispatcher/Dispatcher;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/upsight/android/analytics/internal/dispatcher/Dispatcher;->mCurrentConfig:Lcom/upsight/android/analytics/internal/dispatcher/Config;

    return-object v0
.end method

.method static synthetic access$300(Lcom/upsight/android/analytics/internal/dispatcher/Dispatcher;Lcom/upsight/android/analytics/configuration/UpsightConfiguration;)Z
    .locals 1
    .param p0, "x0"    # Lcom/upsight/android/analytics/internal/dispatcher/Dispatcher;
    .param p1, "x1"    # Lcom/upsight/android/analytics/configuration/UpsightConfiguration;

    .prologue
    .line 39
    invoke-direct {p0, p1}, Lcom/upsight/android/analytics/internal/dispatcher/Dispatcher;->isUpsightConfigurationValid(Lcom/upsight/android/analytics/configuration/UpsightConfiguration;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$400(Lcom/upsight/android/analytics/internal/dispatcher/Dispatcher;Ljava/lang/String;)Z
    .locals 1
    .param p0, "x0"    # Lcom/upsight/android/analytics/internal/dispatcher/Dispatcher;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 39
    invoke-direct {p0, p1}, Lcom/upsight/android/analytics/internal/dispatcher/Dispatcher;->applyConfiguration(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$500(Lcom/upsight/android/analytics/internal/dispatcher/Dispatcher;)V
    .locals 0
    .param p0, "x0"    # Lcom/upsight/android/analytics/internal/dispatcher/Dispatcher;

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/upsight/android/analytics/internal/dispatcher/Dispatcher;->applyDefaultConfiguration()V

    return-void
.end method

.method static synthetic access$600(Lcom/upsight/android/analytics/internal/dispatcher/Dispatcher;)Lcom/upsight/android/persistence/UpsightDataStore;
    .locals 1
    .param p0, "x0"    # Lcom/upsight/android/analytics/internal/dispatcher/Dispatcher;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/upsight/android/analytics/internal/dispatcher/Dispatcher;->mUpsightDataStore:Lcom/upsight/android/persistence/UpsightDataStore;

    return-object v0
.end method

.method private applyConfiguration(Ljava/lang/String;)Z
    .locals 11
    .param p1, "jsonConfig"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 273
    invoke-direct {p0, p1}, Lcom/upsight/android/analytics/internal/dispatcher/Dispatcher;->parseConfiguration(Ljava/lang/String;)Lcom/upsight/android/analytics/internal/dispatcher/Config;

    move-result-object v0

    .line 274
    .local v0, "config":Lcom/upsight/android/analytics/internal/dispatcher/Config;
    if-nez v0, :cond_0

    .line 309
    :goto_0
    return v6

    .line 278
    :cond_0
    invoke-virtual {v0}, Lcom/upsight/android/analytics/internal/dispatcher/Config;->isValid()Z

    move-result v8

    if-nez v8, :cond_1

    .line 279
    iget-object v7, p0, Lcom/upsight/android/analytics/internal/dispatcher/Dispatcher;->mLogger:Lcom/upsight/android/logger/UpsightLogger;

    const-string v8, "Dispatcher"

    const-string v9, "Incoming configuration is not valid"

    new-array v10, v6, [Ljava/lang/Object;

    invoke-interface {v7, v8, v9, v10}, Lcom/upsight/android/logger/UpsightLogger;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 283
    :cond_1
    iget-object v6, p0, Lcom/upsight/android/analytics/internal/dispatcher/Dispatcher;->mCurrentConfig:Lcom/upsight/android/analytics/internal/dispatcher/Config;

    invoke-virtual {v0, v6}, Lcom/upsight/android/analytics/internal/dispatcher/Config;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    move v6, v7

    .line 284
    goto :goto_0

    .line 286
    :cond_2
    iput-object v0, p0, Lcom/upsight/android/analytics/internal/dispatcher/Dispatcher;->mCurrentConfig:Lcom/upsight/android/analytics/internal/dispatcher/Config;

    .line 288
    iget-object v2, p0, Lcom/upsight/android/analytics/internal/dispatcher/Dispatcher;->mExpiredRouters:Ljava/util/Collection;

    .line 289
    .local v2, "expiredRouters":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/upsight/android/analytics/internal/dispatcher/routing/Router;>;"
    iget-object v1, p0, Lcom/upsight/android/analytics/internal/dispatcher/Dispatcher;->mCurrentRouter:Lcom/upsight/android/analytics/internal/dispatcher/routing/Router;

    .line 290
    .local v1, "currentRouter":Lcom/upsight/android/analytics/internal/dispatcher/routing/Router;
    if-eqz v2, :cond_3

    if-eqz v1, :cond_3

    .line 291
    invoke-interface {v2, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 292
    invoke-virtual {v1}, Lcom/upsight/android/analytics/internal/dispatcher/routing/Router;->finishRouting()V

    .line 295
    :cond_3
    iget-object v6, p0, Lcom/upsight/android/analytics/internal/dispatcher/Dispatcher;->mSchemaSelectorBuilder:Lcom/upsight/android/analytics/internal/dispatcher/schema/SchemaSelectorBuilder;

    invoke-virtual {v0}, Lcom/upsight/android/analytics/internal/dispatcher/Config;->getIdentifierConfig()Lcom/upsight/android/analytics/internal/dispatcher/schema/IdentifierConfig;

    move-result-object v8

    invoke-virtual {v6, v8}, Lcom/upsight/android/analytics/internal/dispatcher/schema/SchemaSelectorBuilder;->buildSelectorByName(Lcom/upsight/android/analytics/internal/dispatcher/schema/IdentifierConfig;)Lcom/upsight/android/analytics/internal/dispatcher/util/Selector;

    move-result-object v3

    .line 296
    .local v3, "selectorByName":Lcom/upsight/android/analytics/internal/dispatcher/util/Selector;, "Lcom/upsight/android/analytics/internal/dispatcher/util/Selector<Lcom/upsight/android/analytics/internal/dispatcher/schema/Schema;>;"
    iget-object v6, p0, Lcom/upsight/android/analytics/internal/dispatcher/Dispatcher;->mSchemaSelectorBuilder:Lcom/upsight/android/analytics/internal/dispatcher/schema/SchemaSelectorBuilder;

    invoke-virtual {v0}, Lcom/upsight/android/analytics/internal/dispatcher/Config;->getIdentifierConfig()Lcom/upsight/android/analytics/internal/dispatcher/schema/IdentifierConfig;

    move-result-object v8

    invoke-virtual {v6, v8}, Lcom/upsight/android/analytics/internal/dispatcher/schema/SchemaSelectorBuilder;->buildSelectorByType(Lcom/upsight/android/analytics/internal/dispatcher/schema/IdentifierConfig;)Lcom/upsight/android/analytics/internal/dispatcher/util/Selector;

    move-result-object v4

    .line 297
    .local v4, "selectorByType":Lcom/upsight/android/analytics/internal/dispatcher/util/Selector;, "Lcom/upsight/android/analytics/internal/dispatcher/util/Selector<Lcom/upsight/android/analytics/internal/dispatcher/schema/Schema;>;"
    iget-object v6, p0, Lcom/upsight/android/analytics/internal/dispatcher/Dispatcher;->mRouterBuilder:Lcom/upsight/android/analytics/internal/dispatcher/routing/RouterBuilder;

    invoke-virtual {v0}, Lcom/upsight/android/analytics/internal/dispatcher/Config;->getRoutingConfig()Lcom/upsight/android/analytics/internal/dispatcher/routing/RoutingConfig;

    move-result-object v8

    invoke-virtual {v6, v8, v3, v4, p0}, Lcom/upsight/android/analytics/internal/dispatcher/routing/RouterBuilder;->build(Lcom/upsight/android/analytics/internal/dispatcher/routing/RoutingConfig;Lcom/upsight/android/analytics/internal/dispatcher/util/Selector;Lcom/upsight/android/analytics/internal/dispatcher/util/Selector;Lcom/upsight/android/analytics/internal/dispatcher/routing/RoutingListener;)Lcom/upsight/android/analytics/internal/dispatcher/routing/Router;

    move-result-object v6

    iput-object v6, p0, Lcom/upsight/android/analytics/internal/dispatcher/Dispatcher;->mCurrentRouter:Lcom/upsight/android/analytics/internal/dispatcher/routing/Router;

    .line 299
    iget-object v5, p0, Lcom/upsight/android/analytics/internal/dispatcher/Dispatcher;->mUnroutedRecords:Ljava/util/Queue;

    .line 300
    .local v5, "unroutedRecords":Ljava/util/Queue;, "Ljava/util/Queue<Lcom/upsight/android/analytics/internal/DataStoreRecord;>;"
    if-eqz v5, :cond_4

    iget-object v6, p0, Lcom/upsight/android/analytics/internal/dispatcher/Dispatcher;->mCurrentRouter:Lcom/upsight/android/analytics/internal/dispatcher/routing/Router;

    if-eqz v6, :cond_4

    .line 301
    :goto_1
    invoke-interface {v5}, Ljava/util/Queue;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_4

    .line 302
    invoke-interface {v5}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/upsight/android/analytics/internal/DataStoreRecord;

    invoke-direct {p0, v6}, Lcom/upsight/android/analytics/internal/dispatcher/Dispatcher;->routeRecords(Lcom/upsight/android/analytics/internal/DataStoreRecord;)V

    goto :goto_1

    .line 307
    :cond_4
    invoke-direct {p0}, Lcom/upsight/android/analytics/internal/dispatcher/Dispatcher;->fetchCreatedRecords()V

    move v6, v7

    .line 309
    goto :goto_0
.end method

.method private applyDefaultConfiguration()V
    .locals 1

    .prologue
    .line 262
    iget-object v0, p0, Lcom/upsight/android/analytics/internal/dispatcher/Dispatcher;->mContext:Lcom/upsight/android/analytics/internal/AnalyticsContext;

    invoke-virtual {v0}, Lcom/upsight/android/analytics/internal/AnalyticsContext;->getDefaultDispatcherConfiguration()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/upsight/android/analytics/internal/dispatcher/Dispatcher;->applyConfiguration(Ljava/lang/String;)Z

    .line 263
    return-void
.end method

.method private fetchCreatedRecords()V
    .locals 3

    .prologue
    .line 147
    iget-object v0, p0, Lcom/upsight/android/analytics/internal/dispatcher/Dispatcher;->mUpsightDataStore:Lcom/upsight/android/persistence/UpsightDataStore;

    const-class v1, Lcom/upsight/android/analytics/internal/DataStoreRecord;

    new-instance v2, Lcom/upsight/android/analytics/internal/dispatcher/Dispatcher$1;

    invoke-direct {v2, p0}, Lcom/upsight/android/analytics/internal/dispatcher/Dispatcher$1;-><init>(Lcom/upsight/android/analytics/internal/dispatcher/Dispatcher;)V

    invoke-interface {v0, v1, v2}, Lcom/upsight/android/persistence/UpsightDataStore;->fetch(Ljava/lang/Class;Lcom/upsight/android/persistence/UpsightDataStoreListener;)Lcom/upsight/android/persistence/UpsightSubscription;

    .line 161
    return-void
.end method

.method private fetchCurrentConfig()V
    .locals 3

    .prologue
    .line 205
    iget-object v0, p0, Lcom/upsight/android/analytics/internal/dispatcher/Dispatcher;->mUpsightDataStore:Lcom/upsight/android/persistence/UpsightDataStore;

    const-class v1, Lcom/upsight/android/analytics/configuration/UpsightConfiguration;

    new-instance v2, Lcom/upsight/android/analytics/internal/dispatcher/Dispatcher$2;

    invoke-direct {v2, p0}, Lcom/upsight/android/analytics/internal/dispatcher/Dispatcher$2;-><init>(Lcom/upsight/android/analytics/internal/dispatcher/Dispatcher;)V

    invoke-interface {v0, v1, v2}, Lcom/upsight/android/persistence/UpsightDataStore;->fetch(Ljava/lang/Class;Lcom/upsight/android/persistence/UpsightDataStoreListener;)Lcom/upsight/android/persistence/UpsightSubscription;

    .line 235
    return-void
.end method

.method private isUpsightConfigurationValid(Lcom/upsight/android/analytics/configuration/UpsightConfiguration;)Z
    .locals 2
    .param p1, "configuration"    # Lcom/upsight/android/analytics/configuration/UpsightConfiguration;

    .prologue
    .line 254
    iget-object v0, p0, Lcom/upsight/android/analytics/internal/dispatcher/Dispatcher;->mSessionManager:Lcom/upsight/android/analytics/internal/session/SessionManager;

    invoke-interface {v0}, Lcom/upsight/android/analytics/internal/session/SessionManager;->getCurrentSession()Lcom/upsight/android/analytics/internal/session/Session;

    move-result-object v0

    invoke-interface {v0}, Lcom/upsight/android/analytics/internal/session/Session;->getSessionNumber()I

    move-result v0

    invoke-virtual {p1}, Lcom/upsight/android/analytics/configuration/UpsightConfiguration;->getSessionNumberCreated()I

    move-result v1

    sub-int/2addr v0, v1

    const/4 v1, 0x2

    if-gt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private parseConfiguration(Ljava/lang/String;)Lcom/upsight/android/analytics/internal/dispatcher/Config;
    .locals 7
    .param p1, "jsonConfig"    # Ljava/lang/String;

    .prologue
    .line 319
    const/4 v0, 0x0

    .line 321
    .local v0, "config":Lcom/upsight/android/analytics/internal/dispatcher/Config;
    :try_start_0
    iget-object v2, p0, Lcom/upsight/android/analytics/internal/dispatcher/Dispatcher;->mConfigParser:Lcom/upsight/android/analytics/internal/dispatcher/ConfigParser;

    invoke-virtual {v2, p1}, Lcom/upsight/android/analytics/internal/dispatcher/ConfigParser;->parseConfig(Ljava/lang/String;)Lcom/upsight/android/analytics/internal/dispatcher/Config;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 325
    :goto_0
    return-object v0

    .line 322
    :catch_0
    move-exception v1

    .line 323
    .local v1, "e":Ljava/io/IOException;
    iget-object v2, p0, Lcom/upsight/android/analytics/internal/dispatcher/Dispatcher;->mLogger:Lcom/upsight/android/logger/UpsightLogger;

    const-string v3, "Dispatcher"

    const-string v4, "Could not apply incoming config"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v1, v5, v6

    invoke-interface {v2, v3, v4, v5}, Lcom/upsight/android/logger/UpsightLogger;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private routeRecords(Lcom/upsight/android/analytics/internal/DataStoreRecord;)V
    .locals 5
    .param p1, "storedRecord"    # Lcom/upsight/android/analytics/internal/DataStoreRecord;

    .prologue
    .line 180
    sget-object v3, Lcom/upsight/android/analytics/internal/DataStoreRecord$Action;->Created:Lcom/upsight/android/analytics/internal/DataStoreRecord$Action;

    invoke-virtual {p1}, Lcom/upsight/android/analytics/internal/DataStoreRecord;->getAction()Lcom/upsight/android/analytics/internal/DataStoreRecord$Action;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/upsight/android/analytics/internal/DataStoreRecord$Action;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 181
    iget-object v3, p0, Lcom/upsight/android/analytics/internal/dispatcher/Dispatcher;->mUpsightDataStore:Lcom/upsight/android/persistence/UpsightDataStore;

    invoke-interface {v3, p1}, Lcom/upsight/android/persistence/UpsightDataStore;->remove(Ljava/lang/Object;)Lcom/upsight/android/persistence/UpsightSubscription;

    .line 198
    :cond_0
    :goto_0
    return-void

    .line 186
    :cond_1
    iget-object v0, p0, Lcom/upsight/android/analytics/internal/dispatcher/Dispatcher;->mCurrentRouter:Lcom/upsight/android/analytics/internal/dispatcher/routing/Router;

    .line 187
    .local v0, "currentRouter":Lcom/upsight/android/analytics/internal/dispatcher/routing/Router;
    iget-object v1, p0, Lcom/upsight/android/analytics/internal/dispatcher/Dispatcher;->mPendingRecords:Ljava/util/Set;

    .line 188
    .local v1, "pendingRecords":Ljava/util/Set;, "Ljava/util/Set<Lcom/upsight/android/analytics/internal/DataStoreRecord;>;"
    if-nez v0, :cond_2

    .line 189
    iget-object v2, p0, Lcom/upsight/android/analytics/internal/dispatcher/Dispatcher;->mUnroutedRecords:Ljava/util/Queue;

    .line 190
    .local v2, "unroutedRecords":Ljava/util/Queue;, "Ljava/util/Queue<Lcom/upsight/android/analytics/internal/DataStoreRecord;>;"
    invoke-interface {v2, p1}, Ljava/util/Queue;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 191
    invoke-interface {v2, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 193
    .end local v2    # "unroutedRecords":Ljava/util/Queue;, "Ljava/util/Queue<Lcom/upsight/android/analytics/internal/DataStoreRecord;>;"
    :cond_2
    if-eqz v1, :cond_0

    invoke-interface {v1, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 194
    invoke-virtual {v0, p1}, Lcom/upsight/android/analytics/internal/dispatcher/routing/Router;->routeEvent(Lcom/upsight/android/analytics/internal/DataStoreRecord;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 195
    invoke-interface {v1, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method


# virtual methods
.method public hasPendingRecords()Z
    .locals 2

    .prologue
    .line 392
    iget-object v0, p0, Lcom/upsight/android/analytics/internal/dispatcher/Dispatcher;->mPendingRecords:Ljava/util/Set;

    .line 393
    .local v0, "pendingRecords":Ljava/util/Set;, "Ljava/util/Set<Lcom/upsight/android/analytics/internal/DataStoreRecord;>;"
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public launch()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 127
    iget-boolean v0, p0, Lcom/upsight/android/analytics/internal/dispatcher/Dispatcher;->mIsLaunched:Z

    if-eqz v0, :cond_0

    .line 141
    :goto_0
    return-void

    .line 130
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/upsight/android/analytics/internal/dispatcher/Dispatcher;->mIsLaunched:Z

    .line 133
    iput-object v1, p0, Lcom/upsight/android/analytics/internal/dispatcher/Dispatcher;->mCurrentRouter:Lcom/upsight/android/analytics/internal/dispatcher/routing/Router;

    .line 134
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/upsight/android/analytics/internal/dispatcher/Dispatcher;->mExpiredRouters:Ljava/util/Collection;

    .line 135
    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v0, p0, Lcom/upsight/android/analytics/internal/dispatcher/Dispatcher;->mUnroutedRecords:Ljava/util/Queue;

    .line 136
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/upsight/android/analytics/internal/dispatcher/Dispatcher;->mPendingRecords:Ljava/util/Set;

    .line 137
    iput-object v1, p0, Lcom/upsight/android/analytics/internal/dispatcher/Dispatcher;->mCurrentConfig:Lcom/upsight/android/analytics/internal/dispatcher/Config;

    .line 138
    iget-object v0, p0, Lcom/upsight/android/analytics/internal/dispatcher/Dispatcher;->mUpsightDataStore:Lcom/upsight/android/persistence/UpsightDataStore;

    invoke-interface {v0, p0}, Lcom/upsight/android/persistence/UpsightDataStore;->subscribe(Ljava/lang/Object;)Lcom/upsight/android/persistence/UpsightSubscription;

    move-result-object v0

    iput-object v0, p0, Lcom/upsight/android/analytics/internal/dispatcher/Dispatcher;->mDataStoreSubscription:Lcom/upsight/android/persistence/UpsightSubscription;

    .line 140
    invoke-direct {p0}, Lcom/upsight/android/analytics/internal/dispatcher/Dispatcher;->fetchCurrentConfig()V

    goto :goto_0
.end method

.method public onConfigurationCreated(Lcom/upsight/android/analytics/configuration/UpsightConfiguration;)V
    .locals 2
    .param p1, "config"    # Lcom/upsight/android/analytics/configuration/UpsightConfiguration;
    .annotation runtime Lcom/upsight/android/persistence/annotation/Created;
    .end annotation

    .prologue
    .line 239
    const-string v0, "upsight.configuration.dispatcher"

    invoke-virtual {p1}, Lcom/upsight/android/analytics/configuration/UpsightConfiguration;->getScope()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/upsight/android/analytics/internal/dispatcher/Dispatcher;->isUpsightConfigurationValid(Lcom/upsight/android/analytics/configuration/UpsightConfiguration;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 241
    invoke-virtual {p1}, Lcom/upsight/android/analytics/configuration/UpsightConfiguration;->getConfiguration()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/upsight/android/analytics/internal/dispatcher/Dispatcher;->applyConfiguration(Ljava/lang/String;)Z

    .line 243
    :cond_0
    return-void
.end method

.method public onDataStoreRecordCreated(Lcom/upsight/android/analytics/internal/DataStoreRecord;)V
    .locals 0
    .param p1, "storedRecord"    # Lcom/upsight/android/analytics/internal/DataStoreRecord;
    .annotation runtime Lcom/upsight/android/persistence/annotation/Created;
    .end annotation

    .prologue
    .line 171
    invoke-direct {p0, p1}, Lcom/upsight/android/analytics/internal/dispatcher/Dispatcher;->routeRecords(Lcom/upsight/android/analytics/internal/DataStoreRecord;)V

    .line 172
    return-void
.end method

.method public onDelivery(Lcom/upsight/android/analytics/internal/DataStoreRecord;ZZLjava/lang/String;)V
    .locals 4
    .param p1, "record"    # Lcom/upsight/android/analytics/internal/DataStoreRecord;
    .param p2, "isSuccessful"    # Z
    .param p3, "isTrashed"    # Z
    .param p4, "reason"    # Ljava/lang/String;

    .prologue
    .line 339
    if-eqz p2, :cond_3

    .line 340
    invoke-virtual {p1}, Lcom/upsight/android/analytics/internal/DataStoreRecord;->getID()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/upsight/android/analytics/dispatcher/AnalyticsEventDeliveryStatus;->fromSuccess(Ljava/lang/String;)Lcom/upsight/android/analytics/dispatcher/AnalyticsEventDeliveryStatus;

    move-result-object v1

    .line 345
    .local v1, "status":Lcom/upsight/android/analytics/dispatcher/AnalyticsEventDeliveryStatus;
    :goto_0
    iget-object v2, p0, Lcom/upsight/android/analytics/internal/dispatcher/Dispatcher;->mUpsightDataStore:Lcom/upsight/android/persistence/UpsightDataStore;

    new-instance v3, Lcom/upsight/android/analytics/internal/dispatcher/Dispatcher$3;

    invoke-direct {v3, p0}, Lcom/upsight/android/analytics/internal/dispatcher/Dispatcher$3;-><init>(Lcom/upsight/android/analytics/internal/dispatcher/Dispatcher;)V

    invoke-interface {v2, v1, v3}, Lcom/upsight/android/persistence/UpsightDataStore;->store(Ljava/lang/Object;Lcom/upsight/android/persistence/UpsightDataStoreListener;)Lcom/upsight/android/persistence/UpsightSubscription;

    .line 357
    if-nez p2, :cond_0

    if-eqz p3, :cond_1

    .line 358
    :cond_0
    iget-object v2, p0, Lcom/upsight/android/analytics/internal/dispatcher/Dispatcher;->mUpsightDataStore:Lcom/upsight/android/persistence/UpsightDataStore;

    invoke-interface {v2, p1}, Lcom/upsight/android/persistence/UpsightDataStore;->remove(Ljava/lang/Object;)Lcom/upsight/android/persistence/UpsightSubscription;

    .line 361
    :cond_1
    iget-object v0, p0, Lcom/upsight/android/analytics/internal/dispatcher/Dispatcher;->mPendingRecords:Ljava/util/Set;

    .line 362
    .local v0, "pendingRecords":Ljava/util/Set;, "Ljava/util/Set<Lcom/upsight/android/analytics/internal/DataStoreRecord;>;"
    if-eqz v0, :cond_2

    .line 363
    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 365
    :cond_2
    return-void

    .line 342
    .end local v0    # "pendingRecords":Ljava/util/Set;, "Ljava/util/Set<Lcom/upsight/android/analytics/internal/DataStoreRecord;>;"
    .end local v1    # "status":Lcom/upsight/android/analytics/dispatcher/AnalyticsEventDeliveryStatus;
    :cond_3
    invoke-virtual {p1}, Lcom/upsight/android/analytics/internal/DataStoreRecord;->getID()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, p4}, Lcom/upsight/android/analytics/dispatcher/AnalyticsEventDeliveryStatus;->fromFailure(Ljava/lang/String;Ljava/lang/String;)Lcom/upsight/android/analytics/dispatcher/AnalyticsEventDeliveryStatus;

    move-result-object v1

    .restart local v1    # "status":Lcom/upsight/android/analytics/dispatcher/AnalyticsEventDeliveryStatus;
    goto :goto_0
.end method

.method public onResponse(Lcom/upsight/android/analytics/dispatcher/EndpointResponse;)V
    .locals 2
    .param p1, "response"    # Lcom/upsight/android/analytics/dispatcher/EndpointResponse;

    .prologue
    .line 369
    iget-object v0, p0, Lcom/upsight/android/analytics/internal/dispatcher/Dispatcher;->mUpsightDataStore:Lcom/upsight/android/persistence/UpsightDataStore;

    new-instance v1, Lcom/upsight/android/analytics/internal/dispatcher/Dispatcher$4;

    invoke-direct {v1, p0}, Lcom/upsight/android/analytics/internal/dispatcher/Dispatcher$4;-><init>(Lcom/upsight/android/analytics/internal/dispatcher/Dispatcher;)V

    invoke-interface {v0, p1, v1}, Lcom/upsight/android/persistence/UpsightDataStore;->store(Ljava/lang/Object;Lcom/upsight/android/persistence/UpsightDataStoreListener;)Lcom/upsight/android/persistence/UpsightSubscription;

    .line 380
    return-void
.end method

.method public onRoutingFinished(Lcom/upsight/android/analytics/internal/dispatcher/routing/Router;)V
    .locals 1
    .param p1, "rm"    # Lcom/upsight/android/analytics/internal/dispatcher/routing/Router;

    .prologue
    .line 330
    iget-object v0, p0, Lcom/upsight/android/analytics/internal/dispatcher/Dispatcher;->mExpiredRouters:Ljava/util/Collection;

    .line 331
    .local v0, "expiredRouters":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/upsight/android/analytics/internal/dispatcher/routing/Router;>;"
    if-eqz v0, :cond_0

    .line 332
    invoke-interface {v0, p1}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    .line 334
    :cond_0
    return-void
.end method

.method public terminate()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 400
    iget-object v0, p0, Lcom/upsight/android/analytics/internal/dispatcher/Dispatcher;->mCurrentRouter:Lcom/upsight/android/analytics/internal/dispatcher/routing/Router;

    if-eqz v0, :cond_0

    .line 401
    iget-object v0, p0, Lcom/upsight/android/analytics/internal/dispatcher/Dispatcher;->mCurrentRouter:Lcom/upsight/android/analytics/internal/dispatcher/routing/Router;

    invoke-virtual {v0}, Lcom/upsight/android/analytics/internal/dispatcher/routing/Router;->finishRouting()V

    .line 402
    iput-object v1, p0, Lcom/upsight/android/analytics/internal/dispatcher/Dispatcher;->mCurrentRouter:Lcom/upsight/android/analytics/internal/dispatcher/routing/Router;

    .line 404
    :cond_0
    iget-object v0, p0, Lcom/upsight/android/analytics/internal/dispatcher/Dispatcher;->mDataStoreSubscription:Lcom/upsight/android/persistence/UpsightSubscription;

    if-eqz v0, :cond_1

    .line 405
    iget-object v0, p0, Lcom/upsight/android/analytics/internal/dispatcher/Dispatcher;->mDataStoreSubscription:Lcom/upsight/android/persistence/UpsightSubscription;

    invoke-interface {v0}, Lcom/upsight/android/persistence/UpsightSubscription;->unsubscribe()V

    .line 406
    iput-object v1, p0, Lcom/upsight/android/analytics/internal/dispatcher/Dispatcher;->mDataStoreSubscription:Lcom/upsight/android/persistence/UpsightSubscription;

    .line 408
    :cond_1
    iput-object v1, p0, Lcom/upsight/android/analytics/internal/dispatcher/Dispatcher;->mCurrentConfig:Lcom/upsight/android/analytics/internal/dispatcher/Config;

    .line 409
    iput-object v1, p0, Lcom/upsight/android/analytics/internal/dispatcher/Dispatcher;->mPendingRecords:Ljava/util/Set;

    .line 410
    iput-object v1, p0, Lcom/upsight/android/analytics/internal/dispatcher/Dispatcher;->mUnroutedRecords:Ljava/util/Queue;

    .line 411
    iput-object v1, p0, Lcom/upsight/android/analytics/internal/dispatcher/Dispatcher;->mExpiredRouters:Ljava/util/Collection;

    .line 412
    iput-object v1, p0, Lcom/upsight/android/analytics/internal/dispatcher/Dispatcher;->mCurrentRouter:Lcom/upsight/android/analytics/internal/dispatcher/routing/Router;

    .line 414
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/upsight/android/analytics/internal/dispatcher/Dispatcher;->mIsLaunched:Z

    .line 415
    return-void
.end method
