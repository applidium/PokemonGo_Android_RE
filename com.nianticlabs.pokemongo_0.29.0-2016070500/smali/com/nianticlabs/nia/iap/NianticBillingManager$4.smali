.class Lcom/nianticlabs/nia/iap/NianticBillingManager$4;
.super Ljava/lang/Object;
.source "NianticBillingManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nianticlabs/nia/iap/NianticBillingManager;->redeemReceiptResult(ZLjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nianticlabs/nia/iap/NianticBillingManager;

.field final synthetic val$success:Z

.field final synthetic val$transactionToken:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/nianticlabs/nia/iap/NianticBillingManager;ZLjava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/nianticlabs/nia/iap/NianticBillingManager;

    .prologue
    .line 80
    iput-object p1, p0, Lcom/nianticlabs/nia/iap/NianticBillingManager$4;->this$0:Lcom/nianticlabs/nia/iap/NianticBillingManager;

    iput-boolean p2, p0, Lcom/nianticlabs/nia/iap/NianticBillingManager$4;->val$success:Z

    iput-object p3, p0, Lcom/nianticlabs/nia/iap/NianticBillingManager$4;->val$transactionToken:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 83
    iget-object v0, p0, Lcom/nianticlabs/nia/iap/NianticBillingManager$4;->this$0:Lcom/nianticlabs/nia/iap/NianticBillingManager;

    # getter for: Lcom/nianticlabs/nia/iap/NianticBillingManager;->inAppBillingProvider:Lcom/nianticlabs/nia/iap/InAppBillingProvider;
    invoke-static {v0}, Lcom/nianticlabs/nia/iap/NianticBillingManager;->access$100(Lcom/nianticlabs/nia/iap/NianticBillingManager;)Lcom/nianticlabs/nia/iap/InAppBillingProvider;

    move-result-object v0

    iget-boolean v1, p0, Lcom/nianticlabs/nia/iap/NianticBillingManager$4;->val$success:Z

    iget-object v2, p0, Lcom/nianticlabs/nia/iap/NianticBillingManager$4;->val$transactionToken:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/nianticlabs/nia/iap/InAppBillingProvider;->onProcessedGoogleBillingTransaction(ZLjava/lang/String;)V

    .line 84
    return-void
.end method
