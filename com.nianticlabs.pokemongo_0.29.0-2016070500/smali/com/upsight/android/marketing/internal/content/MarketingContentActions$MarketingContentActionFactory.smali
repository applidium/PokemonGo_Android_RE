.class public Lcom/upsight/android/marketing/internal/content/MarketingContentActions$MarketingContentActionFactory;
.super Ljava/lang/Object;
.source "MarketingContentActions.java"

# interfaces
.implements Lcom/upsight/android/analytics/internal/action/ActionFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/upsight/android/marketing/internal/content/MarketingContentActions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MarketingContentActionFactory"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/upsight/android/analytics/internal/action/ActionFactory",
        "<",
        "Lcom/upsight/android/marketing/internal/content/MarketingContent;",
        "Lcom/upsight/android/marketing/internal/content/MarketingContentActions$MarketingContentActionContext;",
        ">;"
    }
.end annotation


# static fields
.field public static final TYPE:Ljava/lang/String; = "marketing_content_factory"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 155
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic create(Lcom/upsight/android/analytics/internal/action/ActionContext;Lcom/fasterxml/jackson/databind/JsonNode;)Lcom/upsight/android/analytics/internal/action/Action;
    .locals 1
    .param p1, "x0"    # Lcom/upsight/android/analytics/internal/action/ActionContext;
    .param p2, "x1"    # Lcom/fasterxml/jackson/databind/JsonNode;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/upsight/android/UpsightException;
        }
    .end annotation

    .prologue
    .line 155
    check-cast p1, Lcom/upsight/android/marketing/internal/content/MarketingContentActions$MarketingContentActionContext;

    .end local p1    # "x0":Lcom/upsight/android/analytics/internal/action/ActionContext;
    invoke-virtual {p0, p1, p2}, Lcom/upsight/android/marketing/internal/content/MarketingContentActions$MarketingContentActionFactory;->create(Lcom/upsight/android/marketing/internal/content/MarketingContentActions$MarketingContentActionContext;Lcom/fasterxml/jackson/databind/JsonNode;)Lcom/upsight/android/analytics/internal/action/Action;

    move-result-object v0

    return-object v0
.end method

.method public create(Lcom/upsight/android/marketing/internal/content/MarketingContentActions$MarketingContentActionContext;Lcom/fasterxml/jackson/databind/JsonNode;)Lcom/upsight/android/analytics/internal/action/Action;
    .locals 6
    .param p1, "actionContext"    # Lcom/upsight/android/marketing/internal/content/MarketingContentActions$MarketingContentActionContext;
    .param p2, "actionJSON"    # Lcom/fasterxml/jackson/databind/JsonNode;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/upsight/android/marketing/internal/content/MarketingContentActions$MarketingContentActionContext;",
            "Lcom/fasterxml/jackson/databind/JsonNode;",
            ")",
            "Lcom/upsight/android/analytics/internal/action/Action",
            "<",
            "Lcom/upsight/android/marketing/internal/content/MarketingContent;",
            "Lcom/upsight/android/marketing/internal/content/MarketingContentActions$MarketingContentActionContext;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/upsight/android/UpsightException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 164
    if-nez p2, :cond_0

    .line 165
    new-instance v3, Lcom/upsight/android/UpsightException;

    const-string v4, "Failed to create Action. JSON is null."

    new-array v5, v5, [Ljava/lang/Object;

    invoke-direct {v3, v4, v5}, Lcom/upsight/android/UpsightException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v3

    .line 167
    :cond_0
    const-string v3, "action_type"

    invoke-virtual {p2, v3}, Lcom/fasterxml/jackson/databind/JsonNode;->get(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v3

    invoke-virtual {v3}, Lcom/fasterxml/jackson/databind/JsonNode;->asText()Ljava/lang/String;

    move-result-object v1

    .line 168
    .local v1, "actionType":Ljava/lang/String;
    const-string v3, "parameters"

    invoke-virtual {p2, v3}, Lcom/fasterxml/jackson/databind/JsonNode;->get(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v0

    .line 169
    .local v0, "actionParams":Lcom/fasterxml/jackson/databind/JsonNode;
    # getter for: Lcom/upsight/android/marketing/internal/content/MarketingContentActions;->FACTORY_MAP:Ljava/util/Map;
    invoke-static {}, Lcom/upsight/android/marketing/internal/content/MarketingContentActions;->access$1300()Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/upsight/android/marketing/internal/content/MarketingContentActions$InternalFactory;

    .line 170
    .local v2, "factory":Lcom/upsight/android/marketing/internal/content/MarketingContentActions$InternalFactory;
    if-nez v2, :cond_1

    .line 171
    new-instance v3, Lcom/upsight/android/UpsightException;

    const-string v4, "Failed to create Action. Unknown action type."

    new-array v5, v5, [Ljava/lang/Object;

    invoke-direct {v3, v4, v5}, Lcom/upsight/android/UpsightException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v3

    .line 173
    :cond_1
    invoke-interface {v2, p1, v1, v0}, Lcom/upsight/android/marketing/internal/content/MarketingContentActions$InternalFactory;->create(Lcom/upsight/android/marketing/internal/content/MarketingContentActions$MarketingContentActionContext;Ljava/lang/String;Lcom/fasterxml/jackson/databind/JsonNode;)Lcom/upsight/android/analytics/internal/action/Action;

    move-result-object v3

    return-object v3
.end method
