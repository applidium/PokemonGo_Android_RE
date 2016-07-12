.class public Lcom/upsight/android/analytics/event/UpsightPublisherData$Builder;
.super Ljava/lang/Object;
.source "UpsightPublisherData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/upsight/android/analytics/event/UpsightPublisherData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# static fields
.field private static final sObjectMapper:Lcom/fasterxml/jackson/databind/ObjectMapper;


# instance fields
.field private final mDataMap:Lcom/fasterxml/jackson/databind/node/ObjectNode;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 66
    new-instance v0, Lcom/fasterxml/jackson/databind/ObjectMapper;

    invoke-direct {v0}, Lcom/fasterxml/jackson/databind/ObjectMapper;-><init>()V

    sput-object v0, Lcom/upsight/android/analytics/event/UpsightPublisherData$Builder;->sObjectMapper:Lcom/fasterxml/jackson/databind/ObjectMapper;

    .line 67
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    sget-object v0, Lcom/upsight/android/analytics/event/UpsightPublisherData$Builder;->sObjectMapper:Lcom/fasterxml/jackson/databind/ObjectMapper;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/ObjectMapper;->createObjectNode()Lcom/fasterxml/jackson/databind/node/ObjectNode;

    move-result-object v0

    iput-object v0, p0, Lcom/upsight/android/analytics/event/UpsightPublisherData$Builder;->mDataMap:Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 73
    return-void
.end method

.method constructor <init>(Lcom/fasterxml/jackson/databind/node/ObjectNode;)V
    .locals 0
    .param p1, "objectNode"    # Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .prologue
    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    iput-object p1, p0, Lcom/upsight/android/analytics/event/UpsightPublisherData$Builder;->mDataMap:Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 77
    return-void
.end method

.method static synthetic access$200(Lcom/upsight/android/analytics/event/UpsightPublisherData$Builder;)Lcom/fasterxml/jackson/databind/node/ObjectNode;
    .locals 1
    .param p0, "x0"    # Lcom/upsight/android/analytics/event/UpsightPublisherData$Builder;

    .prologue
    .line 61
    iget-object v0, p0, Lcom/upsight/android/analytics/event/UpsightPublisherData$Builder;->mDataMap:Lcom/fasterxml/jackson/databind/node/ObjectNode;

    return-object v0
.end method


# virtual methods
.method public build()Lcom/upsight/android/analytics/event/UpsightPublisherData;
    .locals 2

    .prologue
    .line 200
    new-instance v0, Lcom/upsight/android/analytics/event/UpsightPublisherData;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/upsight/android/analytics/event/UpsightPublisherData;-><init>(Lcom/upsight/android/analytics/event/UpsightPublisherData$Builder;Lcom/upsight/android/analytics/event/UpsightPublisherData$1;)V

    return-object v0
.end method

.method public put(Lcom/upsight/android/analytics/event/UpsightPublisherData;)Lcom/upsight/android/analytics/event/UpsightPublisherData$Builder;
    .locals 5
    .param p1, "data"    # Lcom/upsight/android/analytics/event/UpsightPublisherData;

    .prologue
    .line 186
    if-eqz p1, :cond_0

    .line 187
    # getter for: Lcom/upsight/android/analytics/event/UpsightPublisherData;->mDataMap:Lcom/fasterxml/jackson/databind/node/ObjectNode;
    invoke-static {p1}, Lcom/upsight/android/analytics/event/UpsightPublisherData;->access$000(Lcom/upsight/android/analytics/event/UpsightPublisherData;)Lcom/fasterxml/jackson/databind/node/ObjectNode;

    move-result-object v2

    invoke-virtual {v2}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->fields()Ljava/util/Iterator;

    move-result-object v1

    .line 188
    .local v1, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/fasterxml/jackson/databind/JsonNode;>;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 189
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 190
    .local v0, "field":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/fasterxml/jackson/databind/JsonNode;>;"
    iget-object v4, p0, Lcom/upsight/android/analytics/event/UpsightPublisherData$Builder;->mDataMap:Lcom/fasterxml/jackson/databind/node/ObjectNode;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/fasterxml/jackson/databind/JsonNode;

    invoke-virtual {v4, v2, v3}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->replace(Ljava/lang/String;Lcom/fasterxml/jackson/databind/JsonNode;)Lcom/fasterxml/jackson/databind/JsonNode;

    goto :goto_0

    .line 193
    .end local v0    # "field":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/fasterxml/jackson/databind/JsonNode;>;"
    .end local v1    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/fasterxml/jackson/databind/JsonNode;>;>;"
    :cond_0
    return-object p0
