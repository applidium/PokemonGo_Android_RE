.class Lcom/upsight/android/marketing/internal/billboard/BillboardManagerImpl;
.super Ljava/lang/Object;
.source "BillboardManagerImpl.java"

# interfaces
.implements Lcom/upsight/android/marketing/UpsightBillboardManager;


# instance fields
.field private final mContentStore:Lcom/upsight/android/marketing/internal/content/MarketingContentStore;

.field private final mFilledBillboards:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/upsight/android/marketing/internal/billboard/Billboard;",
            ">;"
        }
    .end annotation
.end field

.field private final mMediators:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/upsight/android/marketing/UpsightContentMediator;",
            ">;"
        }
    .end annotation
.end field

.field private final mUnfilledBillboards:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/upsight/android/marketing/internal/billboard/Billboard;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/upsight/android/persistence/UpsightDataStore;Lcom/upsight/android/marketing/internal/content/MarketingContentStore;Lcom/squareup/otto/Bus;)V
    .locals 1
    .param p1, "dataStore"    # Lcom/upsight/android/persistence/UpsightDataStore;
    .param p2, "contentStore"    # Lcom/upsight/android/marketing/internal/content/MarketingContentStore;
    .param p3, "bus"    # Lcom/squareup/otto/Bus;

    .prologue
    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/upsight/android/marketing/internal/billboard/BillboardManagerImpl;->mUnfilledBillboards:Ljava/util/Map;

    .line 49
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/upsight/android/marketing/internal/billboard/BillboardManagerImpl;->mFilledBillboards:Ljava/util/Map;

    .line 55
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/upsight/android/marketing/internal/billboard/BillboardManagerImpl;->mMediators:Ljava/util/Map;

    .line 64
    iput-object p2, p0, Lcom/upsight/android/marketing/internal/billboard/BillboardManagerImpl;->mContentStore:Lcom/upsight/android/marketing/internal/content/MarketingContentStore;

    .line 65
    invoke-virtual {p3, p0}, Lcom/squareup/otto/Bus;->register(Ljava/lang/Object;)V

    .line 66
    invoke-interface {p1, p0}, Lcom/upsight/android/persistence/UpsightDataStore;->subscribe(Ljava/lang/Object;)Lcom/upsight/android/persistence/UpsightSubscription;

    .line 67
    return-void
.end method

