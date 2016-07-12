.class public Lcom/upsight/android/marketing/internal/content/MarketingContent;
.super Lcom/upsight/android/analytics/internal/action/Actionable;
.source "MarketingContent.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/upsight/android/marketing/internal/content/MarketingContent$1;,
        Lcom/upsight/android/marketing/internal/content/MarketingContent$AvailabilityEvent;,
        Lcom/upsight/android/marketing/internal/content/MarketingContent$ScopelessAvailabilityEvent;,
        Lcom/upsight/android/marketing/internal/content/MarketingContent$ScopedAvailabilityEvent;,
        Lcom/upsight/android/marketing/internal/content/MarketingContent$ContentLoadedEvent;
    }
.end annotation


# static fields
.field public static final TRIGGER_APP_BACKGROUNDED:Ljava/lang/String; = "app_backgrounded"

.field public static final TRIGGER_CONTENT_DISMISSED:Ljava/lang/String; = "content_dismissed"

.field public static final TRIGGER_CONTENT_DISPLAYED:Ljava/lang/String; = "content_displayed"

.field public static final TRIGGER_CONTENT_RECEIVED:Ljava/lang/String; = "content_received"

.field public static final UPSIGHT_CONTENT_PROVIDER:Ljava/lang/String; = "upsight"


# instance fields
.field private mAvailabilityEvent:Lcom/upsight/android/marketing/internal/content/MarketingContent$AvailabilityEvent;

.field private mContentModel:Lcom/upsight/android/marketing/internal/content/MarketingContentModel;

.field private mContentView:Landroid/view/View;

.field private mExtras:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mIsConsumed:Z

.field private mIsLoaded:Z


# direct methods
.method private constructor <init>(Ljava/lang/String;Lcom/upsight/android/analytics/internal/action/ActionMap;)V
    .locals 2
    .param p1, "id"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/upsight/android/analytics/internal/action/ActionMap",
            "<",
            "Lcom/upsight/android/marketing/internal/content/MarketingContent;",
            "Lcom/upsight/android/marketing/internal/content/MarketingContentActions$MarketingContentActionContext;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p2, "actionMap":Lcom/upsight/android/analytics/internal/action/ActionMap;, "Lcom/upsight/android/analytics/internal/action/ActionMap<Lcom/upsight/android/marketing/internal/content/MarketingContent;Lcom/upsight/android/marketing/internal/content/MarketingContentActions$MarketingContentActionContext;>;"
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 97
    invoke-direct {p0, p1, p2}, Lcom/upsight/android/analytics/internal/action/Actionable;-><init>(Ljava/lang/String;Lcom/upsight/android/analytics/internal/action/ActionMap;)V

    .line 51
    iput-object v1, p0, Lcom/upsight/android/marketing/internal/content/MarketingContent;->mContentModel:Lcom/upsight/android/marketing/internal/content/MarketingContentModel;

    .line 56
    iput-object v1, p0, Lcom/upsight/android/marketing/internal/content/MarketingContent;->mContentView:Landroid/view/View;

    .line 61
    iput-boolean v0, p0, Lcom/upsight/android/marketing/internal/content/MarketingContent;->mIsLoaded:Z

    .line 71
    iput-boolean v0, p0, Lcom/upsight/android/marketing/internal/content/MarketingContent;->mIsConsumed:Z

    .line 98
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/upsight/android/marketing/internal/content/MarketingContent;->mExtras:Ljava/util/Map;

    .line 99
    return-void
.end method

.method public static create(Ljava/lang/String;Lcom/upsight/android/analytics/internal/action/ActionMap;)Lcom/upsight/android/marketing/internal/content/MarketingContent;
    .locals 1
    .param p0, "id"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/upsight/android/analytics/internal/action/ActionMap",
            "<",
            "Lcom/upsight/android/marketing/internal/content/MarketingContent;",
            "Lcom/upsight/android/marketing/internal/content/MarketingContentActions$MarketingContentActionContext;",
            ">;)",
            "Lcom/upsight/android/marketing/internal/content/MarketingContent;"
        }
    .end annotation

    .prologue
    .line 87
    .local p1, "actionMap":Lcom/upsight/android/analytics/internal/action/ActionMap;, "Lcom/upsight/android/analytics/internal/action/ActionMap<Lcom/upsight/android/marketing/internal/content/MarketingContent;Lcom/upsight/android/marketing/internal/content/MarketingContentActions$MarketingContentActionContext;>;"
    new-instance v0, Lcom/upsight/android/marketing/internal/content/MarketingContent;

    invoke-direct {v0, p0, p1}, Lcom/upsight/android/marketing/internal/content/MarketingContent;-><init>(Ljava/lang/String;Lcom/upsight/android/analytics/internal/action/ActionMap;)V

    return-object v0
.end method

.method private notifyAvailability(Lcom/squareup/otto/Bus;)V
    .locals 1
    .param p1, "bus"    # Lcom/squareup/otto/Bus;

    .prologue
    .line 182
    invoke-virtual {p0}, Lcom/upsight/android/marketing/internal/content/MarketingContent;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 183
    iget-object v0, p0, Lcom/upsight/android/marketing/internal/content/MarketingContent;->mAvailabilityEvent:Lcom/upsight/android/marketing/internal/content/MarketingContent$AvailabilityEvent;

    invoke-virtual {p1, v0}, Lcom/squareup/otto/Bus;->post(Ljava/lang/Object;)V

    .line 185
    :cond_0
    return-void
