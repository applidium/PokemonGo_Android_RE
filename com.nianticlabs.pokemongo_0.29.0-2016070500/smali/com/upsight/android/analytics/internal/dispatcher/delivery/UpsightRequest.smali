.class Lcom/upsight/android/analytics/internal/dispatcher/delivery/UpsightRequest;
.super Ljava/lang/Object;
.source "UpsightRequest.java"


# annotations
.annotation runtime Lcom/fasterxml/jackson/databind/annotation/JsonSerialize;
    using = Lcom/upsight/android/analytics/internal/dispatcher/delivery/UpsightRequest$RequestSerializer;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/upsight/android/analytics/internal/dispatcher/delivery/UpsightRequest$RequestSerializer;
    }
.end annotation


# instance fields
.field private mInstallTs:J

.field private final mLogger:Lcom/upsight/android/logger/UpsightLogger;

.field private final mObjectMapper:Lcom/fasterxml/jackson/databind/ObjectMapper;

.field private mOptOut:Z

.field private mRequestTs:J

.field private mSchema:Lcom/upsight/android/analytics/internal/dispatcher/schema/Schema;

.field private mSessions:[Lcom/upsight/android/analytics/internal/dispatcher/delivery/Session;

.field private mUpsight:Lcom/upsight/android/UpsightContext;


# direct methods
.method public constructor <init>(Lcom/upsight/android/UpsightContext;Lcom/upsight/android/analytics/internal/dispatcher/delivery/BatchSender$Request;Lcom/fasterxml/jackson/databind/ObjectMapper;Lcom/upsight/android/analytics/internal/session/Clock;Lcom/upsight/android/logger/UpsightLogger;)V
    .locals 4
    .param p1, "upsight"    # Lcom/upsight/android/UpsightContext;
    .param p2, "request"    # Lcom/upsight/android/analytics/internal/dispatcher/delivery/BatchSender$Request;
    .param p3, "objectMapper"    # Lcom/fasterxml/jackson/databind/ObjectMapper;
    .param p4, "clock"    # Lcom/upsight/android/analytics/internal/session/Clock;
    .param p5, "logger"    # Lcom/upsight/android/logger/UpsightLogger;

    .prologue
    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    iput-object p1, p0, Lcom/upsight/android/analytics/internal/dispatcher/delivery/UpsightRequest;->mUpsight:Lcom/upsight/android/UpsightContext;

    .line 74
    iput-object p3, p0, Lcom/upsight/android/analytics/internal/dispatcher/delivery/UpsightRequest;->mObjectMapper:Lcom/fasterxml/jackson/databind/ObjectMapper;

    .line 75
    iput-object p5, p0, Lcom/upsight/android/analytics/internal/dispatcher/delivery/UpsightRequest;->mLogger:Lcom/upsight/android/logger/UpsightLogger;

    .line 76
    const-string v0, "install_ts"

    const-wide/16 v2, 0x0

    invoke-static {p1, v0, v2, v3}, Lcom/upsight/android/internal/util/PreferencesHelper;->getLong(Landroid/content/Context;Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/upsight/android/analytics/internal/dispatcher/delivery/UpsightRequest;->mInstallTs:J

    .line 78
    iget-object v0, p2, Lcom/upsight/android/analytics/internal/dispatcher/delivery/BatchSender$Request;->batch:Lcom/upsight/android/analytics/internal/dispatcher/delivery/Batch;

    invoke-direct {p0, v0}, Lcom/upsight/android/analytics/internal/dispatcher/delivery/UpsightRequest;->getSessions(Lcom/upsight/android/analytics/internal/dispatcher/delivery/Batch;)[Lcom/upsight/android/analytics/internal/dispatcher/delivery/Session;

    move-result-object v0

    iput-object v0, p0, Lcom/upsight/android/analytics/internal/dispatcher/delivery/UpsightRequest;->mSessions:[Lcom/upsight/android/analytics/internal/dispatcher/delivery/Session;

    .line 79
    iget-object v0, p0, Lcom/upsight/android/analytics/internal/dispatcher/delivery/UpsightRequest;->mUpsight:Lcom/upsight/android/UpsightContext;

    invoke-static {v0}, Lcom/upsight/android/analytics/provider/UpsightOptOutStatus;->get(Lcom/upsight/android/UpsightContext;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/upsight/android/analytics/internal/dispatcher/delivery/UpsightRequest;->mOptOut:Z

    .line 80
    invoke-interface {p4}, Lcom/upsight/android/analytics/internal/session/Clock;->currentTimeSeconds()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/upsight/android/analytics/internal/dispatcher/delivery/UpsightRequest;->mRequestTs:J

    .line 81
    iget-object v0, p2, Lcom/upsight/android/analytics/internal/dispatcher/delivery/BatchSender$Request;->schema:Lcom/upsight/android/analytics/internal/dispatcher/schema/Schema;

    iput-object v0, p0, Lcom/upsight/android/analytics/internal/dispatcher/delivery/UpsightRequest;->mSchema:Lcom/upsight/android/analytics/internal/dispatcher/schema/Schema;

    .line 82
    return-void
.end method

.method static synthetic access$000(Lcom/upsight/android/analytics/internal/dispatcher/delivery/UpsightRequest;)Lcom/upsight/android/analytics/internal/dispatcher/schema/Schema;
    .locals 1
    .param p0, "x0"    # Lcom/upsight/android/analytics/internal/dispatcher/delivery/UpsightRequest;

    .prologue
    .line 32
    iget-object v0, p0, Lcom/upsight/android/analytics/internal/dispatcher/delivery/UpsightRequest;->mSchema:Lcom/upsight/android/analytics/internal/dispatcher/schema/Schema;

    return-object v0
.end method

.method static synthetic access$100(Lcom/upsight/android/analytics/internal/dispatcher/delivery/UpsightRequest;)J
    .locals 2
    .param p0, "x0"    # Lcom/upsight/android/analytics/internal/dispatcher/delivery/UpsightRequest;

    .prologue
    .line 32
    iget-wide v0, p0, Lcom/upsight/android/analytics/internal/dispatcher/delivery/UpsightRequest;->mRequestTs:J

    return-wide v0
.end method

.method static synthetic access$200(Lcom/upsight/android/analytics/internal/dispatcher/delivery/UpsightRequest;)Z
    .locals 1
    .param p0, "x0"    # Lcom/upsight/android/analytics/internal/dispatcher/delivery/UpsightRequest;

    .prologue
    .line 32
    iget-boolean v0, p0, Lcom/upsight/android/analytics/internal/dispatcher/delivery/UpsightRequest;->mOptOut:Z

    return v0
.end method

.method static synthetic access$300(Lcom/upsight/android/analytics/internal/dispatcher/delivery/UpsightRequest;)[Lcom/upsight/android/analytics/internal/dispatcher/delivery/Session;
    .locals 1
    .param p0, "x0"    # Lcom/upsight/android/analytics/internal/dispatcher/delivery/UpsightRequest;

    .prologue
    .line 32
    iget-object v0, p0, Lcom/upsight/android/analytics/internal/dispatcher/delivery/UpsightRequest;->mSessions:[Lcom/upsight/android/analytics/internal/dispatcher/delivery/Session;

    return-object v0
.end method

.method private getSessions(Lcom/upsight/android/analytics/internal/dispatcher/delivery/Batch;)[Lcom/upsight/android/analytics/internal/dispatcher/delivery/Session;
    .locals 9
    .param p1, "batch"    # Lcom/upsight/android/analytics/internal/dispatcher/delivery/Batch;

    .prologue
    .line 88
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    .line 92
    .local v8, "sessions":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Long;Lcom/upsight/android/analytics/internal/dispatcher/delivery/Session;>;"
    invoke-virtual {p1}, Lcom/upsight/android/analytics/internal/dispatcher/delivery/Batch;->getPackets()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/upsight/android/analytics/internal/dispatcher/routing/Packet;

    .line 93
    .local v7, "packet":Lcom/upsight/android/analytics/internal/dispatcher/routing/Packet;
    invoke-virtual {v7}, Lcom/upsight/android/analytics/internal/dispatcher/routing/Packet;->getRecord()Lcom/upsight/android/analytics/internal/DataStoreRecord;

    move-result-object v1

    .line 94
    .local v1, "event":Lcom/upsight/android/analytics/internal/DataStoreRecord;
    invoke-virtual {v1}, Lcom/upsight/android/analytics/internal/DataStoreRecord;->getSessionID()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v8, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/upsight/android/analytics/internal/dispatcher/delivery/Session;

    .line 96
    .local v0, "session":Lcom/upsight/android/analytics/internal/dispatcher/delivery/Session;
    if-nez v0, :cond_0

    .line 97
    new-instance v0, Lcom/upsight/android/analytics/internal/dispatcher/delivery/Session;

    .end local v0    # "session":Lcom/upsight/android/analytics/internal/dispatcher/delivery/Session;
    iget-object v2, p0, Lcom/upsight/android/analytics/internal/dispatcher/delivery/UpsightRequest;->mObjectMapper:Lcom/fasterxml/jackson/databind/ObjectMapper;

    iget-object v3, p0, Lcom/upsight/android/analytics/internal/dispatcher/delivery/UpsightRequest;->mLogger:Lcom/upsight/android/logger/UpsightLogger;

    iget-wide v4, p0, Lcom/upsight/android/analytics/internal/dispatcher/delivery/UpsightRequest;->mInstallTs:J

    invoke-direct/range {v0 .. v5}, Lcom/upsight/android/analytics/internal/dispatcher/delivery/Session;-><init>(Lcom/upsight/android/analytics/internal/DataStoreRecord;Lcom/fasterxml/jackson/databind/ObjectMapper;Lcom/upsight/android/logger/UpsightLogger;J)V

    .line 98
    .restart local v0    # "session":Lcom/upsight/android/analytics/internal/dispatcher/delivery/Session;
    invoke-virtual {v1}, Lcom/upsight/android/analytics/internal/DataStoreRecord;->getSessionID()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v8, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    :cond_0
    invoke-virtual {v0, v1}, Lcom/upsight/android/analytics/internal/dispatcher/delivery/Session;->addEvent(Lcom/upsight/android/analytics/internal/DataStoreRecord;)V

    goto :goto_0

    .line 103
    .end local v0    # "session":Lcom/upsight/android/analytics/internal/dispatcher/delivery/Session;
    .end local v1    # "event":Lcom/upsight/android/analytics/internal/DataStoreRecord;
    .end local v7    # "packet":Lcom/upsight/android/analytics/internal/dispatcher/routing/Packet;
    :cond_1
    invoke-interface {v8}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v8}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->size()I

    move-result v3

    new-array v3, v3, [Lcom/upsight/android/analytics/internal/dispatcher/delivery/Session;

    invoke-interface {v2, v3}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lcom/upsight/android/analytics/internal/dispatcher/delivery/Session;

    return-object v2
.end method
