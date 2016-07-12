.class Lcom/upsight/android/analytics/event/uxm/UpsightUxmEnumerateEvent$UpsightData;
.super Ljava/lang/Object;
.source "UpsightUxmEnumerateEvent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/upsight/android/analytics/event/uxm/UpsightUxmEnumerateEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "UpsightData"
.end annotation


# instance fields
.field uxm:Lcom/fasterxml/jackson/databind/node/ArrayNode;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "uxm"
    .end annotation
.end field


# direct methods
.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    return-void
.end method

.method protected constructor <init>(Lcom/upsight/android/analytics/event/uxm/UpsightUxmEnumerateEvent$Builder;)V
    .locals 1
    .param p1, "builder"    # Lcom/upsight/android/analytics/event/uxm/UpsightUxmEnumerateEvent$Builder;

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    # getter for: Lcom/upsight/android/analytics/event/uxm/UpsightUxmEnumerateEvent$Builder;->uxm:Lcom/fasterxml/jackson/databind/node/ArrayNode;
    invoke-static {p1}, Lcom/upsight/android/analytics/event/uxm/UpsightUxmEnumerateEvent$Builder;->access$000(Lcom/upsight/android/analytics/event/uxm/UpsightUxmEnumerateEvent$Builder;)Lcom/fasterxml/jackson/databind/node/ArrayNode;

    move-result-object v0

    iput-object v0, p0, Lcom/upsight/android/analytics/event/uxm/UpsightUxmEnumerateEvent$UpsightData;->uxm:Lcom/fasterxml/jackson/databind/node/ArrayNode;

    .line 41
    return-void
.end method


# virtual methods
.method public getUxm()Lorg/json/JSONArray;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/upsight/android/analytics/event/uxm/UpsightUxmEnumerateEvent$UpsightData;->uxm:Lcom/fasterxml/jackson/databind/node/ArrayNode;

    invoke-static {v0}, Lcom/upsight/android/analytics/internal/util/JacksonHelper$JSONArraySerializer;->fromArrayNode(Lcom/fasterxml/jackson/databind/node/ArrayNode;)Lorg/json/JSONArray;

    move-result-object v0

    return-object v0
.end method
