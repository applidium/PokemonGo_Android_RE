.class Lcom/upsight/android/marketing/internal/content/MarketingContentActions$SendEvent;
.super Lcom/upsight/android/analytics/internal/action/Action;
.source "MarketingContentActions.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/upsight/android/marketing/internal/content/MarketingContentActions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "SendEvent"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/upsight/android/analytics/internal/action/Action",
        "<",
        "Lcom/upsight/android/marketing/internal/content/MarketingContent;",
        "Lcom/upsight/android/marketing/internal/content/MarketingContentActions$MarketingContentActionContext;",
        ">;"
    }
.end annotation


# static fields
.field public static final EVENT:Ljava/lang/String; = "event"

.field public static final IDENTIFIERS:Ljava/lang/String; = "identifiers"

.field public static final PUB_DATA:Ljava/lang/String; = "pub_data"

.field public static final TYPE:Ljava/lang/String; = "type"

.field public static final UPSIGHT_DATA:Ljava/lang/String; = "upsight_data"


# direct methods
.method private constructor <init>(Lcom/upsight/android/marketing/internal/content/MarketingContentActions$MarketingContentActionContext;Ljava/lang/String;Lcom/fasterxml/jackson/databind/JsonNode;)V
    .locals 0
    .param p1, "actionContext"    # Lcom/upsight/android/marketing/internal/content/MarketingContentActions$MarketingContentActionContext;
    .param p2, "type"    # Ljava/lang/String;
    .param p3, "params"    # Lcom/fasterxml/jackson/databind/JsonNode;

    .prologue
    .line 563
    invoke-direct {p0, p1, p2, p3}, Lcom/upsight/android/analytics/internal/action/Action;-><init>(Lcom/upsight/android/analytics/internal/action/ActionContext;Ljava/lang/String;Lcom/fasterxml/jackson/databind/JsonNode;)V

    .line 564
    return-void
.end method

