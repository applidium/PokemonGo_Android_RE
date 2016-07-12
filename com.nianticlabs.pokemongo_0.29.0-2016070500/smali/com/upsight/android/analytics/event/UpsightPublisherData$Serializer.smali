.class public final Lcom/upsight/android/analytics/event/UpsightPublisherData$Serializer;
.super Lcom/fasterxml/jackson/databind/JsonSerializer;
.source "UpsightPublisherData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/upsight/android/analytics/event/UpsightPublisherData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Serializer"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/fasterxml/jackson/databind/JsonSerializer",
        "<",
        "Lcom/upsight/android/analytics/event/UpsightPublisherData;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/fasterxml/jackson/databind/JsonSerializer;-><init>()V

    return-void
.end method


# virtual methods
.method public serialize(Lcom/upsight/android/analytics/event/UpsightPublisherData;Lcom/fasterxml/jackson/core/JsonGenerator;Lcom/fasterxml/jackson/databind/SerializerProvider;)V
    .locals 1
    .param p1, "data"    # Lcom/upsight/android/analytics/event/UpsightPublisherData;
    .param p2, "jsonGenerator"    # Lcom/fasterxml/jackson/core/JsonGenerator;
    .param p3, "serializerProvider"    # Lcom/fasterxml/jackson/databind/SerializerProvider;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 40
    # getter for: Lcom/upsight/android/analytics/event/UpsightPublisherData;->mDataMap:Lcom/fasterxml/jackson/databind/node/ObjectNode;
    invoke-static {p1}, Lcom/upsight/android/analytics/event/UpsightPublisherData;->access$000(Lcom/upsight/android/analytics/event/UpsightPublisherData;)Lcom/fasterxml/jackson/databind/node/ObjectNode;

    move-result-object v0

    invoke-virtual {p3, v0, p2}, Lcom/fasterxml/jackson/databind/SerializerProvider;->defaultSerializeValue(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 41
    return-void
.end method

.method public bridge synthetic serialize(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;Lcom/fasterxml/jackson/databind/SerializerProvider;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Lcom/fasterxml/jackson/core/JsonGenerator;
    .param p3, "x2"    # Lcom/fasterxml/jackson/databind/SerializerProvider;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonProcessingException;
        }
    .end annotation

    .prologue
    .line 36
    check-cast p1, Lcom/upsight/android/analytics/event/UpsightPublisherData;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2, p3}, Lcom/upsight/android/analytics/event/UpsightPublisherData$Serializer;->serialize(Lcom/upsight/android/analytics/event/UpsightPublisherData;Lcom/fasterxml/jackson/core/JsonGenerator;Lcom/fasterxml/jackson/databind/SerializerProvider;)V

    return-void
.end method
