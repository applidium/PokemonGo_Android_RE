.class public Lcom/upsight/android/analytics/internal/util/JacksonHelper$JSONObjectSerializer;
.super Ljava/lang/Object;
.source "JacksonHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/upsight/android/analytics/internal/util/JacksonHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "JSONObjectSerializer"
.end annotation


# static fields
.field private static sMapper:Lcom/fasterxml/jackson/databind/ObjectMapper;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 27
    new-instance v0, Lcom/fasterxml/jackson/databind/ObjectMapper;

    invoke-direct {v0}, Lcom/fasterxml/jackson/databind/ObjectMapper;-><init>()V

    sput-object v0, Lcom/upsight/android/analytics/internal/util/JacksonHelper$JSONObjectSerializer;->sMapper:Lcom/fasterxml/jackson/databind/ObjectMapper;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static fromObjectNode(Lcom/fasterxml/jackson/databind/node/ObjectNode;)Lorg/json/JSONObject;
    .locals 3
    .param p0, "objectNode"    # Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .prologue
    .line 30
    const/4 v0, 0x0

    .line 31
    .local v0, "jsonObject":Lorg/json/JSONObject;
    if-eqz p0, :cond_0

    .line 33
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v0    # "jsonObject":Lorg/json/JSONObject;
    .local v1, "jsonObject":Lorg/json/JSONObject;
    move-object v0, v1

    .line 38
    .end local v1    # "jsonObject":Lorg/json/JSONObject;
    .restart local v0    # "jsonObject":Lorg/json/JSONObject;
    :cond_0
    :goto_0
    return-object v0

    .line 34
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public static toObjectNode(Lorg/json/JSONObject;)Lcom/fasterxml/jackson/databind/node/ObjectNode;
    .locals 4
    .param p0, "jsonObject"    # Lorg/json/JSONObject;

    .prologue
    .line 42
    const/4 v1, 0x0

    .line 43
    .local v1, "objectNode":Lcom/fasterxml/jackson/databind/node/ObjectNode;
    if-eqz p0, :cond_0

    .line 45
    :try_start_0
    sget-object v2, Lcom/upsight/android/analytics/internal/util/JacksonHelper$JSONObjectSerializer;->sMapper:Lcom/fasterxml/jackson/databind/ObjectMapper;

    invoke-virtual {p0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/fasterxml/jackson/databind/ObjectMapper;->readTree(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Lcom/fasterxml/jackson/databind/node/ObjectNode;

    move-object v1, v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 50
    :cond_0
    :goto_0
    return-object v1

    .line 46
    :catch_0
    move-exception v2

    goto :goto_0
.end method
