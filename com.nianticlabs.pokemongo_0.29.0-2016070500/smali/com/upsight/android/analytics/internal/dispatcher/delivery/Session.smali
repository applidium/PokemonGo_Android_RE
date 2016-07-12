.class Lcom/upsight/android/analytics/internal/dispatcher/delivery/Session;
.super Ljava/lang/Object;
.source "Session.java"


# instance fields
.field private mEvents:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/upsight/android/analytics/internal/DataStoreRecord;",
            ">;"
        }
    .end annotation
.end field

.field private mInstallTs:J

.field private final mLogger:Lcom/upsight/android/logger/UpsightLogger;

.field private mMsgCampaignId:Ljava/lang/Integer;

.field private mMsgId:Ljava/lang/Integer;

.field private final mObjectMapper:Lcom/fasterxml/jackson/databind/ObjectMapper;

.field private mPastSessionTime:J

.field private mSessionNum:I

.field private mSessionStart:J


# direct methods
.method public constructor <init>(Lcom/upsight/android/analytics/internal/DataStoreRecord;Lcom/fasterxml/jackson/databind/ObjectMapper;Lcom/upsight/android/logger/UpsightLogger;J)V
    .locals 2
    .param p1, "record"    # Lcom/upsight/android/analytics/internal/DataStoreRecord;
    .param p2, "mapper"    # Lcom/fasterxml/jackson/databind/ObjectMapper;
    .param p3, "logger"    # Lcom/upsight/android/logger/UpsightLogger;
    .param p4, "installTs"    # J

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/upsight/android/analytics/internal/dispatcher/delivery/Session;->mEvents:Ljava/util/Set;

    .line 51
    invoke-virtual {p1}, Lcom/upsight/android/analytics/internal/DataStoreRecord;->getSessionID()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/upsight/android/analytics/internal/dispatcher/delivery/Session;->mSessionStart:J

    .line 52
    iput-object p2, p0, Lcom/upsight/android/analytics/internal/dispatcher/delivery/Session;->mObjectMapper:Lcom/fasterxml/jackson/databind/ObjectMapper;

    .line 53
    iput-object p3, p0, Lcom/upsight/android/analytics/internal/dispatcher/delivery/Session;->mLogger:Lcom/upsight/android/logger/UpsightLogger;

    .line 54
    iput-wide p4, p0, Lcom/upsight/android/analytics/internal/dispatcher/delivery/Session;->mInstallTs:J

    .line 55
    invoke-virtual {p1}, Lcom/upsight/android/analytics/internal/DataStoreRecord;->getMessageID()Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/upsight/android/analytics/internal/dispatcher/delivery/Session;->mMsgId:Ljava/lang/Integer;

    .line 56
    invoke-virtual {p1}, Lcom/upsight/android/analytics/internal/DataStoreRecord;->getCampaignID()Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/upsight/android/analytics/internal/dispatcher/delivery/Session;->mMsgCampaignId:Ljava/lang/Integer;

    .line 57
    invoke-virtual {p1}, Lcom/upsight/android/analytics/internal/DataStoreRecord;->getPastSessionTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/upsight/android/analytics/internal/dispatcher/delivery/Session;->mPastSessionTime:J

    .line 58
    invoke-virtual {p1}, Lcom/upsight/android/analytics/internal/DataStoreRecord;->getSessionNumber()I

    move-result v0

    iput v0, p0, Lcom/upsight/android/analytics/internal/dispatcher/delivery/Session;->mSessionNum:I

    .line 59
    return-void
.end method


# virtual methods
.method public addEvent(Lcom/upsight/android/analytics/internal/DataStoreRecord;)V
    .locals 1
    .param p1, "event"    # Lcom/upsight/android/analytics/internal/DataStoreRecord;

    .prologue
    .line 65
    iget-object v0, p0, Lcom/upsight/android/analytics/internal/dispatcher/delivery/Session;->mEvents:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 66
    return-void
.end method

