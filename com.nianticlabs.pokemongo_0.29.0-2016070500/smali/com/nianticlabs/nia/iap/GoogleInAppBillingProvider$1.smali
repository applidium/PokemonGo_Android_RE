.class Lcom/nianticlabs/nia/iap/GoogleInAppBillingProvider$1;
.super Ljava/lang/Object;
.source "GoogleInAppBillingProvider.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nianticlabs/nia/iap/GoogleInAppBillingProvider;->connectToBillingService()V
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
    .line 421
    iput-object p1, p0, Lcom/nianticlabs/nia/iap/GoogleInAppBillingProvider$1;->this$0:Lcom/nianticlabs/nia/iap/GoogleInAppBillingProvider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 1
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .prologue
    .line 424
    new-instance v0, Lcom/nianticlabs/nia/iap/GoogleInAppBillingProvider$1$1;

    invoke-direct {v0, p0, p2}, Lcom/nianticlabs/nia/iap/GoogleInAppBillingProvider$1$1;-><init>(Lcom/nianticlabs/nia/iap/GoogleInAppBillingProvider$1;Landroid/os/IBinder;)V

    invoke-static {v0}, Lcom/nianticlabs/nia/contextservice/ContextService;->runOnServiceHandler(Ljava/lang/Runnable;)V

    .line 455
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1
    .param p1, "name"    # Landroid/content/ComponentName;

    .prologue
    .line 458
    new-instance v0, Lcom/nianticlabs/nia/iap/GoogleInAppBillingProvider$1$2;

    invoke-direct {v0, p0}, Lcom/nianticlabs/nia/iap/GoogleInAppBillingProvider$1$2;-><init>(Lcom/nianticlabs/nia/iap/GoogleInAppBillingProvider$1;)V

    invoke-static {v0}, Lcom/nianticlabs/nia/contextservice/ContextService;->runOnServiceHandler(Ljava/lang/Runnable;)V

    .line 466
    return-void
.end method
