.class public Lcom/nianticlabs/nia/iap/PurchaseActivity;
.super Landroid/app/Activity;
.source "PurchaseActivity.java"


# static fields
.field public static final REQUEST_PURCHASE_RESULT:I = 0x2719

.field private static TAG:Ljava/lang/String;


# instance fields
.field private billingProvider:Lcom/nianticlabs/nia/iap/GoogleInAppBillingProvider;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 14
    const-string v0, "PurchaseActivity"

    sput-object v0, Lcom/nianticlabs/nia/iap/PurchaseActivity;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 3
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 50
    packed-switch p1, :pswitch_data_0

    .line 55
    sget-object v0, Lcom/nianticlabs/nia/iap/PurchaseActivity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unandled requestCode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    :goto_0
    invoke-virtual {p0}, Lcom/nianticlabs/nia/iap/PurchaseActivity;->finish()V

    .line 59
    return-void

    .line 52
    :pswitch_0
    iget-object v0, p0, Lcom/nianticlabs/nia/iap/PurchaseActivity;->billingProvider:Lcom/nianticlabs/nia/iap/GoogleInAppBillingProvider;

    invoke-virtual {v0, p2, p3}, Lcom/nianticlabs/nia/iap/GoogleInAppBillingProvider;->forwardedOnActivityResult(ILandroid/content/Intent;)V

    goto :goto_0

    .line 50
    nop

    :pswitch_data_0
    .packed-switch 0x2719
        :pswitch_0
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 19
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 21
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/nianticlabs/nia/iap/PurchaseActivity;->billingProvider:Lcom/nianticlabs/nia/iap/GoogleInAppBillingProvider;

    .line 23
    invoke-static {}, Lcom/nianticlabs/nia/iap/GoogleInAppBillingProvider;->getInstance()Ljava/lang/ref/WeakReference;

    move-result-object v0

    .line 24
    .local v0, "weakGoogleInAppBillingProvider":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lcom/nianticlabs/nia/iap/GoogleInAppBillingProvider;>;"
    if-eqz v0, :cond_0

    .line 25
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/nianticlabs/nia/iap/GoogleInAppBillingProvider;

    iput-object v1, p0, Lcom/nianticlabs/nia/iap/PurchaseActivity;->billingProvider:Lcom/nianticlabs/nia/iap/GoogleInAppBillingProvider;

    .line 28
    :cond_0
    iget-object v1, p0, Lcom/nianticlabs/nia/iap/PurchaseActivity;->billingProvider:Lcom/nianticlabs/nia/iap/GoogleInAppBillingProvider;

    if-nez v1, :cond_1

    .line 29
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Unable to locate GoogleInAppBillingProvider"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 31
    :cond_1
    return-void
.end method

.method protected onResume()V
    .locals 4

    .prologue
    .line 35
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 37
    invoke-static {p0}, Lcom/google/android/gms/common/GooglePlayServicesUtil;->isGooglePlayServicesAvailable(Landroid/content/Context;)I

    move-result v0

    .line 38
    .local v0, "resultCode":I
    if-eqz v0, :cond_0

    .line 39
    sget-object v1, Lcom/nianticlabs/nia/iap/PurchaseActivity;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Google Play Services not available: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 40
    invoke-virtual {p0}, Lcom/nianticlabs/nia/iap/PurchaseActivity;->finish()V

    .line 45
    :goto_0
    return-void

    .line 44
    :cond_0
    iget-object v1, p0, Lcom/nianticlabs/nia/iap/PurchaseActivity;->billingProvider:Lcom/nianticlabs/nia/iap/GoogleInAppBillingProvider;

    invoke-virtual {v1, p0}, Lcom/nianticlabs/nia/iap/GoogleInAppBillingProvider;->startBuyIntent(Landroid/app/Activity;)V

    goto :goto_0
.end method