.method private declared-synchronized detachBillboard(Ljava/lang/String;)V
    .locals 2
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 236
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/upsight/android/marketing/internal/billboard/BillboardManagerImpl;->mFilledBillboards:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/upsight/android/marketing/internal/billboard/Billboard;

    .line 237
    .local v0, "billboard":Lcom/upsight/android/marketing/internal/billboard/Billboard;
    if-eqz v0, :cond_0

    .line 238
    invoke-virtual {v0}, Lcom/upsight/android/marketing/internal/billboard/Billboard;->getHandler()Lcom/upsight/android/marketing/UpsightBillboard$Handler;

    move-result-object v1

    invoke-interface {v1}, Lcom/upsight/android/marketing/UpsightBillboard$Handler;->onDetach()V

    .line 241
    iget-object v1, p0, Lcom/upsight/android/marketing/internal/billboard/BillboardManagerImpl;->mFilledBillboards:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 243
    :cond_0
    monitor-exit p0

    return-void

    .line 236
    .end local v0    # "billboard":Lcom/upsight/android/marketing/internal/billboard/Billboard;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method private getDimensions(Lcom/upsight/android/marketing/internal/content/MarketingContent;)Ljava/util/Set;
    .locals 6
    .param p1, "content"    # Lcom/upsight/android/marketing/internal/content/MarketingContent;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/upsight/android/marketing/internal/content/MarketingContent;",
            ")",
            "Ljava/util/Set",
            "<",
            "Lcom/upsight/android/marketing/UpsightBillboard$Dimensions;",
            ">;"
        }
    .end annotation

    .prologue
    .line 270
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 271
    .local v0, "dimensions":Ljava/util/Set;, "Ljava/util/Set<Lcom/upsight/android/marketing/UpsightBillboard$Dimensions;>;"
    invoke-virtual {p1}, Lcom/upsight/android/marketing/internal/content/MarketingContent;->getContentModel()Lcom/upsight/android/marketing/internal/content/MarketingContentModel;

    move-result-object v2

    invoke-virtual {v2}, Lcom/upsight/android/marketing/internal/content/MarketingContentModel;->getDialogLayouts()Lcom/upsight/android/marketing/internal/content/MarketingContentModel$Presentation$DialogLayout;

    move-result-object v1

    .line 274
    .local v1, "layouts":Lcom/upsight/android/marketing/internal/content/MarketingContentModel$Presentation$DialogLayout;
    if-eqz v1, :cond_0

    iget-object v2, v1, Lcom/upsight/android/marketing/internal/content/MarketingContentModel$Presentation$DialogLayout;->portrait:Lcom/upsight/android/marketing/internal/content/MarketingContentModel$Presentation$DialogLayout$Dimensions;

    if-eqz v2, :cond_0

    iget-object v2, v1, Lcom/upsight/android/marketing/internal/content/MarketingContentModel$Presentation$DialogLayout;->portrait:Lcom/upsight/android/marketing/internal/content/MarketingContentModel$Presentation$DialogLayout$Dimensions;

    iget v2, v2, Lcom/upsight/android/marketing/internal/content/MarketingContentModel$Presentation$DialogLayout$Dimensions;->w:I

    if-lez v2, :cond_0

    iget-object v2, v1, Lcom/upsight/android/marketing/internal/content/MarketingContentModel$Presentation$DialogLayout;->portrait:Lcom/upsight/android/marketing/internal/content/MarketingContentModel$Presentation$DialogLayout$Dimensions;

    iget v2, v2, Lcom/upsight/android/marketing/internal/content/MarketingContentModel$Presentation$DialogLayout$Dimensions;->h:I

    if-lez v2, :cond_0

    .line 275
    new-instance v2, Lcom/upsight/android/marketing/UpsightBillboard$Dimensions;

    sget-object v3, Lcom/upsight/android/marketing/UpsightBillboard$Dimensions$LayoutOrientation;->Portrait:Lcom/upsight/android/marketing/UpsightBillboard$Dimensions$LayoutOrientation;

    iget-object v4, v1, Lcom/upsight/android/marketing/internal/content/MarketingContentModel$Presentation$DialogLayout;->portrait:Lcom/upsight/android/marketing/internal/content/MarketingContentModel$Presentation$DialogLayout$Dimensions;

    iget v4, v4, Lcom/upsight/android/marketing/internal/content/MarketingContentModel$Presentation$DialogLayout$Dimensions;->w:I

    iget-object v5, v1, Lcom/upsight/android/marketing/internal/content/MarketingContentModel$Presentation$DialogLayout;->portrait:Lcom/upsight/android/marketing/internal/content/MarketingContentModel$Presentation$DialogLayout$Dimensions;

    iget v5, v5, Lcom/upsight/android/marketing/internal/content/MarketingContentModel$Presentation$DialogLayout$Dimensions;->h:I

    invoke-direct {v2, v3, v4, v5}, Lcom/upsight/android/marketing/UpsightBillboard$Dimensions;-><init>(Lcom/upsight/android/marketing/UpsightBillboard$Dimensions$LayoutOrientation;II)V

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 279
    :cond_0
    if-eqz v1, :cond_1

    iget-object v2, v1, Lcom/upsight/android/marketing/internal/content/MarketingContentModel$Presentation$DialogLayout;->landscape:Lcom/upsight/android/marketing/internal/content/MarketingContentModel$Presentation$DialogLayout$Dimensions;

    if-eqz v2, :cond_1

    iget-object v2, v1, Lcom/upsight/android/marketing/internal/content/MarketingContentModel$Presentation$DialogLayout;->landscape:Lcom/upsight/android/marketing/internal/content/MarketingContentModel$Presentation$DialogLayout$Dimensions;

    iget v2, v2, Lcom/upsight/android/marketing/internal/content/MarketingContentModel$Presentation$DialogLayout$Dimensions;->w:I

    if-lez v2, :cond_1

    iget-object v2, v1, Lcom/upsight/android/marketing/internal/content/MarketingContentModel$Presentation$DialogLayout;->landscape:Lcom/upsight/android/marketing/internal/content/MarketingContentModel$Presentation$DialogLayout$Dimensions;

    iget v2, v2, Lcom/upsight/android/marketing/internal/content/MarketingContentModel$Presentation$DialogLayout$Dimensions;->h:I

    if-lez v2, :cond_1

    .line 280
    new-instance v2, Lcom/upsight/android/marketing/UpsightBillboard$Dimensions;

    sget-object v3, Lcom/upsight/android/marketing/UpsightBillboard$Dimensions$LayoutOrientation;->Landscape:Lcom/upsight/android/marketing/UpsightBillboard$Dimensions$LayoutOrientation;

    iget-object v4, v1, Lcom/upsight/android/marketing/internal/content/MarketingContentModel$Presentation$DialogLayout;->landscape:Lcom/upsight/android/marketing/internal/content/MarketingContentModel$Presentation$DialogLayout$Dimensions;

    iget v4, v4, Lcom/upsight/android/marketing/internal/content/MarketingContentModel$Presentation$DialogLayout$Dimensions;->w:I

    iget-object v5, v1, Lcom/upsight/android/marketing/internal/content/MarketingContentModel$Presentation$DialogLayout;->landscape:Lcom/upsight/android/marketing/internal/content/MarketingContentModel$Presentation$DialogLayout$Dimensions;

    iget v5, v5, Lcom/upsight/android/marketing/internal/content/MarketingContentModel$Presentation$DialogLayout$Dimensions;->h:I

    invoke-direct {v2, v3, v4, v5}, Lcom/upsight/android/marketing/UpsightBillboard$Dimensions;-><init>(Lcom/upsight/android/marketing/UpsightBillboard$Dimensions$LayoutOrientation;II)V

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 283
    :cond_1
    return-object v0
