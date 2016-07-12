.class Lcom/nianticlabs/nia/iap/NianticBillingManager$2;
.super Ljava/lang/Object;
.source "NianticBillingManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nianticlabs/nia/iap/NianticBillingManager;->getPurchasableItems([Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nianticlabs/nia/iap/NianticBillingManager;

.field final synthetic val$items:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lcom/nianticlabs/nia/iap/NianticBillingManager;Ljava/util/ArrayList;)V
    .locals 0
    .param p1, "this$0"    # Lcom/nianticlabs/nia/iap/NianticBillingManager;

    .prologue
    .line 60
    iput-object p1, p0, Lcom/nianticlabs/nia/iap/NianticBillingManager$2;->this$0:Lcom/nianticlabs/nia/iap/NianticBillingManager;

    iput-object p2, p0, Lcom/nianticlabs/nia/iap/NianticBillingManager$2;->val$items:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 63
    iget-object v0, p0, Lcom/nianticlabs/nia/iap/NianticBillingManager$2;->this$0:Lcom/nianticlabs/nia/iap/NianticBillingManager;

    # getter for: Lcom/nianticlabs/nia/iap/NianticBillingManager;->inAppBillingProvider:Lcom/nianticlabs/nia/iap/InAppBillingProvider;
    invoke-static {v0}, Lcom/nianticlabs/nia/iap/NianticBillingManager;->access$100(Lcom/nianticlabs/nia/iap/NianticBillingManager;)Lcom/nianticlabs/nia/iap/InAppBillingProvider;

    move-result-object v0

    iget-object v1, p0, Lcom/nianticlabs/nia/iap/NianticBillingManager$2;->val$items:Ljava/util/ArrayList;

    invoke-interface {v0, v1}, Lcom/nianticlabs/nia/iap/InAppBillingProvider;->getPurchasableItems(Ljava/util/ArrayList;)V

    .line 64
    return-void
.end method
