.class public Lcom/nianticlabs/nia/iap/NianticBillingManager;
.super Lcom/nianticlabs/nia/contextservice/ContextService;
.source "NianticBillingManager.java"

# interfaces
.implements Lcom/nianticlabs/nia/iap/InAppBillingProvider$Delegate;


# instance fields
.field private inAppBillingProvider:Lcom/nianticlabs/nia/iap/InAppBillingProvider;

.field private initializing:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;J)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "nativeClassPointer"    # J

    .prologue
    .line 15
    invoke-direct {p0, p1, p2, p3}, Lcom/nianticlabs/nia/contextservice/ContextService;-><init>(Landroid/content/Context;J)V

    .line 16
    new-instance v0, Lcom/nianticlabs/nia/iap/GoogleInAppBillingProvider;

    invoke-direct {v0, p1}, Lcom/nianticlabs/nia/iap/GoogleInAppBillingProvider;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/nianticlabs/nia/iap/NianticBillingManager;->inAppBillingProvider:Lcom/nianticlabs/nia/iap/InAppBillingProvider;

    .line 17
    return-void
.end method

.method static synthetic access$000(Lcom/nianticlabs/nia/iap/NianticBillingManager;)V
    .locals 0
    .param p0, "x0"    # Lcom/nianticlabs/nia/iap/NianticBillingManager;

    .prologue
    .line 10
    invoke-direct {p0}, Lcom/nianticlabs/nia/iap/NianticBillingManager;->nativeInitializeCallback()V

    return-void
.end method

.method static synthetic access$100(Lcom/nianticlabs/nia/iap/NianticBillingManager;)Lcom/nianticlabs/nia/iap/InAppBillingProvider;
    .locals 1
    .param p0, "x0"    # Lcom/nianticlabs/nia/iap/NianticBillingManager;

    .prologue
    .line 10
    iget-object v0, p0, Lcom/nianticlabs/nia/iap/NianticBillingManager;->inAppBillingProvider:Lcom/nianticlabs/nia/iap/InAppBillingProvider;

    return-object v0
.end method