.end method

.method private getPresentationStyle(Lcom/upsight/android/marketing/internal/content/MarketingContent;)Lcom/upsight/android/marketing/UpsightBillboard$PresentationStyle;
    .locals 2
    .param p1, "content"    # Lcom/upsight/android/marketing/internal/content/MarketingContent;

    .prologue
    .line 253
    invoke-virtual {p1}, Lcom/upsight/android/marketing/internal/content/MarketingContent;->getContentModel()Lcom/upsight/android/marketing/internal/content/MarketingContentModel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/upsight/android/marketing/internal/content/MarketingContentModel;->getPresentationStyle()Ljava/lang/String;

    move-result-object v0

    .line 254
    .local v0, "transition":Ljava/lang/String;
    const-string v1, "dialog"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 255
    sget-object v1, Lcom/upsight/android/marketing/UpsightBillboard$PresentationStyle;->Dialog:Lcom/upsight/android/marketing/UpsightBillboard$PresentationStyle;

    .line 259
    :goto_0
    return-object v1

    .line 256
    :cond_0
    const-string v1, "fullscreen"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 257
    sget-object v1, Lcom/upsight/android/marketing/UpsightBillboard$PresentationStyle;->Fullscreen:Lcom/upsight/android/marketing/UpsightBillboard$PresentationStyle;

    goto :goto_0

    .line 259
    :cond_1
    sget-object v1, Lcom/upsight/android/marketing/UpsightBillboard$PresentationStyle;->None:Lcom/upsight/android/marketing/UpsightBillboard$PresentationStyle;

    goto :goto_0
.end method

