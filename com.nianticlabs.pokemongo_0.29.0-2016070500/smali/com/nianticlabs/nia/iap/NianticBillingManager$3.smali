.class Lcom/nianticlabs/nia/iap/NianticBillingManager$3;
.super Ljava/lang/Object;
.source "NianticBillingManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nianticlabs/nia/iap/NianticBillingManager;->purchaseVendorItem(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nianticlabs/nia/iap/NianticBillingManager;

.field final synthetic val$item:Ljava/lang/String;

.field final synthetic val$userIdToken:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/nianticlabs/nia/iap/NianticBillingManager;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/nianticlabs/nia/iap/NianticBillingManager;

    .prologue
    .line 70
    iput-object p1, p0, Lcom/nianticlabs/nia/iap/NianticBillingManager$3;->this$0:Lcom/nianticlabs/nia/iap/NianticBillingManager;

    iput-object p2, p0, Lcom/nianticlabs/nia/iap/NianticBillingManager$3;->val$item:Ljava/lang/String;

    iput-object p3, p0, Lcom/nianticlabs/nia/iap/NianticBillingManager$3;->val$userIdToken:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 73
    iget-object v0, p0, Lcom/nianticlabs/nia/iap/NianticBillingManager$3;->this$0:Lcom/nianticlabs/nia/iap/NianticBillingManager;

    # getter for: Lcom/nianticlabs/nia/iap/NianticBillingManager;->inAppBillingProvider:Lcom/nianticlabs/nia/iap/InAppBillingProvider;
    invoke-static {v0}, Lcom/nianticlabs/nia/iap/NianticBillingManager;->access$100(Lcom/nianticlabs/nia/iap/NianticBillingManager;)Lcom/nianticlabs/nia/iap/InAppBillingProvider;

    move-result-object v0

    iget-object v1, p0, Lcom/nianticlabs/nia/iap/NianticBillingManager$3;->val$item:Ljava/lang/String;

    iget-object v2, p0, Lcom/nianticlabs/nia/iap/NianticBillingManager$3;->val$userIdToken:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/nianticlabs/nia/iap/InAppBillingProvider;->purchaseItem(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    return-void
.end method
