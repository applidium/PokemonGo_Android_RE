.class Lcom/nianticlabs/nia/iap/GoogleInAppBillingProvider$ProcessPurchasedItemsTask$1;
.super Ljava/lang/Object;
.source "GoogleInAppBillingProvider.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nianticlabs/nia/iap/GoogleInAppBillingProvider$ProcessPurchasedItemsTask;->onPostExecute(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/nianticlabs/nia/iap/GoogleInAppBillingProvider$ProcessPurchasedItemsTask;

.field final synthetic val$result:Landroid/os/Bundle;


# direct methods
.method constructor <init>(Lcom/nianticlabs/nia/iap/GoogleInAppBillingProvider$ProcessPurchasedItemsTask;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "this$1"    # Lcom/nianticlabs/nia/iap/GoogleInAppBillingProvider$ProcessPurchasedItemsTask;

    .prologue
    .line 328
    iput-object p1, p0, Lcom/nianticlabs/nia/iap/GoogleInAppBillingProvider$ProcessPurchasedItemsTask$1;->this$1:Lcom/nianticlabs/nia/iap/GoogleInAppBillingProvider$ProcessPurchasedItemsTask;

    iput-object p2, p0, Lcom/nianticlabs/nia/iap/GoogleInAppBillingProvider$ProcessPurchasedItemsTask$1;->val$result:Landroid/os/Bundle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    .line 331
    iget-object v3, p0, Lcom/nianticlabs/nia/iap/GoogleInAppBillingProvider$ProcessPurchasedItemsTask$1;->val$result:Landroid/os/Bundle;

    const-string v4, "INAPP_PURCHASE_DATA_LIST"

    .line 332
    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    .line 333
    .local v1, "purchaseDataList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v3, p0, Lcom/nianticlabs/nia/iap/GoogleInAppBillingProvider$ProcessPurchasedItemsTask$1;->val$result:Landroid/os/Bundle;

    const-string v4, "INAPP_DATA_SIGNATURE_LIST"

    .line 334
    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    .line 337
    .local v2, "signatureList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_0

    .line 338
    iget-object v3, p0, Lcom/nianticlabs/nia/iap/GoogleInAppBillingProvider$ProcessPurchasedItemsTask$1;->this$1:Lcom/nianticlabs/nia/iap/GoogleInAppBillingProvider$ProcessPurchasedItemsTask;

    iget-object v3, v3, Lcom/nianticlabs/nia/iap/GoogleInAppBillingProvider$ProcessPurchasedItemsTask;->this$0:Lcom/nianticlabs/nia/iap/GoogleInAppBillingProvider;

    # operator++ for: Lcom/nianticlabs/nia/iap/GoogleInAppBillingProvider;->transactionsInProgress:I
    invoke-static {v3}, Lcom/nianticlabs/nia/iap/GoogleInAppBillingProvider;->access$608(Lcom/nianticlabs/nia/iap/GoogleInAppBillingProvider;)I

    .line 339
    iget-object v3, p0, Lcom/nianticlabs/nia/iap/GoogleInAppBillingProvider$ProcessPurchasedItemsTask$1;->this$1:Lcom/nianticlabs/nia/iap/GoogleInAppBillingProvider$ProcessPurchasedItemsTask;

    iget-object v5, v3, Lcom/nianticlabs/nia/iap/GoogleInAppBillingProvider$ProcessPurchasedItemsTask;->this$0:Lcom/nianticlabs/nia/iap/GoogleInAppBillingProvider;

    const/4 v6, -0x1

    const/4 v7, 0x0

    .line 342
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 343
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 339
    # invokes: Lcom/nianticlabs/nia/iap/GoogleInAppBillingProvider;->processPurchaseResult(IILjava/lang/String;Ljava/lang/String;)V
    invoke-static {v5, v6, v7, v3, v4}, Lcom/nianticlabs/nia/iap/GoogleInAppBillingProvider;->access$700(Lcom/nianticlabs/nia/iap/GoogleInAppBillingProvider;IILjava/lang/String;Ljava/lang/String;)V

    .line 337
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 345
    :cond_0
    iget-object v3, p0, Lcom/nianticlabs/nia/iap/GoogleInAppBillingProvider$ProcessPurchasedItemsTask$1;->this$1:Lcom/nianticlabs/nia/iap/GoogleInAppBillingProvider$ProcessPurchasedItemsTask;

    iget-object v3, v3, Lcom/nianticlabs/nia/iap/GoogleInAppBillingProvider$ProcessPurchasedItemsTask;->this$0:Lcom/nianticlabs/nia/iap/GoogleInAppBillingProvider;

    # invokes: Lcom/nianticlabs/nia/iap/GoogleInAppBillingProvider;->finalizeConnectionResult()V
    invoke-static {v3}, Lcom/nianticlabs/nia/iap/GoogleInAppBillingProvider;->access$800(Lcom/nianticlabs/nia/iap/GoogleInAppBillingProvider;)V

    .line 346
    iget-object v3, p0, Lcom/nianticlabs/nia/iap/GoogleInAppBillingProvider$ProcessPurchasedItemsTask$1;->this$1:Lcom/nianticlabs/nia/iap/GoogleInAppBillingProvider$ProcessPurchasedItemsTask;

    iget-object v3, v3, Lcom/nianticlabs/nia/iap/GoogleInAppBillingProvider$ProcessPurchasedItemsTask;->this$0:Lcom/nianticlabs/nia/iap/GoogleInAppBillingProvider;

    # invokes: Lcom/nianticlabs/nia/iap/GoogleInAppBillingProvider;->maybeDisconnectBillingService()V
    invoke-static {v3}, Lcom/nianticlabs/nia/iap/GoogleInAppBillingProvider;->access$900(Lcom/nianticlabs/nia/iap/GoogleInAppBillingProvider;)V

    .line 347
    return-void
.end method
