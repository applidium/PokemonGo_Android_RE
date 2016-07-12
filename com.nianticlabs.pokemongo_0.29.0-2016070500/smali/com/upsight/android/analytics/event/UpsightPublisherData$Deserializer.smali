.class public Lcom/upsight/android/analytics/event/UpsightPublisherData$Deserializer;
.super Lcom/fasterxml/jackson/databind/JsonDeserializer;
.source "UpsightPublisherData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/upsight/android/analytics/event/UpsightPublisherData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Deserializer"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/fasterxml/jackson/databind/JsonDeserializer",
        "<",
        "Lcom/upsight/android/analytics/event/UpsightPublisherData;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/fasterxml/jackson/databind/JsonDeserializer;-><init>()V

    return-void
.end method


# virtual methods
.method public deserialize(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;)Lcom/upsight/android/analytics/event/UpsightPublisherData;
    .locals 3
    .param p1, "jsonParser"    # Lcom/fasterxml/jackson/core/JsonParser;
    .param p2, "deserializationContext"    # Lcom/fasterxml/jackson/databind/DeserializationContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 52
    const-class v2, Lcom/fasterxml/jackson/databind/node/ObjectNode;

    invoke-virtual {p1, v2}, Lcom/fasterxml/jackson/core/JsonParser;->readValueAs(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 53
    .local v1, "objectNode":Lcom/fasterxml/jackson/databind/node/ObjectNode;
    new-instance v0, Lcom/upsight/android/analytics/event/UpsightPublisherData$Builder;

    invoke-direct {v0, v1}, Lcom/upsight/android/analytics/event/UpsightPublisherData$Builder;-><init>(Lcom/fasterxml/jackson/databind/node/ObjectNode;)V

    .line 54
    .local v0, "builder":Lcom/upsight/android/analytics/event/UpsightPublisherData$Builder;
    invoke-virtual {v0}, Lcom/upsight/android/analytics/event/UpsightPublisherData$Builder;->build()Lcom/upsight/android/analytics/event/UpsightPublisherData;

    move-result-object v2

    return-object v2
.end method

.method public bridge synthetic deserialize(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Lcom/fasterxml/jackson/core/JsonParser;
    .param p2, "x1"    # Lcom/fasterxml/jackson/databind/DeserializationContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonProcessingException;
        }
    .end annotation

    .prologue
    .line 47
    invoke-virtual {p0, p1, p2}, Lcom/upsight/android/analytics/event/UpsightPublisherData$Deserializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;)Lcom/upsight/android/analytics/event/UpsightPublisherData;

    move-result-object v0

    return-object v0
.end method
