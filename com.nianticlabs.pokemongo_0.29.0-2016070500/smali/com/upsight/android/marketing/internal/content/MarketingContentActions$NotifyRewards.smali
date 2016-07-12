.class Lcom/upsight/android/marketing/internal/content/MarketingContentActions$NotifyRewards;
.super Lcom/upsight/android/analytics/internal/action/Action;
.source "MarketingContentActions.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/upsight/android/marketing/internal/content/MarketingContentActions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "NotifyRewards"
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
.field public static final REWARDS:Ljava/lang/String; = "rewards"


# direct methods
.method private constructor <init>(Lcom/upsight/android/marketing/internal/content/MarketingContentActions$MarketingContentActionContext;Ljava/lang/String;Lcom/fasterxml/jackson/databind/JsonNode;)V
    .locals 0
    .param p1, "actionContext"    # Lcom/upsight/android/marketing/internal/content/MarketingContentActions$MarketingContentActionContext;
    .param p2, "type"    # Ljava/lang/String;
    .param p3, "params"    # Lcom/fasterxml/jackson/databind/JsonNode;

    .prologue
    .line 637
    invoke-direct {p0, p1, p2, p3}, Lcom/upsight/android/analytics/internal/action/Action;-><init>(Lcom/upsight/android/analytics/internal/action/ActionContext;Ljava/lang/String;Lcom/fasterxml/jackson/databind/JsonNode;)V

    .line 638
    return-void
.end method