.end method

.method public put(Ljava/lang/String;C)Lcom/upsight/android/analytics/event/UpsightPublisherData$Builder;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # C

    .prologue
    .line 157
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 158
    iget-object v0, p0, Lcom/upsight/android/analytics/event/UpsightPublisherData$Builder;->mDataMap:Lcom/fasterxml/jackson/databind/node/ObjectNode;

    invoke-static {p2}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 160
    :cond_0
    return-object p0
.end method

.method public put(Ljava/lang/String;D)Lcom/upsight/android/analytics/event/UpsightPublisherData$Builder;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # D

    .prologue
    .line 143
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 144
    iget-object v0, p0, Lcom/upsight/android/analytics/event/UpsightPublisherData$Builder;->mDataMap:Lcom/fasterxml/jackson/databind/node/ObjectNode;

    invoke-virtual {v0, p1, p2, p3}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->put(Ljava/lang/String;D)Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 146
    :cond_0
    return-object p0
.end method

.method public put(Ljava/lang/String;F)Lcom/upsight/android/analytics/event/UpsightPublisherData$Builder;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # F

    .prologue
    .line 129
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 130
    iget-object v0, p0, Lcom/upsight/android/analytics/event/UpsightPublisherData$Builder;->mDataMap:Lcom/fasterxml/jackson/databind/node/ObjectNode;

    invoke-virtual {v0, p1, p2}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->put(Ljava/lang/String;F)Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 132
    :cond_0
    return-object p0
.end method

.method public put(Ljava/lang/String;I)Lcom/upsight/android/analytics/event/UpsightPublisherData$Builder;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # I

    .prologue
    .line 101
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 102
    iget-object v0, p0, Lcom/upsight/android/analytics/event/UpsightPublisherData$Builder;->mDataMap:Lcom/fasterxml/jackson/databind/node/ObjectNode;

    invoke-virtual {v0, p1, p2}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->put(Ljava/lang/String;I)Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 104
    :cond_0
    return-object p0
.end method

.method public put(Ljava/lang/String;J)Lcom/upsight/android/analytics/event/UpsightPublisherData$Builder;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # J

    .prologue
    .line 115
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 116
    iget-object v0, p0, Lcom/upsight/android/analytics/event/UpsightPublisherData$Builder;->mDataMap:Lcom/fasterxml/jackson/databind/node/ObjectNode;

    invoke-virtual {v0, p1, p2, p3}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->put(Ljava/lang/String;J)Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 118
    :cond_0
    return-object p0
.end method

.method public put(Ljava/lang/String;Ljava/lang/CharSequence;)Lcom/upsight/android/analytics/event/UpsightPublisherData$Builder;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/CharSequence;

    .prologue
    .line 171
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    if-eqz p2, :cond_0

    .line 172
    iget-object v0, p0, Lcom/upsight/android/analytics/event/UpsightPublisherData$Builder;->mDataMap:Lcom/fasterxml/jackson/databind/node/ObjectNode;

    invoke-interface {p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 174
    :cond_0
    return-object p0
.end method

.method public put(Ljava/lang/String;Z)Lcom/upsight/android/analytics/event/UpsightPublisherData$Builder;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Z

    .prologue
    .line 87
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 88
    iget-object v0, p0, Lcom/upsight/android/analytics/event/UpsightPublisherData$Builder;->mDataMap:Lcom/fasterxml/jackson/databind/node/ObjectNode;

    invoke-virtual {v0, p1, p2}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->put(Ljava/lang/String;Z)Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 90
    :cond_0
    return-object p0
.end method
