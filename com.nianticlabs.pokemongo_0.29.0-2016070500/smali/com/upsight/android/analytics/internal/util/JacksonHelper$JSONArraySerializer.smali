.class public Lcom/upsight/android/analytics/internal/util/JacksonHelper$JSONArraySerializer;
.super Ljava/lang/Object;
.source "JacksonHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/upsight/android/analytics/internal/util/JacksonHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "JSONArraySerializer"
.end annotation


# static fields
.field private static sMapper:Lcom/fasterxml/jackson/databind/ObjectMapper;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 59
    new-instance v0, Lcom/fasterxml/jackson/databind/ObjectMapper;

    invoke-direct {v0}, Lcom/fasterxml/jackson/databind/ObjectMapper;-><init>()V

    sput-object v0, Lcom/upsight/android/analytics/internal/util/JacksonHelper$JSONArraySerializer;->sMapper:Lcom/fasterxml/jackson/databind/ObjectMapper;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static fromArrayNode(Lcom/fasterxml/jackson/databind/node/ArrayNode;)Lorg/json/JSONArray;
    .locals 3
    .param p0, "arrayNode"    # Lcom/fasterxml/jackson/databind/node/ArrayNode;

    .prologue
    .line 62
    const/4 v0, 0x0

    .line 63
    .local v0, "jsonArray":Lorg/json/JSONArray;
    if-eqz p0, :cond_0

    .line 65
    :try_start_0
    new-instance v1, Lorg/json/JSONArray;

    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/node/ArrayNode;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v0    # "jsonArray":Lorg/json/JSONArray;
    .local v1, "jsonArray":Lorg/json/JSONArray;
    move-object v0, v1

    .line 70
    .end local v1    # "jsonArray":Lorg/json/JSONArray;
    .restart local v0    # "jsonArray":Lorg/json/JSONArray;
    :cond_0
    :goto_0
    return-object v0

    .line 66
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public static toArrayNode(Lorg/json/JSONArray;)Lcom/fasterxml/jackson/databind/node/ArrayNode;
    .locals 4
    .param p0, "jsonArray"    # Lorg/json/JSONArray;

    .prologue
    .line 74
    const/4 v1, 0x0

    .line 76
    .local v1, "arrayNode":Lcom/fasterxml/jackson/databind/node/ArrayNode;
    :try_start_0
    sget-object v2, Lcom/upsight/android/analytics/internal/util/JacksonHelper$JSONArraySerializer;->sMapper:Lcom/fasterxml/jackson/databind/ObjectMapper;

    invoke-virtual {p0}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/fasterxml/jackson/databind/ObjectMapper;->readTree(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Lcom/fasterxml/jackson/databind/node/ArrayNode;

    move-object v1, v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 80
    :goto_0
    return-object v1

    .line 77
    :catch_0
    move-exception v2

    goto :goto_0
.end method