.method synthetic constructor <init>(Lcom/upsight/android/marketing/internal/content/MarketingContentActions$MarketingContentActionContext;Ljava/lang/String;Lcom/fasterxml/jackson/databind/JsonNode;Lcom/upsight/android/marketing/internal/content/MarketingContentActions$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/upsight/android/marketing/internal/content/MarketingContentActions$MarketingContentActionContext;
    .param p2, "x1"    # Ljava/lang/String;
    .param p3, "x2"    # Lcom/fasterxml/jackson/databind/JsonNode;
    .param p4, "x3"    # Lcom/upsight/android/marketing/internal/content/MarketingContentActions$1;

    .prologue
    .line 550
    invoke-direct {p0, p1, p2, p3}, Lcom/upsight/android/marketing/internal/content/MarketingContentActions$SendEvent;-><init>(Lcom/upsight/android/marketing/internal/content/MarketingContentActions$MarketingContentActionContext;Ljava/lang/String;Lcom/fasterxml/jackson/databind/JsonNode;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic execute(Lcom/upsight/android/analytics/internal/action/Actionable;)V
    .locals 0
    .param p1, "x0"    # Lcom/upsight/android/analytics/internal/action/Actionable;

    .prologue
    .line 550
    check-cast p1, Lcom/upsight/android/marketing/internal/content/MarketingContent;

    .end local p1    # "x0":Lcom/upsight/android/analytics/internal/action/Actionable;
    invoke-virtual {p0, p1}, Lcom/upsight/android/marketing/internal/content/MarketingContentActions$SendEvent;->execute(Lcom/upsight/android/marketing/internal/content/MarketingContent;)V

    return-void
.end method

.method public execute(Lcom/upsight/android/marketing/internal/content/MarketingContent;)V
    .locals 9
    .param p1, "content"    # Lcom/upsight/android/marketing/internal/content/MarketingContent;

    .prologue
    const/4 v8, 0x0

    .line 568
    invoke-virtual {p0}, Lcom/upsight/android/marketing/internal/content/MarketingContentActions$SendEvent;->getActionContext()Lcom/upsight/android/analytics/internal/action/ActionContext;

    move-result-object v0

    check-cast v0, Lcom/upsight/android/marketing/internal/content/MarketingContentActions$MarketingContentActionContext;

    .line 569
    .local v0, "actionContext":Lcom/upsight/android/marketing/internal/content/MarketingContentActions$MarketingContentActionContext;
    const-string v4, "event"

    invoke-virtual {p0, v4}, Lcom/upsight/android/marketing/internal/content/MarketingContentActions$SendEvent;->optParamJsonObject(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/node/ObjectNode;

    move-result-object v2

    .line 570
    .local v2, "event":Lcom/fasterxml/jackson/databind/JsonNode;
    if-eqz v2, :cond_3

    .line 571
    const-string v4, "type"

    invoke-virtual {v2, v4}, Lcom/fasterxml/jackson/databind/JsonNode;->path(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v3

    .line 573
    .local v3, "type":Lcom/fasterxml/jackson/databind/JsonNode;
    invoke-virtual {v3}, Lcom/fasterxml/jackson/databind/JsonNode;->isTextual()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 574
    invoke-virtual {v3}, Lcom/fasterxml/jackson/databind/JsonNode;->asText()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/upsight/android/analytics/event/UpsightDynamicEvent;->createBuilder(Ljava/lang/String;)Lcom/upsight/android/analytics/event/UpsightDynamicEvent$Builder;

    move-result-object v4

    const-string v5, "upsight_data"

    invoke-virtual {v2, v5}, Lcom/fasterxml/jackson/databind/JsonNode;->path(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/upsight/android/analytics/event/UpsightDynamicEvent$Builder;->putUpsightData(Lcom/fasterxml/jackson/databind/JsonNode;)Lcom/upsight/android/analytics/event/UpsightDynamicEvent$Builder;

    move-result-object v1

    .line 576
    .local v1, "dynamicEventBuilder":Lcom/upsight/android/analytics/event/UpsightDynamicEvent$Builder;
    const-string v4, "pub_data"

    invoke-virtual {v2, v4}, Lcom/fasterxml/jackson/databind/JsonNode;->path(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v4

    invoke-virtual {v4}, Lcom/fasterxml/jackson/databind/JsonNode;->isMissingNode()Z

    move-result v4

    if-nez v4, :cond_0

    .line 577
    const-string v4, "pub_data"

    invoke-virtual {v2, v4}, Lcom/fasterxml/jackson/databind/JsonNode;->path(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/upsight/android/analytics/event/UpsightDynamicEvent$Builder;->putPublisherData(Lcom/fasterxml/jackson/databind/JsonNode;)Lcom/upsight/android/analytics/event/UpsightDynamicEvent$Builder;

    .line 579
    :cond_0
    const-string v4, "identifiers"

    invoke-virtual {v2, v4}, Lcom/fasterxml/jackson/databind/JsonNode;->path(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v4

    invoke-virtual {v4}, Lcom/fasterxml/jackson/databind/JsonNode;->isTextual()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 580
    const-string v4, "identifiers"

    invoke-virtual {v2, v4}, Lcom/fasterxml/jackson/databind/JsonNode;->path(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v4

    invoke-virtual {v4}, Lcom/fasterxml/jackson/databind/JsonNode;->asText()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/upsight/android/analytics/event/UpsightDynamicEvent$Builder;->setDynamicIdentifiers(Ljava/lang/String;)Lcom/upsight/android/analytics/event/UpsightDynamicEvent$Builder;

    .line 582
    :cond_1
    iget-object v4, v0, Lcom/upsight/android/marketing/internal/content/MarketingContentActions$MarketingContentActionContext;->mUpsight:Lcom/upsight/android/UpsightContext;

    invoke-virtual {v1, v4}, Lcom/upsight/android/analytics/event/UpsightDynamicEvent$Builder;->record(Lcom/upsight/android/UpsightContext;)Lcom/upsight/android/analytics/event/UpsightDynamicEvent;

    .line 591
    .end local v1    # "dynamicEventBuilder":Lcom/upsight/android/analytics/event/UpsightDynamicEvent$Builder;
    .end local v3    # "type":Lcom/fasterxml/jackson/databind/JsonNode;
    :goto_0
    iget-object v4, v0, Lcom/upsight/android/marketing/internal/content/MarketingContentActions$MarketingContentActionContext;->mBus:Lcom/squareup/otto/Bus;

    invoke-virtual {p1, v4}, Lcom/upsight/android/marketing/internal/content/MarketingContent;->signalActionCompleted(Lcom/squareup/otto/Bus;)V

    .line 592
    return-void

    .line 584
    .restart local v3    # "type":Lcom/fasterxml/jackson/databind/JsonNode;
    :cond_2
    iget-object v4, v0, Lcom/upsight/android/marketing/internal/content/MarketingContentActions$MarketingContentActionContext;->mLogger:Lcom/upsight/android/logger/UpsightLogger;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Action failed actionType="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p0}, Lcom/upsight/android/marketing/internal/content/MarketingContentActions$SendEvent;->getType()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " type="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    new-array v7, v8, [Ljava/lang/Object;

    invoke-interface {v4, v5, v6, v7}, Lcom/upsight/android/logger/UpsightLogger;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 587
    .end local v3    # "type":Lcom/fasterxml/jackson/databind/JsonNode;
    :cond_3
    iget-object v4, v0, Lcom/upsight/android/marketing/internal/content/MarketingContentActions$MarketingContentActionContext;->mLogger:Lcom/upsight/android/logger/UpsightLogger;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Action failed actionType="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p0}, Lcom/upsight/android/marketing/internal/content/MarketingContentActions$SendEvent;->getType()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " event="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    new-array v7, v8, [Ljava/lang/Object;

    invoke-interface {v4, v5, v6, v7}, Lcom/upsight/android/logger/UpsightLogger;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method
