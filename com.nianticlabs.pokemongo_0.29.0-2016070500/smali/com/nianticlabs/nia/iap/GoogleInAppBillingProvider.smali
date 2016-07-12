.class public Lcom/nianticlabs/nia/iap/GoogleInAppBillingProvider;
.super Ljava/lang/Object;
.source "GoogleInAppBillingProvider.java"

# interfaces
.implements Lcom/nianticlabs/nia/iap/InAppBillingProvider;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nianticlabs/nia/iap/GoogleInAppBillingProvider$ProcessPurchasedItemsTask;,
        Lcom/nianticlabs/nia/iap/GoogleInAppBillingProvider$ConsumeItemTask;,
        Lcom/nianticlabs/nia/iap/GoogleInAppBillingProvider$GetSkuDetailsTask;,
        Lcom/nianticlabs/nia/iap/GoogleInAppBillingProvider$Logger;
    }
.end annotation


# static fields
.field private static final BILLING_RESPONSE_RESULT_BILLING_UNAVAILABLE:I = 0x3

.field private static final BILLING_RESPONSE_RESULT_DEVELOPER_ERROR:I = 0x5

.field private static final BILLING_RESPONSE_RESULT_ERROR:I = 0x6

.field private static final BILLING_RESPONSE_RESULT_ITEM_ALREADY_OWNED:I = 0x7

.field private static final BILLING_RESPONSE_RESULT_ITEM_NOT_OWNED:I = 0x8

.field private static final BILLING_RESPONSE_RESULT_ITEM_UNAVAILABLE:I = 0x4

.field private static final BILLING_RESPONSE_RESULT_NOT_FOUND:I = 0x3e8

.field private static final BILLING_RESPONSE_RESULT_OK:I = 0x0

.field private static final BILLING_RESPONSE_RESULT_USER_CANCELED:I = 0x1

.field private static final BILLING_SERVICE_VERSION:I = 0x3

.field static final ENABLE_VERBOSE_LOGS:Z = false

.field private static final GET_SKU_DETAILS_ITEM_LIST:Ljava/lang/String; = "ITEM_ID_LIST"

.field private static final INAPP_CONTINUATION_TOKEN:Ljava/lang/String; = "INAPP_CONTINUATION_TOKEN"

.field private static final ITEM_TYPE_INAPP:Ljava/lang/String; = "inapp"

.field private static final PACKAGE_NAME_BASE:Ljava/lang/String; = "com.niantic"

.field private static final RESPONSE_BUY_INTENT:Ljava/lang/String; = "BUY_INTENT"

.field private static final RESPONSE_CODE:Ljava/lang/String; = "RESPONSE_CODE"

.field private static final RESPONSE_GET_SKU_DETAILS_LIST:Ljava/lang/String; = "DETAILS_LIST"

.field private static final RESPONSE_INAPP_PURCHASE_DATA:Ljava/lang/String; = "INAPP_PURCHASE_DATA"

.field private static final RESPONSE_INAPP_PURCHASE_DATA_LIST:Ljava/lang/String; = "INAPP_PURCHASE_DATA_LIST"

.field private static final RESPONSE_INAPP_SIGNATURE:Ljava/lang/String; = "INAPP_DATA_SIGNATURE"

.field private static final RESPONSE_INAPP_SIGNATURE_LIST:Ljava/lang/String; = "INAPP_DATA_SIGNATURE_LIST"

.field private static final UNKNOWN_CURRENCY_STRING:Ljava/lang/String; = "UNKNOWN"

.field private static instance:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/nianticlabs/nia/iap/GoogleInAppBillingProvider;",
            ">;"
        }
    .end annotation
.end field

.field private static final log:Lcom/nianticlabs/nia/iap/GoogleInAppBillingProvider$Logger;


# instance fields
.field private billingService:Lcom/android/vending/billing/IInAppBillingService;

.field private clientConnected:Z

.field private connectionInProgress:Z

.field private final context:Landroid/content/Context;

.field private currentPurchasableItems:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/nianticlabs/nia/iap/GetSkuDetailsResponseItem;",
            ">;"
        }
    .end annotation
.end field

.field private delegate:Lcom/nianticlabs/nia/iap/InAppBillingProvider$Delegate;

.field private itemBeingPurchased:Ljava/lang/String;

.field private final packageName:Ljava/lang/String;

.field private pendingIntent:Landroid/app/PendingIntent;

.field private purchaseSupported:Z

.field private serviceConnection:Landroid/content/ServiceConnection;

