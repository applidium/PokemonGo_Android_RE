.class public final Lcom/upsight/android/marketing/internal/content/MarketingContentFactory;
.super Ljava/lang/Object;
.source "MarketingContentFactory.java"


# static fields
.field private static final sMarketingContentActionFactory:Lcom/upsight/android/marketing/internal/content/MarketingContentActions$MarketingContentActionFactory;


# instance fields
.field private mActionContext:Lcom/upsight/android/marketing/internal/content/MarketingContentActions$MarketingContentActionContext;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 17
    new-instance v0, Lcom/upsight/android/marketing/internal/content/MarketingContentActions$MarketingContentActionFactory;

    invoke-direct {v0}, Lcom/upsight/android/marketing/internal/content/MarketingContentActions$MarketingContentActionFactory;-><init>()V

    sput-object v0, Lcom/upsight/android/marketing/internal/content/MarketingContentFactory;->sMarketingContentActionFactory:Lcom/upsight/android/marketing/internal/content/MarketingContentActions$MarketingContentActionFactory;

    return-void
.end method

.method public constructor <init>(Lcom/upsight/android/marketing/internal/content/MarketingContentActions$MarketingContentActionContext;)V
    .locals 0
    .param p1, "actionContext"    # Lcom/upsight/android/marketing/internal/content/MarketingContentActions$MarketingContentActionContext;

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/upsight/android/marketing/internal/content/MarketingContentFactory;->mActionContext:Lcom/upsight/android/marketing/internal/content/MarketingContentActions$MarketingContentActionContext;

    .line 23
    return-void
.end method


# virtual methods
.method public create(Lcom/upsight/android/analytics/internal/action/ActionMapResponse;)Lcom/upsight/android/marketing/internal/content/MarketingContent;
    .locals 6
    .param p1, "actionMapResponse"    # Lcom/upsight/android/analytics/internal/action/ActionMapResponse;

    .prologue
    .line 26
    const/4 v2, 0x0

    .line 27
    .local v2, "marketingContent":Lcom/upsight/android/marketing/internal/content/MarketingContent;
    invoke-virtual {p1}, Lcom/upsight/android/analytics/internal/action/ActionMapResponse;->getActionMapId()Ljava/lang/String;

    move-result-object v1

    .line 28
    .local v1, "id":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "marketing_content_factory"

    invoke-virtual {p1}, Lcom/upsight/android/analytics/internal/action/ActionMapResponse;->getActionFactory()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 29
    new-instance v0, Lcom/upsight/android/analytics/internal/action/ActionMap;

    sget-object v3, Lcom/upsight/android/marketing/internal/content/MarketingContentFactory;->sMarketingContentActionFactory:Lcom/upsight/android/marketing/internal/content/MarketingContentActions$MarketingContentActionFactory;

    iget-object v4, p0, Lcom/upsight/android/marketing/internal/content/MarketingContentFactory;->mActionContext:Lcom/upsight/android/marketing/internal/content/MarketingContentActions$MarketingContentActionContext;

    invoke-virtual {p1}, Lcom/upsight/android/analytics/internal/action/ActionMapResponse;->getActionMap()Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v5

    invoke-direct {v0, v3, v4, v5}, Lcom/upsight/android/analytics/internal/action/ActionMap;-><init>(Lcom/upsight/android/analytics/internal/action/ActionFactory;Lcom/upsight/android/analytics/internal/action/ActionContext;Lcom/fasterxml/jackson/databind/JsonNode;)V

    .line 31
    .local v0, "actionMap":Lcom/upsight/android/analytics/internal/action/ActionMap;, "Lcom/upsight/android/analytics/internal/action/ActionMap<Lcom/upsight/android/marketing/internal/content/MarketingContent;Lcom/upsight/android/marketing/internal/content/MarketingContentActions$MarketingContentActionContext;>;"
    invoke-static {v1, v0}, Lcom/upsight/android/marketing/internal/content/MarketingContent;->create(Ljava/lang/String;Lcom/upsight/android/analytics/internal/action/ActionMap;)Lcom/upsight/android/marketing/internal/content/MarketingContent;

    move-result-object v2

    .line 33
    .end local v0    # "actionMap":Lcom/upsight/android/analytics/internal/action/ActionMap;, "Lcom/upsight/android/analytics/internal/action/ActionMap<Lcom/upsight/android/marketing/internal/content/MarketingContent;Lcom/upsight/android/marketing/internal/content/MarketingContentActions$MarketingContentActionContext;>;"
    :cond_0
    return-object v2
.end method
