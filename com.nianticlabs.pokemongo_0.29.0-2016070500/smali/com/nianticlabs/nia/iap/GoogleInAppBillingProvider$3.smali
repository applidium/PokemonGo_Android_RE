.class Lcom/nianticlabs/nia/iap/GoogleInAppBillingProvider$3;
.super Ljava/lang/Object;
.source "GoogleInAppBillingProvider.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nianticlabs/nia/iap/GoogleInAppBillingProvider;->forwardedOnActivityResult(ILandroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nianticlabs/nia/iap/GoogleInAppBillingProvider;

.field final synthetic val$dataSignature:Ljava/lang/String;

.field final synthetic val$purchaseData:Ljava/lang/String;

.field final synthetic val$responseCode:I

.field final synthetic val$resultCode:I


# direct methods
.method constructor <init>(Lcom/nianticlabs/nia/iap/GoogleInAppBillingProvider;IILjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/nianticlabs/nia/iap/GoogleInAppBillingProvider;

    .prologue
    .line 610
    iput-object p1, p0, Lcom/nianticlabs/nia/iap/GoogleInAppBillingProvider$3;->this$0:Lcom/nianticlabs/nia/iap/GoogleInAppBillingProvider;

    iput p2, p0, Lcom/nianticlabs/nia/iap/GoogleInAppBillingProvider$3;->val$resultCode:I

    iput p3, p0, Lcom/nianticlabs/nia/iap/GoogleInAppBillingProvider$3;->val$responseCode:I

    iput-object p4, p0, Lcom/nianticlabs/nia/iap/GoogleInAppBillingProvider$3;->val$purchaseData:Ljava/lang/String;

    iput-object p5, p0, Lcom/nianticlabs/nia/iap/GoogleInAppBillingProvider$3;->val$dataSignature:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 613
    iget-object v0, p0, Lcom/nianticlabs/nia/iap/GoogleInAppBillingProvider$3;->this$0:Lcom/nianticlabs/nia/iap/GoogleInAppBillingProvider;

    iget v1, p0, Lcom/nianticlabs/nia/iap/GoogleInAppBillingProvider$3;->val$resultCode:I

    iget v2, p0, Lcom/nianticlabs/nia/iap/GoogleInAppBillingProvider$3;->val$responseCode:I

    iget-object v3, p0, Lcom/nianticlabs/nia/iap/GoogleInAppBillingProvider$3;->val$purchaseData:Ljava/lang/String;

    iget-object v4, p0, Lcom/nianticlabs/nia/iap/GoogleInAppBillingProvider$3;->val$dataSignature:Ljava/lang/String;

    # invokes: Lcom/nianticlabs/nia/iap/GoogleInAppBillingProvider;->processPurchaseResult(IILjava/lang/String;Ljava/lang/String;)V
    invoke-static {v0, v1, v2, v3, v4}, Lcom/nianticlabs/nia/iap/GoogleInAppBillingProvider;->access$700(Lcom/nianticlabs/nia/iap/GoogleInAppBillingProvider;IILjava/lang/String;Ljava/lang/String;)V

    .line 614
    return-void
.end method
