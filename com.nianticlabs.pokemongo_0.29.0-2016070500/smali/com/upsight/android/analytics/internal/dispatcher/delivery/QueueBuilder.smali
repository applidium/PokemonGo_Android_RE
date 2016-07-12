.class public Lcom/upsight/android/analytics/internal/dispatcher/delivery/QueueBuilder;
.super Ljava/lang/Object;
.source "QueueBuilder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/upsight/android/analytics/internal/dispatcher/delivery/QueueBuilder$BatcherFactory;
    }
.end annotation


# static fields
.field private static final CHARSET_UTF_8:Ljava/lang/String; = "UTF-8"

.field public static final MACRO_APP_TOKEN:Ljava/lang/String; = "{app_token}"

.field public static final MACRO_APP_VERSION:Ljava/lang/String; = "{app_version}"

.field public static final MACRO_HOST:Ljava/lang/String; = "{host}"

.field public static final MACRO_PROTOCOL:Ljava/lang/String; = "{protocol}"

.field public static final MACRO_PROTOCOL_VERSION:Ljava/lang/String; = "{version}"

.field public static final MACRO_SDK_VERSION:Ljava/lang/String; = "{sdk_version}"

.field private static final PROTOCOL_VERSION:Ljava/lang/String; = "v1"


# instance fields
.field private mClock:Lcom/upsight/android/analytics/internal/session/Clock;

.field private mEndpointMacros:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mLogger:Lcom/upsight/android/logger/UpsightLogger;

.field private mObjectMapper:Lcom/fasterxml/jackson/databind/ObjectMapper;

.field private mResponseParserProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/upsight/android/analytics/internal/dispatcher/delivery/ResponseParser;",
            ">;"
        }
    .end annotation
.end field

.field private mRetryExecutor:Lrx/Scheduler;

.field private mSendExecutor:Lrx/Scheduler;

.field private mSignatureVerifier:Lcom/upsight/android/analytics/internal/dispatcher/delivery/SignatureVerifier;

.field private mUpsight:Lcom/upsight/android/UpsightContext;


# direct methods
.method constructor <init>(Lcom/upsight/android/UpsightContext;Lcom/fasterxml/jackson/databind/ObjectMapper;Lcom/upsight/android/analytics/internal/session/Clock;Lcom/upsight/android/logger/UpsightLogger;Lrx/Scheduler;Lrx/Scheduler;Lcom/upsight/android/analytics/internal/dispatcher/delivery/SignatureVerifier;Ljavax/inject/Provider;)V
    .locals 0
    .param p1, "upsight"    # Lcom/upsight/android/UpsightContext;
    .param p2, "objectMapper"    # Lcom/fasterxml/jackson/databind/ObjectMapper;
    .param p3, "clock"    # Lcom/upsight/android/analytics/internal/session/Clock;
    .param p4, "logger"    # Lcom/upsight/android/logger/UpsightLogger;
    .param p5, "retryExecutor"    # Lrx/Scheduler;
    .param p6, "sendExecutor"    # Lrx/Scheduler;
    .param p7, "signatureVerifier"    # Lcom/upsight/android/analytics/internal/dispatcher/delivery/SignatureVerifier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/upsight/android/UpsightContext;",
            "Lcom/fasterxml/jackson/databind/ObjectMapper;",
            "Lcom/upsight/android/analytics/internal/session/Clock;",
            "Lcom/upsight/android/logger/UpsightLogger;",
            "Lrx/Scheduler;",
            "Lrx/Scheduler;",
            "Lcom/upsight/android/analytics/internal/dispatcher/delivery/SignatureVerifier;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/upsight/android/analytics/internal/dispatcher/delivery/ResponseParser;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 97
    .local p8, "responseParserProvider":Ljavax/inject/Provider;, "Ljavax/inject/Provider<Lcom/upsight/android/analytics/internal/dispatcher/delivery/ResponseParser;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 98
    iput-object p1, p0, Lcom/upsight/android/analytics/internal/dispatcher/delivery/QueueBuilder;->mUpsight:Lcom/upsight/android/UpsightContext;

    .line 99
    iput-object p2, p0, Lcom/upsight/android/analytics/internal/dispatcher/delivery/QueueBuilder;->mObjectMapper:Lcom/fasterxml/jackson/databind/ObjectMapper;

    .line 100
    iput-object p3, p0, Lcom/upsight/android/analytics/internal/dispatcher/delivery/QueueBuilder;->mClock:Lcom/upsight/android/analytics/internal/session/Clock;

    .line 101
    iput-object p4, p0, Lcom/upsight/android/analytics/internal/dispatcher/delivery/QueueBuilder;->mLogger:Lcom/upsight/android/logger/UpsightLogger;

    .line 102
    iput-object p5, p0, Lcom/upsight/android/analytics/internal/dispatcher/delivery/QueueBuilder;->mRetryExecutor:Lrx/Scheduler;

    .line 103
    iput-object p6, p0, Lcom/upsight/android/analytics/internal/dispatcher/delivery/QueueBuilder;->mSendExecutor:Lrx/Scheduler;

    .line 104
    iput-object p7, p0, Lcom/upsight/android/analytics/internal/dispatcher/delivery/QueueBuilder;->mSignatureVerifier:Lcom/upsight/android/analytics/internal/dispatcher/delivery/SignatureVerifier;

    .line 105
    iput-object p8, p0, Lcom/upsight/android/analytics/internal/dispatcher/delivery/QueueBuilder;->mResponseParserProvider:Ljavax/inject/Provider;

    .line 107
    invoke-direct {p0}, Lcom/upsight/android/analytics/internal/dispatcher/delivery/QueueBuilder;->createEndpointMacroMap()V

    .line 108
    return-void