.method public getEvents()[Lcom/fasterxml/jackson/databind/node/ObjectNode;
    .locals 10
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "events"
    .end annotation

    .prologue
    .line 74
    new-instance v5, Ljava/util/ArrayList;

    iget-object v6, p0, Lcom/upsight/android/analytics/internal/dispatcher/delivery/Session;->mEvents:Ljava/util/Set;

    invoke-interface {v6}, Ljava/util/Set;->size()I

    move-result v6

    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(I)V

    .line 76
    .local v5, "res":Ljava/util/List;, "Ljava/util/List<Lcom/fasterxml/jackson/databind/node/ObjectNode;>;"
    iget-object v6, p0, Lcom/upsight/android/analytics/internal/dispatcher/delivery/Session;->mEvents:Ljava/util/Set;

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/upsight/android/analytics/internal/DataStoreRecord;

    .line 78
    .local v4, "record":Lcom/upsight/android/analytics/internal/DataStoreRecord;
    :try_start_0
    invoke-virtual {v4}, Lcom/upsight/android/analytics/internal/DataStoreRecord;->getSource()Ljava/lang/String;

    move-result-object v3

    .line 79
    .local v3, "jsonString":Ljava/lang/String;
    iget-object v6, p0, Lcom/upsight/android/analytics/internal/dispatcher/delivery/Session;->mObjectMapper:Lcom/fasterxml/jackson/databind/ObjectMapper;

    invoke-virtual {v6, v3}, Lcom/fasterxml/jackson/databind/ObjectMapper;->readTree(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v2

    .line 80
    .local v2, "jsonNode":Lcom/fasterxml/jackson/databind/JsonNode;
    invoke-virtual {v2}, Lcom/fasterxml/jackson/databind/JsonNode;->isObject()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 81
    check-cast v2, Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .end local v2    # "jsonNode":Lcom/fasterxml/jackson/databind/JsonNode;
    invoke-interface {v5, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 83
    .end local v3    # "jsonString":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 84
    .local v0, "e":Ljava/io/IOException;
    iget-object v6, p0, Lcom/upsight/android/analytics/internal/dispatcher/delivery/Session;->mLogger:Lcom/upsight/android/logger/UpsightLogger;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v7

    const-string v8, "Error parsing JSON object."

    const/4 v9, 0x0

    new-array v9, v9, [Ljava/lang/Object;

    invoke-interface {v6, v7, v0, v8, v9}, Lcom/upsight/android/logger/UpsightLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 85
    .end local v0    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v0

    .line 86
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 90
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v4    # "record":Lcom/upsight/android/analytics/internal/DataStoreRecord;
    :cond_1
    iget-object v6, p0, Lcom/upsight/android/analytics/internal/dispatcher/delivery/Session;->mEvents:Ljava/util/Set;

    invoke-interface {v6}, Ljava/util/Set;->size()I

    move-result v6

    new-array v6, v6, [Lcom/fasterxml/jackson/databind/node/ObjectNode;

    invoke-interface {v5, v6}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Lcom/fasterxml/jackson/databind/node/ObjectNode;

    return-object v6
.end method

.method public getInstallTs()J
    .locals 2
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "install_ts"
    .end annotation

    .prologue
    .line 143
    iget-wide v0, p0, Lcom/upsight/android/analytics/internal/dispatcher/delivery/Session;->mInstallTs:J

    return-wide v0
.end method

.method public getMsgCampaignId()Ljava/lang/Integer;
    .locals 1
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "msg_campaign_id"
    .end annotation

    .annotation runtime Lcom/fasterxml/jackson/databind/annotation/JsonSerialize;
        include = .enum Lcom/fasterxml/jackson/databind/annotation/JsonSerialize$Inclusion;->NON_NULL:Lcom/fasterxml/jackson/databind/annotation/JsonSerialize$Inclusion;
    .end annotation

    .prologue
    .line 110
    iget-object v0, p0, Lcom/upsight/android/analytics/internal/dispatcher/delivery/Session;->mMsgCampaignId:Ljava/lang/Integer;

    return-object v0
.end method

.method public getMsgId()Ljava/lang/Integer;
    .locals 1
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "msg_id"
    .end annotation

    .annotation runtime Lcom/fasterxml/jackson/databind/annotation/JsonSerialize;
        include = .enum Lcom/fasterxml/jackson/databind/annotation/JsonSerialize$Inclusion;->NON_NULL:Lcom/fasterxml/jackson/databind/annotation/JsonSerialize$Inclusion;
    .end annotation

    .prologue
    .line 101
    iget-object v0, p0, Lcom/upsight/android/analytics/internal/dispatcher/delivery/Session;->mMsgId:Ljava/lang/Integer;

    return-object v0
.end method

.method public getPastSessionTime()J
    .locals 2
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "past_session_time"
    .end annotation

    .prologue
    .line 118
    iget-wide v0, p0, Lcom/upsight/android/analytics/internal/dispatcher/delivery/Session;->mPastSessionTime:J

    return-wide v0
.end method

.method public getSessionNum()I
    .locals 1
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "session_num"
    .end annotation

    .prologue
    .line 127
    iget v0, p0, Lcom/upsight/android/analytics/internal/dispatcher/delivery/Session;->mSessionNum:I

    return v0
.end method

.method public getSessionStart()J
    .locals 2
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "session_start"
    .end annotation

    .prologue
    .line 135
    iget-wide v0, p0, Lcom/upsight/android/analytics/internal/dispatcher/delivery/Session;->mSessionStart:J

    return-wide v0
.end method
