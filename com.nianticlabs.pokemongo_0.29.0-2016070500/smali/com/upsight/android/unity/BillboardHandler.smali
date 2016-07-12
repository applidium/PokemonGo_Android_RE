.class public Lcom/upsight/android/unity/BillboardHandler;
.super Lcom/upsight/android/marketing/UpsightBillboardHandlers$DefaultHandler;
.source "BillboardHandler.java"


# static fields
.field protected static final TAG:Ljava/lang/String; = "UpsightBillboardHandler"


# instance fields
.field private mCurrentScope:Ljava/lang/String;

.field private mPlugin:Lcom/upsight/android/unity/UpsightPlugin;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/upsight/android/unity/UpsightPlugin;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "plugin"    # Lcom/upsight/android/unity/UpsightPlugin;

    .prologue
    .line 31
    invoke-direct {p0, p1}, Lcom/upsight/android/marketing/UpsightBillboardHandlers$DefaultHandler;-><init>(Landroid/app/Activity;)V

    .line 32
    iput-object p2, p0, Lcom/upsight/android/unity/BillboardHandler;->mPlugin:Lcom/upsight/android/unity/UpsightPlugin;

    .line 33
    return-void
.end method


# virtual methods
.method public onAttach(Ljava/lang/String;Lcom/upsight/android/marketing/UpsightBillboard$PresentationStyle;Ljava/util/Set;)Landroid/view/ViewGroup;
    .locals 3
    .param p1, "scope"    # Ljava/lang/String;
    .param p2, "presentation"    # Lcom/upsight/android/marketing/UpsightBillboard$PresentationStyle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/upsight/android/marketing/UpsightBillboard$PresentationStyle;",
            "Ljava/util/Set",
            "<",
            "Lcom/upsight/android/marketing/UpsightBillboard$Dimensions;",
            ">;)",
            "Landroid/view/ViewGroup;"
        }
    .end annotation

    .prologue
    .line 37
    .local p3, "dimensions":Ljava/util/Set;, "Ljava/util/Set<Lcom/upsight/android/marketing/UpsightBillboard$Dimensions;>;"
    iput-object p1, p0, Lcom/upsight/android/unity/BillboardHandler;->mCurrentScope:Ljava/lang/String;

    .line 38
    invoke-super {p0, p1, p2, p3}, Lcom/upsight/android/marketing/UpsightBillboardHandlers$DefaultHandler;->onAttach(Ljava/lang/String;Lcom/upsight/android/marketing/UpsightBillboard$PresentationStyle;Ljava/util/Set;)Landroid/view/ViewGroup;

    move-result-object v0

    .line 40
    .local v0, "viewGroup":Landroid/view/ViewGroup;
    if-eqz v0, :cond_0

    .line 41
    iget-object v1, p0, Lcom/upsight/android/unity/BillboardHandler;->mPlugin:Lcom/upsight/android/unity/UpsightPlugin;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/upsight/android/unity/UpsightPlugin;->setHasActiveBillboard(Z)V

    .line 42
    iget-object v1, p0, Lcom/upsight/android/unity/BillboardHandler;->mPlugin:Lcom/upsight/android/unity/UpsightPlugin;

    const-string v2, "onBillboardAppear"

    invoke-virtual {v1, v2, p1}, Lcom/upsight/android/unity/UpsightPlugin;->UnitySendMessage(Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    :cond_0
    return-object v0
.end method

.method public onDetach()V
    .locals 3

    .prologue
    .line 50
    invoke-super {p0}, Lcom/upsight/android/marketing/UpsightBillboardHandlers$DefaultHandler;->onDetach()V

    .line 51
    const-string v0, "UpsightBillboardHandler"

    const-string v1, "onDetach"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    iget-object v0, p0, Lcom/upsight/android/unity/BillboardHandler;->mPlugin:Lcom/upsight/android/unity/UpsightPlugin;

    const-string v1, "onBillboardDismiss"

    iget-object v2, p0, Lcom/upsight/android/unity/BillboardHandler;->mCurrentScope:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/upsight/android/unity/UpsightPlugin;->UnitySendMessage(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    iget-object v0, p0, Lcom/upsight/android/unity/BillboardHandler;->mPlugin:Lcom/upsight/android/unity/UpsightPlugin;

    iget-object v1, p0, Lcom/upsight/android/unity/BillboardHandler;->mCurrentScope:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/upsight/android/unity/UpsightPlugin;->removeBillboardFromMap(Ljava/lang/String;)V

    .line 56
    iget-object v0, p0, Lcom/upsight/android/unity/BillboardHandler;->mPlugin:Lcom/upsight/android/unity/UpsightPlugin;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/upsight/android/unity/UpsightPlugin;->setHasActiveBillboard(Z)V

    .line 57
    return-void
.end method

.method public onNextView()V
    .locals 2

    .prologue
    .line 61
    invoke-super {p0}, Lcom/upsight/android/marketing/UpsightBillboardHandlers$DefaultHandler;->onNextView()V

    .line 62
    const-string v0, "UpsightBillboardHandler"

    const-string v1, "onNextView"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    return-void
.end method

.method public onPurchases(Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/upsight/android/marketing/UpsightPurchase;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 67
    .local p1, "purchases":Ljava/util/List;, "Ljava/util/List<Lcom/upsight/android/marketing/UpsightPurchase;>;"
    invoke-super {p0, p1}, Lcom/upsight/android/marketing/UpsightBillboardHandlers$DefaultHandler;->onPurchases(Ljava/util/List;)V

    .line 69
    const-string v4, "UpsightBillboardHandler"

    const-string v5, "onPurchases"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/upsight/android/marketing/UpsightPurchase;

    .line 73
    .local v3, "p":Lcom/upsight/android/marketing/UpsightPurchase;
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 74
    .local v2, "json":Lorg/json/JSONObject;
    const-string v4, "productIdentifier"

    invoke-interface {v3}, Lcom/upsight/android/marketing/UpsightPurchase;->getProduct()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 75
    const-string v4, "quantity"

    invoke-interface {v3}, Lcom/upsight/android/marketing/UpsightPurchase;->getQuantity()I

    move-result v5

    invoke-virtual {v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 76
    const-string v4, "billboardScope"

    iget-object v5, p0, Lcom/upsight/android/unity/BillboardHandler;->mCurrentScope:Ljava/lang/String;

    invoke-virtual {v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 78
    iget-object v4, p0, Lcom/upsight/android/unity/BillboardHandler;->mPlugin:Lcom/upsight/android/unity/UpsightPlugin;

    const-string v5, "billboardDidReceivePurchase"

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/upsight/android/unity/UpsightPlugin;->UnitySendMessage(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 79
    .end local v2    # "json":Lorg/json/JSONObject;
    :catch_0
    move-exception v0

    .line 80
    .local v0, "e":Ljava/lang/Exception;
    const-string v4, "UpsightBillboardHandler"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Error creating JSON"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 83
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v3    # "p":Lcom/upsight/android/marketing/UpsightPurchase;
    :cond_0
    return-void
.end method

.method public onRewards(Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/upsight/android/marketing/UpsightReward;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 87
    .local p1, "rewards":Ljava/util/List;, "Ljava/util/List<Lcom/upsight/android/marketing/UpsightReward;>;"
    invoke-super {p0, p1}, Lcom/upsight/android/marketing/UpsightBillboardHandlers$DefaultHandler;->onRewards(Ljava/util/List;)V

    .line 89
    const-string v4, "UpsightBillboardHandler"

    const-string v5, "onRewards"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/upsight/android/marketing/UpsightReward;

    .line 93
    .local v3, "r":Lcom/upsight/android/marketing/UpsightReward;
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 94
    .local v2, "json":Lorg/json/JSONObject;
    const-string v4, "productIdentifier"

    invoke-interface {v3}, Lcom/upsight/android/marketing/UpsightReward;->getProduct()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 95
    const-string v4, "quantity"

    invoke-interface {v3}, Lcom/upsight/android/marketing/UpsightReward;->getQuantity()I

    move-result v5

    invoke-virtual {v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 96
    const-string v4, "signatureData"

    invoke-interface {v3}, Lcom/upsight/android/marketing/UpsightReward;->getSignatureData()Lorg/json/JSONObject;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 97
    const-string v4, "billboardScope"

    iget-object v5, p0, Lcom/upsight/android/unity/BillboardHandler;->mCurrentScope:Ljava/lang/String;

    invoke-virtual {v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 99
    iget-object v4, p0, Lcom/upsight/android/unity/BillboardHandler;->mPlugin:Lcom/upsight/android/unity/UpsightPlugin;

    const-string v5, "billboardDidReceiveReward"

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/upsight/android/unity/UpsightPlugin;->UnitySendMessage(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 100
    .end local v2    # "json":Lorg/json/JSONObject;
    :catch_0
    move-exception v0

    .line 101
    .local v0, "e":Ljava/lang/Exception;
    const-string v4, "UpsightBillboardHandler"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Error creating JSON"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 104
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v3    # "r":Lcom/upsight/android/marketing/UpsightReward;
    :cond_0
    return-void
.end method
