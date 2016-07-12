.class Lcom/upsight/android/marketing/internal/content/MarketingContentActions$PresentScopelessContent;
.super Lcom/upsight/android/analytics/internal/action/Action;
.source "MarketingContentActions.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/upsight/android/marketing/internal/content/MarketingContentActions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "PresentScopelessContent"
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
.field public static final NEXT_ID:Ljava/lang/String; = "next_id"

.field public static final SELF_ID:Ljava/lang/String; = "self_id"


# direct methods
.method private constructor <init>(Lcom/upsight/android/marketing/internal/content/MarketingContentActions$MarketingContentActionContext;Ljava/lang/String;Lcom/fasterxml/jackson/databind/JsonNode;)V
    .locals 0
    .param p1, "actionContext"    # Lcom/upsight/android/marketing/internal/content/MarketingContentActions$MarketingContentActionContext;
    .param p2, "type"    # Ljava/lang/String;
    .param p3, "params"    # Lcom/fasterxml/jackson/databind/JsonNode;

    .prologue
    .line 443
    invoke-direct {p0, p1, p2, p3}, Lcom/upsight/android/analytics/internal/action/Action;-><init>(Lcom/upsight/android/analytics/internal/action/ActionContext;Ljava/lang/String;Lcom/fasterxml/jackson/databind/JsonNode;)V

    .line 444
    return-void
.end method

.method synthetic constructor <init>(Lcom/upsight/android/marketing/internal/content/MarketingContentActions$MarketingContentActionContext;Ljava/lang/String;Lcom/fasterxml/jackson/databind/JsonNode;Lcom/upsight/android/marketing/internal/content/MarketingContentActions$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/upsight/android/marketing/internal/content/MarketingContentActions$MarketingContentActionContext;
    .param p2, "x1"    # Ljava/lang/String;
    .param p3, "x2"    # Lcom/fasterxml/jackson/databind/JsonNode;
    .param p4, "x3"    # Lcom/upsight/android/marketing/internal/content/MarketingContentActions$1;

    .prologue
    .line 436
    invoke-direct {p0, p1, p2, p3}, Lcom/upsight/android/marketing/internal/content/MarketingContentActions$PresentScopelessContent;-><init>(Lcom/upsight/android/marketing/internal/content/MarketingContentActions$MarketingContentActionContext;Ljava/lang/String;Lcom/fasterxml/jackson/databind/JsonNode;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic execute(Lcom/upsight/android/analytics/internal/action/Actionable;)V
    .locals 0
    .param p1, "x0"    # Lcom/upsight/android/analytics/internal/action/Actionable;

    .prologue
    .line 436
    check-cast p1, Lcom/upsight/android/marketing/internal/content/MarketingContent;

    .end local p1    # "x0":Lcom/upsight/android/analytics/internal/action/Actionable;
    invoke-virtual {p0, p1}, Lcom/upsight/android/marketing/internal/content/MarketingContentActions$PresentScopelessContent;->execute(Lcom/upsight/android/marketing/internal/content/MarketingContent;)V

    return-void
.end method

.method public execute(Lcom/upsight/android/marketing/internal/content/MarketingContent;)V
    .locals 3
    .param p1, "content"    # Lcom/upsight/android/marketing/internal/content/MarketingContent;

    .prologue
    .line 448
    const-string v2, "self_id"

    invoke-virtual {p0, v2}, Lcom/upsight/android/marketing/internal/content/MarketingContentActions$PresentScopelessContent;->optParamString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 449
    .local v1, "selfId":Ljava/lang/String;
    const-string v2, "next_id"

    invoke-virtual {p0, v2}, Lcom/upsight/android/marketing/internal/content/MarketingContentActions$PresentScopelessContent;->optParamString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 450
    .local v0, "nextId":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 451
    invoke-virtual {p0}, Lcom/upsight/android/marketing/internal/content/MarketingContentActions$PresentScopelessContent;->getActionContext()Lcom/upsight/android/analytics/internal/action/ActionContext;

    move-result-object v2

    check-cast v2, Lcom/upsight/android/marketing/internal/content/MarketingContentActions$MarketingContentActionContext;

    iget-object v2, v2, Lcom/upsight/android/marketing/internal/content/MarketingContentActions$MarketingContentActionContext;->mContentStore:Lcom/upsight/android/marketing/internal/content/MarketingContentStore;

    invoke-interface {v2, v0, v1}, Lcom/upsight/android/marketing/internal/content/MarketingContentStore;->presentScopelessContent(Ljava/lang/String;Ljava/lang/String;)Z

    .line 455
    :cond_0
    invoke-virtual {p0}, Lcom/upsight/android/marketing/internal/content/MarketingContentActions$PresentScopelessContent;->getActionContext()Lcom/upsight/android/analytics/internal/action/ActionContext;

    move-result-object v2

    check-cast v2, Lcom/upsight/android/marketing/internal/content/MarketingContentActions$MarketingContentActionContext;

    iget-object v2, v2, Lcom/upsight/android/marketing/internal/content/MarketingContentActions$MarketingContentActionContext;->mBus:Lcom/squareup/otto/Bus;

    invoke-virtual {p1, v2}, Lcom/upsight/android/marketing/internal/content/MarketingContent;->signalActionCompleted(Lcom/squareup/otto/Bus;)V

    .line 456
    return-void
.end method
