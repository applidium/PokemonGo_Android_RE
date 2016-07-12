.class public final Lcom/upsight/android/analytics/event/UpsightDynamicEvent$Builder;
.super Ljava/lang/Object;
.source "UpsightDynamicEvent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/upsight/android/analytics/event/UpsightDynamicEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private identifiers:Ljava/lang/String;

.field private publisherData:Lcom/fasterxml/jackson/databind/JsonNode;

.field private final type:Ljava/lang/String;

.field private upsightData:Lcom/fasterxml/jackson/databind/JsonNode;


# direct methods
.method private constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "type"    # Ljava/lang/String;

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    sget-object v0, Lcom/fasterxml/jackson/databind/node/JsonNodeFactory;->instance:Lcom/fasterxml/jackson/databind/node/JsonNodeFactory;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/node/JsonNodeFactory;->objectNode()Lcom/fasterxml/jackson/databind/node/ObjectNode;

    move-result-object v0

    iput-object v0, p0, Lcom/upsight/android/analytics/event/UpsightDynamicEvent$Builder;->publisherData:Lcom/fasterxml/jackson/databind/JsonNode;

    .line 26
    sget-object v0, Lcom/fasterxml/jackson/databind/node/JsonNodeFactory;->instance:Lcom/fasterxml/jackson/databind/node/JsonNodeFactory;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/node/JsonNodeFactory;->objectNode()Lcom/fasterxml/jackson/databind/node/ObjectNode;

    move-result-object v0

    iput-object v0, p0, Lcom/upsight/android/analytics/event/UpsightDynamicEvent$Builder;->upsightData:Lcom/fasterxml/jackson/databind/JsonNode;

    .line 31
    iput-object p1, p0, Lcom/upsight/android/analytics/event/UpsightDynamicEvent$Builder;->type:Ljava/lang/String;

    .line 32
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Lcom/upsight/android/analytics/event/UpsightDynamicEvent$1;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/String;
    .param p2, "x1"    # Lcom/upsight/android/analytics/event/UpsightDynamicEvent$1;

    .prologue
    .line 24
    invoke-direct {p0, p1}, Lcom/upsight/android/analytics/event/UpsightDynamicEvent$Builder;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method private build()Lcom/upsight/android/analytics/event/UpsightDynamicEvent;
    .locals 5

    .prologue
    .line 70
    new-instance v0, Lcom/upsight/android/analytics/event/UpsightDynamicEvent;

    iget-object v1, p0, Lcom/upsight/android/analytics/event/UpsightDynamicEvent$Builder;->type:Ljava/lang/String;

    iget-object v2, p0, Lcom/upsight/android/analytics/event/UpsightDynamicEvent$Builder;->identifiers:Ljava/lang/String;

    iget-object v3, p0, Lcom/upsight/android/analytics/event/UpsightDynamicEvent$Builder;->upsightData:Lcom/fasterxml/jackson/databind/JsonNode;

    iget-object v4, p0, Lcom/upsight/android/analytics/event/UpsightDynamicEvent$Builder;->publisherData:Lcom/fasterxml/jackson/databind/JsonNode;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/upsight/android/analytics/event/UpsightDynamicEvent;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/fasterxml/jackson/databind/JsonNode;Lcom/fasterxml/jackson/databind/JsonNode;)V

    return-object v0
.end method


# virtual methods
.method public putPublisherData(Lcom/fasterxml/jackson/databind/JsonNode;)Lcom/upsight/android/analytics/event/UpsightDynamicEvent$Builder;
    .locals 1
    .param p1, "jsonNode"    # Lcom/fasterxml/jackson/databind/JsonNode;

    .prologue
    .line 54
    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/JsonNode;->deepCopy()Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v0

    iput-object v0, p0, Lcom/upsight/android/analytics/event/UpsightDynamicEvent$Builder;->publisherData:Lcom/fasterxml/jackson/databind/JsonNode;

    .line 55
    return-object p0
.end method

.method public putUpsightData(Lcom/fasterxml/jackson/databind/JsonNode;)Lcom/upsight/android/analytics/event/UpsightDynamicEvent$Builder;
    .locals 1
    .param p1, "jsonNode"    # Lcom/fasterxml/jackson/databind/JsonNode;

    .prologue
    .line 65
    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/JsonNode;->deepCopy()Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v0

    iput-object v0, p0, Lcom/upsight/android/analytics/event/UpsightDynamicEvent$Builder;->upsightData:Lcom/fasterxml/jackson/databind/JsonNode;

    .line 66
    return-object p0
.end method

.method public final record(Lcom/upsight/android/UpsightContext;)Lcom/upsight/android/analytics/event/UpsightDynamicEvent;
    .locals 3
    .param p1, "upsight"    # Lcom/upsight/android/UpsightContext;

    .prologue
    .line 74
    invoke-direct {p0}, Lcom/upsight/android/analytics/event/UpsightDynamicEvent$Builder;->build()Lcom/upsight/android/analytics/event/UpsightDynamicEvent;

    move-result-object v1

    .line 75
    .local v1, "result":Lcom/upsight/android/analytics/event/UpsightDynamicEvent;
    const-string v2, "com.upsight.extension.analytics"

    invoke-virtual {p1, v2}, Lcom/upsight/android/UpsightContext;->getUpsightExtension(Ljava/lang/String;)Lcom/upsight/android/UpsightExtension;

    move-result-object v0

    check-cast v0, Lcom/upsight/android/UpsightAnalyticsExtension;

    .line 77
    .local v0, "extension":Lcom/upsight/android/UpsightAnalyticsExtension;
    invoke-virtual {v0}, Lcom/upsight/android/UpsightAnalyticsExtension;->getApi()Lcom/upsight/android/analytics/UpsightAnalyticsApi;

    move-result-object v2

    invoke-interface {v2, v1}, Lcom/upsight/android/analytics/UpsightAnalyticsApi;->record(Lcom/upsight/android/analytics/event/UpsightAnalyticsEvent;)V

    .line 78
    return-object v1
.end method

.method public setDynamicIdentifiers(Ljava/lang/String;)Lcom/upsight/android/analytics/event/UpsightDynamicEvent$Builder;
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 43
    iput-object p1, p0, Lcom/upsight/android/analytics/event/UpsightDynamicEvent$Builder;->identifiers:Ljava/lang/String;

    .line 44
    return-object p0
.end method