.end method

.method static synthetic access$000(Lcom/upsight/android/analytics/internal/dispatcher/delivery/QueueBuilder;)Lrx/Scheduler;
    .locals 1
    .param p0, "x0"    # Lcom/upsight/android/analytics/internal/dispatcher/delivery/QueueBuilder;

    .prologue
    .line 31
    iget-object v0, p0, Lcom/upsight/android/analytics/internal/dispatcher/delivery/QueueBuilder;->mRetryExecutor:Lrx/Scheduler;

    return-object v0
.end method

.method private createEndpointMacroMap()V
    .locals 3

    .prologue
    .line 150
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/upsight/android/analytics/internal/dispatcher/delivery/QueueBuilder;->mEndpointMacros:Ljava/util/Map;

    .line 151
    iget-object v0, p0, Lcom/upsight/android/analytics/internal/dispatcher/delivery/QueueBuilder;->mEndpointMacros:Ljava/util/Map;

    const-string v1, "{version}"

    const-string v2, "v1"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 152
    iget-object v0, p0, Lcom/upsight/android/analytics/internal/dispatcher/delivery/QueueBuilder;->mEndpointMacros:Ljava/util/Map;

    const-string v1, "{app_token}"

    iget-object v2, p0, Lcom/upsight/android/analytics/internal/dispatcher/delivery/QueueBuilder;->mUpsight:Lcom/upsight/android/UpsightContext;

    invoke-virtual {v2}, Lcom/upsight/android/UpsightContext;->getApplicationToken()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 153
    iget-object v0, p0, Lcom/upsight/android/analytics/internal/dispatcher/delivery/QueueBuilder;->mEndpointMacros:Ljava/util/Map;

    const-string v1, "{app_version}"

    iget-object v2, p0, Lcom/upsight/android/analytics/internal/dispatcher/delivery/QueueBuilder;->mUpsight:Lcom/upsight/android/UpsightContext;

    invoke-direct {p0, v2}, Lcom/upsight/android/analytics/internal/dispatcher/delivery/QueueBuilder;->getAppVersionName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 154
    iget-object v0, p0, Lcom/upsight/android/analytics/internal/dispatcher/delivery/QueueBuilder;->mEndpointMacros:Ljava/util/Map;

    const-string v1, "{sdk_version}"

    iget-object v2, p0, Lcom/upsight/android/analytics/internal/dispatcher/delivery/QueueBuilder;->mUpsight:Lcom/upsight/android/UpsightContext;

    invoke-virtual {v2}, Lcom/upsight/android/UpsightContext;->getSdkVersion()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 155
    return-void
.end method

