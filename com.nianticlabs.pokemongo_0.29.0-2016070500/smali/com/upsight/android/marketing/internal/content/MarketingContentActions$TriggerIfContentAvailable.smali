.class Lcom/upsight/android/marketing/internal/content/MarketingContentActions$TriggerIfContentAvailable;
.super Lcom/upsight/android/analytics/internal/action/Action;
.source "MarketingContentActions.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/upsight/android/marketing/internal/content/MarketingContentActions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "TriggerIfContentAvailable"
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
.field public static final CONDITION_PARAMETERS:Ljava/lang/String; = "condition_parameters"

.field public static final ELSE_TRIGGER:Ljava/lang/String; = "else_trigger"

.field public static final ID:Ljava/lang/String; = "id"

.field public static final THEN_TRIGGER:Ljava/lang/String; = "then_trigger"

.field public static final TIMEOUT_MS:Ljava/lang/String; = "timeout_ms"


# instance fields
.field private isTriggerExecuted:Z

.field private mConditionalContentID:Ljava/lang/String;

.field private mContent:Lcom/upsight/android/marketing/internal/content/MarketingContent;

.field private mSubscription:Lrx/Subscription;


# direct methods
.method private constructor <init>(Lcom/upsight/android/marketing/internal/content/MarketingContentActions$MarketingContentActionContext;Ljava/lang/String;Lcom/fasterxml/jackson/databind/JsonNode;)V
    .locals 1
    .param p1, "actionContext"    # Lcom/upsight/android/marketing/internal/content/MarketingContentActions$MarketingContentActionContext;
    .param p2, "type"    # Ljava/lang/String;
    .param p3, "params"    # Lcom/fasterxml/jackson/databind/JsonNode;

    .prologue
    .line 332
    invoke-direct {p0, p1, p2, p3}, Lcom/upsight/android/analytics/internal/action/Action;-><init>(Lcom/upsight/android/analytics/internal/action/ActionContext;Ljava/lang/String;Lcom/fasterxml/jackson/databind/JsonNode;)V

    .line 329
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/upsight/android/marketing/internal/content/MarketingContentActions$TriggerIfContentAvailable;->isTriggerExecuted:Z

    .line 333
    return-void
.end method

