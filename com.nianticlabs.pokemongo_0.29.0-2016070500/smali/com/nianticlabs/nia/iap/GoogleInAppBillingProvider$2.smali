.class Lcom/nianticlabs/nia/iap/GoogleInAppBillingProvider$2;
.super Ljava/lang/Object;
.source "GoogleInAppBillingProvider.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nianticlabs/nia/iap/GoogleInAppBillingProvider;->launchPurchaseActivity(Landroid/app/PendingIntent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nianticlabs/nia/iap/GoogleInAppBillingProvider;


# direct methods
.method constructor <init>(Lcom/nianticlabs/nia/iap/GoogleInAppBillingProvider;)V
    .locals 0
    .param p1, "this$0"    # Lcom/nianticlabs/nia/iap/GoogleInAppBillingProvider;

    .prologue
    .line 568
    iput-object p1, p0, Lcom/nianticlabs/nia/iap/GoogleInAppBillingProvider$2;->this$0:Lcom/nianticlabs/nia/iap/GoogleInAppBillingProvider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 570
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/nianticlabs/nia/iap/GoogleInAppBillingProvider$2;->this$0:Lcom/nianticlabs/nia/iap/GoogleInAppBillingProvider;

    # getter for: Lcom/nianticlabs/nia/iap/GoogleInAppBillingProvider;->context:Landroid/content/Context;
    invoke-static {v1}, Lcom/nianticlabs/nia/iap/GoogleInAppBillingProvider;->access$1200(Lcom/nianticlabs/nia/iap/GoogleInAppBillingProvider;)Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/nianticlabs/nia/iap/PurchaseActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 571
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/nianticlabs/nia/iap/GoogleInAppBillingProvider$2;->this$0:Lcom/nianticlabs/nia/iap/GoogleInAppBillingProvider;

    # getter for: Lcom/nianticlabs/nia/iap/GoogleInAppBillingProvider;->context:Landroid/content/Context;
    invoke-static {v1}, Lcom/nianticlabs/nia/iap/GoogleInAppBillingProvider;->access$1200(Lcom/nianticlabs/nia/iap/GoogleInAppBillingProvider;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 572
    return-void
.end method