.method private getAppVersionName(Landroid/content/Context;)Ljava/lang/String;
    .locals 8
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 164
    const-string v2, ""

    .line 166
    .local v2, "versionName":Ljava/lang/String;
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 167
    .local v1, "info":Landroid/content/pm/PackageInfo;
    if-eqz v1, :cond_0

    iget-object v3, v1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 168
    iget-object v3, v1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    const-string v4, "UTF-8"

    invoke-static {v3, v4}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v2

    .line 175
    .end local v1    # "info":Landroid/content/pm/PackageInfo;
    :cond_0
    :goto_0
    return-object v2

    .line 170
    :catch_0
    move-exception v0

    .line 171
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    iget-object v3, p0, Lcom/upsight/android/analytics/internal/dispatcher/delivery/QueueBuilder;->mLogger:Lcom/upsight/android/logger/UpsightLogger;

    const-class v4, Lcom/upsight/android/analytics/internal/dispatcher/delivery/QueueBuilder;

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "Could not get package info"

    new-array v6, v6, [Ljava/lang/Object;

    aput-object v0, v6, v7

    invoke-interface {v3, v4, v5, v6}, Lcom/upsight/android/logger/UpsightLogger;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 172
    .end local v0    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :catch_1
    move-exception v0

    .line 173
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    iget-object v3, p0, Lcom/upsight/android/analytics/internal/dispatcher/delivery/QueueBuilder;->mLogger:Lcom/upsight/android/logger/UpsightLogger;

    const-class v4, Lcom/upsight/android/analytics/internal/dispatcher/delivery/QueueBuilder;

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "UTF-8 encoding not supported"

    new-array v6, v6, [Ljava/lang/Object;

    aput-object v0, v6, v7

    invoke-interface {v3, v4, v5, v6}, Lcom/upsight/android/logger/UpsightLogger;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method


# virtual methods
.method public build(Ljava/lang/String;Lcom/upsight/android/analytics/internal/dispatcher/delivery/QueueConfig;Lcom/upsight/android/analytics/internal/dispatcher/util/Selector;Lcom/upsight/android/analytics/internal/dispatcher/util/Selector;)Lcom/upsight/android/analytics/internal/dispatcher/delivery/Queue;
    .locals 12
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "config"    # Lcom/upsight/android/analytics/internal/dispatcher/delivery/QueueConfig;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/upsight/android/analytics/internal/dispatcher/delivery/QueueConfig;",
            "Lcom/upsight/android/analytics/internal/dispatcher/util/Selector",
            "<",
            "Lcom/upsight/android/analytics/internal/dispatcher/schema/Schema;",
            ">;",
            "Lcom/upsight/android/analytics/internal/dispatcher/util/Selector",
            "<",
            "Lcom/upsight/android/analytics/internal/dispatcher/schema/Schema;",
            ">;)",
            "Lcom/upsight/android/analytics/internal/dispatcher/delivery/Queue;"
        }
    .end annotation

    .prologue
    .line 122
    .local p3, "schemaSelectorByName":Lcom/upsight/android/analytics/internal/dispatcher/util/Selector;, "Lcom/upsight/android/analytics/internal/dispatcher/util/Selector<Lcom/upsight/android/analytics/internal/dispatcher/schema/Schema;>;"
    .local p4, "schemaSelectorByType":Lcom/upsight/android/analytics/internal/dispatcher/util/Selector;, "Lcom/upsight/android/analytics/internal/dispatcher/util/Selector<Lcom/upsight/android/analytics/internal/dispatcher/schema/Schema;>;"
    new-instance v5, Lcom/upsight/android/analytics/internal/dispatcher/delivery/UpsightEndpoint;

    invoke-virtual {p2}, Lcom/upsight/android/analytics/internal/dispatcher/delivery/QueueConfig;->getEndpointAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/upsight/android/analytics/internal/dispatcher/delivery/QueueBuilder;->prepareEndpoint(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/upsight/android/analytics/internal/dispatcher/delivery/QueueBuilder;->mSignatureVerifier:Lcom/upsight/android/analytics/internal/dispatcher/delivery/SignatureVerifier;

    iget-object v3, p0, Lcom/upsight/android/analytics/internal/dispatcher/delivery/QueueBuilder;->mObjectMapper:Lcom/fasterxml/jackson/databind/ObjectMapper;

    iget-object v4, p0, Lcom/upsight/android/analytics/internal/dispatcher/delivery/QueueBuilder;->mLogger:Lcom/upsight/android/logger/UpsightLogger;

    invoke-direct {v5, v1, v2, v3, v4}, Lcom/upsight/android/analytics/internal/dispatcher/delivery/UpsightEndpoint;-><init>(Ljava/lang/String;Lcom/upsight/android/analytics/internal/dispatcher/delivery/SignatureVerifier;Lcom/fasterxml/jackson/databind/ObjectMapper;Lcom/upsight/android/logger/UpsightLogger;)V

    .line 125
    .local v5, "endpoint":Lcom/upsight/android/analytics/internal/dispatcher/delivery/UpsightEndpoint;
    new-instance v0, Lcom/upsight/android/analytics/internal/dispatcher/delivery/BatchSender;

    iget-object v1, p0, Lcom/upsight/android/analytics/internal/dispatcher/delivery/QueueBuilder;->mUpsight:Lcom/upsight/android/UpsightContext;

    invoke-virtual {p2}, Lcom/upsight/android/analytics/internal/dispatcher/delivery/QueueConfig;->getBatchSenderConfig()Lcom/upsight/android/analytics/internal/dispatcher/delivery/BatchSender$Config;

    move-result-object v2

    iget-object v3, p0, Lcom/upsight/android/analytics/internal/dispatcher/delivery/QueueBuilder;->mRetryExecutor:Lrx/Scheduler;

    iget-object v4, p0, Lcom/upsight/android/analytics/internal/dispatcher/delivery/QueueBuilder;->mSendExecutor:Lrx/Scheduler;

    iget-object v6, p0, Lcom/upsight/android/analytics/internal/dispatcher/delivery/QueueBuilder;->mResponseParserProvider:Ljavax/inject/Provider;

    invoke-interface {v6}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/upsight/android/analytics/internal/dispatcher/delivery/ResponseParser;

    iget-object v7, p0, Lcom/upsight/android/analytics/internal/dispatcher/delivery/QueueBuilder;->mObjectMapper:Lcom/fasterxml/jackson/databind/ObjectMapper;

    iget-object v8, p0, Lcom/upsight/android/analytics/internal/dispatcher/delivery/QueueBuilder;->mClock:Lcom/upsight/android/analytics/internal/session/Clock;

    iget-object v9, p0, Lcom/upsight/android/analytics/internal/dispatcher/delivery/QueueBuilder;->mLogger:Lcom/upsight/android/logger/UpsightLogger;

    invoke-direct/range {v0 .. v9}, Lcom/upsight/android/analytics/internal/dispatcher/delivery/BatchSender;-><init>(Lcom/upsight/android/UpsightContext;Lcom/upsight/android/analytics/internal/dispatcher/delivery/BatchSender$Config;Lrx/Scheduler;Lrx/Scheduler;Lcom/upsight/android/analytics/internal/dispatcher/delivery/UpsightEndpoint;Lcom/upsight/android/analytics/internal/dispatcher/delivery/ResponseParser;Lcom/fasterxml/jackson/databind/ObjectMapper;Lcom/upsight/android/analytics/internal/session/Clock;Lcom/upsight/android/logger/UpsightLogger;)V

    .line 129
    .local v0, "sender":Lcom/upsight/android/analytics/internal/dispatcher/delivery/BatchSender;
    new-instance v6, Lcom/upsight/android/analytics/internal/dispatcher/delivery/Queue;

    new-instance v10, Lcom/upsight/android/analytics/internal/dispatcher/delivery/QueueBuilder$BatcherFactory;

    invoke-virtual {p2}, Lcom/upsight/android/analytics/internal/dispatcher/delivery/QueueConfig;->getBatcherConfig()Lcom/upsight/android/analytics/internal/dispatcher/delivery/Batcher$Config;

    move-result-object v1

    invoke-direct {v10, p0, v1}, Lcom/upsight/android/analytics/internal/dispatcher/delivery/QueueBuilder$BatcherFactory;-><init>(Lcom/upsight/android/analytics/internal/dispatcher/delivery/QueueBuilder;Lcom/upsight/android/analytics/internal/dispatcher/delivery/Batcher$Config;)V

    move-object v7, p1

    move-object v8, p3

    move-object/from16 v9, p4

    move-object v11, v0

    invoke-direct/range {v6 .. v11}, Lcom/upsight/android/analytics/internal/dispatcher/delivery/Queue;-><init>(Ljava/lang/String;Lcom/upsight/android/analytics/internal/dispatcher/util/Selector;Lcom/upsight/android/analytics/internal/dispatcher/util/Selector;Lcom/upsight/android/analytics/internal/dispatcher/delivery/Batcher$Factory;Lcom/upsight/android/analytics/internal/dispatcher/delivery/BatchSender;)V

    return-object v6
.end method

.method prepareEndpoint(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "baseUrl"    # Ljava/lang/String;

    .prologue
    .line 139
    iget-object v3, p0, Lcom/upsight/android/analytics/internal/dispatcher/delivery/QueueBuilder;->mEndpointMacros:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    .line 140
    .local v2, "replacements":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;>;"
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 141
    .local v1, "replacement":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/CharSequence;

    invoke-virtual {p1, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    .line 142
    goto :goto_0

    .line 143
    .end local v1    # "replacement":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_0
    return-object p1
.end method
