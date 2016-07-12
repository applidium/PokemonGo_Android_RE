.class Lcom/nianticlabs/nia/iap/GoogleInAppBillingProvider$1$2;
.super Ljava/lang/Object;
.source "GoogleInAppBillingProvider.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nianticlabs/nia/iap/GoogleInAppBillingProvider$1;->onServiceDisconnected(Landroid/content/ComponentName;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/nianticlabs/nia/iap/GoogleInAppBillingProvider$1;


# direct methods
.method constructor <init>(Lcom/nianticlabs/nia/iap/GoogleInAppBillingProvider$1;)V
    .locals 0
    .param p1, "this$1"    # Lcom/nianticlabs/nia/iap/GoogleInAppBillingProvider$1;

    .prologue
    .line 458
    iput-object p1, p0, Lcom/nianticlabs/nia/iap/GoogleInAppBillingProvider$1$2;->this$1:Lcom/nianticlabs/nia/iap/GoogleInAppBillingProvider$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 462
    iget-object v0, p0, Lcom/nianticlabs/nia/iap/GoogleInAppBillingProvider$1$2;->this$1:Lcom/nianticlabs/nia/iap/GoogleInAppBillingProvider$1;

    iget-object v0, v0, Lcom/nianticlabs/nia/iap/GoogleInAppBillingProvider$1;->this$0:Lcom/nianticlabs/nia/iap/GoogleInAppBillingProvider;

    const/4 v1, 0x0

    # setter for: Lcom/nianticlabs/nia/iap/GoogleInAppBillingProvider;->billingService:Lcom/android/vending/billing/IInAppBillingService;
    invoke-static {v0, v1}, Lcom/nianticlabs/nia/iap/GoogleInAppBillingProvider;->access$002(Lcom/nianticlabs/nia/iap/GoogleInAppBillingProvider;Lcom/android/vending/billing/IInAppBillingService;)Lcom/android/vending/billing/IInAppBillingService;

    .line 463
    iget-object v0, p0, Lcom/nianticlabs/nia/iap/GoogleInAppBillingProvider$1$2;->this$1:Lcom/nianticlabs/nia/iap/GoogleInAppBillingProvider$1;

    iget-object v0, v0, Lcom/nianticlabs/nia/iap/GoogleInAppBillingProvider$1;->this$0:Lcom/nianticlabs/nia/iap/GoogleInAppBillingProvider;

    # invokes: Lcom/nianticlabs/nia/iap/GoogleInAppBillingProvider;->finalizeConnectionResult()V
    invoke-static {v0}, Lcom/nianticlabs/nia/iap/GoogleInAppBillingProvider;->access$800(Lcom/nianticlabs/nia/iap/GoogleInAppBillingProvider;)V

    .line 464
    return-void
.end method
