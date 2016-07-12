.class Lcom/nianticlabs/nia/iap/GoogleInAppBillingProvider$1$1;
.super Ljava/lang/Object;
.source "GoogleInAppBillingProvider.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nianticlabs/nia/iap/GoogleInAppBillingProvider$1;->onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/nianticlabs/nia/iap/GoogleInAppBillingProvider$1;

.field final synthetic val$service:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Lcom/nianticlabs/nia/iap/GoogleInAppBillingProvider$1;Landroid/os/IBinder;)V
    .locals 0
    .param p1, "this$1"    # Lcom/nianticlabs/nia/iap/GoogleInAppBillingProvider$1;

    .prologue
    .line 424
    iput-object p1, p0, Lcom/nianticlabs/nia/iap/GoogleInAppBillingProvider$1$1;->this$1:Lcom/nianticlabs/nia/iap/GoogleInAppBillingProvider$1;

    iput-object p2, p0, Lcom/nianticlabs/nia/iap/GoogleInAppBillingProvider$1$1;->val$service:Landroid/os/IBinder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    const/4 v3, 0x0

    .line 428
    iget-object v2, p0, Lcom/nianticlabs/nia/iap/GoogleInAppBillingProvider$1$1;->this$1:Lcom/nianticlabs/nia/iap/GoogleInAppBillingProvider$1;

    iget-object v2, v2, Lcom/nianticlabs/nia/iap/GoogleInAppBillingProvider$1;->this$0:Lcom/nianticlabs/nia/iap/GoogleInAppBillingProvider;

    # getter for: Lcom/nianticlabs/nia/iap/GoogleInAppBillingProvider;->serviceConnection:Landroid/content/ServiceConnection;
    invoke-static {v2}, Lcom/nianticlabs/nia/iap/GoogleInAppBillingProvider;->access$1000(Lcom/nianticlabs/nia/iap/GoogleInAppBillingProvider;)Landroid/content/ServiceConnection;

    move-result-object v2

    if-nez v2, :cond_0

    .line 430
    iget-object v2, p0, Lcom/nianticlabs/nia/iap/GoogleInAppBillingProvider$1$1;->this$1:Lcom/nianticlabs/nia/iap/GoogleInAppBillingProvider$1;

    iget-object v2, v2, Lcom/nianticlabs/nia/iap/GoogleInAppBillingProvider$1;->this$0:Lcom/nianticlabs/nia/iap/GoogleInAppBillingProvider;

    # invokes: Lcom/nianticlabs/nia/iap/GoogleInAppBillingProvider;->finalizeConnectionResult()V
    invoke-static {v2}, Lcom/nianticlabs/nia/iap/GoogleInAppBillingProvider;->access$800(Lcom/nianticlabs/nia/iap/GoogleInAppBillingProvider;)V

    .line 453
    :goto_0
    return-void

    .line 435
    :cond_0
    iget-object v2, p0, Lcom/nianticlabs/nia/iap/GoogleInAppBillingProvider$1$1;->this$1:Lcom/nianticlabs/nia/iap/GoogleInAppBillingProvider$1;

    iget-object v2, v2, Lcom/nianticlabs/nia/iap/GoogleInAppBillingProvider$1;->this$0:Lcom/nianticlabs/nia/iap/GoogleInAppBillingProvider;

    iget-object v4, p0, Lcom/nianticlabs/nia/iap/GoogleInAppBillingProvider$1$1;->val$service:Landroid/os/IBinder;

    invoke-static {v4}, Lcom/android/vending/billing/IInAppBillingService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/vending/billing/IInAppBillingService;

    move-result-object v4

    # setter for: Lcom/nianticlabs/nia/iap/GoogleInAppBillingProvider;->billingService:Lcom/android/vending/billing/IInAppBillingService;
    invoke-static {v2, v4}, Lcom/nianticlabs/nia/iap/GoogleInAppBillingProvider;->access$002(Lcom/nianticlabs/nia/iap/GoogleInAppBillingProvider;Lcom/android/vending/billing/IInAppBillingService;)Lcom/android/vending/billing/IInAppBillingService;

    .line 437
    :try_start_0
    iget-object v2, p0, Lcom/nianticlabs/nia/iap/GoogleInAppBillingProvider$1$1;->this$1:Lcom/nianticlabs/nia/iap/GoogleInAppBillingProvider$1;

    iget-object v2, v2, Lcom/nianticlabs/nia/iap/GoogleInAppBillingProvider$1;->this$0:Lcom/nianticlabs/nia/iap/GoogleInAppBillingProvider;

    # getter for: Lcom/nianticlabs/nia/iap/GoogleInAppBillingProvider;->billingService:Lcom/android/vending/billing/IInAppBillingService;
    invoke-static {v2}, Lcom/nianticlabs/nia/iap/GoogleInAppBillingProvider;->access$000(Lcom/nianticlabs/nia/iap/GoogleInAppBillingProvider;)Lcom/android/vending/billing/IInAppBillingService;

    move-result-object v2

    const/4 v4, 0x3

    iget-object v5, p0, Lcom/nianticlabs/nia/iap/GoogleInAppBillingProvider$1$1;->this$1:Lcom/nianticlabs/nia/iap/GoogleInAppBillingProvider$1;

    iget-object v5, v5, Lcom/nianticlabs/nia/iap/GoogleInAppBillingProvider$1;->this$0:Lcom/nianticlabs/nia/iap/GoogleInAppBillingProvider;

    .line 438
    # getter for: Lcom/nianticlabs/nia/iap/GoogleInAppBillingProvider;->packageName:Ljava/lang/String;
    invoke-static {v5}, Lcom/nianticlabs/nia/iap/GoogleInAppBillingProvider;->access$100(Lcom/nianticlabs/nia/iap/GoogleInAppBillingProvider;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "inapp"

    .line 437
    invoke-interface {v2, v4, v5, v6}, Lcom/android/vending/billing/IInAppBillingService;->isBillingSupported(ILjava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 439
    .local v1, "response":I
    iget-object v2, p0, Lcom/nianticlabs/nia/iap/GoogleInAppBillingProvider$1$1;->this$1:Lcom/nianticlabs/nia/iap/GoogleInAppBillingProvider$1;

    iget-object v4, v2, Lcom/nianticlabs/nia/iap/GoogleInAppBillingProvider$1;->this$0:Lcom/nianticlabs/nia/iap/GoogleInAppBillingProvider;

    if-nez v1, :cond_1

    const/4 v2, 0x1

    :goto_1
    # setter for: Lcom/nianticlabs/nia/iap/GoogleInAppBillingProvider;->purchaseSupported:Z
    invoke-static {v4, v2}, Lcom/nianticlabs/nia/iap/GoogleInAppBillingProvider;->access$1102(Lcom/nianticlabs/nia/iap/GoogleInAppBillingProvider;Z)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 447
    .end local v1    # "response":I
    :goto_2
    iget-object v2, p0, Lcom/nianticlabs/nia/iap/GoogleInAppBillingProvider$1$1;->this$1:Lcom/nianticlabs/nia/iap/GoogleInAppBillingProvider$1;

    iget-object v2, v2, Lcom/nianticlabs/nia/iap/GoogleInAppBillingProvider$1;->this$0:Lcom/nianticlabs/nia/iap/GoogleInAppBillingProvider;

    # getter for: Lcom/nianticlabs/nia/iap/GoogleInAppBillingProvider;->currentPurchasableItems:Ljava/util/Map;
    invoke-static {v2}, Lcom/nianticlabs/nia/iap/GoogleInAppBillingProvider;->access$200(Lcom/nianticlabs/nia/iap/GoogleInAppBillingProvider;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v2

    if-lez v2, :cond_2

    .line 448
    new-instance v2, Lcom/nianticlabs/nia/iap/GoogleInAppBillingProvider$ProcessPurchasedItemsTask;

    iget-object v4, p0, Lcom/nianticlabs/nia/iap/GoogleInAppBillingProvider$1$1;->this$1:Lcom/nianticlabs/nia/iap/GoogleInAppBillingProvider$1;

    iget-object v4, v4, Lcom/nianticlabs/nia/iap/GoogleInAppBillingProvider$1;->this$0:Lcom/nianticlabs/nia/iap/GoogleInAppBillingProvider;

    invoke-direct {v2, v4}, Lcom/nianticlabs/nia/iap/GoogleInAppBillingProvider$ProcessPurchasedItemsTask;-><init>(Lcom/nianticlabs/nia/iap/GoogleInAppBillingProvider;)V

    new-array v3, v3, [Ljava/lang/Void;

    invoke-virtual {v2, v3}, Lcom/nianticlabs/nia/iap/GoogleInAppBillingProvider$ProcessPurchasedItemsTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    .restart local v1    # "response":I
    :cond_1
    move v2, v3

    .line 439
    goto :goto_1

    .line 442
    .end local v1    # "response":I
    :catch_0
    move-exception v0

    .line 444
    .local v0, "e":Landroid/os/RemoteException;
    iget-object v2, p0, Lcom/nianticlabs/nia/iap/GoogleInAppBillingProvider$1$1;->this$1:Lcom/nianticlabs/nia/iap/GoogleInAppBillingProvider$1;

    iget-object v2, v2, Lcom/nianticlabs/nia/iap/GoogleInAppBillingProvider$1;->this$0:Lcom/nianticlabs/nia/iap/GoogleInAppBillingProvider;

    # setter for: Lcom/nianticlabs/nia/iap/GoogleInAppBillingProvider;->purchaseSupported:Z
    invoke-static {v2, v3}, Lcom/nianticlabs/nia/iap/GoogleInAppBillingProvider;->access$1102(Lcom/nianticlabs/nia/iap/GoogleInAppBillingProvider;Z)Z

    goto :goto_2

    .line 451
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_2
    iget-object v2, p0, Lcom/nianticlabs/nia/iap/GoogleInAppBillingProvider$1$1;->this$1:Lcom/nianticlabs/nia/iap/GoogleInAppBillingProvider$1;

    iget-object v2, v2, Lcom/nianticlabs/nia/iap/GoogleInAppBillingProvider$1;->this$0:Lcom/nianticlabs/nia/iap/GoogleInAppBillingProvider;

    # invokes: Lcom/nianticlabs/nia/iap/GoogleInAppBillingProvider;->finalizeConnectionResult()V
    invoke-static {v2}, Lcom/nianticlabs/nia/iap/GoogleInAppBillingProvider;->access$800(Lcom/nianticlabs/nia/iap/GoogleInAppBillingProvider;)V

    goto :goto_0
.end method