.end method


# virtual methods
.method public getContentModel()Lcom/upsight/android/marketing/internal/content/MarketingContentModel;
    .locals 1

    .prologue
    .line 125
    iget-object v0, p0, Lcom/upsight/android/marketing/internal/content/MarketingContent;->mContentModel:Lcom/upsight/android/marketing/internal/content/MarketingContentModel;

    return-object v0
.end method

.method public getContentProvider()Ljava/lang/String;
    .locals 1

    .prologue
    .line 107
    const-string v0, "upsight"

    return-object v0
.end method

.method public getContentView()Landroid/view/View;
    .locals 1

    .prologue
    .line 143
    iget-object v0, p0, Lcom/upsight/android/marketing/internal/content/MarketingContent;->mContentView:Landroid/view/View;

    return-object v0
.end method

.method public getExtra(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 213
    iget-object v0, p0, Lcom/upsight/android/marketing/internal/content/MarketingContent;->mExtras:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public isAvailable()Z
    .locals 1

    .prologue
    .line 203
    invoke-virtual {p0}, Lcom/upsight/android/marketing/internal/content/MarketingContent;->isLoaded()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/upsight/android/marketing/internal/content/MarketingContent;->mAvailabilityEvent:Lcom/upsight/android/marketing/internal/content/MarketingContent$AvailabilityEvent;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/upsight/android/marketing/internal/content/MarketingContent;->mIsConsumed:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isLoaded()Z
    .locals 1

    .prologue
    .line 193
    iget-object v0, p0, Lcom/upsight/android/marketing/internal/content/MarketingContent;->mContentModel:Lcom/upsight/android/marketing/internal/content/MarketingContentModel;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/upsight/android/marketing/internal/content/MarketingContent;->mContentView:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/upsight/android/marketing/internal/content/MarketingContent;->mIsLoaded:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public markConsumed()V
    .locals 1

    .prologue
    .line 173
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/upsight/android/marketing/internal/content/MarketingContent;->mIsConsumed:Z

    .line 174
    return-void
.end method

.method public markLoaded(Lcom/squareup/otto/Bus;)V
    .locals 3
    .param p1, "bus"    # Lcom/squareup/otto/Bus;

    .prologue
    .line 152
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/upsight/android/marketing/internal/content/MarketingContent;->mIsLoaded:Z

    .line 153
    new-instance v0, Lcom/upsight/android/marketing/internal/content/MarketingContent$ContentLoadedEvent;

    invoke-virtual {p0}, Lcom/upsight/android/marketing/internal/content/MarketingContent;->getId()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/upsight/android/marketing/internal/content/MarketingContent$ContentLoadedEvent;-><init>(Ljava/lang/String;Lcom/upsight/android/marketing/internal/content/MarketingContent$1;)V

    invoke-virtual {p1, v0}, Lcom/squareup/otto/Bus;->post(Ljava/lang/Object;)V

    .line 154
    invoke-direct {p0, p1}, Lcom/upsight/android/marketing/internal/content/MarketingContent;->notifyAvailability(Lcom/squareup/otto/Bus;)V

    .line 155
    return-void
.end method

.method public markPresentable(Lcom/upsight/android/marketing/internal/content/MarketingContent$AvailabilityEvent;Lcom/squareup/otto/Bus;)V
    .locals 0
    .param p1, "event"    # Lcom/upsight/android/marketing/internal/content/MarketingContent$AvailabilityEvent;
    .param p2, "bus"    # Lcom/squareup/otto/Bus;

    .prologue
    .line 165
    iput-object p1, p0, Lcom/upsight/android/marketing/internal/content/MarketingContent;->mAvailabilityEvent:Lcom/upsight/android/marketing/internal/content/MarketingContent$AvailabilityEvent;

    .line 166
    invoke-direct {p0, p2}, Lcom/upsight/android/marketing/internal/content/MarketingContent;->notifyAvailability(Lcom/squareup/otto/Bus;)V

    .line 167
    return-void
.end method

.method public putExtra(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 223
    iget-object v0, p0, Lcom/upsight/android/marketing/internal/content/MarketingContent;->mExtras:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 224
    return-void
.end method

.method public setContentModel(Lcom/upsight/android/marketing/internal/content/MarketingContentModel;)V
    .locals 0
    .param p1, "contentModel"    # Lcom/upsight/android/marketing/internal/content/MarketingContentModel;

    .prologue
    .line 116
    iput-object p1, p0, Lcom/upsight/android/marketing/internal/content/MarketingContent;->mContentModel:Lcom/upsight/android/marketing/internal/content/MarketingContentModel;

    .line 117
    return-void
.end method

.method public setContentView(Landroid/view/View;)V
    .locals 0
    .param p1, "contentView"    # Landroid/view/View;

    .prologue
    .line 134
    iput-object p1, p0, Lcom/upsight/android/marketing/internal/content/MarketingContent;->mContentView:Landroid/view/View;

    .line 135
    return-void
.end method