.method synthetic constructor <init>(Lcom/upsight/android/marketing/internal/content/MarketingContentActions$MarketingContentActionContext;Ljava/lang/String;Lcom/fasterxml/jackson/databind/JsonNode;Lcom/upsight/android/marketing/internal/content/MarketingContentActions$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/upsight/android/marketing/internal/content/MarketingContentActions$MarketingContentActionContext;
    .param p2, "x1"    # Ljava/lang/String;
    .param p3, "x2"    # Lcom/fasterxml/jackson/databind/JsonNode;
    .param p4, "x3"    # Lcom/upsight/android/marketing/internal/content/MarketingContentActions$1;

    .prologue
    .line 632
    invoke-direct {p0, p1, p2, p3}, Lcom/upsight/android/marketing/internal/content/MarketingContentActions$NotifyRewards;-><init>(Lcom/upsight/android/marketing/internal/content/MarketingContentActions$MarketingContentActionContext;Ljava/lang/String;Lcom/fasterxml/jackson/databind/JsonNode;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic execute(Lcom/upsight/android/analytics/internal/action/Actionable;)V
    .locals 0
    .param p1, "x0"    # Lcom/upsight/android/analytics/internal/action/Actionable;

    .prologue
    .line 632
    check-cast p1, Lcom/upsight/android/marketing/internal/content/MarketingContent;

    .end local p1    # "x0":Lcom/upsight/android/analytics/internal/action/Actionable;
    invoke-virtual {p0, p1}, Lcom/upsight/android/marketing/internal/content/MarketingContentActions$NotifyRewards;->execute(Lcom/upsight/android/marketing/internal/content/MarketingContent;)V

    return-void
.end method

.method public execute(Lcom/upsight/android/marketing/internal/content/MarketingContent;)V
    .locals 13
    .param p1, "content"    # Lcom/upsight/android/marketing/internal/content/MarketingContent;

    .prologue
    .line 642
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 645
    .local v7, "rewards":Ljava/util/List;, "Ljava/util/List<Lcom/upsight/android/marketing/UpsightReward;>;"
    const-string v9, "rewards"

    invoke-virtual {p0, v9}, Lcom/upsight/android/marketing/internal/content/MarketingContentActions$NotifyRewards;->optParamJsonArray(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/node/ArrayNode;

    move-result-object v8

    .line 646
    .local v8, "rewardsJson":Lcom/fasterxml/jackson/databind/JsonNode;
    if-eqz v8, :cond_0

    invoke-virtual {v8}, Lcom/fasterxml/jackson/databind/JsonNode;->isArray()Z

    move-result v9

    if-eqz v9, :cond_0

    .line 647
    invoke-virtual {p0}, Lcom/upsight/android/marketing/internal/content/MarketingContentActions$NotifyRewards;->getActionContext()Lcom/upsight/android/analytics/internal/action/ActionContext;

    move-result-object v1

    .line 648
    .local v1, "actionContext":Lcom/upsight/android/analytics/internal/action/ActionContext;
    invoke-virtual {v8}, Lcom/fasterxml/jackson/databind/JsonNode;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 649
    .local v4, "itr":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/fasterxml/jackson/databind/JsonNode;>;"
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_0

    .line 650
    const/4 v6, 0x0

    .line 652
    .local v6, "rewardJson":Lcom/fasterxml/jackson/databind/JsonNode;
    :try_start_0
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    move-object v0, v9

    check-cast v0, Lcom/fasterxml/jackson/databind/JsonNode;

    move-object v6, v0

    .line 653
    iget-object v9, v1, Lcom/upsight/android/analytics/internal/action/ActionContext;->mMapper:Lcom/fasterxml/jackson/databind/ObjectMapper;

    invoke-static {v6, v9}, Lcom/upsight/android/marketing/internal/content/Reward;->from(Lcom/fasterxml/jackson/databind/JsonNode;Lcom/fasterxml/jackson/databind/ObjectMapper;)Lcom/upsight/android/marketing/UpsightReward;

    move-result-object v5

    .line 654
    .local v5, "reward":Lcom/upsight/android/marketing/UpsightReward;
    invoke-interface {v7, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 655
    .end local v5    # "reward":Lcom/upsight/android/marketing/UpsightReward;
    :catch_0
    move-exception v3

    .line 656
    .local v3, "e":Ljava/io/IOException;
    iget-object v9, v1, Lcom/upsight/android/analytics/internal/action/ActionContext;->mLogger:Lcom/upsight/android/logger/UpsightLogger;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v10

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Failed to parse Reward rewardJson="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x0

    new-array v12, v12, [Ljava/lang/Object;

    invoke-interface {v9, v10, v3, v11, v12}, Lcom/upsight/android/logger/UpsightLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 661
    .end local v1    # "actionContext":Lcom/upsight/android/analytics/internal/action/ActionContext;
    .end local v3    # "e":Ljava/io/IOException;
    .end local v4    # "itr":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/fasterxml/jackson/databind/JsonNode;>;"
    .end local v6    # "rewardJson":Lcom/fasterxml/jackson/databind/JsonNode;
    :cond_0
    invoke-virtual {p0}, Lcom/upsight/android/marketing/internal/content/MarketingContentActions$NotifyRewards;->getActionContext()Lcom/upsight/android/analytics/internal/action/ActionContext;

    move-result-object v9

    check-cast v9, Lcom/upsight/android/marketing/internal/content/MarketingContentActions$MarketingContentActionContext;

    iget-object v2, v9, Lcom/upsight/android/marketing/internal/content/MarketingContentActions$MarketingContentActionContext;->mBus:Lcom/squareup/otto/Bus;

    .line 662
    .local v2, "bus":Lcom/squareup/otto/Bus;
    new-instance v9, Lcom/upsight/android/marketing/internal/content/MarketingContentActions$RewardsEvent;

    invoke-virtual {p1}, Lcom/upsight/android/marketing/internal/content/MarketingContent;->getId()Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    invoke-direct {v9, v10, v7, v11}, Lcom/upsight/android/marketing/internal/content/MarketingContentActions$RewardsEvent;-><init>(Ljava/lang/String;Ljava/util/List;Lcom/upsight/android/marketing/internal/content/MarketingContentActions$1;)V

    invoke-virtual {v2, v9}, Lcom/squareup/otto/Bus;->post(Ljava/lang/Object;)V

    .line 665
    invoke-virtual {p1, v2}, Lcom/upsight/android/marketing/internal/content/MarketingContent;->signalActionCompleted(Lcom/squareup/otto/Bus;)V

    .line 666
    return-void
.end method
