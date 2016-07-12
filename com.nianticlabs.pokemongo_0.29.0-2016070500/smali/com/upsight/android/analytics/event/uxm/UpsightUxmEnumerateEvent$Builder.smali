.class public Lcom/upsight/android/analytics/event/uxm/UpsightUxmEnumerateEvent$Builder;
.super Lcom/upsight/android/analytics/internal/AnalyticsEvent$Builder;
.source "UpsightUxmEnumerateEvent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/upsight/android/analytics/event/uxm/UpsightUxmEnumerateEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/upsight/android/analytics/internal/AnalyticsEvent$Builder",
        "<",
        "Lcom/upsight/android/analytics/event/uxm/UpsightUxmEnumerateEvent;",
        "Lcom/upsight/android/analytics/event/uxm/UpsightUxmEnumerateEvent$UpsightData;",
        ">;"
    }
.end annotation


# instance fields
.field private uxm:Lcom/fasterxml/jackson/databind/node/ArrayNode;


# direct methods
.method protected constructor <init>(Lorg/json/JSONArray;)V
    .locals 1
    .param p1, "uxm"    # Lorg/json/JSONArray;

    .prologue
    .line 68
    invoke-direct {p0}, Lcom/upsight/android/analytics/internal/AnalyticsEvent$Builder;-><init>()V

    .line 69
    invoke-static {p1}, Lcom/upsight/android/analytics/internal/util/JacksonHelper$JSONArraySerializer;->toArrayNode(Lorg/json/JSONArray;)Lcom/fasterxml/jackson/databind/node/ArrayNode;

    move-result-object v0

    iput-object v0, p0, Lcom/upsight/android/analytics/event/uxm/UpsightUxmEnumerateEvent$Builder;->uxm:Lcom/fasterxml/jackson/databind/node/ArrayNode;

    .line 70
    return-void
.end method

.method static synthetic access$000(Lcom/upsight/android/analytics/event/uxm/UpsightUxmEnumerateEvent$Builder;)Lcom/fasterxml/jackson/databind/node/ArrayNode;
    .locals 1
    .param p0, "x0"    # Lcom/upsight/android/analytics/event/uxm/UpsightUxmEnumerateEvent$Builder;

    .prologue
    .line 58
    iget-object v0, p0, Lcom/upsight/android/analytics/event/uxm/UpsightUxmEnumerateEvent$Builder;->uxm:Lcom/fasterxml/jackson/databind/node/ArrayNode;

    return-object v0
.end method


# virtual methods
.method protected bridge synthetic build()Lcom/upsight/android/analytics/event/UpsightAnalyticsEvent;
    .locals 1

    .prologue
    .line 58
    invoke-virtual {p0}, Lcom/upsight/android/analytics/event/uxm/UpsightUxmEnumerateEvent$Builder;->build()Lcom/upsight/android/analytics/event/uxm/UpsightUxmEnumerateEvent;

    move-result-object v0

    return-object v0
.end method

.method protected build()Lcom/upsight/android/analytics/event/uxm/UpsightUxmEnumerateEvent;
    .locals 4

    .prologue
    .line 74
    new-instance v0, Lcom/upsight/android/analytics/event/uxm/UpsightUxmEnumerateEvent;

    const-string v1, "upsight.uxm.enumerate"

    new-instance v2, Lcom/upsight/android/analytics/event/uxm/UpsightUxmEnumerateEvent$UpsightData;

    invoke-direct {v2, p0}, Lcom/upsight/android/analytics/event/uxm/UpsightUxmEnumerateEvent$UpsightData;-><init>(Lcom/upsight/android/analytics/event/uxm/UpsightUxmEnumerateEvent$Builder;)V

    iget-object v3, p0, Lcom/upsight/android/analytics/event/uxm/UpsightUxmEnumerateEvent$Builder;->mPublisherDataBuilder:Lcom/upsight/android/analytics/event/UpsightPublisherData$Builder;

    invoke-virtual {v3}, Lcom/upsight/android/analytics/event/UpsightPublisherData$Builder;->build()Lcom/upsight/android/analytics/event/UpsightPublisherData;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/upsight/android/analytics/event/uxm/UpsightUxmEnumerateEvent;-><init>(Ljava/lang/String;Lcom/upsight/android/analytics/event/uxm/UpsightUxmEnumerateEvent$UpsightData;Lcom/upsight/android/analytics/event/UpsightPublisherData;)V

    return-object v0
.end method
