.class Lcom/upsight/android/marketing/internal/content/MarketingContentActions$Destroy;
.super Lcom/upsight/android/analytics/internal/action/Action;
.source "MarketingContentActions.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/upsight/android/marketing/internal/content/MarketingContentActions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Destroy"
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


# direct methods
.method private constructor <init>(Lcom/upsight/android/marketing/internal/content/MarketingContentActions$MarketingContentActionContext;Ljava/lang/String;Lcom/fasterxml/jackson/databind/JsonNode;)V
    .locals 0
    .param p1, "actionContext"    # Lcom/upsight/android/marketing/internal/content/MarketingContentActions$MarketingContentActionContext;
    .param p2, "type"    # Ljava/lang/String;
    .param p3, "params"    # Lcom/fasterxml/jackson/databind/JsonNode;

    .prologue
    .line 496
    invoke-direct {p0, p1, p2, p3}, Lcom/upsight/android/analytics/internal/action/Action;-><init>(Lcom/upsight/android/analytics/internal/action/ActionContext;Ljava/lang/String;Lcom/fasterxml/jackson/databind/JsonNode;)V

    .line 497
    return-void
.end method

.method synthetic constructor <init>(Lcom/upsight/android/marketing/internal/content/MarketingContentActions$MarketingContentActionContext;Ljava/lang/String;Lcom/fasterxml/jackson/databind/JsonNode;Lcom/upsight/android/marketing/internal/content/MarketingContentActions$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/upsight/android/marketing/internal/content/MarketingContentActions$MarketingContentActionContext;
    .param p2, "x1"    # Ljava/lang/String;
    .param p3, "x2"    # Lcom/fasterxml/jackson/databind/JsonNode;
    .param p4, "x3"    # Lcom/upsight/android/marketing/internal/content/MarketingContentActions$1;

    .prologue
    .line 493
    invoke-direct {p0, p1, p2, p3}, Lcom/upsight/android/marketing/internal/content/MarketingContentActions$Destroy;-><init>(Lcom/upsight/android/marketing/internal/content/MarketingContentActions$MarketingContentActionContext;Ljava/lang/String;Lcom/fasterxml/jackson/databind/JsonNode;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic execute(Lcom/upsight/android/analytics/internal/action/Actionable;)V
    .locals 0
    .param p1, "x0"    # Lcom/upsight/android/analytics/internal/action/Actionable;

    .prologue
    .line 493
    check-cast p1, Lcom/upsight/android/marketing/internal/content/MarketingContent;

    .end local p1    # "x0":Lcom/upsight/android/analytics/internal/action/Actionable;
    invoke-virtual {p0, p1}, Lcom/upsight/android/marketing/internal/content/MarketingContentActions$Destroy;->execute(Lcom/upsight/android/marketing/internal/content/MarketingContent;)V

    return-void
.end method

.method public execute(Lcom/upsight/android/marketing/internal/content/MarketingContent;)V
    .locals 6
    .param p1, "content"    # Lcom/upsight/android/marketing/internal/content/MarketingContent;

    .prologue
    .line 501
    invoke-virtual {p1}, Lcom/upsight/android/marketing/internal/content/MarketingContent;->getId()Ljava/lang/String;

    move-result-object v2

    .line 502
    .local v2, "id":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/upsight/android/marketing/internal/content/MarketingContentActions$Destroy;->getActionContext()Lcom/upsight/android/analytics/internal/action/ActionContext;

    move-result-object v0

    check-cast v0, Lcom/upsight/android/marketing/internal/content/MarketingContentActions$MarketingContentActionContext;

    .line 503
    .local v0, "actionContext":Lcom/upsight/android/marketing/internal/content/MarketingContentActions$MarketingContentActionContext;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 504
    iget-object v3, v0, Lcom/upsight/android/marketing/internal/content/MarketingContentActions$MarketingContentActionContext;->mContentStore:Lcom/upsight/android/marketing/internal/content/MarketingContentStore;

    invoke-interface {v3, v2}, Lcom/upsight/android/marketing/internal/content/MarketingContentStore;->remove(Ljava/lang/String;)Z

    .line 505
    iget-object v3, v0, Lcom/upsight/android/marketing/internal/content/MarketingContentActions$MarketingContentActionContext;->mBus:Lcom/squareup/otto/Bus;

    new-instance v4, Lcom/upsight/android/marketing/internal/content/MarketingContentActions$DestroyEvent;

    const/4 v5, 0x0

    invoke-direct {v4, v2, v5}, Lcom/upsight/android/marketing/internal/content/MarketingContentActions$DestroyEvent;-><init>(Ljava/lang/String;Lcom/upsight/android/marketing/internal/content/MarketingContentActions$1;)V

    invoke-virtual {v3, v4}, Lcom/squareup/otto/Bus;->post(Ljava/lang/Object;)V

    .line 509
    :cond_0
    iget-object v1, v0, Lcom/upsight/android/marketing/internal/content/MarketingContentActions$MarketingContentActionContext;->mBus:Lcom/squareup/otto/Bus;

    .line 510
    .local v1, "bus":Lcom/squareup/otto/Bus;
    invoke-virtual {p1, v1}, Lcom/upsight/android/marketing/internal/content/MarketingContent;->signalActionCompleted(Lcom/squareup/otto/Bus;)V

    .line 511
    invoke-virtual {p1, v1}, Lcom/upsight/android/marketing/internal/content/MarketingContent;->signalActionMapCompleted(Lcom/squareup/otto/Bus;)V

    .line 512
    return-void
.end method