.method static synthetic access$200(Lcom/nianticlabs/nia/iap/NianticBillingManager;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/nianticlabs/nia/iap/NianticBillingManager;

    .prologue
    .line 10
    iget-object v0, p0, Lcom/nianticlabs/nia/iap/NianticBillingManager;->callbackLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$300(Lcom/nianticlabs/nia/iap/NianticBillingManager;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/nianticlabs/nia/iap/NianticBillingManager;
    .param p1, "x1"    # Z

    .prologue
    .line 10
    invoke-direct {p0, p1}, Lcom/nianticlabs/nia/iap/NianticBillingManager;->nativeOnConnectionStateChanged(Z)V

    return-void
.end method

.method private native nativeInitializeCallback()V
.end method

.method private native nativeOnConnectionStateChanged(Z)V
.end method

.method private native nativeProcessReceipt(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
.end method

.method private native nativePurchasableItemsResult([Lcom/nianticlabs/nia/iap/PurchasableItemDetails;)V
.end method

.method private native nativePurchaseResult(I)V
.end method

.method private native nativeRecordPurchase(ZLjava/lang/String;IFLjava/lang/String;Ljava/lang/String;)V
.end method


# virtual methods
.method public ProcessReceipt(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 2
    .param p1, "receiptBase64"    # Ljava/lang/String;
    .param p2, "receiptSignature"    # Ljava/lang/String;
    .param p3, "currency"    # Ljava/lang/String;
    .param p4, "priceE6"    # I

    .prologue
    .line 123
    iget-object v1, p0, Lcom/nianticlabs/nia/iap/NianticBillingManager;->callbackLock:Ljava/lang/Object;

    monitor-enter v1

    .line 124
    :try_start_0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/nianticlabs/nia/iap/NianticBillingManager;->nativeProcessReceipt(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 125
    monitor-exit v1

    .line 126
    return-void

    .line 125
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getPurchasableItems([Ljava/lang/String;)V
    .locals 2
    .param p1, "purchasableItems"    # [Ljava/lang/String;

    .prologue
    .line 58
    new-instance v0, Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 60
    .local v0, "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v1, Lcom/nianticlabs/nia/iap/NianticBillingManager$2;

    invoke-direct {v1, p0, v0}, Lcom/nianticlabs/nia/iap/NianticBillingManager$2;-><init>(Lcom/nianticlabs/nia/iap/NianticBillingManager;Ljava/util/ArrayList;)V

    invoke-static {v1}, Lcom/nianticlabs/nia/contextservice/ContextService;->runOnServiceHandler(Ljava/lang/Runnable;)V

    .line 66
    return-void
.end method

.method public initialize()V
    .locals 1

    .prologue
    .line 42
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nianticlabs/nia/iap/NianticBillingManager;->initializing:Z

    .line 43
    iget-object v0, p0, Lcom/nianticlabs/nia/iap/NianticBillingManager;->inAppBillingProvider:Lcom/nianticlabs/nia/iap/InAppBillingProvider;

    invoke-interface {v0, p0}, Lcom/nianticlabs/nia/iap/InAppBillingProvider;->setDelegate(Lcom/nianticlabs/nia/iap/InAppBillingProvider$Delegate;)V

    .line 44
    new-instance v0, Lcom/nianticlabs/nia/iap/NianticBillingManager$1;

    invoke-direct {v0, p0}, Lcom/nianticlabs/nia/iap/NianticBillingManager$1;-><init>(Lcom/nianticlabs/nia/iap/NianticBillingManager;)V

    invoke-static {v0}, Lcom/nianticlabs/nia/contextservice/ContextService;->runOnServiceHandler(Ljava/lang/Runnable;)V

    .line 50
    return-void
.end method

.method public isBillingAvailable()Z
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/nianticlabs/nia/iap/NianticBillingManager;->inAppBillingProvider:Lcom/nianticlabs/nia/iap/InAppBillingProvider;

    invoke-interface {v0}, Lcom/nianticlabs/nia/iap/InAppBillingProvider;->isBillingAvailable()Z

    move-result v0

    return v0
.end method

.method public isTransactionInProgress()Z
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/nianticlabs/nia/iap/NianticBillingManager;->inAppBillingProvider:Lcom/nianticlabs/nia/iap/InAppBillingProvider;

    invoke-interface {v0}, Lcom/nianticlabs/nia/iap/InAppBillingProvider;->isTransactionInProgress()Z

    move-result v0

    return v0
.end method

.method public onConnectionStateChanged(Z)V
    .locals 1
    .param p1, "connected"    # Z

    .prologue
    .line 90
    new-instance v0, Lcom/nianticlabs/nia/iap/NianticBillingManager$5;

    invoke-direct {v0, p0, p1}, Lcom/nianticlabs/nia/iap/NianticBillingManager$5;-><init>(Lcom/nianticlabs/nia/iap/NianticBillingManager;Z)V

    invoke-static {v0}, Lcom/nianticlabs/nia/contextservice/ContextService;->runOnServiceHandler(Ljava/lang/Runnable;)V

    .line 98
    return-void
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/nianticlabs/nia/iap/NianticBillingManager;->inAppBillingProvider:Lcom/nianticlabs/nia/iap/InAppBillingProvider;

    invoke-interface {v0}, Lcom/nianticlabs/nia/iap/InAppBillingProvider;->onPause()V

    .line 30
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/nianticlabs/nia/iap/NianticBillingManager;->inAppBillingProvider:Lcom/nianticlabs/nia/iap/InAppBillingProvider;

    invoke-interface {v0}, Lcom/nianticlabs/nia/iap/InAppBillingProvider;->onResume()V

    .line 35
    return-void
.end method

.method public onStart()V
    .locals 0

    .prologue
    .line 21
    return-void
.end method

.method public onStop()V
    .locals 0

    .prologue
    .line 25
    return-void
.end method

.method public purchasableItemsResult(Ljava/util/Collection;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/nianticlabs/nia/iap/PurchasableItemDetails;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 103
    .local p1, "items":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/nianticlabs/nia/iap/PurchasableItemDetails;>;"
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v4

    new-array v3, v4, [Lcom/nianticlabs/nia/iap/PurchasableItemDetails;

    .line 104
    .local v3, "item_array":[Lcom/nianticlabs/nia/iap/PurchasableItemDetails;
    const/4 v0, 0x0

    .line 105
    .local v0, "index":I
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/nianticlabs/nia/iap/PurchasableItemDetails;

    .line 106
    .local v2, "item":Lcom/nianticlabs/nia/iap/PurchasableItemDetails;
    add-int/lit8 v1, v0, 0x1

    .end local v0    # "index":I
    .local v1, "index":I
    aput-object v2, v3, v0

    move v0, v1

    .line 107
    .end local v1    # "index":I
    .restart local v0    # "index":I
    goto :goto_0

    .line 108
    .end local v2    # "item":Lcom/nianticlabs/nia/iap/PurchasableItemDetails;
    :cond_0
    iget-object v5, p0, Lcom/nianticlabs/nia/iap/NianticBillingManager;->callbackLock:Ljava/lang/Object;

    monitor-enter v5

    .line 109
    :try_start_0
    invoke-direct {p0, v3}, Lcom/nianticlabs/nia/iap/NianticBillingManager;->nativePurchasableItemsResult([Lcom/nianticlabs/nia/iap/PurchasableItemDetails;)V

    .line 110
    monitor-exit v5

    .line 111
    return-void

    .line 110
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4
.end method

.method public purchaseResult(Lcom/nianticlabs/nia/iap/PurchaseResult;)V
    .locals 2
    .param p1, "result"    # Lcom/nianticlabs/nia/iap/PurchaseResult;

    .prologue
    .line 115
    iget-object v1, p0, Lcom/nianticlabs/nia/iap/NianticBillingManager;->callbackLock:Ljava/lang/Object;

    monitor-enter v1

    .line 116
    :try_start_0
    invoke-virtual {p1}, Lcom/nianticlabs/nia/iap/PurchaseResult;->ordinal()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/nianticlabs/nia/iap/NianticBillingManager;->nativePurchaseResult(I)V

    .line 117
    monitor-exit v1

    .line 118
    return-void

    .line 117
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public purchaseVendorItem(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "item"    # Ljava/lang/String;
    .param p2, "userIdToken"    # Ljava/lang/String;

    .prologue
    .line 70
    new-instance v0, Lcom/nianticlabs/nia/iap/NianticBillingManager$3;

    invoke-direct {v0, p0, p1, p2}, Lcom/nianticlabs/nia/iap/NianticBillingManager$3;-><init>(Lcom/nianticlabs/nia/iap/NianticBillingManager;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/nianticlabs/nia/contextservice/ContextService;->runOnServiceHandler(Ljava/lang/Runnable;)V

    .line 76
    return-void
.end method

.method public redeemReceiptResult(ZLjava/lang/String;)V
    .locals 1
    .param p1, "success"    # Z
    .param p2, "transactionToken"    # Ljava/lang/String;

    .prologue
    .line 80
    new-instance v0, Lcom/nianticlabs/nia/iap/NianticBillingManager$4;

    invoke-direct {v0, p0, p1, p2}, Lcom/nianticlabs/nia/iap/NianticBillingManager$4;-><init>(Lcom/nianticlabs/nia/iap/NianticBillingManager;ZLjava/lang/String;)V

    invoke-static {v0}, Lcom/nianticlabs/nia/contextservice/ContextService;->runOnServiceHandler(Ljava/lang/Runnable;)V

    .line 86
    return-void
.end method
