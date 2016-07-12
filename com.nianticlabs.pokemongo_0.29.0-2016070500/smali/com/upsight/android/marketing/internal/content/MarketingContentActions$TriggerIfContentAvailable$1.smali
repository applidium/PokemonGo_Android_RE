.class Lcom/upsight/android/marketing/internal/content/MarketingContentActions$TriggerIfContentAvailable$1;
.super Ljava/lang/Object;
.source "MarketingContentActions.java"

# interfaces
.implements Lrx/functions/Action0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/upsight/android/marketing/internal/content/MarketingContentActions$TriggerIfContentAvailable;->execute(Lcom/upsight/android/marketing/internal/content/MarketingContent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/upsight/android/marketing/internal/content/MarketingContentActions$TriggerIfContentAvailable;

.field final synthetic val$actionContext:Lcom/upsight/android/marketing/internal/content/MarketingContentActions$MarketingContentActionContext;

.field final synthetic val$content:Lcom/upsight/android/marketing/internal/content/MarketingContent;


# direct methods
.method constructor <init>(Lcom/upsight/android/marketing/internal/content/MarketingContentActions$TriggerIfContentAvailable;Lcom/upsight/android/marketing/internal/content/MarketingContent;Lcom/upsight/android/marketing/internal/content/MarketingContentActions$MarketingContentActionContext;)V
    .locals 0

    .prologue
    .line 360
    iput-object p1, p0, Lcom/upsight/android/marketing/internal/content/MarketingContentActions$TriggerIfContentAvailable$1;->this$0:Lcom/upsight/android/marketing/internal/content/MarketingContentActions$TriggerIfContentAvailable;

    iput-object p2, p0, Lcom/upsight/android/marketing/internal/content/MarketingContentActions$TriggerIfContentAvailable$1;->val$content:Lcom/upsight/android/marketing/internal/content/MarketingContent;

    iput-object p3, p0, Lcom/upsight/android/marketing/internal/content/MarketingContentActions$TriggerIfContentAvailable$1;->val$actionContext:Lcom/upsight/android/marketing/internal/content/MarketingContentActions$MarketingContentActionContext;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()V
    .locals 3

    .prologue
    .line 363
    iget-object v1, p0, Lcom/upsight/android/marketing/internal/content/MarketingContentActions$TriggerIfContentAvailable$1;->this$0:Lcom/upsight/android/marketing/internal/content/MarketingContentActions$TriggerIfContentAvailable;

    const-string v2, "else_trigger"

    # invokes: Lcom/upsight/android/marketing/internal/content/MarketingContentActions$TriggerIfContentAvailable;->optParamString(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v1, v2}, Lcom/upsight/android/marketing/internal/content/MarketingContentActions$TriggerIfContentAvailable;->access$1400(Lcom/upsight/android/marketing/internal/content/MarketingContentActions$TriggerIfContentAvailable;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 364
    .local v0, "trigger":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/upsight/android/marketing/internal/content/MarketingContentActions$TriggerIfContentAvailable$1;->this$0:Lcom/upsight/android/marketing/internal/content/MarketingContentActions$TriggerIfContentAvailable;

    # getter for: Lcom/upsight/android/marketing/internal/content/MarketingContentActions$TriggerIfContentAvailable;->isTriggerExecuted:Z
    invoke-static {v1}, Lcom/upsight/android/marketing/internal/content/MarketingContentActions$TriggerIfContentAvailable;->access$1500(Lcom/upsight/android/marketing/internal/content/MarketingContentActions$TriggerIfContentAvailable;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 365
    iget-object v1, p0, Lcom/upsight/android/marketing/internal/content/MarketingContentActions$TriggerIfContentAvailable$1;->val$content:Lcom/upsight/android/marketing/internal/content/MarketingContent;

    invoke-virtual {v1, v0}, Lcom/upsight/android/marketing/internal/content/MarketingContent;->executeActions(Ljava/lang/String;)V

    .line 366
    iget-object v1, p0, Lcom/upsight/android/marketing/internal/content/MarketingContentActions$TriggerIfContentAvailable$1;->this$0:Lcom/upsight/android/marketing/internal/content/MarketingContentActions$TriggerIfContentAvailable;

    const/4 v2, 0x1

    # setter for: Lcom/upsight/android/marketing/internal/content/MarketingContentActions$TriggerIfContentAvailable;->isTriggerExecuted:Z
    invoke-static {v1, v2}, Lcom/upsight/android/marketing/internal/content/MarketingContentActions$TriggerIfContentAvailable;->access$1502(Lcom/upsight/android/marketing/internal/content/MarketingContentActions$TriggerIfContentAvailable;Z)Z

    .line 368
    :cond_0
    iget-object v1, p0, Lcom/upsight/android/marketing/internal/content/MarketingContentActions$TriggerIfContentAvailable$1;->val$actionContext:Lcom/upsight/android/marketing/internal/content/MarketingContentActions$MarketingContentActionContext;

    iget-object v1, v1, Lcom/upsight/android/marketing/internal/content/MarketingContentActions$MarketingContentActionContext;->mBus:Lcom/squareup/otto/Bus;

    invoke-virtual {v1, p0}, Lcom/squareup/otto/Bus;->unregister(Ljava/lang/Object;)V

    .line 369
    return-void
.end method