.field private transactionsInProgress:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 81
    const/4 v0, 0x0

    sput-object v0, Lcom/nianticlabs/nia/iap/GoogleInAppBillingProvider;->instance:Ljava/lang/ref/WeakReference;

    .line 116
    new-instance v0, Lcom/nianticlabs/nia/iap/GoogleInAppBillingProvider$Logger;

    const-class v1, Lcom/nianticlabs/nia/iap/GoogleInAppBillingProvider;

    invoke-direct {v0, v1}, Lcom/nianticlabs/nia/iap/GoogleInAppBillingProvider$Logger;-><init>(Ljava/lang/Class;)V

    sput-object v0, Lcom/nianticlabs/nia/iap/GoogleInAppBillingProvider;->log:Lcom/nianticlabs/nia/iap/GoogleInAppBillingProvider$Logger;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 358
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 123
    iput-object v2, p0, Lcom/nianticlabs/nia/iap/GoogleInAppBillingProvider;->serviceConnection:Landroid/content/ServiceConnection;

    .line 124
    iput-object v2, p0, Lcom/nianticlabs/nia/iap/GoogleInAppBillingProvider;->billingService:Lcom/android/vending/billing/IInAppBillingService;

    .line 125
    iput-boolean v1, p0, Lcom/nianticlabs/nia/iap/GoogleInAppBillingProvider;->purchaseSupported:Z

    .line 127
    iput v1, p0, Lcom/nianticlabs/nia/iap/GoogleInAppBillingProvider;->transactionsInProgress:I

    .line 128
    iput-boolean v1, p0, Lcom/nianticlabs/nia/iap/GoogleInAppBillingProvider;->connectionInProgress:Z

    .line 129
    iput-boolean v1, p0, Lcom/nianticlabs/nia/iap/GoogleInAppBillingProvider;->clientConnected:Z

    .line 130
    iput-object v2, p0, Lcom/nianticlabs/nia/iap/GoogleInAppBillingProvider;->itemBeingPurchased:Ljava/lang/String;

    .line 359
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 360
    .local v0, "checkedPackageName":Ljava/lang/String;
    const-string v1, "com.niantic"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 362
    const-string v1, "ERROR"

    iput-object v1, p0, Lcom/nianticlabs/nia/iap/GoogleInAppBillingProvider;->packageName:Ljava/lang/String;

    .line 367
    :goto_0
    iput-object p1, p0, Lcom/nianticlabs/nia/iap/GoogleInAppBillingProvider;->context:Landroid/content/Context;

    .line 368
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/nianticlabs/nia/iap/GoogleInAppBillingProvider;->currentPurchasableItems:Ljava/util/Map;

    .line 369
    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    sput-object v1, Lcom/nianticlabs/nia/iap/GoogleInAppBillingProvider;->instance:Ljava/lang/ref/WeakReference;

    .line 371
    invoke-direct {p0}, Lcom/nianticlabs/nia/iap/GoogleInAppBillingProvider;->connectToBillingService()V

    .line 372
    return-void

    .line 364
    :cond_0
    iput-object v0, p0, Lcom/nianticlabs/nia/iap/GoogleInAppBillingProvider;->packageName:Ljava/lang/String;

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/nianticlabs/nia/iap/GoogleInAppBillingProvider;)Lcom/android/vending/billing/IInAppBillingService;
    .locals 1
    .param p0, "x0"    # Lcom/nianticlabs/nia/iap/GoogleInAppBillingProvider;

    .prologue
    .line 33
    iget-object v0, p0, Lcom/nianticlabs/nia/iap/GoogleInAppBillingProvider;->billingService:Lcom/android/vending/billing/IInAppBillingService;

    return-object v0
.end method

.method static synthetic access$002(Lcom/nianticlabs/nia/iap/GoogleInAppBillingProvider;Lcom/android/vending/billing/IInAppBillingService;)Lcom/android/vending/billing/IInAppBillingService;
    .locals 0
    .param p0, "x0"    # Lcom/nianticlabs/nia/iap/GoogleInAppBillingProvider;
    .param p1, "x1"    # Lcom/android/vending/billing/IInAppBillingService;

    .prologue
    .line 33
    iput-object p1, p0, Lcom/nianticlabs/nia/iap/GoogleInAppBillingProvider;->billingService:Lcom/android/vending/billing/IInAppBillingService;

    return-object p1
.end method

.method static synthetic access$100(Lcom/nianticlabs/nia/iap/GoogleInAppBillingProvider;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/nianticlabs/nia/iap/GoogleInAppBillingProvider;

    .prologue
    .line 33
    iget-object v0, p0, Lcom/nianticlabs/nia/iap/GoogleInAppBillingProvider;->packageName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/nianticlabs/nia/iap/GoogleInAppBillingProvider;)Landroid/content/ServiceConnection;
    .locals 1
    .param p0, "x0"    # Lcom/nianticlabs/nia/iap/GoogleInAppBillingProvider;

    .prologue
    .line 33
    iget-object v0, p0, Lcom/nianticlabs/nia/iap/GoogleInAppBillingProvider;->serviceConnection:Landroid/content/ServiceConnection;

    return-object v0
.end method

