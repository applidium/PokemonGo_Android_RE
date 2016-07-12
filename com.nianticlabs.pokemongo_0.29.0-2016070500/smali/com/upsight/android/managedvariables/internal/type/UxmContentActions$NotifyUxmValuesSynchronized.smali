.class Lcom/upsight/android/managedvariables/internal/type/UxmContentActions$NotifyUxmValuesSynchronized;
.super Lcom/upsight/android/analytics/internal/action/Action;
.source "UxmContentActions.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/upsight/android/managedvariables/internal/type/UxmContentActions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "NotifyUxmValuesSynchronized"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/upsight/android/analytics/internal/action/Action",
        "<",
        "Lcom/upsight/android/managedvariables/internal/type/UxmContent;",
        "Lcom/upsight/android/managedvariables/internal/type/UxmContentActions$UxmContentActionContext;",
        ">;"
    }
.end annotation


# static fields
.field private static final TAGS:Ljava/lang/String; = "tags"


# direct methods
.method private constructor <init>(Lcom/upsight/android/managedvariables/internal/type/UxmContentActions$UxmContentActionContext;Ljava/lang/String;Lcom/fasterxml/jackson/databind/JsonNode;)V
    .locals 0
    .param p1, "actionContext"    # Lcom/upsight/android/managedvariables/internal/type/UxmContentActions$UxmContentActionContext;
    .param p2, "type"    # Ljava/lang/String;
    .param p3, "params"    # Lcom/fasterxml/jackson/databind/JsonNode;

    .prologue
    .line 365
    invoke-direct {p0, p1, p2, p3}, Lcom/upsight/android/analytics/internal/action/Action;-><init>(Lcom/upsight/android/analytics/internal/action/ActionContext;Ljava/lang/String;Lcom/fasterxml/jackson/databind/JsonNode;)V

    .line 366
    return-void
.end method

.method synthetic constructor <init>(Lcom/upsight/android/managedvariables/internal/type/UxmContentActions$UxmContentActionContext;Ljava/lang/String;Lcom/fasterxml/jackson/databind/JsonNode;Lcom/upsight/android/managedvariables/internal/type/UxmContentActions$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/upsight/android/managedvariables/internal/type/UxmContentActions$UxmContentActionContext;
    .param p2, "x1"    # Ljava/lang/String;
    .param p3, "x2"    # Lcom/fasterxml/jackson/databind/JsonNode;
    .param p4, "x3"    # Lcom/upsight/android/managedvariables/internal/type/UxmContentActions$1;

    .prologue
    .line 360
    invoke-direct {p0, p1, p2, p3}, Lcom/upsight/android/managedvariables/internal/type/UxmContentActions$NotifyUxmValuesSynchronized;-><init>(Lcom/upsight/android/managedvariables/internal/type/UxmContentActions$UxmContentActionContext;Ljava/lang/String;Lcom/fasterxml/jackson/databind/JsonNode;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic execute(Lcom/upsight/android/analytics/internal/action/Actionable;)V
    .locals 0
    .param p1, "x0"    # Lcom/upsight/android/analytics/internal/action/Actionable;

    .prologue
    .line 360
    check-cast p1, Lcom/upsight/android/managedvariables/internal/type/UxmContent;

    .end local p1    # "x0":Lcom/upsight/android/analytics/internal/action/Actionable;
    invoke-virtual {p0, p1}, Lcom/upsight/android/managedvariables/internal/type/UxmContentActions$NotifyUxmValuesSynchronized;->execute(Lcom/upsight/android/managedvariables/internal/type/UxmContent;)V

    return-void
.end method

.method public execute(Lcom/upsight/android/managedvariables/internal/type/UxmContent;)V
    .locals 8
    .param p1, "content"    # Lcom/upsight/android/managedvariables/internal/type/UxmContent;

    .prologue
    .line 370
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 371
    .local v2, "synchronizedTags":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v5, "tags"

    invoke-virtual {p0, v5}, Lcom/upsight/android/managedvariables/internal/type/UxmContentActions$NotifyUxmValuesSynchronized;->optParamJsonArray(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/node/ArrayNode;

    move-result-object v4

    .line 372
    .local v4, "tagNodes":Lcom/fasterxml/jackson/databind/node/ArrayNode;
    invoke-virtual {p1}, Lcom/upsight/android/managedvariables/internal/type/UxmContent;->shouldApplyBundle()Z

    move-result v5

    if-eqz v5, :cond_1

    if-eqz v4, :cond_1

    .line 373
    invoke-virtual {v4}, Lcom/fasterxml/jackson/databind/node/ArrayNode;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/fasterxml/jackson/databind/JsonNode;

    .line 374
    .local v3, "tagNode":Lcom/fasterxml/jackson/databind/JsonNode;
    invoke-virtual {v3}, Lcom/fasterxml/jackson/databind/JsonNode;->isTextual()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 375
    invoke-virtual {v3}, Lcom/fasterxml/jackson/databind/JsonNode;->asText()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 380
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v3    # "tagNode":Lcom/fasterxml/jackson/databind/JsonNode;
    :cond_1
    invoke-virtual {p0}, Lcom/upsight/android/managedvariables/internal/type/UxmContentActions$NotifyUxmValuesSynchronized;->getActionContext()Lcom/upsight/android/analytics/internal/action/ActionContext;

    move-result-object v5

    check-cast v5, Lcom/upsight/android/managedvariables/internal/type/UxmContentActions$UxmContentActionContext;

    iget-object v0, v5, Lcom/upsight/android/managedvariables/internal/type/UxmContentActions$UxmContentActionContext;->mBus:Lcom/squareup/otto/Bus;

    .line 381
    .local v0, "bus":Lcom/squareup/otto/Bus;
    new-instance v5, Lcom/upsight/android/managedvariables/internal/type/UxmContentActions$ScheduleSyncNotificationEvent;

    invoke-virtual {p1}, Lcom/upsight/android/managedvariables/internal/type/UxmContent;->getId()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-direct {v5, v6, v2, v7}, Lcom/upsight/android/managedvariables/internal/type/UxmContentActions$ScheduleSyncNotificationEvent;-><init>(Ljava/lang/String;Ljava/util/List;Lcom/upsight/android/managedvariables/internal/type/UxmContentActions$1;)V

    invoke-virtual {v0, v5}, Lcom/squareup/otto/Bus;->post(Ljava/lang/Object;)V

    .line 384
    invoke-virtual {p1, v0}, Lcom/upsight/android/managedvariables/internal/type/UxmContent;->signalActionCompleted(Lcom/squareup/otto/Bus;)V

    .line 385
    return-void
.end method