.method synthetic constructor <init>(Lcom/upsight/android/marketing/internal/content/MarketingContentActions$MarketingContentActionContext;Ljava/lang/String;Lcom/fasterxml/jackson/databind/JsonNode;Lcom/upsight/android/marketing/internal/content/MarketingContentActions$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/upsight/android/marketing/internal/content/MarketingContentActions$MarketingContentActionContext;
    .param p2, "x1"    # Ljava/lang/String;
    .param p3, "x2"    # Lcom/fasterxml/jackson/databind/JsonNode;
    .param p4, "x3"    # Lcom/upsight/android/marketing/internal/content/MarketingContentActions$1;

    .prologue
    .line 311
    invoke-direct {p0, p1, p2, p3}, Lcom/upsight/android/marketing/internal/content/MarketingContentActions$TriggerIfContentAvailable;-><init>(Lcom/upsight/android/marketing/internal/content/MarketingContentActions$MarketingContentActionContext;Ljava/lang/String;Lcom/fasterxml/jackson/databind/JsonNode;)V

    return-void
.end method

.method static synthetic access$1400(Lcom/upsight/android/marketing/internal/content/MarketingContentActions$TriggerIfContentAvailable;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/upsight/android/marketing/internal/content/MarketingContentActions$TriggerIfContentAvailable;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 311
    invoke-virtual {p0, p1}, Lcom/upsight/android/marketing/internal/content/MarketingContentActions$TriggerIfContentAvailable;->optParamString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1500(Lcom/upsight/android/marketing/internal/content/MarketingContentActions$TriggerIfContentAvailable;)Z
    .locals 1
    .param p0, "x0"    # Lcom/upsight/android/marketing/internal/content/MarketingContentActions$TriggerIfContentAvailable;

    .prologue
    .line 311
    iget-boolean v0, p0, Lcom/upsight/android/marketing/internal/content/MarketingContentActions$TriggerIfContentAvailable;->isTriggerExecuted:Z

    return v0
.end method

.method static synthetic access$1502(Lcom/upsight/android/marketing/internal/content/MarketingContentActions$TriggerIfContentAvailable;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/upsight/android/marketing/internal/content/MarketingContentActions$TriggerIfContentAvailable;
    .param p1, "x1"    # Z

    .prologue
    .line 311
    iput-boolean p1, p0, Lcom/upsight/android/marketing/internal/content/MarketingContentActions$TriggerIfContentAvailable;->isTriggerExecuted:Z

    return p1
.end method


# virtual methods
.method public bridge synthetic execute(Lcom/upsight/android/analytics/internal/action/Actionable;)V
    .locals 0
    .param p1, "x0"    # Lcom/upsight/android/analytics/internal/action/Actionable;

    .prologue
    .line 311
    check-cast p1, Lcom/upsight/android/marketing/internal/content/MarketingContent;

    .end local p1    # "x0":Lcom/upsight/android/analytics/internal/action/Actionable;
    invoke-virtual {p0, p1}, Lcom/upsight/android/marketing/internal/content/MarketingContentActions$TriggerIfContentAvailable;->execute(Lcom/upsight/android/marketing/internal/content/MarketingContent;)V

    return-void
.end method

.method public execute(Lcom/upsight/android/marketing/internal/content/MarketingContent;)V
    .locals 12
    .param p1, "content"    # Lcom/upsight/android/marketing/internal/content/MarketingContent;

    .prologue
    const/4 v11, 0x1

    .line 337
    invoke-virtual {p0}, Lcom/upsight/android/marketing/internal/content/MarketingContentActions$TriggerIfContentAvailable;->getActionContext()Lcom/upsight/android/analytics/internal/action/ActionContext;

    move-result-object v0

    check-cast v0, Lcom/upsight/android/marketing/internal/content/MarketingContentActions$MarketingContentActionContext;

    .line 338
    .local v0, "actionContext":Lcom/upsight/android/marketing/internal/content/MarketingContentActions$MarketingContentActionContext;
    iput-object p1, p0, Lcom/upsight/android/marketing/internal/content/MarketingContentActions$TriggerIfContentAvailable;->mContent:Lcom/upsight/android/marketing/internal/content/MarketingContent;

    .line 341
    const-wide/16 v4, 0x0

    .line 343
    .local v4, "timeoutMs":J
    :try_start_0
    const-string v7, "condition_parameters"

    invoke-virtual {p0, v7}, Lcom/upsight/android/marketing/internal/content/MarketingContentActions$TriggerIfContentAvailable;->optParamJsonObject(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/node/ObjectNode;

    move-result-object v2

    .line 344
    .local v2, "conditionalParameters":Lcom/fasterxml/jackson/databind/JsonNode;
    const-string v7, "id"

    invoke-virtual {v2, v7}, Lcom/fasterxml/jackson/databind/JsonNode;->get(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v7

    invoke-virtual {v7}, Lcom/fasterxml/jackson/databind/JsonNode;->asText()Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/upsight/android/marketing/internal/content/MarketingContentActions$TriggerIfContentAvailable;->mConditionalContentID:Ljava/lang/String;

    .line 345
    const-string v7, "timeout_ms"

    invoke-virtual {v2, v7}, Lcom/fasterxml/jackson/databind/JsonNode;->get(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v7

    invoke-virtual {v7}, Lcom/fasterxml/jackson/databind/JsonNode;->asLong()J
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v4

    .line 350
    .end local v2    # "conditionalParameters":Lcom/fasterxml/jackson/databind/JsonNode;
    :goto_0
    iget-object v7, p0, Lcom/upsight/android/marketing/internal/content/MarketingContentActions$TriggerIfContentAvailable;->mConditionalContentID:Ljava/lang/String;

    if-eqz v7, :cond_2

    .line 351
    iget-object v7, v0, Lcom/upsight/android/marketing/internal/content/MarketingContentActions$MarketingContentActionContext;->mContentStore:Lcom/upsight/android/marketing/internal/content/MarketingContentStore;

    iget-object v8, p0, Lcom/upsight/android/marketing/internal/content/MarketingContentActions$TriggerIfContentAvailable;->mConditionalContentID:Ljava/lang/String;

    invoke-interface {v7, v8}, Lcom/upsight/android/marketing/internal/content/MarketingContentStore;->get(Ljava/lang/String;)Lcom/upsight/android/analytics/internal/action/Actionable;

    move-result-object v1

    check-cast v1, Lcom/upsight/android/marketing/internal/content/MarketingContent;

    .line 352
    .local v1, "conditionalContent":Lcom/upsight/android/marketing/internal/content/MarketingContent;
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/upsight/android/marketing/internal/content/MarketingContent;->isLoaded()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 353
    const-string v7, "then_trigger"

    invoke-virtual {p0, v7}, Lcom/upsight/android/marketing/internal/content/MarketingContentActions$TriggerIfContentAvailable;->optParamString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 354
    .local v6, "trigger":Ljava/lang/String;
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_0

    iget-boolean v7, p0, Lcom/upsight/android/marketing/internal/content/MarketingContentActions$TriggerIfContentAvailable;->isTriggerExecuted:Z

    if-nez v7, :cond_0

    .line 355
    invoke-virtual {p1, v6}, Lcom/upsight/android/marketing/internal/content/MarketingContent;->executeActions(Ljava/lang/String;)V

    .line 356
    iput-boolean v11, p0, Lcom/upsight/android/marketing/internal/content/MarketingContentActions$TriggerIfContentAvailable;->isTriggerExecuted:Z

    .line 381
    .end local v1    # "conditionalContent":Lcom/upsight/android/marketing/internal/content/MarketingContent;
    .end local v6    # "trigger":Ljava/lang/String;
    :cond_0
    :goto_1
    invoke-virtual {p0}, Lcom/upsight/android/marketing/internal/content/MarketingContentActions$TriggerIfContentAvailable;->getActionContext()Lcom/upsight/android/analytics/internal/action/ActionContext;

    move-result-object v7

    check-cast v7, Lcom/upsight/android/marketing/internal/content/MarketingContentActions$MarketingContentActionContext;

    iget-object v7, v7, Lcom/upsight/android/marketing/internal/content/MarketingContentActions$MarketingContentActionContext;->mBus:Lcom/squareup/otto/Bus;

    invoke-virtual {p1, v7}, Lcom/upsight/android/marketing/internal/content/MarketingContent;->signalActionCompleted(Lcom/squareup/otto/Bus;)V

    .line 382
    return-void

    .line 346
    :catch_0
    move-exception v3

    .line 347
    .local v3, "e":Ljava/lang/NullPointerException;
    iget-object v7, v0, Lcom/upsight/android/marketing/internal/content/MarketingContentActions$MarketingContentActionContext;->mLogger:Lcom/upsight/android/logger/UpsightLogger;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Action execution failed actionType="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {p0}, Lcom/upsight/android/marketing/internal/content/MarketingContentActions$TriggerIfContentAvailable;->getType()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " invalid CONDITION_PARAMETERS"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    new-array v10, v10, [Ljava/lang/Object;

    invoke-interface {v7, v8, v3, v9, v10}, Lcom/upsight/android/logger/UpsightLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 359
    .end local v3    # "e":Ljava/lang/NullPointerException;
    .restart local v1    # "conditionalContent":Lcom/upsight/android/marketing/internal/content/MarketingContent;
    :cond_1
    iget-object v7, v0, Lcom/upsight/android/marketing/internal/content/MarketingContentActions$MarketingContentActionContext;->mBus:Lcom/squareup/otto/Bus;

    invoke-virtual {v7, p0}, Lcom/squareup/otto/Bus;->register(Ljava/lang/Object;)V

    .line 360
    iget-object v7, v0, Lcom/upsight/android/marketing/internal/content/MarketingContentActions$MarketingContentActionContext;->mMainWorker:Lrx/Scheduler$Worker;

    new-instance v8, Lcom/upsight/android/marketing/internal/content/MarketingContentActions$TriggerIfContentAvailable$1;

    invoke-direct {v8, p0, p1, v0}, Lcom/upsight/android/marketing/internal/content/MarketingContentActions$TriggerIfContentAvailable$1;-><init>(Lcom/upsight/android/marketing/internal/content/MarketingContentActions$TriggerIfContentAvailable;Lcom/upsight/android/marketing/internal/content/MarketingContent;Lcom/upsight/android/marketing/internal/content/MarketingContentActions$MarketingContentActionContext;)V

    sget-object v9, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v7, v8, v4, v5, v9}, Lrx/Scheduler$Worker;->schedule(Lrx/functions/Action0;JLjava/util/concurrent/TimeUnit;)Lrx/Subscription;

    move-result-object v7

    iput-object v7, p0, Lcom/upsight/android/marketing/internal/content/MarketingContentActions$TriggerIfContentAvailable;->mSubscription:Lrx/Subscription;

    goto :goto_1

    .line 373
    .end local v1    # "conditionalContent":Lcom/upsight/android/marketing/internal/content/MarketingContent;
    :cond_2
    const-string v7, "else_trigger"

    invoke-virtual {p0, v7}, Lcom/upsight/android/marketing/internal/content/MarketingContentActions$TriggerIfContentAvailable;->optParamString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 374
    .restart local v6    # "trigger":Ljava/lang/String;
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_0

    iget-boolean v7, p0, Lcom/upsight/android/marketing/internal/content/MarketingContentActions$TriggerIfContentAvailable;->isTriggerExecuted:Z

    if-nez v7, :cond_0

    .line 375
    invoke-virtual {p1, v6}, Lcom/upsight/android/marketing/internal/content/MarketingContent;->executeActions(Ljava/lang/String;)V

    .line 376
    iput-boolean v11, p0, Lcom/upsight/android/marketing/internal/content/MarketingContentActions$TriggerIfContentAvailable;->isTriggerExecuted:Z

    goto :goto_1
.end method

.method public handleAvailabilityEvent(Lcom/upsight/android/marketing/internal/content/MarketingContent$ContentLoadedEvent;)V
    .locals 3
    .param p1, "event"    # Lcom/upsight/android/marketing/internal/content/MarketingContent$ContentLoadedEvent;
    .annotation runtime Lcom/squareup/otto/Subscribe;
    .end annotation

    .prologue
    .line 386
    invoke-virtual {p1}, Lcom/upsight/android/marketing/internal/content/MarketingContent$ContentLoadedEvent;->getId()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/upsight/android/marketing/internal/content/MarketingContentActions$TriggerIfContentAvailable;->mConditionalContentID:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 387
    iget-object v1, p0, Lcom/upsight/android/marketing/internal/content/MarketingContentActions$TriggerIfContentAvailable;->mSubscription:Lrx/Subscription;

    invoke-interface {v1}, Lrx/Subscription;->unsubscribe()V

    .line 388
    invoke-virtual {p0}, Lcom/upsight/android/marketing/internal/content/MarketingContentActions$TriggerIfContentAvailable;->getActionContext()Lcom/upsight/android/analytics/internal/action/ActionContext;

    move-result-object v1

    check-cast v1, Lcom/upsight/android/marketing/internal/content/MarketingContentActions$MarketingContentActionContext;

    iget-object v1, v1, Lcom/upsight/android/marketing/internal/content/MarketingContentActions$MarketingContentActionContext;->mBus:Lcom/squareup/otto/Bus;

    invoke-virtual {v1, p0}, Lcom/squareup/otto/Bus;->unregister(Ljava/lang/Object;)V

    .line 390
    const-string v1, "then_trigger"

    invoke-virtual {p0, v1}, Lcom/upsight/android/marketing/internal/content/MarketingContentActions$TriggerIfContentAvailable;->optParamString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 391
    .local v0, "trigger":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/upsight/android/marketing/internal/content/MarketingContentActions$TriggerIfContentAvailable;->isTriggerExecuted:Z

    if-nez v1, :cond_0

    .line 392
    iget-object v1, p0, Lcom/upsight/android/marketing/internal/content/MarketingContentActions$TriggerIfContentAvailable;->mContent:Lcom/upsight/android/marketing/internal/content/MarketingContent;

    invoke-virtual {v1, v0}, Lcom/upsight/android/marketing/internal/content/MarketingContent;->executeActions(Ljava/lang/String;)V

    .line 393
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/upsight/android/marketing/internal/content/MarketingContentActions$TriggerIfContentAvailable;->isTriggerExecuted:Z

    .line 396
    .end local v0    # "trigger":Ljava/lang/String;
    :cond_0
    return-void
.end method
