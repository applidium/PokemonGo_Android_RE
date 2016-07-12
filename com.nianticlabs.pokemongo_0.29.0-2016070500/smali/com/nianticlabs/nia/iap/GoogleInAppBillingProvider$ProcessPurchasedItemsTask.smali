.class Lcom/nianticlabs/nia/iap/GoogleInAppBillingProvider$ProcessPurchasedItemsTask;
.super Landroid/os/AsyncTask;
.source "GoogleInAppBillingProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nianticlabs/nia/iap/GoogleInAppBillingProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ProcessPurchasedItemsTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Landroid/os/Bundle;",
        ">;"
    }
.end annotation


# instance fields
.field private final billingService:Lcom/android/vending/billing/IInAppBillingService;

.field final synthetic this$0:Lcom/nianticlabs/nia/iap/GoogleInAppBillingProvider;


# direct methods
.method public constructor <init>(Lcom/nianticlabs/nia/iap/GoogleInAppBillingProvider;)V
    .locals 1

    .prologue
    .line 264
    iput-object p1, p0, Lcom/nianticlabs/nia/iap/GoogleInAppBillingProvider$ProcessPurchasedItemsTask;->this$0:Lcom/nianticlabs/nia/iap/GoogleInAppBillingProvider;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 267
    # getter for: Lcom/nianticlabs/nia/iap/GoogleInAppBillingProvider;->billingService:Lcom/android/vending/billing/IInAppBillingService;
    invoke-static {p1}, Lcom/nianticlabs/nia/iap/GoogleInAppBillingProvider;->access$000(Lcom/nianticlabs/nia/iap/GoogleInAppBillingProvider;)Lcom/android/vending/billing/IInAppBillingService;

    move-result-object v0

    iput-object v0, p0, Lcom/nianticlabs/nia/iap/GoogleInAppBillingProvider$ProcessPurchasedItemsTask;->billingService:Lcom/android/vending/billing/IInAppBillingService;

    .line 268
    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Landroid/os/Bundle;
    .locals 12
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    .line 272
    const/4 v0, 0x0

    .line 273
    .local v0, "accumulatedPurchaseDataList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v1, 0x0

    .line 275
    .local v1, "accumulatedSignatureList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v2, 0x0

    .line 277
    .local v2, "continuationToken":Ljava/lang/String;
    :cond_0
    :try_start_0
    iget-object v8, p0, Lcom/nianticlabs/nia/iap/GoogleInAppBillingProvider$ProcessPurchasedItemsTask;->billingService:Lcom/android/vending/billing/IInAppBillingService;

    const/4 v9, 0x3

    iget-object v10, p0, Lcom/nianticlabs/nia/iap/GoogleInAppBillingProvider$ProcessPurchasedItemsTask;->this$0:Lcom/nianticlabs/nia/iap/GoogleInAppBillingProvider;

    .line 278
    # getter for: Lcom/nianticlabs/nia/iap/GoogleInAppBillingProvider;->packageName:Ljava/lang/String;
    invoke-static {v10}, Lcom/nianticlabs/nia/iap/GoogleInAppBillingProvider;->access$100(Lcom/nianticlabs/nia/iap/GoogleInAppBillingProvider;)Ljava/lang/String;

    move-result-object v10

    const-string v11, "inapp"

    .line 277
    invoke-interface {v8, v9, v10, v11, v2}, Lcom/android/vending/billing/IInAppBillingService;->getPurchases(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v3

    .line 280
    .local v3, "ownedItems":Landroid/os/Bundle;
    # invokes: Lcom/nianticlabs/nia/iap/GoogleInAppBillingProvider;->getResponseCodeFromBundle(Landroid/os/Bundle;)I
    invoke-static {v3}, Lcom/nianticlabs/nia/iap/GoogleInAppBillingProvider;->access$500(Landroid/os/Bundle;)I

    move-result v5

    .line 281
    .local v5, "responseCode":I
    const-string v8, "INAPP_PURCHASE_DATA_LIST"

    .line 282
    invoke-virtual {v3, v8}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v4

    .line 283
    .local v4, "purchaseDataList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v8, "INAPP_DATA_SIGNATURE_LIST"

    .line 284
    invoke-virtual {v3, v8}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v7

    .line 286
    .local v7, "signatureList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v8, 0x5

    if-ne v5, v8, :cond_2

    .line 313
    .end local v3    # "ownedItems":Landroid/os/Bundle;
    .end local v4    # "purchaseDataList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v5    # "responseCode":I
    .end local v7    # "signatureList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_1
    :goto_0
    if-nez v0, :cond_4

    .line 314
    const/4 v6, 0x0

    .line 320
    :goto_1
    return-object v6

    .line 291
    .restart local v3    # "ownedItems":Landroid/os/Bundle;
    .restart local v4    # "purchaseDataList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v5    # "responseCode":I
    .restart local v7    # "signatureList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_2
    if-nez v5, :cond_1

    const-string v8, "INAPP_PURCHASE_DATA_LIST"

    .line 292
    invoke-virtual {v3, v8}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_1

    const-string v8, "INAPP_DATA_SIGNATURE_LIST"

    .line 293
    invoke-virtual {v3, v8}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 294
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v8

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-ne v8, v9, :cond_1

    .line 299
    if-nez v0, :cond_3

    .line 300
    move-object v0, v4

    .line 301
    move-object v1, v7

    .line 307
    :goto_2
    const-string v8, "INAPP_CONTINUATION_TOKEN"

    invoke-virtual {v3, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 308
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v8

    if-nez v8, :cond_0

    goto :goto_0

    .line 303
    :cond_3
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 304
    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 309
    .end local v3    # "ownedItems":Landroid/os/Bundle;
    .end local v4    # "purchaseDataList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v5    # "responseCode":I
    .end local v7    # "signatureList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :catch_0
    move-exception v8

    goto :goto_0

    .line 317
    :cond_4
    new-instance v6, Landroid/os/Bundle;

    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    .line 318
    .local v6, "result":Landroid/os/Bundle;
    const-string v8, "INAPP_PURCHASE_DATA_LIST"

    invoke-virtual {v6, v8, v0}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 319
    const-string v8, "INAPP_DATA_SIGNATURE_LIST"

    invoke-virtual {v6, v8, v1}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    goto :goto_1
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 261
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/nianticlabs/nia/iap/GoogleInAppBillingProvider$ProcessPurchasedItemsTask;->doInBackground([Ljava/lang/Void;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "result"    # Landroid/os/Bundle;

    .prologue
    .line 327
    if-eqz p1, :cond_0

    .line 328
    new-instance v0, Lcom/nianticlabs/nia/iap/GoogleInAppBillingProvider$ProcessPurchasedItemsTask$1;

    invoke-direct {v0, p0, p1}, Lcom/nianticlabs/nia/iap/GoogleInAppBillingProvider$ProcessPurchasedItemsTask$1;-><init>(Lcom/nianticlabs/nia/iap/GoogleInAppBillingProvider$ProcessPurchasedItemsTask;Landroid/os/Bundle;)V

    invoke-static {v0}, Lcom/nianticlabs/nia/contextservice/ContextService;->runOnServiceHandler(Ljava/lang/Runnable;)V

    .line 353
    :goto_0
    return-void

    .line 350
    :cond_0
    iget-object v0, p0, Lcom/nianticlabs/nia/iap/GoogleInAppBillingProvider$ProcessPurchasedItemsTask;->this$0:Lcom/nianticlabs/nia/iap/GoogleInAppBillingProvider;

    # invokes: Lcom/nianticlabs/nia/iap/GoogleInAppBillingProvider;->finalizeConnectionResult()V
    invoke-static {v0}, Lcom/nianticlabs/nia/iap/GoogleInAppBillingProvider;->access$800(Lcom/nianticlabs/nia/iap/GoogleInAppBillingProvider;)V

    .line 351
    iget-object v0, p0, Lcom/nianticlabs/nia/iap/GoogleInAppBillingProvider$ProcessPurchasedItemsTask;->this$0:Lcom/nianticlabs/nia/iap/GoogleInAppBillingProvider;

    # invokes: Lcom/nianticlabs/nia/iap/GoogleInAppBillingProvider;->maybeDisconnectBillingService()V
    invoke-static {v0}, Lcom/nianticlabs/nia/iap/GoogleInAppBillingProvider;->access$900(Lcom/nianticlabs/nia/iap/GoogleInAppBillingProvider;)V

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 261
    check-cast p1, Landroid/os/Bundle;

    invoke-virtual {p0, p1}, Lcom/nianticlabs/nia/iap/GoogleInAppBillingProvider$ProcessPurchasedItemsTask;->onPostExecute(Landroid/os/Bundle;)V

    return-void
.end method