.method static synthetic access$1102(Lcom/nianticlabs/nia/iap/GoogleInAppBillingProvider;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/nianticlabs/nia/iap/GoogleInAppBillingProvider;
    .param p1, "x1"    # Z

    .prologue
    .line 33
    iput-boolean p1, p0, Lcom/nianticlabs/nia/iap/GoogleInAppBillingProvider;->purchaseSupported:Z

    return p1
.end method

.method static synthetic access$1200(Lcom/nianticlabs/nia/iap/GoogleInAppBillingProvider;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/nianticlabs/nia/iap/GoogleInAppBillingProvider;

    .prologue
    .line 33
    iget-object v0, p0, Lcom/nianticlabs/nia/iap/GoogleInAppBillingProvider;->context:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200(Lcom/nianticlabs/nia/iap/GoogleInAppBillingProvider;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Lcom/nianticlabs/nia/iap/GoogleInAppBillingProvider;

    .prologue
    .line 33
    iget-object v0, p0, Lcom/nianticlabs/nia/iap/GoogleInAppBillingProvider;->currentPurchasableItems:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$300(Lcom/nianticlabs/nia/iap/GoogleInAppBillingProvider;Ljava/util/Collection;)V
    .locals 0
    .param p0, "x0"    # Lcom/nianticlabs/nia/iap/GoogleInAppBillingProvider;
    .param p1, "x1"    # Ljava/util/Collection;

    .prologue
    .line 33
    invoke-direct {p0, p1}, Lcom/nianticlabs/nia/iap/GoogleInAppBillingProvider;->notifyPurchasableItemsResult(Ljava/util/Collection;)V

    return-void
.end method

.method static synthetic access$400(Lcom/nianticlabs/nia/iap/GoogleInAppBillingProvider;Lcom/nianticlabs/nia/iap/PurchaseResult;)V
    .locals 0
    .param p0, "x0"    # Lcom/nianticlabs/nia/iap/GoogleInAppBillingProvider;
    .param p1, "x1"    # Lcom/nianticlabs/nia/iap/PurchaseResult;

    .prologue
    .line 33
    invoke-direct {p0, p1}, Lcom/nianticlabs/nia/iap/GoogleInAppBillingProvider;->finalizePurchaseResult(Lcom/nianticlabs/nia/iap/PurchaseResult;)V

    return-void
.end method

.method static synthetic access$500(Landroid/os/Bundle;)I
    .locals 1
    .param p0, "x0"    # Landroid/os/Bundle;

    .prologue
    .line 33
    invoke-static {p0}, Lcom/nianticlabs/nia/iap/GoogleInAppBillingProvider;->getResponseCodeFromBundle(Landroid/os/Bundle;)I

    move-result v0

    return v0
.end method

.method static synthetic access$608(Lcom/nianticlabs/nia/iap/GoogleInAppBillingProvider;)I
    .locals 2
    .param p0, "x0"    # Lcom/nianticlabs/nia/iap/GoogleInAppBillingProvider;

    .prologue
    .line 33
    iget v0, p0, Lcom/nianticlabs/nia/iap/GoogleInAppBillingProvider;->transactionsInProgress:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/nianticlabs/nia/iap/GoogleInAppBillingProvider;->transactionsInProgress:I

    return v0
.end method

.method static synthetic access$700(Lcom/nianticlabs/nia/iap/GoogleInAppBillingProvider;IILjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/nianticlabs/nia/iap/GoogleInAppBillingProvider;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # Ljava/lang/String;
    .param p4, "x4"    # Ljava/lang/String;

    .prologue
    .line 33
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/nianticlabs/nia/iap/GoogleInAppBillingProvider;->processPurchaseResult(IILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$800(Lcom/nianticlabs/nia/iap/GoogleInAppBillingProvider;)V
    .locals 0
    .param p0, "x0"    # Lcom/nianticlabs/nia/iap/GoogleInAppBillingProvider;

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/nianticlabs/nia/iap/GoogleInAppBillingProvider;->finalizeConnectionResult()V

    return-void
.end method

.method static synthetic access$900(Lcom/nianticlabs/nia/iap/GoogleInAppBillingProvider;)V
    .locals 0
    .param p0, "x0"    # Lcom/nianticlabs/nia/iap/GoogleInAppBillingProvider;

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/nianticlabs/nia/iap/GoogleInAppBillingProvider;->maybeDisconnectBillingService()V

    return-void
.end method

.method private connectToBillingService()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 409
    iget-boolean v1, p0, Lcom/nianticlabs/nia/iap/GoogleInAppBillingProvider;->connectionInProgress:Z

    if-eqz v1, :cond_0

    .line 475
    :goto_0
    return-void

    .line 413
    :cond_0
    iget-object v1, p0, Lcom/nianticlabs/nia/iap/GoogleInAppBillingProvider;->billingService:Lcom/android/vending/billing/IInAppBillingService;

    if-eqz v1, :cond_1

    .line 416
    invoke-direct {p0}, Lcom/nianticlabs/nia/iap/GoogleInAppBillingProvider;->finalizeConnectionResult()V

    goto :goto_0

    .line 420
    :cond_1
    iput-boolean v3, p0, Lcom/nianticlabs/nia/iap/GoogleInAppBillingProvider;->connectionInProgress:Z

    .line 421
    new-instance v1, Lcom/nianticlabs/nia/iap/GoogleInAppBillingProvider$1;

    invoke-direct {v1, p0}, Lcom/nianticlabs/nia/iap/GoogleInAppBillingProvider$1;-><init>(Lcom/nianticlabs/nia/iap/GoogleInAppBillingProvider;)V

    iput-object v1, p0, Lcom/nianticlabs/nia/iap/GoogleInAppBillingProvider;->serviceConnection:Landroid/content/ServiceConnection;

    .line 469
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.vending.billing.InAppBillingService.BIND"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 470
    .local v0, "serviceIntent":Landroid/content/Intent;
    const-string v1, "com.android.vending"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 471
    iget-object v1, p0, Lcom/nianticlabs/nia/iap/GoogleInAppBillingProvider;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 472
    invoke-direct {p0}, Lcom/nianticlabs/nia/iap/GoogleInAppBillingProvider;->finalizeConnectionResult()V

    .line 474
    :cond_2
    iget-object v1, p0, Lcom/nianticlabs/nia/iap/GoogleInAppBillingProvider;->context:Landroid/content/Context;

    iget-object v2, p0, Lcom/nianticlabs/nia/iap/GoogleInAppBillingProvider;->serviceConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    goto :goto_0
.end method

.method private finalizeConnectionResult()V
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 756
    iput-boolean v0, p0, Lcom/nianticlabs/nia/iap/GoogleInAppBillingProvider;->connectionInProgress:Z

    .line 757
    iget-object v1, p0, Lcom/nianticlabs/nia/iap/GoogleInAppBillingProvider;->delegate:Lcom/nianticlabs/nia/iap/InAppBillingProvider$Delegate;

    if-eqz v1, :cond_1

    .line 758
    iget-object v1, p0, Lcom/nianticlabs/nia/iap/GoogleInAppBillingProvider;->delegate:Lcom/nianticlabs/nia/iap/InAppBillingProvider$Delegate;

    iget-object v2, p0, Lcom/nianticlabs/nia/iap/GoogleInAppBillingProvider;->billingService:Lcom/android/vending/billing/IInAppBillingService;

    if-eqz v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    invoke-interface {v1, v0}, Lcom/nianticlabs/nia/iap/InAppBillingProvider$Delegate;->onConnectionStateChanged(Z)V

    .line 760
    :cond_1
    return-void
.end method

.method private finalizePurchaseResult(Lcom/nianticlabs/nia/iap/PurchaseResult;)V
    .locals 1
    .param p1, "result"    # Lcom/nianticlabs/nia/iap/PurchaseResult;

    .prologue
    .line 770
    iget v0, p0, Lcom/nianticlabs/nia/iap/GoogleInAppBillingProvider;->transactionsInProgress:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/nianticlabs/nia/iap/GoogleInAppBillingProvider;->transactionsInProgress:I

    .line 771
    invoke-direct {p0}, Lcom/nianticlabs/nia/iap/GoogleInAppBillingProvider;->maybeDisconnectBillingService()V

    .line 775
    iget-object v0, p0, Lcom/nianticlabs/nia/iap/GoogleInAppBillingProvider;->delegate:Lcom/nianticlabs/nia/iap/InAppBillingProvider$Delegate;

    if-eqz v0, :cond_0

    .line 776
    iget-object v0, p0, Lcom/nianticlabs/nia/iap/GoogleInAppBillingProvider;->delegate:Lcom/nianticlabs/nia/iap/InAppBillingProvider$Delegate;

    invoke-interface {v0, p1}, Lcom/nianticlabs/nia/iap/InAppBillingProvider$Delegate;->purchaseResult(Lcom/nianticlabs/nia/iap/PurchaseResult;)V

    .line 780
    :cond_0
    return-void
.end method

.method public static getInstance()Ljava/lang/ref/WeakReference;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/nianticlabs/nia/iap/GoogleInAppBillingProvider;",
            ">;"
        }
    .end annotation

    .prologue
    .line 84
    sget-object v0, Lcom/nianticlabs/nia/iap/GoogleInAppBillingProvider;->instance:Ljava/lang/ref/WeakReference;

    return-object v0
.end method

.method private static getResponseCodeFromBundle(Landroid/os/Bundle;)I
    .locals 1
    .param p0, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 785
    const-string v0, "RESPONSE_CODE"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/nianticlabs/nia/iap/GoogleInAppBillingProvider;->getResponseCodeFromObject(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method private static getResponseCodeFromIntent(Landroid/content/Intent;)I
    .locals 2
    .param p0, "intent"    # Landroid/content/Intent;

    .prologue
    .line 788
    invoke-virtual {p0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "RESPONSE_CODE"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/nianticlabs/nia/iap/GoogleInAppBillingProvider;->getResponseCodeFromObject(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method private static getResponseCodeFromObject(Ljava/lang/Object;)I
    .locals 2
    .param p0, "responseObject"    # Ljava/lang/Object;

    .prologue
    .line 791
    if-nez p0, :cond_0

    .line 793
    const/4 v0, 0x0

    .line 803
    .end local p0    # "responseObject":Ljava/lang/Object;
    :goto_0
    return v0

    .line 795
    .restart local p0    # "responseObject":Ljava/lang/Object;
    :cond_0
    instance-of v0, p0, Ljava/lang/Integer;

    if-eqz v0, :cond_1

    .line 796
    check-cast p0, Ljava/lang/Integer;

    .end local p0    # "responseObject":Ljava/lang/Object;
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0

    .line 798
    .restart local p0    # "responseObject":Ljava/lang/Object;
    :cond_1
    instance-of v0, p0, Ljava/lang/Long;

    if-eqz v0, :cond_2

    .line 799
    check-cast p0, Ljava/lang/Long;

    .end local p0    # "responseObject":Ljava/lang/Object;
    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    long-to-int v0, v0

    goto :goto_0

    .line 803
    .restart local p0    # "responseObject":Ljava/lang/Object;
    :cond_2
    const/4 v0, 0x6

    goto :goto_0
.end method

.method private handlePurchaseErrorResult(I)Z
    .locals 2
    .param p1, "resultCode"    # I

    .prologue
    const/4 v0, 0x0

    .line 726
    packed-switch p1, :pswitch_data_0

    .line 750
    :pswitch_0
    sget-object v0, Lcom/nianticlabs/nia/iap/PurchaseResult;->FAILURE:Lcom/nianticlabs/nia/iap/PurchaseResult;

    invoke-direct {p0, v0}, Lcom/nianticlabs/nia/iap/GoogleInAppBillingProvider;->finalizePurchaseResult(Lcom/nianticlabs/nia/iap/PurchaseResult;)V

    .line 752
    :goto_0
    const/4 v0, 0x1

    :pswitch_1
    return v0

    .line 731
    :pswitch_2
    sget-object v0, Lcom/nianticlabs/nia/iap/PurchaseResult;->USER_CANCELLED:Lcom/nianticlabs/nia/iap/PurchaseResult;

    invoke-direct {p0, v0}, Lcom/nianticlabs/nia/iap/GoogleInAppBillingProvider;->finalizePurchaseResult(Lcom/nianticlabs/nia/iap/PurchaseResult;)V

    goto :goto_0

    .line 735
    :pswitch_3
    sget-object v0, Lcom/nianticlabs/nia/iap/PurchaseResult;->BILLING_UNAVAILABLE:Lcom/nianticlabs/nia/iap/PurchaseResult;

    invoke-direct {p0, v0}, Lcom/nianticlabs/nia/iap/GoogleInAppBillingProvider;->finalizePurchaseResult(Lcom/nianticlabs/nia/iap/PurchaseResult;)V

    goto :goto_0

    .line 739
    :pswitch_4
    sget-object v0, Lcom/nianticlabs/nia/iap/PurchaseResult;->SKU_NOT_AVAILABLE:Lcom/nianticlabs/nia/iap/PurchaseResult;

    invoke-direct {p0, v0}, Lcom/nianticlabs/nia/iap/GoogleInAppBillingProvider;->finalizePurchaseResult(Lcom/nianticlabs/nia/iap/PurchaseResult;)V

    goto :goto_0

    .line 745
    :pswitch_5
    new-instance v1, Lcom/nianticlabs/nia/iap/GoogleInAppBillingProvider$ProcessPurchasedItemsTask;

    invoke-direct {v1, p0}, Lcom/nianticlabs/nia/iap/GoogleInAppBillingProvider$ProcessPurchasedItemsTask;-><init>(Lcom/nianticlabs/nia/iap/GoogleInAppBillingProvider;)V

    new-array v0, v0, [Ljava/lang/Void;

    invoke-virtual {v1, v0}, Lcom/nianticlabs/nia/iap/GoogleInAppBillingProvider$ProcessPurchasedItemsTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 746
    sget-object v0, Lcom/nianticlabs/nia/iap/PurchaseResult;->FAILURE:Lcom/nianticlabs/nia/iap/PurchaseResult;

    invoke-direct {p0, v0}, Lcom/nianticlabs/nia/iap/GoogleInAppBillingProvider;->finalizePurchaseResult(Lcom/nianticlabs/nia/iap/PurchaseResult;)V

    goto :goto_0

    .line 726
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_5
    .end packed-switch
.end method

.method private launchPurchaseActivity(Landroid/app/PendingIntent;)V
    .locals 1
    .param p1, "pendingIntent"    # Landroid/app/PendingIntent;

    .prologue
    .line 567
    iput-object p1, p0, Lcom/nianticlabs/nia/iap/GoogleInAppBillingProvider;->pendingIntent:Landroid/app/PendingIntent;

    .line 568
    new-instance v0, Lcom/nianticlabs/nia/iap/GoogleInAppBillingProvider$2;

    invoke-direct {v0, p0}, Lcom/nianticlabs/nia/iap/GoogleInAppBillingProvider$2;-><init>(Lcom/nianticlabs/nia/iap/GoogleInAppBillingProvider;)V

    invoke-static {v0}, Lcom/nianticlabs/nia/contextservice/ContextService;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 574
    return-void
.end method

.method private maybeDisconnectBillingService()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 486
    iget v0, p0, Lcom/nianticlabs/nia/iap/GoogleInAppBillingProvider;->transactionsInProgress:I

    if-gtz v0, :cond_0

    iget-boolean v0, p0, Lcom/nianticlabs/nia/iap/GoogleInAppBillingProvider;->connectionInProgress:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/nianticlabs/nia/iap/GoogleInAppBillingProvider;->clientConnected:Z

    if-eqz v0, :cond_1

    .line 497
    :cond_0
    :goto_0
    return-void

    .line 491
    :cond_1
    iget-object v0, p0, Lcom/nianticlabs/nia/iap/GoogleInAppBillingProvider;->serviceConnection:Landroid/content/ServiceConnection;

    if-eqz v0, :cond_2

    .line 492
    iget-object v0, p0, Lcom/nianticlabs/nia/iap/GoogleInAppBillingProvider;->context:Landroid/content/Context;

    iget-object v1, p0, Lcom/nianticlabs/nia/iap/GoogleInAppBillingProvider;->serviceConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 494
    :cond_2
    iput-object v2, p0, Lcom/nianticlabs/nia/iap/GoogleInAppBillingProvider;->serviceConnection:Landroid/content/ServiceConnection;

    .line 495
    iput-object v2, p0, Lcom/nianticlabs/nia/iap/GoogleInAppBillingProvider;->billingService:Lcom/android/vending/billing/IInAppBillingService;

    .line 496
    const/4 v0, 0x0

    iput v0, p0, Lcom/nianticlabs/nia/iap/GoogleInAppBillingProvider;->transactionsInProgress:I

    goto :goto_0
.end method

.method private notifyPurchasableItemsResult(Ljava/util/Collection;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/nianticlabs/nia/iap/PurchasableItemDetails;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 764
    .local p1, "purchasableItems":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/nianticlabs/nia/iap/PurchasableItemDetails;>;"
    iget-object v0, p0, Lcom/nianticlabs/nia/iap/GoogleInAppBillingProvider;->delegate:Lcom/nianticlabs/nia/iap/InAppBillingProvider$Delegate;

    if-eqz v0, :cond_0

    .line 765
    iget-object v0, p0, Lcom/nianticlabs/nia/iap/GoogleInAppBillingProvider;->delegate:Lcom/nianticlabs/nia/iap/InAppBillingProvider$Delegate;

    invoke-interface {v0, p1}, Lcom/nianticlabs/nia/iap/InAppBillingProvider$Delegate;->purchasableItemsResult(Ljava/util/Collection;)V

    .line 767
    :cond_0
    return-void
.end method

.method private processPurchaseResult(IILjava/lang/String;Ljava/lang/String;)V
    .locals 8
    .param p1, "activityResultCode"    # I
    .param p2, "responseCode"    # I
    .param p3, "purchaseData"    # Ljava/lang/String;
    .param p4, "dataSignature"    # Ljava/lang/String;

    .prologue
    const/16 v7, 0x3e8

    .line 624
    iget-object v5, p0, Lcom/nianticlabs/nia/iap/GoogleInAppBillingProvider;->itemBeingPurchased:Ljava/lang/String;

    .line 625
    .local v5, "purchasedItem":Ljava/lang/String;
    const/4 v6, 0x0

    iput-object v6, p0, Lcom/nianticlabs/nia/iap/GoogleInAppBillingProvider;->itemBeingPurchased:Ljava/lang/String;

    .line 627
    iget-object v6, p0, Lcom/nianticlabs/nia/iap/GoogleInAppBillingProvider;->billingService:Lcom/android/vending/billing/IInAppBillingService;

    if-nez v6, :cond_1

    .line 699
    :cond_0
    :goto_0
    return-void

    .line 631
    :cond_1
    if-eq p2, v7, :cond_2

    .line 632
    invoke-direct {p0, p2}, Lcom/nianticlabs/nia/iap/GoogleInAppBillingProvider;->handlePurchaseErrorResult(I)Z

    move-result v6

    if-nez v6, :cond_0

    .line 635
    :cond_2
    if-nez p1, :cond_3

    .line 637
    sget-object v6, Lcom/nianticlabs/nia/iap/PurchaseResult;->USER_CANCELLED:Lcom/nianticlabs/nia/iap/PurchaseResult;

    invoke-direct {p0, v6}, Lcom/nianticlabs/nia/iap/GoogleInAppBillingProvider;->finalizePurchaseResult(Lcom/nianticlabs/nia/iap/PurchaseResult;)V

    goto :goto_0

    .line 640
    :cond_3
    const/4 v6, -0x1

    if-eq p1, v6, :cond_4

    .line 642
    sget-object v6, Lcom/nianticlabs/nia/iap/PurchaseResult;->FAILURE:Lcom/nianticlabs/nia/iap/PurchaseResult;

    invoke-direct {p0, v6}, Lcom/nianticlabs/nia/iap/GoogleInAppBillingProvider;->finalizePurchaseResult(Lcom/nianticlabs/nia/iap/PurchaseResult;)V

    goto :goto_0

    .line 645
    :cond_4
    if-eq p2, v7, :cond_5

    if-eqz p3, :cond_5

    if-nez p4, :cond_6

    .line 652
    :cond_5
    sget-object v6, Lcom/nianticlabs/nia/iap/PurchaseResult;->FAILURE:Lcom/nianticlabs/nia/iap/PurchaseResult;

    invoke-direct {p0, v6}, Lcom/nianticlabs/nia/iap/GoogleInAppBillingProvider;->finalizePurchaseResult(Lcom/nianticlabs/nia/iap/PurchaseResult;)V

    goto :goto_0

    .line 656
    :cond_6
    const-string v0, "UNKNOWN"

    .line 657
    .local v0, "currency":Ljava/lang/String;
    const/4 v4, 0x0

    .line 658
    .local v4, "productId":Ljava/lang/String;
    const/4 v3, 0x0

    .line 659
    .local v3, "pricePaidE6":I
    if-eqz v5, :cond_7

    .line 660
    iget-object v6, p0, Lcom/nianticlabs/nia/iap/GoogleInAppBillingProvider;->currentPurchasableItems:Ljava/util/Map;

    invoke-interface {v6, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/nianticlabs/nia/iap/GetSkuDetailsResponseItem;

    .line 661
    .local v1, "itemDetails":Lcom/nianticlabs/nia/iap/GetSkuDetailsResponseItem;
    if-eqz v1, :cond_7

    .line 662
    invoke-virtual {v1}, Lcom/nianticlabs/nia/iap/GetSkuDetailsResponseItem;->getProductId()Ljava/lang/String;

    move-result-object v4

    .line 663
    invoke-virtual {v1}, Lcom/nianticlabs/nia/iap/GetSkuDetailsResponseItem;->getCurrencyCode()Ljava/lang/String;

    move-result-object v0

    .line 664
    invoke-virtual {v1}, Lcom/nianticlabs/nia/iap/GetSkuDetailsResponseItem;->getPriceE6()I

    move-result v3

    .line 667
    .end local v1    # "itemDetails":Lcom/nianticlabs/nia/iap/GetSkuDetailsResponseItem;
    :cond_7
    if-nez v4, :cond_9

    .line 670
    invoke-static {p3}, Lcom/nianticlabs/nia/iap/GoogleInAppPurchaseData;->fromJson(Ljava/lang/String;)Lcom/nianticlabs/nia/iap/GoogleInAppPurchaseData;

    move-result-object v2

    .line 671
    .local v2, "parsedPurchaseData":Lcom/nianticlabs/nia/iap/GoogleInAppPurchaseData;
    if-eqz v2, :cond_8

    .line 672
    invoke-virtual {v2}, Lcom/nianticlabs/nia/iap/GoogleInAppPurchaseData;->getProductId()Ljava/lang/String;

    move-result-object v4

    .line 674
    :cond_8
    if-nez v4, :cond_9

    .line 675
    const-string v4, "unknown"

    .line 692
    .end local v2    # "parsedPurchaseData":Lcom/nianticlabs/nia/iap/GoogleInAppPurchaseData;
    :cond_9
    iget-object v6, p0, Lcom/nianticlabs/nia/iap/GoogleInAppBillingProvider;->delegate:Lcom/nianticlabs/nia/iap/InAppBillingProvider$Delegate;

    invoke-interface {v6, p3, p4, v0, v3}, Lcom/nianticlabs/nia/iap/InAppBillingProvider$Delegate;->ProcessReceipt(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_0
.end method


# virtual methods
.method public forwardedOnActivityResult(ILandroid/content/Intent;)V
    .locals 6
    .param p1, "resultCode"    # I
    .param p2, "data"    # Landroid/content/Intent;

    .prologue
    .line 599
    if-eqz p2, :cond_0

    .line 600
    invoke-static {p2}, Lcom/nianticlabs/nia/iap/GoogleInAppBillingProvider;->getResponseCodeFromIntent(Landroid/content/Intent;)I

    move-result v3

    .line 601
    .local v3, "responseCode":I
    const-string v0, "INAPP_PURCHASE_DATA"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 602
    .local v4, "purchaseData":Ljava/lang/String;
    const-string v0, "INAPP_DATA_SIGNATURE"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 610
    .local v5, "dataSignature":Ljava/lang/String;
    :goto_0
    new-instance v0, Lcom/nianticlabs/nia/iap/GoogleInAppBillingProvider$3;

    move-object v1, p0

    move v2, p1

    invoke-direct/range {v0 .. v5}, Lcom/nianticlabs/nia/iap/GoogleInAppBillingProvider$3;-><init>(Lcom/nianticlabs/nia/iap/GoogleInAppBillingProvider;IILjava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/nianticlabs/nia/contextservice/ContextService;->runOnServiceHandler(Ljava/lang/Runnable;)V

    .line 616
    return-void

    .line 605
    .end local v3    # "responseCode":I
    .end local v4    # "purchaseData":Ljava/lang/String;
    .end local v5    # "dataSignature":Ljava/lang/String;
    :cond_0
    const/16 v3, 0x3e8

    .line 606
    .restart local v3    # "responseCode":I
    const/4 v4, 0x0

    .line 607
    .restart local v4    # "purchaseData":Ljava/lang/String;
    const/4 v5, 0x0

    .restart local v5    # "dataSignature":Ljava/lang/String;
    goto :goto_0
.end method

.method public getPurchasableItems(Ljava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 502
    .local p1, "itemIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p0}, Lcom/nianticlabs/nia/iap/GoogleInAppBillingProvider;->isBillingAvailable()Z

    move-result v0

    if-nez v0, :cond_0

    .line 505
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/nianticlabs/nia/iap/GoogleInAppBillingProvider;->notifyPurchasableItemsResult(Ljava/util/Collection;)V

    .line 510
    :goto_0
    return-void

    .line 509
    :cond_0
    new-instance v0, Lcom/nianticlabs/nia/iap/GoogleInAppBillingProvider$GetSkuDetailsTask;

    invoke-direct {v0, p0, p1}, Lcom/nianticlabs/nia/iap/GoogleInAppBillingProvider$GetSkuDetailsTask;-><init>(Lcom/nianticlabs/nia/iap/GoogleInAppBillingProvider;Ljava/util/ArrayList;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/nianticlabs/nia/iap/GoogleInAppBillingProvider$GetSkuDetailsTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method

.method public isBillingAvailable()Z
    .locals 1

    .prologue
    .line 398
    iget-object v0, p0, Lcom/nianticlabs/nia/iap/GoogleInAppBillingProvider;->billingService:Lcom/android/vending/billing/IInAppBillingService;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/nianticlabs/nia/iap/GoogleInAppBillingProvider;->purchaseSupported:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isTransactionInProgress()Z
    .locals 1

    .prologue
    .line 404
    iget v0, p0, Lcom/nianticlabs/nia/iap/GoogleInAppBillingProvider;->transactionsInProgress:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 391
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nianticlabs/nia/iap/GoogleInAppBillingProvider;->clientConnected:Z

    .line 392
    invoke-direct {p0}, Lcom/nianticlabs/nia/iap/GoogleInAppBillingProvider;->maybeDisconnectBillingService()V

    .line 393
    return-void
.end method

.method public onProcessedGoogleBillingTransaction(ZLjava/lang/String;)V
    .locals 2
    .param p1, "success"    # Z
    .param p2, "purchaseToken"    # Ljava/lang/String;

    .prologue
    .line 706
    if-nez p1, :cond_0

    .line 708
    sget-object v0, Lcom/nianticlabs/nia/iap/PurchaseResult;->FAILURE:Lcom/nianticlabs/nia/iap/PurchaseResult;

    invoke-direct {p0, v0}, Lcom/nianticlabs/nia/iap/GoogleInAppBillingProvider;->finalizePurchaseResult(Lcom/nianticlabs/nia/iap/PurchaseResult;)V

    .line 723
    :goto_0
    return-void

    .line 711
    :cond_0
    iget-object v0, p0, Lcom/nianticlabs/nia/iap/GoogleInAppBillingProvider;->billingService:Lcom/android/vending/billing/IInAppBillingService;

    if-nez v0, :cond_1

    .line 713
    sget-object v0, Lcom/nianticlabs/nia/iap/PurchaseResult;->FAILURE:Lcom/nianticlabs/nia/iap/PurchaseResult;

    invoke-direct {p0, v0}, Lcom/nianticlabs/nia/iap/GoogleInAppBillingProvider;->finalizePurchaseResult(Lcom/nianticlabs/nia/iap/PurchaseResult;)V

    goto :goto_0

    .line 716
    :cond_1
    if-nez p2, :cond_2

    .line 718
    sget-object v0, Lcom/nianticlabs/nia/iap/PurchaseResult;->FAILURE:Lcom/nianticlabs/nia/iap/PurchaseResult;

    invoke-direct {p0, v0}, Lcom/nianticlabs/nia/iap/GoogleInAppBillingProvider;->finalizePurchaseResult(Lcom/nianticlabs/nia/iap/PurchaseResult;)V

    goto :goto_0

    .line 722
    :cond_2
    new-instance v0, Lcom/nianticlabs/nia/iap/GoogleInAppBillingProvider$ConsumeItemTask;

    invoke-direct {v0, p0, p2}, Lcom/nianticlabs/nia/iap/GoogleInAppBillingProvider$ConsumeItemTask;-><init>(Lcom/nianticlabs/nia/iap/GoogleInAppBillingProvider;Ljava/lang/String;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/nianticlabs/nia/iap/GoogleInAppBillingProvider$ConsumeItemTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 383
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nianticlabs/nia/iap/GoogleInAppBillingProvider;->clientConnected:Z

    .line 384
    invoke-direct {p0}, Lcom/nianticlabs/nia/iap/GoogleInAppBillingProvider;->connectToBillingService()V

    .line 385
    return-void
.end method

.method public purchaseItem(Ljava/lang/String;Ljava/lang/String;)V
    .locals 10
    .param p1, "itemId"    # Ljava/lang/String;
    .param p2, "developerPayload"    # Ljava/lang/String;

    .prologue
    .line 520
    iget v0, p0, Lcom/nianticlabs/nia/iap/GoogleInAppBillingProvider;->transactionsInProgress:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/nianticlabs/nia/iap/GoogleInAppBillingProvider;->transactionsInProgress:I

    .line 521
    invoke-virtual {p0}, Lcom/nianticlabs/nia/iap/GoogleInAppBillingProvider;->isBillingAvailable()Z

    move-result v0

    if-nez v0, :cond_1

    .line 523
    sget-object v0, Lcom/nianticlabs/nia/iap/PurchaseResult;->BILLING_UNAVAILABLE:Lcom/nianticlabs/nia/iap/PurchaseResult;

    invoke-direct {p0, v0}, Lcom/nianticlabs/nia/iap/GoogleInAppBillingProvider;->finalizePurchaseResult(Lcom/nianticlabs/nia/iap/PurchaseResult;)V

    .line 564
    :cond_0
    :goto_0
    return-void

    .line 527
    :cond_1
    iget-object v0, p0, Lcom/nianticlabs/nia/iap/GoogleInAppBillingProvider;->currentPurchasableItems:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 529
    sget-object v0, Lcom/nianticlabs/nia/iap/PurchaseResult;->SKU_NOT_AVAILABLE:Lcom/nianticlabs/nia/iap/PurchaseResult;

    invoke-direct {p0, v0}, Lcom/nianticlabs/nia/iap/GoogleInAppBillingProvider;->finalizePurchaseResult(Lcom/nianticlabs/nia/iap/PurchaseResult;)V

    goto :goto_0

    .line 535
    :cond_2
    :try_start_0
    iget-object v0, p0, Lcom/nianticlabs/nia/iap/GoogleInAppBillingProvider;->billingService:Lcom/android/vending/billing/IInAppBillingService;

    const/4 v1, 0x3

    iget-object v2, p0, Lcom/nianticlabs/nia/iap/GoogleInAppBillingProvider;->packageName:Ljava/lang/String;

    const-string v4, "inapp"

    move-object v3, p1

    move-object v5, p2

    invoke-interface/range {v0 .. v5}, Lcom/android/vending/billing/IInAppBillingService;->getBuyIntent(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    .line 547
    .local v6, "buyIntentBundle":Landroid/os/Bundle;
    const-string v0, "BUY_INTENT"

    invoke-virtual {v6, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v9

    check-cast v9, Landroid/app/PendingIntent;

    .line 548
    .local v9, "pendingIntent":Landroid/app/PendingIntent;
    invoke-static {v6}, Lcom/nianticlabs/nia/iap/GoogleInAppBillingProvider;->getResponseCodeFromBundle(Landroid/os/Bundle;)I

    move-result v7

    .line 549
    .local v7, "buyIntentResult":I
    invoke-direct {p0, v7}, Lcom/nianticlabs/nia/iap/GoogleInAppBillingProvider;->handlePurchaseErrorResult(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 552
    if-nez v9, :cond_3

    .line 554
    sget-object v0, Lcom/nianticlabs/nia/iap/PurchaseResult;->FAILURE:Lcom/nianticlabs/nia/iap/PurchaseResult;

    invoke-direct {p0, v0}, Lcom/nianticlabs/nia/iap/GoogleInAppBillingProvider;->finalizePurchaseResult(Lcom/nianticlabs/nia/iap/PurchaseResult;)V

    goto :goto_0

    .line 541
    .end local v6    # "buyIntentBundle":Landroid/os/Bundle;
    .end local v7    # "buyIntentResult":I
    .end local v9    # "pendingIntent":Landroid/app/PendingIntent;
    :catch_0
    move-exception v8

    .line 543
    .local v8, "e":Landroid/os/RemoteException;
    sget-object v0, Lcom/nianticlabs/nia/iap/PurchaseResult;->FAILURE:Lcom/nianticlabs/nia/iap/PurchaseResult;

    invoke-direct {p0, v0}, Lcom/nianticlabs/nia/iap/GoogleInAppBillingProvider;->finalizePurchaseResult(Lcom/nianticlabs/nia/iap/PurchaseResult;)V

    goto :goto_0

    .line 558
    .end local v8    # "e":Landroid/os/RemoteException;
    .restart local v6    # "buyIntentBundle":Landroid/os/Bundle;
    .restart local v7    # "buyIntentResult":I
    .restart local v9    # "pendingIntent":Landroid/app/PendingIntent;
    :cond_3
    iget v0, p0, Lcom/nianticlabs/nia/iap/GoogleInAppBillingProvider;->transactionsInProgress:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_4

    .line 559
    iput-object p1, p0, Lcom/nianticlabs/nia/iap/GoogleInAppBillingProvider;->itemBeingPurchased:Ljava/lang/String;

    .line 563
    :goto_1
    invoke-direct {p0, v9}, Lcom/nianticlabs/nia/iap/GoogleInAppBillingProvider;->launchPurchaseActivity(Landroid/app/PendingIntent;)V

    goto :goto_0

    .line 561
    :cond_4
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nianticlabs/nia/iap/GoogleInAppBillingProvider;->itemBeingPurchased:Ljava/lang/String;

    goto :goto_1
.end method

.method public setDelegate(Lcom/nianticlabs/nia/iap/InAppBillingProvider$Delegate;)V
    .locals 0
    .param p1, "delegate"    # Lcom/nianticlabs/nia/iap/InAppBillingProvider$Delegate;

    .prologue
    .line 376
    iput-object p1, p0, Lcom/nianticlabs/nia/iap/GoogleInAppBillingProvider;->delegate:Lcom/nianticlabs/nia/iap/InAppBillingProvider$Delegate;

    .line 377
    return-void
.end method

.method public startBuyIntent(Landroid/app/Activity;)V
    .locals 9
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    const/4 v8, 0x0

    .line 578
    :try_start_0
    iget-object v0, p0, Lcom/nianticlabs/nia/iap/GoogleInAppBillingProvider;->pendingIntent:Landroid/app/PendingIntent;

    .line 579
    invoke-virtual {v0}, Landroid/app/PendingIntent;->getIntentSender()Landroid/content/IntentSender;

    move-result-object v1

    const/16 v2, 0x2719

    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p1

    .line 578
    invoke-virtual/range {v0 .. v6}, Landroid/app/Activity;->startIntentSenderForResult(Landroid/content/IntentSender;ILandroid/content/Intent;III)V
    :try_end_0
    .catch Landroid/content/IntentSender$SendIntentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 589
    :goto_0
    return-void

    .line 583
    :catch_0
    move-exception v7

    .line 585
    .local v7, "e":Landroid/content/IntentSender$SendIntentException;
    iput-object v8, p0, Lcom/nianticlabs/nia/iap/GoogleInAppBillingProvider;->itemBeingPurchased:Ljava/lang/String;

    .line 586
    iput-object v8, p0, Lcom/nianticlabs/nia/iap/GoogleInAppBillingProvider;->pendingIntent:Landroid/app/PendingIntent;

    .line 587
    sget-object v0, Lcom/nianticlabs/nia/iap/PurchaseResult;->FAILURE:Lcom/nianticlabs/nia/iap/PurchaseResult;

    invoke-direct {p0, v0}, Lcom/nianticlabs/nia/iap/GoogleInAppBillingProvider;->finalizePurchaseResult(Lcom/nianticlabs/nia/iap/PurchaseResult;)V

    goto :goto_0
.end method