.method private tryAttachBillboard(Ljava/lang/String;Lcom/upsight/android/marketing/internal/billboard/Billboard;)Z
    .locals 8
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "billboard"    # Lcom/upsight/android/marketing/internal/billboard/Billboard;

    .prologue
    .line 199
    const/4 v2, 0x0

    .line 200
    .local v2, "isAttached":Z
    iget-object v4, p0, Lcom/upsight/android/marketing/internal/billboard/BillboardManagerImpl;->mContentStore:Lcom/upsight/android/marketing/internal/content/MarketingContentStore;

    invoke-interface {v4, p1}, Lcom/upsight/android/marketing/internal/content/MarketingContentStore;->get(Ljava/lang/String;)Lcom/upsight/android/analytics/internal/action/Actionable;

    move-result-object v1

    check-cast v1, Lcom/upsight/android/marketing/internal/content/MarketingContent;

    .line 203
    .local v1, "content":Lcom/upsight/android/marketing/internal/content/MarketingContent;
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lcom/upsight/android/marketing/internal/billboard/Billboard;->getMarketingContent()Lcom/upsight/android/marketing/internal/content/MarketingContent;

    move-result-object v4

    if-nez v4, :cond_0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/upsight/android/marketing/internal/content/MarketingContent;->isAvailable()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 204
    iget-object v4, p0, Lcom/upsight/android/marketing/internal/billboard/BillboardManagerImpl;->mMediators:Ljava/util/Map;

    invoke-virtual {v1}, Lcom/upsight/android/marketing/internal/content/MarketingContent;->getContentProvider()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/upsight/android/marketing/UpsightContentMediator;

    .line 205
    .local v3, "mediator":Lcom/upsight/android/marketing/UpsightContentMediator;
    if-eqz v3, :cond_0

    invoke-interface {v3}, Lcom/upsight/android/marketing/UpsightContentMediator;->isAvailable()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 207
    invoke-virtual {p2}, Lcom/upsight/android/marketing/internal/billboard/Billboard;->getHandler()Lcom/upsight/android/marketing/UpsightBillboard$Handler;

    move-result-object v4

    invoke-virtual {p2}, Lcom/upsight/android/marketing/internal/billboard/Billboard;->getScope()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v1}, Lcom/upsight/android/marketing/internal/billboard/BillboardManagerImpl;->getPresentationStyle(Lcom/upsight/android/marketing/internal/content/MarketingContent;)Lcom/upsight/android/marketing/UpsightBillboard$PresentationStyle;

    move-result-object v6

    invoke-direct {p0, v1}, Lcom/upsight/android/marketing/internal/billboard/BillboardManagerImpl;->getDimensions(Lcom/upsight/android/marketing/internal/content/MarketingContent;)Ljava/util/Set;

    move-result-object v7

    invoke-interface {v4, v5, v6, v7}, Lcom/upsight/android/marketing/UpsightBillboard$Handler;->onAttach(Ljava/lang/String;Lcom/upsight/android/marketing/UpsightBillboard$PresentationStyle;Ljava/util/Set;)Landroid/view/ViewGroup;

    move-result-object v0

    .line 208
    .local v0, "billboardRootView":Landroid/view/ViewGroup;
    if-eqz v0, :cond_0

    .line 210
    invoke-virtual {v1}, Lcom/upsight/android/marketing/internal/content/MarketingContent;->markConsumed()V

    .line 213
    invoke-interface {v3, v1, v0}, Lcom/upsight/android/marketing/UpsightContentMediator;->displayContent(Lcom/upsight/android/marketing/internal/content/MarketingContent;Landroid/view/ViewGroup;)V

    .line 216
    invoke-virtual {p2, v1}, Lcom/upsight/android/marketing/internal/billboard/Billboard;->setMarketingContent(Lcom/upsight/android/marketing/internal/content/MarketingContent;)V

    .line 217
    iget-object v4, p0, Lcom/upsight/android/marketing/internal/billboard/BillboardManagerImpl;->mUnfilledBillboards:Ljava/util/Map;

    invoke-virtual {p2}, Lcom/upsight/android/marketing/internal/billboard/Billboard;->getScope()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 218
    iget-object v4, p0, Lcom/upsight/android/marketing/internal/billboard/BillboardManagerImpl;->mFilledBillboards:Ljava/util/Map;

    invoke-interface {v4, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 221
    const-string v4, "content_displayed"

    invoke-virtual {v1, v4}, Lcom/upsight/android/marketing/internal/content/MarketingContent;->executeActions(Ljava/lang/String;)V

    .line 223
    const/4 v2, 0x1

    .line 227
    .end local v0    # "billboardRootView":Landroid/view/ViewGroup;
    .end local v3    # "mediator":Lcom/upsight/android/marketing/UpsightContentMediator;
    :cond_0
    return v2
.end method


# virtual methods
.method public declared-synchronized handleActionEvent(Lcom/upsight/android/marketing/internal/content/MarketingContentActions$DestroyEvent;)V
    .locals 1
    .param p1, "event"    # Lcom/upsight/android/marketing/internal/content/MarketingContentActions$DestroyEvent;
    .annotation runtime Lcom/squareup/otto/Subscribe;
    .end annotation

    .prologue
    .line 173
    monitor-enter p0

    :try_start_0
    iget-object v0, p1, Lcom/upsight/android/marketing/internal/content/MarketingContentActions$DestroyEvent;->mId:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/upsight/android/marketing/internal/billboard/BillboardManagerImpl;->detachBillboard(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 174
    monitor-exit p0

    return-void

    .line 173
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized handleActionEvent(Lcom/upsight/android/marketing/internal/content/MarketingContentActions$PurchasesEvent;)V
    .locals 3
    .param p1, "event"    # Lcom/upsight/android/marketing/internal/content/MarketingContentActions$PurchasesEvent;
    .annotation runtime Lcom/squareup/otto/Subscribe;
    .end annotation

    .prologue
    .line 165
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/upsight/android/marketing/internal/billboard/BillboardManagerImpl;->mFilledBillboards:Ljava/util/Map;

    iget-object v2, p1, Lcom/upsight/android/marketing/internal/content/MarketingContentActions$PurchasesEvent;->mId:Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/upsight/android/marketing/internal/billboard/Billboard;

    .line 166
    .local v0, "billboard":Lcom/upsight/android/marketing/internal/billboard/Billboard;
    if-eqz v0, :cond_0

    .line 167
    invoke-virtual {v0}, Lcom/upsight/android/marketing/internal/billboard/Billboard;->getHandler()Lcom/upsight/android/marketing/UpsightBillboard$Handler;

    move-result-object v1

    iget-object v2, p1, Lcom/upsight/android/marketing/internal/content/MarketingContentActions$PurchasesEvent;->mPurchases:Ljava/util/List;

    invoke-interface {v1, v2}, Lcom/upsight/android/marketing/UpsightBillboard$Handler;->onPurchases(Ljava/util/List;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 169
    :cond_0
    monitor-exit p0

    return-void

    .line 165
    .end local v0    # "billboard":Lcom/upsight/android/marketing/internal/billboard/Billboard;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized handleActionEvent(Lcom/upsight/android/marketing/internal/content/MarketingContentActions$RewardsEvent;)V
    .locals 3
    .param p1, "event"    # Lcom/upsight/android/marketing/internal/content/MarketingContentActions$RewardsEvent;
    .annotation runtime Lcom/squareup/otto/Subscribe;
    .end annotation

    .prologue
    .line 157
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/upsight/android/marketing/internal/billboard/BillboardManagerImpl;->mFilledBillboards:Ljava/util/Map;

    iget-object v2, p1, Lcom/upsight/android/marketing/internal/content/MarketingContentActions$RewardsEvent;->mId:Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/upsight/android/marketing/internal/billboard/Billboard;

    .line 158
    .local v0, "billboard":Lcom/upsight/android/marketing/internal/billboard/Billboard;
    if-eqz v0, :cond_0

    .line 159
    invoke-virtual {v0}, Lcom/upsight/android/marketing/internal/billboard/Billboard;->getHandler()Lcom/upsight/android/marketing/UpsightBillboard$Handler;

    move-result-object v1

    iget-object v2, p1, Lcom/upsight/android/marketing/internal/content/MarketingContentActions$RewardsEvent;->mRewards:Ljava/util/List;

    invoke-interface {v1, v2}, Lcom/upsight/android/marketing/UpsightBillboard$Handler;->onRewards(Ljava/util/List;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 161
    :cond_0
    monitor-exit p0

    return-void

    .line 157
    .end local v0    # "billboard":Lcom/upsight/android/marketing/internal/billboard/Billboard;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized handleAvailabilityEvent(Lcom/upsight/android/marketing/internal/content/MarketingContent$ScopedAvailabilityEvent;)V
    .locals 4
    .param p1, "event"    # Lcom/upsight/android/marketing/internal/content/MarketingContent$ScopedAvailabilityEvent;
    .annotation runtime Lcom/squareup/otto/Subscribe;
    .end annotation

    .prologue
    .line 112
    monitor-enter p0

    :try_start_0
    invoke-virtual {p1}, Lcom/upsight/android/marketing/internal/content/MarketingContent$ScopedAvailabilityEvent;->getScopes()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 113
    .local v1, "scope":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/upsight/android/marketing/internal/content/MarketingContent$ScopedAvailabilityEvent;->getId()Ljava/lang/String;

    move-result-object v3

    iget-object v2, p0, Lcom/upsight/android/marketing/internal/billboard/BillboardManagerImpl;->mUnfilledBillboards:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/upsight/android/marketing/internal/billboard/Billboard;

    invoke-direct {p0, v3, v2}, Lcom/upsight/android/marketing/internal/billboard/BillboardManagerImpl;->tryAttachBillboard(Ljava/lang/String;Lcom/upsight/android/marketing/internal/billboard/Billboard;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-eqz v2, :cond_0

    .line 117
    .end local v1    # "scope":Ljava/lang/String;
    :cond_1
    monitor-exit p0

    return-void

    .line 112
    .end local v0    # "i$":Ljava/util/Iterator;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public declared-synchronized handleAvailabilityEvent(Lcom/upsight/android/marketing/internal/content/MarketingContent$ScopelessAvailabilityEvent;)V
    .locals 8
    .param p1, "event"    # Lcom/upsight/android/marketing/internal/content/MarketingContent$ScopelessAvailabilityEvent;
    .annotation runtime Lcom/squareup/otto/Subscribe;
    .end annotation

    .prologue
    .line 121
    monitor-enter p0

    :try_start_0
    invoke-virtual {p1}, Lcom/upsight/android/marketing/internal/content/MarketingContent$ScopelessAvailabilityEvent;->getParentId()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 123
    iget-object v6, p0, Lcom/upsight/android/marketing/internal/billboard/BillboardManagerImpl;->mFilledBillboards:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/upsight/android/marketing/internal/content/MarketingContent$ScopelessAvailabilityEvent;->getParentId()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/upsight/android/marketing/internal/billboard/Billboard;

    .line 124
    .local v0, "billboard":Lcom/upsight/android/marketing/internal/billboard/Billboard;
    if-eqz v0, :cond_0

    .line 125
    invoke-virtual {v0}, Lcom/upsight/android/marketing/internal/billboard/Billboard;->getMarketingContent()Lcom/upsight/android/marketing/internal/content/MarketingContent;

    move-result-object v2

    .line 126
    .local v2, "content":Lcom/upsight/android/marketing/internal/content/MarketingContent;
    iget-object v6, p0, Lcom/upsight/android/marketing/internal/billboard/BillboardManagerImpl;->mContentStore:Lcom/upsight/android/marketing/internal/content/MarketingContentStore;

    invoke-virtual {p1}, Lcom/upsight/android/marketing/internal/content/MarketingContent$ScopelessAvailabilityEvent;->getId()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7}, Lcom/upsight/android/marketing/internal/content/MarketingContentStore;->get(Ljava/lang/String;)Lcom/upsight/android/analytics/internal/action/Actionable;

    move-result-object v4

    check-cast v4, Lcom/upsight/android/marketing/internal/content/MarketingContent;

    .line 127
    .local v4, "nextContent":Lcom/upsight/android/marketing/internal/content/MarketingContent;
    if-eqz v2, :cond_0

    if-eqz v4, :cond_0

    invoke-virtual {v4}, Lcom/upsight/android/marketing/internal/content/MarketingContent;->isAvailable()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 128
    iget-object v6, p0, Lcom/upsight/android/marketing/internal/billboard/BillboardManagerImpl;->mMediators:Ljava/util/Map;

    invoke-virtual {v2}, Lcom/upsight/android/marketing/internal/content/MarketingContent;->getContentProvider()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/upsight/android/marketing/UpsightContentMediator;

    .line 129
    .local v3, "mediator":Lcom/upsight/android/marketing/UpsightContentMediator;
    iget-object v6, p0, Lcom/upsight/android/marketing/internal/billboard/BillboardManagerImpl;->mMediators:Ljava/util/Map;

    invoke-virtual {v4}, Lcom/upsight/android/marketing/internal/content/MarketingContent;->getContentProvider()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/upsight/android/marketing/UpsightContentMediator;

    .line 130
    .local v5, "nextMediator":Lcom/upsight/android/marketing/UpsightContentMediator;
    if-eqz v3, :cond_0

    invoke-interface {v3}, Lcom/upsight/android/marketing/UpsightContentMediator;->isAvailable()Z

    move-result v6

    if-eqz v6, :cond_0

    if-eqz v5, :cond_0

    invoke-interface {v5}, Lcom/upsight/android/marketing/UpsightContentMediator;->isAvailable()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 132
    invoke-virtual {v4}, Lcom/upsight/android/marketing/internal/content/MarketingContent;->markConsumed()V

    .line 135
    invoke-virtual {v0}, Lcom/upsight/android/marketing/internal/billboard/Billboard;->getHandler()Lcom/upsight/android/marketing/UpsightBillboard$Handler;

    move-result-object v6

    invoke-interface {v6}, Lcom/upsight/android/marketing/UpsightBillboard$Handler;->onNextView()V

    .line 138
    invoke-virtual {v0}, Lcom/upsight/android/marketing/internal/billboard/Billboard;->getMarketingContent()Lcom/upsight/android/marketing/internal/content/MarketingContent;

    move-result-object v6

    invoke-virtual {v6}, Lcom/upsight/android/marketing/internal/content/MarketingContent;->getContentView()Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 139
    .local v1, "billboardRootView":Landroid/view/ViewGroup;
    invoke-interface {v3, v2, v1}, Lcom/upsight/android/marketing/UpsightContentMediator;->hideContent(Lcom/upsight/android/marketing/internal/content/MarketingContent;Landroid/view/ViewGroup;)V

    .line 140
    invoke-interface {v5, v4, v1}, Lcom/upsight/android/marketing/UpsightContentMediator;->displayContent(Lcom/upsight/android/marketing/internal/content/MarketingContent;Landroid/view/ViewGroup;)V

    .line 143
    invoke-virtual {v0, v4}, Lcom/upsight/android/marketing/internal/billboard/Billboard;->setMarketingContent(Lcom/upsight/android/marketing/internal/content/MarketingContent;)V

    .line 144
    iget-object v6, p0, Lcom/upsight/android/marketing/internal/billboard/BillboardManagerImpl;->mFilledBillboards:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/upsight/android/marketing/internal/content/MarketingContent$ScopelessAvailabilityEvent;->getParentId()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 145
    iget-object v6, p0, Lcom/upsight/android/marketing/internal/billboard/BillboardManagerImpl;->mFilledBillboards:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/upsight/android/marketing/internal/content/MarketingContent$ScopelessAvailabilityEvent;->getId()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 148
    const-string v6, "content_displayed"

    invoke-virtual {v4, v6}, Lcom/upsight/android/marketing/internal/content/MarketingContent;->executeActions(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 153
    .end local v0    # "billboard":Lcom/upsight/android/marketing/internal/billboard/Billboard;
    .end local v1    # "billboardRootView":Landroid/view/ViewGroup;
    .end local v2    # "content":Lcom/upsight/android/marketing/internal/content/MarketingContent;
    .end local v3    # "mediator":Lcom/upsight/android/marketing/UpsightContentMediator;
    .end local v4    # "nextContent":Lcom/upsight/android/marketing/internal/content/MarketingContent;
    .end local v5    # "nextMediator":Lcom/upsight/android/marketing/UpsightContentMediator;
    :cond_0
    monitor-exit p0

    return-void

    .line 121
    :catchall_0
    move-exception v6

    monitor-exit p0

    throw v6
.end method

.method public onApplicationStatus(Lcom/upsight/android/analytics/internal/session/ApplicationStatus;)V
    .locals 6
    .param p1, "appStatus"    # Lcom/upsight/android/analytics/internal/session/ApplicationStatus;
    .annotation runtime Lcom/upsight/android/persistence/annotation/Created;
    .end annotation

    .annotation runtime Lcom/upsight/android/persistence/annotation/Updated;
    .end annotation

    .prologue
    .line 179
    invoke-virtual {p1}, Lcom/upsight/android/analytics/internal/session/ApplicationStatus;->getState()Lcom/upsight/android/analytics/internal/session/ApplicationStatus$State;

    move-result-object v4

    sget-object v5, Lcom/upsight/android/analytics/internal/session/ApplicationStatus$State;->BACKGROUND:Lcom/upsight/android/analytics/internal/session/ApplicationStatus$State;

    if-ne v4, v5, :cond_1

    .line 180
    iget-object v4, p0, Lcom/upsight/android/marketing/internal/billboard/BillboardManagerImpl;->mFilledBillboards:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    .line 181
    .local v3, "ids":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 182
    .local v2, "id":Ljava/lang/String;
    iget-object v4, p0, Lcom/upsight/android/marketing/internal/billboard/BillboardManagerImpl;->mContentStore:Lcom/upsight/android/marketing/internal/content/MarketingContentStore;

    invoke-interface {v4, v2}, Lcom/upsight/android/marketing/internal/content/MarketingContentStore;->get(Ljava/lang/String;)Lcom/upsight/android/analytics/internal/action/Actionable;

    move-result-object v0

    check-cast v0, Lcom/upsight/android/marketing/internal/content/MarketingContent;

    .line 183
    .local v0, "content":Lcom/upsight/android/marketing/internal/content/MarketingContent;
    if-eqz v0, :cond_0

    .line 184
    const-string v4, "app_backgrounded"

    invoke-virtual {v0, v4}, Lcom/upsight/android/marketing/internal/content/MarketingContent;->executeActions(Ljava/lang/String;)V

    goto :goto_0

    .line 188
    .end local v0    # "content":Lcom/upsight/android/marketing/internal/content/MarketingContent;
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "id":Ljava/lang/String;
    .end local v3    # "ids":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_1
    return-void
.end method

.method public declared-synchronized registerBillboard(Lcom/upsight/android/marketing/internal/billboard/Billboard;)Z
    .locals 6
    .param p1, "billboard"    # Lcom/upsight/android/marketing/internal/billboard/Billboard;

    .prologue
    .line 71
    monitor-enter p0

    const/4 v4, 0x0

    .line 72
    .local v4, "isSuccessful":Z
    if-eqz p1, :cond_1

    .line 73
    :try_start_0
    invoke-virtual {p1}, Lcom/upsight/android/marketing/internal/billboard/Billboard;->getScope()Ljava/lang/String;

    move-result-object v0

    .line 74
    .local v0, "billboardScope":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    invoke-virtual {p1}, Lcom/upsight/android/marketing/internal/billboard/Billboard;->getHandler()Lcom/upsight/android/marketing/UpsightBillboard$Handler;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 75
    iget-object v5, p0, Lcom/upsight/android/marketing/internal/billboard/BillboardManagerImpl;->mUnfilledBillboards:Ljava/util/Map;

    invoke-interface {v5, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-nez v5, :cond_1

    .line 76
    const/4 v4, 0x1

    .line 79
    iget-object v5, p0, Lcom/upsight/android/marketing/internal/billboard/BillboardManagerImpl;->mUnfilledBillboards:Ljava/util/Map;

    invoke-interface {v5, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    iget-object v5, p0, Lcom/upsight/android/marketing/internal/billboard/BillboardManagerImpl;->mContentStore:Lcom/upsight/android/marketing/internal/content/MarketingContentStore;

    invoke-interface {v5, v0}, Lcom/upsight/android/marketing/internal/content/MarketingContentStore;->getIdsForScope(Ljava/lang/String;)Ljava/util/Set;

    move-result-object v3

    .line 83
    .local v3, "ids":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 84
    .local v2, "id":Ljava/lang/String;
    invoke-direct {p0, v2, p1}, Lcom/upsight/android/marketing/internal/billboard/BillboardManagerImpl;->tryAttachBillboard(Ljava/lang/String;Lcom/upsight/android/marketing/internal/billboard/Billboard;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v5

    if-eqz v5, :cond_0

    .line 91
    .end local v0    # "billboardScope":Ljava/lang/String;
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "id":Ljava/lang/String;
    .end local v3    # "ids":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_1
    monitor-exit p0

    return v4

    .line 71
    :catchall_0
    move-exception v5

    monitor-exit p0

    throw v5
.end method

.method public registerContentMediator(Lcom/upsight/android/marketing/UpsightContentMediator;)Z
    .locals 3
    .param p1, "mediator"    # Lcom/upsight/android/marketing/UpsightContentMediator;

    .prologue
    .line 102
    const/4 v0, 0x0

    .line 103
    .local v0, "isSuccessful":Z
    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/upsight/android/marketing/UpsightContentMediator;->getContentProvider()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 104
    iget-object v1, p0, Lcom/upsight/android/marketing/internal/billboard/BillboardManagerImpl;->mMediators:Ljava/util/Map;

    invoke-interface {p1}, Lcom/upsight/android/marketing/UpsightContentMediator;->getContentProvider()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, p1, :cond_1

    const/4 v0, 0x1

    .line 106
    :cond_0
    :goto_0
    return v0

    .line 104
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public declared-synchronized unregisterBillboard(Lcom/upsight/android/marketing/internal/billboard/Billboard;)Z
    .locals 2
    .param p1, "billboard"    # Lcom/upsight/android/marketing/internal/billboard/Billboard;

    .prologue
    .line 96
    monitor-enter p0

    :try_start_0
    invoke-virtual {p1}, Lcom/upsight/android/marketing/internal/billboard/Billboard;->getScope()Ljava/lang/String;

    move-result-object v0

    .line 97
    .local v0, "scope":Ljava/lang/String;
    iget-object v1, p0, Lcom/upsight/android/marketing/internal/billboard/BillboardManagerImpl;->mUnfilledBillboards:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    monitor-exit p0

    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 96
    .end local v0    # "scope":Ljava/lang/String;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method
